package org.qtproject.qt.android;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

/* JADX INFO: loaded from: classes.dex */
class QtSurface extends SurfaceView implements SurfaceHolder.Callback {
    private final QtSurfaceInterface m_surfaceCallback;

    QtSurface(Context context, QtSurfaceInterface qtSurfaceInterface, boolean z, int i) {
        super(context);
        setFocusable(false);
        setFocusableInTouchMode(false);
        setZOrderMediaOverlay(z);
        this.m_surfaceCallback = qtSurfaceInterface;
        SurfaceHolder holder = getHolder();
        holder.setFormat(i == 16 ? 4 : 1);
        holder.addCallback(this);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        QtSurfaceInterface qtSurfaceInterface = this.m_surfaceCallback;
        if (qtSurfaceInterface != null) {
            qtSurfaceInterface.onSurfaceChanged(surfaceHolder.getSurface());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        QtSurfaceInterface qtSurfaceInterface = this.m_surfaceCallback;
        if (qtSurfaceInterface != null) {
            qtSurfaceInterface.onSurfaceChanged(surfaceHolder.getSurface());
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        QtSurfaceInterface qtSurfaceInterface = this.m_surfaceCallback;
        if (qtSurfaceInterface != null) {
            qtSurfaceInterface.onSurfaceChanged(null);
        }
    }
}
