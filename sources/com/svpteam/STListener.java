package com.svpteam;

import android.graphics.SurfaceTexture;

/* JADX INFO: loaded from: classes.dex */
public class STListener implements SurfaceTexture.OnFrameAvailableListener {
    public static native void frameAvailable();

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        frameAvailable();
    }
}
