package com.svpteam;

import android.content.ContentUris;
import android.database.ContentObserver;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Size;

/* JADX INFO: loaded from: classes.dex */
public class MediaStoreUtils {
    protected static SVPActivityBase svp;

    protected void onDestroy() {
    }

    public class VideoInfo {
        public int duration;
        public String name;
        public String path;
        public int size;
        public int time;
        public String uri;

        public VideoInfo() {
        }
    }

    public MediaStoreUtils(SVPActivityBase sVPActivityBase) {
        svp = sVPActivityBase;
    }

    public void addListener(final String str) {
        svp.getContentResolver().registerContentObserver(MediaStore.Video.Media.getContentUri(str), true, new ContentObserver(null) { // from class: com.svpteam.MediaStoreUtils.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                SVPActivityBase.mediaChanged(str);
            }
        });
    }

    public Bitmap getThumbnail(String str) {
        Uri contentUri;
        Uri uriWithAppendedId;
        long id;
        if (str.startsWith("content://")) {
            uriWithAppendedId = Uri.parse(str);
            id = -1;
        } else {
            if (Build.VERSION.SDK_INT >= 29) {
                contentUri = MediaStore.Video.Media.getContentUri("external");
            } else {
                contentUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
            }
            Uri uri = contentUri;
            Cursor cursorQuery = svp.getContentResolver().query(uri, new String[]{"_id"}, "_data=? ", new String[]{str}, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                long j = cursorQuery.getInt(cursorQuery.getColumnIndex("_id"));
                cursorQuery.close();
                uriWithAppendedId = ContentUris.withAppendedId(uri, j);
                id = j;
            }
            return null;
        }
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                return svp.getContentResolver().loadThumbnail(uriWithAppendedId, new Size(256, 256), null);
            }
            if (id < 0) {
                id = ContentUris.parseId(uriWithAppendedId);
            }
            return MediaStore.Video.Thumbnails.getThumbnail(svp.getContentResolver(), id, 1, null);
        } catch (Exception unused) {
        }
    }

    public boolean isReadable(String str) {
        try {
            Cursor cursorQuery = svp.getContentResolver().query(str != "external" ? MediaStore.Video.Media.getContentUri(str) : MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, null, null, null);
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00cc A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.svpteam.MediaStoreUtils.VideoInfo[] readVideos(java.lang.String r20, int r21) {
        /*
            Method dump skipped, instruction units count: 215
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.svpteam.MediaStoreUtils.readVideos(java.lang.String, int):com.svpteam.MediaStoreUtils$VideoInfo[]");
    }
}
