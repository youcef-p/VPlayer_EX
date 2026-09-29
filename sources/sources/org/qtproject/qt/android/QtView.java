package org.qtproject.qt.android;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.security.InvalidParameterException;
import java.util.Objects;
import org.qtproject.qt.android.QtLoader;
import org.qtproject.qt.android.QtNative;

/* JADX INFO: loaded from: classes.dex */
abstract class QtView extends ViewGroup implements QtNative.AppStateDetailsListener {
    private static final String TAG = "QtView";
    private long m_parentWindowReference;
    private final QtEmbeddedViewInterface m_viewInterface;
    private QtWindow m_window;
    private QtWindowListener m_windowListener;
    private long m_windowReference;

    interface QtWindowListener {
        void onQtWindowLoaded();
    }

    static native void createRootWindow(View view, int i, int i2, int i3, int i4);

    static native void deleteWindow(long j);

    private static native void resizeWindow(long j, int i, int i2, int i3, int i4);

    private static native void setWindowVisible(long j, boolean z);

    protected abstract void createWindow(long j);

    QtView(Context context) {
        super(context);
        QtNative.registerAppStateListener(this);
        this.m_viewInterface = QtEmbeddedViewInterfaceFactory.create(context);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.qtproject.qt.android.QtView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.m1943lambda$new$0$orgqtprojectqtandroidQtView(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        if (getId() == -1) {
            setId(View.generateViewId());
        }
    }

    /* JADX INFO: renamed from: lambda$new$0$org-qtproject-qt-android-QtView, reason: not valid java name */
    /* synthetic */ void m1943lambda$new$0$orgqtprojectqtandroidQtView(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        long j = this.m_windowReference;
        if (j != 0) {
            int i9 = i8 - i6;
            int i10 = i3 - i;
            int i11 = i4 - i2;
            if (i7 - i5 == i10 && i9 == i11 && i == i5 && i2 == i6) {
                return;
            }
            resizeWindow(j, i, i2, i10, i11);
        }
    }

    QtView(Context context, String str) throws InvalidParameterException {
        this(context);
        if (str == null || str.isEmpty()) {
            throw new InvalidParameterException("QtView: argument 'appLibName' may not be empty or null");
        }
        loadQtLibraries(str);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.m_viewInterface.addView(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        destroyWindow();
        this.m_viewInterface.removeView(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        QtWindow qtWindow = this.m_window;
        if (qtWindow != null) {
            qtWindow.layout(0, 0, i3 - i, i4 - i2);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChildren(i, i2);
        int childCount = getChildCount();
        measureChildren(i, i2);
        int iMax = 0;
        int iMax2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                iMax2 = Math.max(iMax2, childAt.getMeasuredWidth());
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
            }
        }
        setMeasuredDimension(resolveSize(Math.max(iMax2, getSuggestedMinimumWidth()), i), resolveSize(Math.max(iMax, getSuggestedMinimumHeight()), i2));
    }

    void setQtWindowListener(QtWindowListener qtWindowListener) {
        this.m_windowListener = qtWindowListener;
    }

    void loadQtLibraries(String str) {
        try {
            QtEmbeddedLoader embeddedLoader = QtEmbeddedLoader.getEmbeddedLoader(getContext());
            embeddedLoader.setMainLibraryName(str);
            if (embeddedLoader.loadQtLibraries() == QtLoader.LoadingResult.Failed) {
                QtEmbeddedViewInterfaceFactory.remove(getContext());
            } else {
                this.m_viewInterface.startQtApplication(embeddedLoader.getApplicationParameters(), embeddedLoader.getMainLibraryPath());
            }
        } catch (IllegalArgumentException e) {
            Log.e(TAG, (String) Objects.requireNonNull(e.getMessage()));
            QtEmbeddedViewInterfaceFactory.remove(getContext());
        }
    }

    void setWindowReference(long j) {
        this.m_windowReference = j;
    }

    long getWindowReference() {
        return this.m_windowReference;
    }

    void setQtWindow(QtWindow qtWindow) {
        this.m_window = qtWindow;
    }

    QtWindow getQtWindow() {
        return this.m_window;
    }

    long getParentWindowReference() {
        return this.m_parentWindowReference;
    }

    void setParentWindowReference(long j) {
        this.m_parentWindowReference = j;
    }

    QtWindowListener getWindowListener() {
        return this.m_windowListener;
    }

    void setWindowListener(QtWindowListener qtWindowListener) {
        this.m_windowListener = qtWindowListener;
    }

    QtEmbeddedViewInterface getViewInterface() {
        return this.m_viewInterface;
    }

    void setWindowVisible(boolean z) {
        long j = this.m_windowReference;
        if (j != 0) {
            setWindowVisible(j, true);
        }
    }

    void addQtWindow(final QtWindow qtWindow, long j, long j2) {
        setWindowReference(j);
        this.m_parentWindowReference = j2;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: org.qtproject.qt.android.QtView$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1942lambda$addQtWindow$0$orgqtprojectqtandroidQtView(qtWindow);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$addQtWindow$0$org-qtproject-qt-android-QtView, reason: not valid java name */
    /* synthetic */ void m1942lambda$addQtWindow$0$orgqtprojectqtandroidQtView(QtWindow qtWindow) {
        this.m_window = qtWindow;
        qtWindow.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        addView(this.m_window, 0);
        setWindowVisible(true);
        QtWindowListener qtWindowListener = this.m_windowListener;
        if (qtWindowListener != null) {
            qtWindowListener.onQtWindowLoaded();
        }
    }

    void destroyWindow() {
        long j = this.m_parentWindowReference;
        if (j != 0) {
            deleteWindow(j);
        }
        this.m_parentWindowReference = 0L;
        setWindowReference(0L);
    }

    public void onAppStateDetailsChanged(QtNative.ApplicationStateDetails applicationStateDetails) {
        ViewGroup viewGroup;
        if (applicationStateDetails.isStarted || (viewGroup = (ViewGroup) getParent()) == null) {
            return;
        }
        viewGroup.removeView(this);
    }
}
