package org.qtproject.qt.android;

import android.app.Activity;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.system.Os;
import android.util.Log;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
abstract class QtLoader {
    protected static final String QtTAG = "QtLoader";
    protected static QtLoader m_instance;
    private ClassLoader m_classLoader;
    protected ComponentInfo m_contextInfo;
    protected boolean m_librariesLoaded;
    protected String m_mainLibName;
    protected String m_mainLibPath;
    private final String m_packageName;
    private final String m_preferredAbi;
    private final Resources m_resources;
    private String m_extractedNativeLibsDir = null;
    protected String m_applicationParameters = "";
    protected final HashMap<String, String> m_environmentVariables = new HashMap<>();

    enum LoadingResult {
        Succeeded,
        AlreadyLoaded,
        Failed
    }

    QtLoader(ContextWrapper contextWrapper) throws IllegalArgumentException {
        this.m_resources = contextWrapper.getResources();
        this.m_packageName = contextWrapper.getPackageName();
        Context baseContext = contextWrapper.getBaseContext();
        if (!(baseContext instanceof Activity) && !(baseContext instanceof Service)) {
            throw new IllegalArgumentException("QtLoader: Context is not an instance of Activity or Service");
        }
        initClassLoader(baseContext);
        try {
            initContextInfo(baseContext);
            this.m_preferredAbi = resolvePreferredAbi();
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException("QtLoader: No ComponentInfo found for given Context", e);
        }
    }

