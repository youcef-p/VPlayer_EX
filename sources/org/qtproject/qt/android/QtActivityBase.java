package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import org.qtproject.qt.android.QtLoader;
import org.qtproject.qt.android.QtNative;

/* JADX INFO: loaded from: classes.dex */
public class QtActivityBase extends Activity {
    public static final String EXTRA_FATAL_MESSAGE = "org.qtproject.qt.android.fatalMessage";
    public static final String EXTRA_SOURCE_INFO = "org.qtproject.qt.android.sourceInfo";
    public static final String TAG = "QtActivityBase";
    private Configuration m_prevConfig;
    private String m_applicationParams = "";
    private boolean m_isCustomThemeSet = false;
    private boolean m_retainNonConfigurationInstance = false;
    private boolean m_onCreateSucceeded = false;
    private final QtActivityDelegate m_delegate = new QtActivityDelegate(this);

    private void addReferrer(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || extras.getString(EXTRA_SOURCE_INFO) == null) {
            if (extras == null) {
                Uri referrer = getReferrer();
                if (referrer != null) {
                    intent.putExtra(EXTRA_SOURCE_INFO, referrer.toString().replaceFirst("android-app://", ""));
                    return;
                }
                return;
            }
            String string = extras.getString("com.android.browser.application_id");
            if (string != null) {
                intent.putExtra(EXTRA_SOURCE_INFO, string);
            }
        }
    }

    public void appendApplicationParameters(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!this.m_applicationParams.isEmpty()) {
            this.m_applicationParams += " ";
        }
        this.m_applicationParams += str;
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        this.m_isCustomThemeSet = true;
    }

    private void restartApplication() {
        startActivity(Intent.makeRestartActivityTask(getComponentName()));
        QtNative.setStarted(false);
        finish();
        Runtime.getRuntime().exit(0);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(8);
        if (!this.m_isCustomThemeSet) {
            setTheme(Build.VERSION.SDK_INT >= 29 ? R.style.Theme.DeviceDefault.DayNight : R.style.Theme.Holo.Light);
        }
        if (QtNative.getStateDetails().isStarted) {
            restartApplication();
        }
        QtNative.registerAppStateListener(this.m_delegate);
        addReferrer(getIntent());
        try {
            if (isLaunchedAsAlias()) {
                Log.d(TAG, "Starting an alias-activity, skipping loading of the Qt libraries.");
            } else {
                QtActivityLoader activityLoader = QtActivityLoader.getActivityLoader(this);
                QtLoader.LoadingResult loadingResultLoadQtLibraries = activityLoader.loadQtLibraries();
                if (loadingResultLoadQtLibraries == QtLoader.LoadingResult.Failed) {
                    showFatalFinishingToast();
                    return;
                } else if (loadingResultLoadQtLibraries == QtLoader.LoadingResult.Succeeded) {
                    activityLoader.appendApplicationParameters(this.m_applicationParams);
                    this.m_delegate.startNativeApplication(activityLoader.getApplicationParameters(), activityLoader.getMainLibraryPath());
                }
            }
            this.m_prevConfig = new Configuration(getResources().getConfiguration());
            this.m_onCreateSucceeded = true;
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            showFatalFinishingToast();
        }
    }

    private void showFatalFinishingToast() {
        Resources resources = getResources();
        String string = null;
        try {
            string = resources.getString(resources.getIdentifier("fatal_error_msg", "string", getPackageName()));
            Toast.makeText(this, string, 1).show();
        } catch (Resources.NotFoundException unused) {
        }
        Intent intent = new Intent();
        if (string != null) {
            intent.putExtra(EXTRA_FATAL_MESSAGE, string);
        }
        setResult(0, intent);
        super.finish();
    }

    private boolean isLaunchedAsAlias() {
        if (getIntent().getComponent() == null) {
            return false;
        }
        return !r0.getClassName().equals(getClass().getName());
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (!isInMultiWindowMode()) {
            QtNative.setApplicationState(2);
        }
        this.m_delegate.displayManager().unregisterDisplayListener();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        QtNative.setApplicationState(4);
        if (QtNative.getStateDetails().isStarted) {
            this.m_delegate.displayManager().registerDisplayListener();
            QtWindow.updateWindows();
            QtWindowInsetsController.restoreFullScreenVisibility(this);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        QtNative.setApplicationState(0);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (!this.m_onCreateSucceeded) {
            System.exit(-1);
        }
        if (this.m_retainNonConfigurationInstance) {
            return;
        }
        QtNative.unregisterAppStateListener(this.m_delegate);
        QtNative.terminateQtNativeApplication();
        QtNative.setActivity(null);
        System.exit(0);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int iDiff = configuration.diff(this.m_prevConfig);
        if ((iDiff & 512) != 0) {
            this.m_delegate.handleUiModeChange();
        }
        if ((iDiff & 4) != 0) {
            QtNative.updateLocale();
        }
        this.m_prevConfig = new Configuration(configuration);
    }

    @Override // android.app.Activity
    public boolean onContextItemSelected(MenuItem menuItem) {
        this.m_delegate.setContextMenuVisible(false);
        return QtNative.onContextItemSelected(menuItem.getItemId(), menuItem.isChecked());
    }

    @Override // android.app.Activity
    public void onContextMenuClosed(Menu menu) {
        if (this.m_delegate.isContextMenuVisible()) {
            this.m_delegate.setContextMenuVisible(false);
            QtNative.onContextMenuClosed(menu);
        }
    }

    @Override // android.app.Activity, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        contextMenu.clearHeader();
        QtNative.onCreateContextMenu(contextMenu);
        this.m_delegate.setContextMenuVisible(true);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zHandleDispatchKeyEvent = this.m_delegate.getInputDelegate().handleDispatchKeyEvent(keyEvent);
        if (QtNative.getStateDetails().isStarted && zHandleDispatchKeyEvent) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean zHandleDispatchGenericMotionEvent = this.m_delegate.getInputDelegate().handleDispatchGenericMotionEvent(motionEvent);
        if (QtNative.getStateDetails().isStarted && zHandleDispatchGenericMotionEvent) {
            return true;
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        QtNative.ApplicationStateDetails stateDetails = QtNative.getStateDetails();
        if (stateDetails.isStarted && stateDetails.nativePluginIntegrationReady) {
            return this.m_delegate.getInputDelegate().onKeyDown(i, keyEvent);
        }
        return false;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        QtNative.ApplicationStateDetails stateDetails = QtNative.getStateDetails();
        if (stateDetails.isStarted && stateDetails.nativePluginIntegrationReady) {
            return this.m_delegate.getInputDelegate().onKeyUp(i, keyEvent);
        }
        return false;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.clear();
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        boolean zOnPrepareOptionsMenu = QtNative.onPrepareOptionsMenu(menu);
        this.m_delegate.setActionBarVisibility(zOnPrepareOptionsMenu && menu.size() > 0);
        return zOnPrepareOptionsMenu;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return QtNative.onOptionsItemSelected(menuItem.getItemId(), menuItem.isChecked());
    }

    @Override // android.app.Activity
    public void onOptionsMenuClosed(Menu menu) {
        QtNative.onOptionsMenuClosed(menu);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (getLastNonConfigurationInstance() == null) {
            return;
        }
        QtNative.setStarted(bundle.getBoolean("Started"));
        QtWindowInsetsController.restoreFullScreenVisibility(this);
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        super.onRetainNonConfigurationInstance();
        this.m_retainNonConfigurationInstance = true;
        return true;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("Started", QtNative.getStateDetails().isStarted);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            QtWindowInsetsController.restoreFullScreenVisibility(this);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        addReferrer(intent);
        QtNative.onNewIntent(intent);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        QtNative.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        QtNative.sendRequestPermissionsResult(i, iArr);
    }

    public void hideSplashScreen(int i) {
        this.m_delegate.hideSplashScreen(i);
    }
}
