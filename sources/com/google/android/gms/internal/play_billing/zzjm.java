package com.google.android.gms.internal.play_billing;

import androidx.core.view.MotionEventCompat;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzjm implements zzgs {
    static final zzgs zza = new zzjm();

    private zzjm() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzgs
    public final boolean zza(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                switch (i) {
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                    case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    case 36:
                    case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                    case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                        return true;
                    default:
                        return false;
                }
        }
    }
}