    protected void initContextInfo(Context context) throws PackageManager.NameNotFoundException {
        if (context instanceof Activity) {
            this.m_contextInfo = context.getPackageManager().getActivityInfo(((Activity) context).getComponentName(), 128);
        } else if (context instanceof Service) {
            this.m_contextInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, context.getClass()), 128);
        }
    }

    protected void extractContextMetaData(Context context) {
        setEnvironmentVariable("QT_ANDROID_FONTS", "Roboto;Droid Sans;Droid Sans Fallback");
        setEnvironmentVariable("QT_ANDROID_FONTS_MONOSPACE", "Droid Sans Mono;Droid Sans;Droid Sans Fallback");
        setEnvironmentVariable("QT_ANDROID_FONTS_SERIF", "Droid Serif");
        setEnvironmentVariable("HOME", context.getFilesDir().getAbsolutePath());
        setEnvironmentVariable("TMPDIR", context.getCacheDir().getAbsolutePath());
        setEnvironmentVariable("QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED", isBackgroundRunningBlocked());
        setEnvironmentVariable("QTRACE_LOCATION", getMetaData("android.app.trace_location"));
        appendApplicationParameters(getMetaData("android.app.arguments"));
        if (context instanceof Activity) {
            boolean z = (context.getApplicationInfo().flags & 2) != 0;
            Intent intent = ((Activity) context).getIntent();
            if (z && intent != null && intent.hasExtra("applicationArguments")) {
                appendApplicationParameters(intent.getStringExtra("applicationArguments"));
            }
        }
    }

    private String isBackgroundRunningBlocked() {
        if (getMetaData("android.app.background_running").compareTo("true") == 0) {
            return "0";
        }
        return "1";
    }

    private ArrayList<String> preferredAbiLibs(String[] strArr) {
        ArrayList<String> arrayList = new ArrayList<>();
        for (String str : strArr) {
            String[] strArrSplit = str.split(";", 2);
            if (strArrSplit != null && strArrSplit.length >= 2 && strArrSplit[0].equals(this.m_preferredAbi) && !strArrSplit[1].isEmpty()) {
                arrayList.add(strArrSplit[1]);
            }
        }
        return arrayList;
    }

    private String resolvePreferredAbi() {
        try {
            String[] stringArray = this.m_resources.getStringArray(this.m_resources.getIdentifier("qt_libs", "array", this.m_packageName));
            HashSet hashSet = new HashSet();
            for (String str : stringArray) {
                String[] strArrSplit = str.split(";", 2);
                if (strArrSplit.length >= 2) {
                    hashSet.add(strArrSplit[0].trim());
                }
            }
            boolean zIs64Bit = Process.is64Bit();
            String str2 = null;
            for (String str3 : Build.SUPPORTED_ABIS) {
                if (hashSet.contains(str3)) {
                    if (str3.contains("64") == zIs64Bit) {
                        return str3;
                    }
                    if (str2 == null) {
                        str2 = str3;
                    }
                }
            }
            if (str2 != null) {
                return str2;
            }
            Log.w(QtTAG, "No packaged library ABIs " + ("[" + String.join(", ", hashSet) + "]") + " match the device ABIs " + ("[" + String.join(", ", Build.SUPPORTED_ABIS) + "]") + ", falling back to " + Build.SUPPORTED_ABIS[0] + ".");
        } catch (Resources.NotFoundException unused) {
        }
        return Build.SUPPORTED_ABIS[0];
    }

    private void initClassLoader(Context context) {
        DexClassLoader dexClassLoader = new DexClassLoader(context.getApplicationInfo().sourceDir, context.getDir("outdex", 0).getAbsolutePath(), null, context.getClassLoader());
        this.m_classLoader = dexClassLoader;
        QtNative.setClassLoader(dexClassLoader);
    }

    public String getMainLibraryPath() {
        return this.m_mainLibPath;
    }

    public void setMainLibraryName(String str) {
        this.m_mainLibName = str;
    }

    public String getApplicationParameters() {
        return this.m_applicationParameters;
    }

    public void appendApplicationParameters(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!this.m_applicationParameters.isEmpty()) {
            this.m_applicationParameters += " ";
        }
        this.m_applicationParameters += str;
    }

    public void setEnvironmentVariable(String str, String str2) {
        try {
            Os.setenv(str, str2, true);
            this.m_environmentVariables.put(str, str2);
        } catch (Exception e) {
            Log.e(QtTAG, "Could not set environment variable:" + str + "=" + str2);
            e.printStackTrace();
        }
    }

    public void setEnvironmentVariables(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        for (String str2 : str.split("\t")) {
            String[] strArrSplit = str2.split("=", 2);
            if (strArrSplit.length >= 2 && !strArrSplit[0].isEmpty()) {
                setEnvironmentVariable(strArrSplit[0], strArrSplit[1]);
            }
        }
    }

    private void parseNativeLibrariesDir() {
        if (this.m_contextInfo == null) {
            return;
        }
        if (isBundleQtLibs()) {
            String str = this.m_contextInfo.applicationInfo.nativeLibraryDir + "/";
            File file = new File(str);
            if (file.exists()) {
                String[] list = file.list();
                if (file.isDirectory() && list != null && list.length > 0) {
                    this.m_extractedNativeLibsDir = str;
                }
            }
        } else {
            String applicationMetaData = getApplicationMetaData("android.app.system_libs_prefix");
            if (applicationMetaData.isEmpty()) {
                applicationMetaData = getSystemLibsPrefix();
            }
            if (applicationMetaData.isEmpty()) {
                Log.e(QtTAG, "Using /system/lib/ as default libraries path. It looks like the app is deployed using Unbundled deployment. It may be necessary to specify the path to the directory where Qt libraries are installed using either android.app.system_libs_prefix metadata variable in your AndroidManifest.xml or QT_ANDROID_SYSTEM_LIBS_PATH in your CMakeLists.txt");
                applicationMetaData = "/system/lib/";
            }
            File file2 = new File(applicationMetaData);
            String[] list2 = file2.list();
            if (file2.exists()) {
                if (file2.isDirectory() && list2 != null && list2.length > 0) {
                    this.m_extractedNativeLibsDir = applicationMetaData;
                } else {
                    Log.e(QtTAG, "System library directory " + applicationMetaData + " is empty.");
                }
            } else {
                Log.e(QtTAG, "System library directory " + applicationMetaData + " does not exist.");
            }
        }
        String str2 = this.m_extractedNativeLibsDir;
        if (str2 == null || str2.endsWith("/")) {
            return;
        }
        this.m_extractedNativeLibsDir += "/";
    }

    private String getApplicationMetaData(String str) {
        Bundle bundle;
        ApplicationInfo applicationInfo = this.m_contextInfo.applicationInfo;
        if (applicationInfo == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(str)) {
            return "";
        }
        return bundle.getString(str);
    }

    protected String getMetaData(String str) {
        Bundle bundle;
        ComponentInfo componentInfo = this.m_contextInfo;
        return (componentInfo == null || (bundle = componentInfo.metaData) == null || !bundle.containsKey(str)) ? "" : String.valueOf(bundle.get(str));
    }

    private ArrayList<String> getQtLibrariesList() {
        try {
            return preferredAbiLibs(this.m_resources.getStringArray(this.m_resources.getIdentifier("qt_libs", "array", this.m_packageName)));
        } catch (Resources.NotFoundException unused) {
            return new ArrayList<>();
        }
    }

    private boolean useLocalQtLibs() {
        return Integer.parseInt(this.m_resources.getString(this.m_resources.getIdentifier("use_local_qt_libs", "string", this.m_packageName))) == 1;
    }

    private boolean isBundleQtLibs() {
        return Integer.parseInt(this.m_resources.getString(this.m_resources.getIdentifier("bundle_local_qt_libs", "string", this.m_packageName))) == 1;
    }

    private String getSystemLibsPrefix() {
        try {
            return this.m_resources.getString(this.m_resources.getIdentifier("system_libs_prefix", "string", this.m_packageName));
        } catch (Resources.NotFoundException unused) {
            return "";
        }
    }

    private ArrayList<String> getLocalLibrariesList() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Iterator<String> it = preferredAbiLibs(this.m_resources.getStringArray(this.m_resources.getIdentifier("load_local_libs", "array", this.m_packageName))).iterator();
            while (it.hasNext()) {
                Collections.addAll(arrayList, it.next().split(":"));
            }
        } catch (Resources.NotFoundException unused) {
        }
        return arrayList;
    }

    private String[] getBundledLibs() {
        try {
            return this.m_resources.getStringArray(this.m_resources.getIdentifier("bundled_libs", "array", this.m_packageName));
        } catch (Resources.NotFoundException unused) {
            return new String[0];
        }
    }

    private static boolean isUncompressedNativeLibs() {
        Context context = QtNative.getContext();
        if (context != null) {
            return (context.getApplicationInfo().flags & 268435456) == 0;
        }
        Log.w(QtTAG, "isUncompressedNativeLibs() called before a valid context was set.");
        return false;
    }

    private String getApkNativeLibrariesDir() {
        String appApkFilePath = QtApkFileEngine.getAppApkFilePath();
        if (appApkFilePath == null) {
            return null;
        }
        return appApkFilePath + "!/lib/" + this.m_preferredAbi + "/";
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public org.qtproject.qt.android.QtLoader.LoadingResult loadQtLibraries() {
        /*
            Method dump skipped, instruction units count: 275
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.qtproject.qt.android.QtLoader.loadQtLibraries():org.qtproject.qt.android.QtLoader$LoadingResult");
    }

    private String loadLibraryHelper(String str) {
        try {
            File file = new File(str);
            if (!str.startsWith("/")) {
                System.loadLibrary(str);
                return str;
            }
            if (file.exists()) {
                System.load(str);
                return str;
            }
            Log.e(QtTAG, "Can't find '" + str + "'");
            return null;
        } catch (Exception | UnsatisfiedLinkError e) {
            Log.e(QtTAG, "Can't load '" + str + "'", e);
            return null;
        }
    }

    private ArrayList<String> getLibrariesFullPaths(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return null;
        }
        ArrayList<String> arrayList2 = new ArrayList<>();
        for (String strSubstring : arrayList) {
            if (isUncompressedNativeLibs()) {
                if (strSubstring.endsWith(".so")) {
                    strSubstring = strSubstring.substring(3, strSubstring.length() - 3);
                }
                arrayList2.add(strSubstring);
            } else {
                if (!strSubstring.endsWith(".so")) {
                    strSubstring = "lib" + strSubstring + ".so";
                }
                arrayList2.add(new File(this.m_extractedNativeLibsDir + strSubstring).getAbsolutePath());
            }
        }
        return arrayList2;
    }

    private boolean loadMainLibrary(String str) {
        final String str2 = getLibrariesFullPaths(new ArrayList<>(Collections.singletonList(str))).get(0);
        QtNative.getQtThread().run(new Runnable() { // from class: org.qtproject.qt.android.QtLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1935lambda$loadMainLibrary$0$orgqtprojectqtandroidQtLoader(str2);
            }
        });
        return this.m_mainLibPath != null;
    }

    /* JADX INFO: renamed from: lambda$loadMainLibrary$0$org-qtproject-qt-android-QtLoader, reason: not valid java name */
    /* synthetic */ void m1935lambda$loadMainLibrary$0$orgqtprojectqtandroidQtLoader(String str) {
        String strLoadLibraryHelper = loadLibraryHelper(str);
        this.m_mainLibPath = strLoadLibraryHelper;
        if (strLoadLibraryHelper == null || !isUncompressedNativeLibs()) {
            return;
        }
        this.m_mainLibPath = getApkNativeLibrariesDir() + "lib" + this.m_mainLibPath + ".so";
    }

    private boolean loadLibraries(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return false;
        }
        final ArrayList<String> librariesFullPaths = getLibrariesFullPaths(arrayList);
        if (arrayList.size() != librariesFullPaths.size()) {
            Log.e(QtTAG, "Failed to get full paths of libraries.");
            return false;
        }
        final boolean[] zArr = {true};
        QtNative.getQtThread().run(new Runnable() { // from class: org.qtproject.qt.android.QtLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1934lambda$loadLibraries$0$orgqtprojectqtandroidQtLoader(librariesFullPaths, zArr);
            }
        });
        return zArr[0];
    }

    /* JADX INFO: renamed from: lambda$loadLibraries$0$org-qtproject-qt-android-QtLoader, reason: not valid java name */
    /* synthetic */ void m1934lambda$loadLibraries$0$orgqtprojectqtandroidQtLoader(ArrayList arrayList, boolean[] zArr) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (loadLibraryHelper((String) arrayList.get(i)) == null) {
                zArr[0] = false;
                return;
            }
        }
    }
}
