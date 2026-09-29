package org.qtproject.qt.android;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class QtContentFileEngine {
    private static String QtTag = "QtContentFileEngine";

    QtContentFileEngine() {
    }

    static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        try {
            if (hasPermission(uri, 1)) {
                return contentResolver.query(uri, strArr, str, strArr2, str2);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    static ParcelFileDescriptor openFileDescriptor(ContentResolver contentResolver, Uri uri, String str) {
        try {
            int i = str.contains("w") ? 2 : 0;
            if (str.contains("r")) {
                i |= 1;
            }
            if (!hasPermission(uri, i)) {
                Log.w(QtTag, "openFileDescriptor(): No permission for URI " + uri);
                return null;
            }
            return contentResolver.openFileDescriptor(uri, str);
        } catch (Exception e) {
            Log.w(QtTag, "openFileDescriptor() failed with " + e);
            return null;
        }
    }

    static boolean hasPermission(Uri uri, int i) {
        ProviderInfo providerInfoResolveContentProvider;
        Context context = QtNative.getContext();
        if (context.checkUriPermission(uri, Process.myPid(), Process.myUid(), i) == 0) {
            return true;
        }
        String authority = uri.getAuthority();
        return (authority == null || (providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(authority, 0)) == null || !context.getPackageName().equals(providerInfoResolveContentProvider.packageName)) ? false : true;
    }
}
