package com.svpteam;

import android.content.Intent;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.media.AudioAttributes;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.view.Display;
import android.view.KeyEvent;
import android.view.WindowManager;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.core.hardware.display.DisplayManagerCompat;
import androidx.core.view.DisplayCompat;
import androidx.core.view.PointerIconCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.qtproject.qt.android.bindings.QtActivity;

/* JADX INFO: loaded from: classes.dex */
public class SVPActivityBase extends QtActivity {
    public float fontScale;
    private MediaSession mediaSession;
    public MediaStoreUtils mediaStore;
    private WifiManager.MulticastLock multicastLock;
    private PlaybackState.Builder playbackStateBuilder;
    public int insetTop = 0;
    public int insetRight = 0;
    public int insetLeft = 0;
    public int insetBottom = 0;
    public int insetLength = 0;

    public static native void audioConfigChanged();

    public static native void audioFocusChanged(int i);

    public static native void mediaChanged(String str);

    public static native void mwFocusChanged(boolean z, boolean z2, boolean z3);

    public static native void pause(int i);

    public static native void setItem(int i, String str);

    public static native void setLANActive(boolean z);

    public static native void setMedia(String str, int i, String str2, String str3);

    public static native void svpLog(int i, String str);

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
    }

    @Override // org.qtproject.qt.android.QtActivityBase, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
    }

    @Override // org.qtproject.qt.android.bindings.QtActivity, org.qtproject.qt.android.QtActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Settings.Secure.getString(getContentResolver(), "android_id");
        this.fontScale = getResources().getDisplayMetrics().scaledDensity / getResources().getDisplayMetrics().density;
        this.mediaStore = new MediaStoreUtils(this);
        ((AudioManager) getSystemService("audio")).registerAudioDeviceCallback(new AudioDeviceCallback() { // from class: com.svpteam.SVPActivityBase.1
            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                SVPActivityBase.audioConfigChanged();
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                SVPActivityBase.audioConfigChanged();
            }
        }, null);
        MediaSession mediaSession = new MediaSession(this, "svplayer");
        this.mediaSession = mediaSession;
        mediaSession.setCallback(new MediaSession.Callback() { // from class: com.svpteam.SVPActivityBase.2
            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 85) {
                        SVPActivityBase.pause(-1);
                    } else if (keyCode == 126) {
                        SVPActivityBase.pause(0);
                    } else if (keyCode == 127) {
                        SVPActivityBase.pause(1);
                    }
                }
                return false;
            }
        });
        WifiManager.MulticastLock multicastLockCreateMulticastLock = ((WifiManager) getSystemService("wifi")).createMulticastLock("mcast");
        this.multicastLock = multicastLockCreateMulticastLock;
        multicastLockCreateMulticastLock.setReferenceCounted(false);
        PlaybackState.Builder builder = new PlaybackState.Builder();
        this.playbackStateBuilder = builder;
        builder.setActions(518L);
        this.mediaSession.setPlaybackState(this.playbackStateBuilder.setState(1, 0L, 1.0f).build());
        setActive(true);
        processIntent();
        fillCutout(true);
    }

    @Override // org.qtproject.qt.android.QtActivityBase, android.app.Activity
    protected void onDestroy() {
        setActive(false);
        this.mediaSession.release();
        mcastLock(false);
        this.mediaStore.onDestroy();
        super.onDestroy();
    }

    @Override // org.qtproject.qt.android.QtActivityBase, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        processIntent();
    }

    private void processIntent() {
        String stringExtra;
        String stringExtra2;
        String stringExtra3;
        Object obj;
        Intent intent = getIntent();
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = 0;
            if (action == "android.intent.action.VIEW") {
                stringExtra = intent.getDataString();
                stringExtra3 = intent.getStringExtra("title");
                intExtra = intent.getIntExtra("position", 0) / 1000;
                stringExtra2 = intent.getStringExtra("subtitles_location");
            } else {
                if (action == "android.intent.action.SEND") {
                    Bundle extras = intent.getExtras();
                    stringExtra = (extras == null || (obj = extras.get("android.intent.extra.STREAM")) == null) ? null : obj.toString();
                    if (stringExtra == null) {
                        stringExtra = intent.getStringExtra("android.intent.extra.TEXT");
                    }
                } else {
                    stringExtra = intent.getStringExtra("filepath");
                }
                stringExtra2 = null;
                stringExtra3 = null;
            }
            if (stringExtra == null || stringExtra.isEmpty()) {
                return;
            }
            setMedia(stringExtra, intExtra, stringExtra3, stringExtra2);
        }
    }

    public void reportResult(int i, int i2) {
        Intent intent = new Intent("com.mxtech.intent.result.VIEW");
        intent.putExtra("end_by", i >= i2 + (-1500) ? "playback_completion" : "user");
        intent.putExtra("position", i);
        intent.putExtra("duration", i2);
        setResult(-1, intent);
    }

    public void restart() {
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
        if (launchIntentForPackage == null) {
            launchIntentForPackage = getPackageManager().getLeanbackLaunchIntentForPackage(getPackageName());
        }
        Intent intentMakeRestartActivityTask = Intent.makeRestartActivityTask(launchIntentForPackage.getComponent());
        intentMakeRestartActivityTask.setPackage(getPackageName());
        startActivity(intentMakeRestartActivityTask);
        Runtime.getRuntime().exit(0);
    }

    public boolean checkStorage() {
        boolean z = getApplicationInfo().targetSdkVersion < 33 || Build.VERSION.SDK_INT < 33;
        String str = z ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_VIDEO";
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return true;
        }
        if (z) {
            ActivityCompat.requestPermissions(this, new String[]{str}, 1);
        } else {
            ActivityCompat.requestPermissions(this, new String[]{str, "android.permission.READ_MEDIA_AUDIO"}, 1);
        }
        return false;
    }

    public void checkStorageAF() {
        if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
            startActivityForResult(new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", Uri.parse("package:" + getPackageName())), PointerIconCompat.TYPE_COPY);
        }
    }

    @Override // org.qtproject.qt.android.QtActivityBase, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1011 && Environment.isExternalStorageManager()) {
            restart();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        mwFocusChanged(z, hasWindowFocus(), true);
    }

    @Override // org.qtproject.qt.android.QtActivityBase, android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        mwFocusChanged(isInMultiWindowMode(), z, false);
    }

    public String getData() {
        String str = "";
        try {
            for (Signature signature : getPackageManager().getPackageInfo(getPackageName(), 134217728).signingInfo.getApkContentsSigners()) {
                str = str + signature.toCharsString() + "\n";
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public int resolve(String str) {
        try {
            return getContentResolver().openFileDescriptor(Uri.parse(str), "r").detachFd();
        } catch (Exception e) {
            svpLog(1, e.toString());
            return -1;
        }
    }

    public void fillCutout(boolean z) {
        if (Build.VERSION.SDK_INT < 35) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = z ? 1 : 0;
            getWindow().setAttributes(attributes);
        }
        if (Build.VERSION.SDK_INT == 30) {
            getWindow().getDecorView().setSystemUiVisibility(5894);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void readCutout() {
        /*
            r9 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 >= r1) goto L8
            goto Lb1
        L8:
            r0 = 0
            r9.insetLeft = r0
            r9.insetRight = r0
            r9.insetTop = r0
            r9.insetLength = r0
            android.view.WindowManager r1 = r9.getWindowManager()
            android.view.Display r1 = r1.getDefaultDisplay()
            android.view.DisplayCutout r2 = r1.getCutout()
            if (r2 == 0) goto Lb1
            java.util.List r2 = r2.getBoundingRects()
            java.util.Iterator r2 = r2.iterator()
        L27:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto Lb1
            java.lang.Object r3 = r2.next()
            android.graphics.Rect r3 = (android.graphics.Rect) r3
            int r4 = r3.bottom
            int r5 = r1.getHeight()
            r6 = 1
            int r5 = r5 - r6
            if (r4 < r5) goto L3f
            r4 = r6
            goto L40
        L3f:
            r4 = r0
        L40:
            int r5 = r3.top
            if (r5 != 0) goto L52
            int r5 = r3.height()
            int r7 = r9.insetTop
            int r5 = java.lang.Math.max(r5, r7)
            r9.insetTop = r5
            r5 = r0
            goto L53
        L52:
            r5 = -1
        L53:
            int r7 = r3.left
            if (r7 != 0) goto L66
            int r7 = r3.width()
            int r8 = r9.insetLeft
            int r7 = java.lang.Math.max(r7, r8)
            r9.insetLeft = r7
            if (r4 != 0) goto L66
            r5 = r6
        L66:
            int r7 = r3.right
            int r8 = r1.getWidth()
            int r8 = r8 - r6
            if (r7 < r8) goto L7e
            int r7 = r3.width()
            int r8 = r9.insetRight
            int r7 = java.lang.Math.max(r7, r8)
            r9.insetRight = r7
            if (r4 != 0) goto L7e
            goto L7f
        L7e:
            r6 = r5
        L7f:
            if (r4 == 0) goto L8d
            int r4 = r3.height()
            int r5 = r9.insetBottom
            int r4 = java.lang.Math.max(r4, r5)
            r9.insetBottom = r4
        L8d:
            if (r6 < 0) goto L27
            if (r6 != 0) goto L9c
            int r3 = r3.width()
            int r3 = r3 * 100
            int r4 = r1.getWidth()
            goto La6
        L9c:
            int r3 = r3.height()
            int r3 = r3 * 100
            int r4 = r1.getHeight()
        La6:
            int r3 = r3 / r4
            int r4 = r9.insetLength
            int r3 = java.lang.Math.max(r3, r4)
            r9.insetLength = r3
            goto L27
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.svpteam.SVPActivityBase.readCutout():void");
    }

    public String getDisplayModes() {
        String str = "";
        for (DisplayCompat.ModeCompat modeCompat : DisplayCompat.getSupportedModes(this, DisplayManagerCompat.getInstance(this).getDisplay(0))) {
            Display.Mode mode = modeCompat.toMode();
            str = str + mode.getModeId() + ":" + modeCompat.getPhysicalWidth() + ":" + modeCompat.getPhysicalHeight() + ":" + mode.getRefreshRate() + ";";
        }
        return str;
    }

    public void setDisplayMode(int i) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.preferredDisplayModeId = i;
        getWindow().setAttributes(attributes);
    }

    public void setSustainedPerformanceMode(boolean z) {
        getWindow().setSustainedPerformanceMode(z);
    }

    public void setActive(boolean z) {
        this.mediaSession.setActive(z);
    }

    public void keepScreenOn(boolean z) {
        if (z) {
            getWindow().addFlags(128);
        } else {
            getWindow().clearFlags(128);
        }
        this.mediaSession.setPlaybackState(this.playbackStateBuilder.setState(z ? 3 : 2, 0L, 1.0f).build());
    }

    public void monitorLANState() {
        try {
            ((ConnectivityManager) getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addCapability(13).addCapability(16).addTransportType(3).addTransportType(1).build(), new ConnectivityManager.NetworkCallback() { // from class: com.svpteam.SVPActivityBase.3
                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onAvailable(Network network) {
                    SVPActivityBase.setLANActive(true);
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public void onLost(Network network) {
                    SVPActivityBase.setLANActive(false);
                }
            });
        } catch (Exception unused) {
        }
    }

    public void initAudioFocus() {
        ((AudioManager) getSystemService("audio")).requestAudioFocus(new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(1).setContentType(3).build()).setAcceptsDelayedFocusGain(true).setWillPauseWhenDucked(true).setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener() { // from class: com.svpteam.SVPActivityBase.4
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                SVPActivityBase.audioFocusChanged(i);
            }
        }).build());
    }

    public int getVolume() {
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        return (audioManager.getStreamVolume(3) * 100) / audioManager.getStreamMaxVolume(3);
    }

    public void setVolume(int i) {
        ((AudioManager) getSystemService("audio")).setStreamVolume(3, Math.round((i * r0.getStreamMaxVolume(3)) / 100.0f), 0);
    }

    public void toggleMute() {
        ((AudioManager) getSystemService("audio")).adjustStreamVolume(3, 101, 1);
    }

    public String getBTDevice() {
        int i = 0;
        for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) getSystemService("audio")).getDevices(2)) {
            i++;
            if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 7) {
                return ((Object) audioDeviceInfo.getProductName()) + ";" + audioDeviceInfo.getAddress();
            }
        }
        if (i > 0) {
            return "none";
        }
        return null;
    }

    public int getBrightness() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        if (attributes.screenBrightness >= 0.0f) {
            return Math.round(attributes.screenBrightness * 100.0f);
        }
        try {
            return (Settings.System.getInt(getContentResolver(), "screen_brightness") * 100) / 255;
        } catch (Exception unused) {
            return 50;
        }
    }

    public void setBrightness(int i) {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.screenBrightness = i / 100.0f;
        getWindow().setAttributes(attributes);
    }

    public void mcastLock(boolean z) {
        if (z) {
            this.multicastLock.acquire();
        } else {
            this.multicastLock.release();
        }
    }

    public boolean isDEX() {
        Configuration configuration = getResources().getConfiguration();
        try {
            Class<?> cls = configuration.getClass();
            return cls.getField("SEM_DESKTOP_MODE_ENABLED").getInt(cls) == cls.getField("semDesktopModeEnabled").getInt(configuration);
        } catch (Exception unused) {
            return false;
        }
    }

    public void unzip(String str, boolean z, String str2) {
        try {
            InputStream inputStreamOpen = z ? getAssets().open(str, 2) : new FileInputStream(str);
            int iAvailable = inputStreamOpen.available();
            ZipInputStream zipInputStream = new ZipInputStream(inputStreamOpen);
            for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                String str3 = str2 + nextEntry.getName();
                File file = new File(str3);
                if (nextEntry.isDirectory()) {
                    if (!file.isDirectory()) {
                        file.mkdirs();
                    }
                } else {
                    if (!file.exists() || file.length() != nextEntry.getSize()) {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        copyTo(zipInputStream, fileOutputStream);
                        zipInputStream.closeEntry();
                        fileOutputStream.close();
                    }
                    if (str3.endsWith(".so")) {
                        file.setExecutable(true, true);
                    }
                }
            }
            zipInputStream.close();
            FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str2 + ".ver"));
            fileOutputStream2.write(("" + iAvailable).getBytes("UTF-8"));
            fileOutputStream2.close();
        } catch (Exception unused) {
        }
    }

    private static int copyTo(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        try {
            int i = inputStream.read(bArr);
            int i2 = 0;
            while (i >= 0) {
                try {
                    outputStream.write(bArr, 0, i);
                    i2 += i;
                    i = inputStream.read(bArr);
                } catch (Exception unused) {
                    return i2;
                }
            }
            return i2;
        } catch (Exception unused2) {
            return 0;
        }
    }
}
