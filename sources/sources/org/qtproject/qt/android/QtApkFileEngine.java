package org.qtproject.qt.android;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.qtproject.qt.android.QtApkFileEngine;

/* JADX INFO: loaded from: classes.dex */
class QtApkFileEngine {
    private static final String QtTAG = "QtApkFileEngine";
    private static String m_appApkPath;
    private AssetFileDescriptor m_assetFd;
    private FileInputStream m_assetInputStream;
    private final AssetManager m_assetManager;
    private long m_pos = -1;

    QtApkFileEngine(Context context) {
        this.m_assetManager = context.getAssets();
    }

    boolean open(String str) {
        try {
            AssetFileDescriptor assetFileDescriptorOpenNonAssetFd = this.m_assetManager.openNonAssetFd(str);
            this.m_assetFd = assetFileDescriptorOpenNonAssetFd;
            this.m_assetInputStream = assetFileDescriptorOpenNonAssetFd.createInputStream();
        } catch (IOException e) {
            Log.e(QtTAG, "Failed to open the app APK with " + e);
        }
        return this.m_assetInputStream != null;
    }

    boolean close() {
        try {
            FileInputStream fileInputStream = this.m_assetInputStream;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            AssetFileDescriptor assetFileDescriptor = this.m_assetFd;
            if (assetFileDescriptor != null) {
                assetFileDescriptor.close();
            }
        } catch (IOException e) {
            Log.e(QtTAG, "Failed to close resources with " + e);
        }
        return this.m_assetInputStream == null && this.m_assetFd == null;
    }

    long pos() {
        return this.m_pos;
    }

    boolean seek(int i) {
        FileInputStream fileInputStream = this.m_assetInputStream;
        if (fileInputStream == null || !fileInputStream.markSupported()) {
            return false;
        }
        try {
            this.m_assetInputStream.mark(i);
            this.m_assetInputStream.reset();
            this.m_pos = i;
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    MappedByteBuffer getMappedByteBuffer(long j, long j2) {
        try {
            FileChannel channel = this.m_assetInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, channel.position() + j, j2);
            map.order(ByteOrder.LITTLE_ENDIAN);
            channel.close();
            return map;
        } catch (Exception e) {
            Log.e(QtTAG, "Failed to map APK file to memory with " + e);
            return null;
        }
    }

    byte[] read(long j) {
        if (this.m_assetInputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        int i = 0;
        while (i < j) {
            try {
                int i2 = this.m_assetInputStream.read(bArr, 0, Math.min(1024, ((int) j) - i));
                if (i2 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
                i += i2;
            } catch (IOException e) {
                Log.e(QtTAG, "Failed to read content with " + e);
            }
        }
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    static String getAppApkFilePath() {
        String str = m_appApkPath;
        if (str != null) {
            return str;
        }
        try {
            Context context = QtNative.getContext();
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            if (applicationInfo.splitSourceDirs != null) {
                String str2 = (String) Arrays.stream(applicationInfo.splitSourceDirs).filter(new Predicate() { // from class: org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda0
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return Arrays.stream(Build.SUPPORTED_ABIS).anyMatch(new Predicate() { // from class: org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda1
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj2) {
                                return str.endsWith(((String) obj2).replace('-', '_') + ".apk");
                            }
                        });
                    }
                }).findFirst().orElse(null);
                m_appApkPath = str2;
                if (str2 == null) {
                    Log.d(QtTAG, "No ABI specific split APK found, defaulting to the main APK.");
                }
            }
            if (m_appApkPath == null) {
                m_appApkPath = applicationInfo.sourceDir;
            }
            return m_appApkPath;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(QtTAG, "Failed to get the app APK path with " + e);
            return null;
        }
    }

    static class JFileInfo {
        boolean isDir;
        String relativePath;
        long size;

        JFileInfo() {
        }
    }

    static ArrayList<JFileInfo> getApkFileInfos(String str) {
        ArrayList<JFileInfo> arrayList = new ArrayList<>();
        HashSet<String> hashSet = new HashSet();
        HashSet<String> hashSet2 = new HashSet();
        try {
            ZipFile zipFile = new ZipFile(str);
            try {
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (name.startsWith("lib/")) {
                        JFileInfo jFileInfo = new JFileInfo();
                        jFileInfo.relativePath = name;
                        jFileInfo.isDir = zipEntryNextElement.isDirectory();
                        jFileInfo.size = zipEntryNextElement.getSize();
                        arrayList.add(jFileInfo);
                        hashSet.add(name.substring(0, name.lastIndexOf("/") + 1));
                    }
                }
                for (String str2 : hashSet) {
                    int iIndexOf = 0;
                    while (true) {
                        iIndexOf = str2.indexOf("/", iIndexOf + 1);
                        if (iIndexOf != -1) {
                            hashSet2.add(str2.substring(0, iIndexOf));
                        }
                    }
                }
                for (String str3 : hashSet2) {
                    JFileInfo jFileInfo2 = new JFileInfo();
                    jFileInfo2.relativePath = str3;
                    jFileInfo2.isDir = true;
                    jFileInfo2.size = -1L;
                    arrayList.add(jFileInfo2);
                }
                arrayList.sort(Comparator.comparing(new Function() { // from class: org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda2
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return ((QtApkFileEngine.JFileInfo) obj).relativePath;
                    }
                }));
                zipFile.close();
                return arrayList;
            } finally {
            }
        } catch (Exception e) {
            Log.e(QtTAG, "Failed to list App's APK files with " + e);
            return arrayList;
        }
    }
}
