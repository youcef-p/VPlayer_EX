package com.google.android.gms.libs.throttling;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public final class ThrottlingPolicy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ThrottlingPolicy> CREATOR = new zze();
    private final boolean zza;
    private ThrottlingLimits zzb;
    private ThrottlingOverride[] zzc;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
    public static final class Builder {
        private final ThrottlingPolicy zza = new ThrottlingPolicy(null);
    }

    private ThrottlingPolicy() {
        this.zza = false;
    }

    ThrottlingPolicy(boolean z, ThrottlingLimits throttlingLimits, ThrottlingOverride[] throttlingOverrideArr) {
        this.zza = z;
        this.zzb = throttlingLimits;
        this.zzc = throttlingOverrideArr;
    }

    /* synthetic */ ThrottlingPolicy(byte[] bArr) {
        this.zza = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ThrottlingPolicy) {
            ThrottlingPolicy throttlingPolicy = (ThrottlingPolicy) obj;
            if (Objects.equal(Boolean.valueOf(this.zza), Boolean.valueOf(throttlingPolicy.zza)) && Objects.equal(this.zzb, throttlingPolicy.zzb) && Arrays.equals(this.zzc, throttlingPolicy.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.zza), this.zzb, Integer.valueOf(Arrays.hashCode(this.zzc)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zza);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.writeTypedArray(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
