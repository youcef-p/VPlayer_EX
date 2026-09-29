package org.qtproject.qt.android;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;

/* JADX INFO: loaded from: classes.dex */
class QtTextureView extends TextureView implements TextureView.SurfaceTextureListener {
    private boolean m_staysOnTop;
    private Surface m_surface;
    private final QtSurfaceInterface m_surfaceCallback;

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    QtTextureView(Context context, QtSurfaceInterface qtSurfaceInterface, boolean z) {
        super(context);
        setFocusable(false);
        setFocusableInTouchMode(false);
        this.m_surfaceCallback = qtSurfaceInterface;
        setSurfaceTextureListener(this);
        setOpaque(z);
        setSurfaceTexture(new SurfaceTexture(false));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        this.m_surface = surface;
        this.m_surfaceCallback.onSurfaceChanged(surface);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Surface surface = new Surface(surfaceTexture);
        this.m_surface = surface;
        this.m_surfaceCallback.onSurfaceChanged(surface);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.m_surfaceCallback.onSurfaceChanged(null);
        return true;
    }
}
