package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.AttributionSource;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseGmsClient<T extends IInterface> {
    public static final int CONNECT_STATE_CONNECTED = 4;
    public static final int CONNECT_STATE_DISCONNECTED = 1;
    public static final int CONNECT_STATE_DISCONNECTING = 5;
    public static final String DEFAULT_ACCOUNT = "<<default account>>";
    public static final String KEY_PENDING_INTENT = "pendingIntent";
    private final String zzA;
    private volatile String zzB;
    private volatile AttributionSourceWrapper zzC;
    private ConnectionResult zzD;
    private boolean zzE;
    private volatile zzj zzF;
    private UserHandle zzG;
    private volatile int zzH;
    zzv zza;
    final Handler zzb;
    protected ConnectionProgressReportCallbacks zzc;
    protected AtomicInteger zzd;
    private int zzf;
    private long zzg;
    private long zzh;
    private int zzi;
    private long zzj;
    private volatile String zzk;
    private final boolean zzl;
    private final Context zzm;
    private final Looper zzn;
    private final GmsClientSupervisor zzo;
    private final GoogleApiAvailabilityLight zzp;
    private final Object zzq;
    private final Object zzr;
    private IGmsServiceBroker zzs;
    private IInterface zzt;
    private final ArrayList zzu;
    private zze zzv;
    private int zzw;
    private final BaseConnectionCallbacks zzx;
    private final BaseOnConnectionFailedListener zzy;
    private final int zzz;
    private static final Feature[] zze = new Feature[0];
    public static final String[] GOOGLE_PLUS_REQUIRED_FEATURES = {"service_esmobile", "service_googleme"};

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
    public interface BaseConnectionCallbacks {
        public static final int CAUSE_DEAD_OBJECT_EXCEPTION = 3;
        public static final int CAUSE_SERVICE_DISCONNECTED = 1;

        void onConnected(Bundle bundle);

        void onConnectionSuspended(int i);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
    public interface BaseOnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
    public interface ConnectionProgressReportCallbacks {
        void onReportServiceBinding(ConnectionResult connectionResult);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
    protected class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {
        final /* synthetic */ BaseGmsClient zza;

        public LegacyClientCallbackAdapter(BaseGmsClient baseGmsClient) {
            java.util.Objects.requireNonNull(baseGmsClient);
            this.zza = baseGmsClient;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void onReportServiceBinding(ConnectionResult connectionResult) {
            if (connectionResult.isSuccess()) {
                BaseGmsClient baseGmsClient = this.zza;
                baseGmsClient.getRemoteService(null, baseGmsClient.getScopes());
            } else {
                BaseGmsClient baseGmsClient2 = this.zza;
                if (baseGmsClient2.zzp() != null) {
                    baseGmsClient2.zzp().onConnectionFailed(connectionResult);
                }
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
    public interface SignOutCallbacks {
        void onSignOutComplete();
    }

    protected BaseGmsClient(Context context, Handler handler, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        this.zzk = null;
        this.zzq = new Object();
        this.zzr = new Object();
        this.zzu = new ArrayList();
        this.zzw = 1;
        this.zzD = null;
        this.zzE = false;
        this.zzF = null;
        this.zzd = new AtomicInteger(0);
        this.zzH = -1;
        Preconditions.checkNotNull(context, "Context must not be null");
        this.zzm = context;
        Preconditions.checkNotNull(handler, "Handler must not be null");
        this.zzb = handler;
        this.zzn = handler.getLooper();
        Preconditions.checkNotNull(gmsClientSupervisor, "Supervisor must not be null");
        this.zzo = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, "API availability must not be null");
        this.zzp = googleApiAvailabilityLight;
        this.zzz = i;
        this.zzx = baseConnectionCallbacks;
        this.zzy = baseOnConnectionFailedListener;
        this.zzA = null;
        this.zzl = gmsClientSupervisor.zza();
    }

    private final boolean zzu(int i, IInterface iInterface, int i2) {
        boolean z;
        ConnectionResult connectionResultZzb;
        zzv zzvVar;
        int i3 = i;
        Preconditions.checkArgument((i3 == 4) == (iInterface != null));
        synchronized (this.zzq) {
            if (this.zzl) {
                if (i2 != -1 && i2 != this.zzd.get()) {
                    return false;
                }
                if (i3 == 2) {
                    this.zzH = -1;
                    i3 = 2;
                }
            }
            this.zzw = i3;
            this.zzt = iInterface;
            Bundle bundle = null;
            if (i3 == 1) {
                z = true;
                zze zzeVar = this.zzv;
                if (zzeVar != null) {
                    if (this.zzG == null || Build.VERSION.SDK_INT < 33) {
                        GmsClientSupervisor gmsClientSupervisor = this.zzo;
                        String strZza = this.zza.zza();
                        Preconditions.checkNotNull(strZza);
                        String str = strZza;
                        gmsClientSupervisor.zzd(new zzo(strZza, this.zza.zzb(), 4225, this.zza.zzc(), null), zzeVar, zza());
                    } else {
                        GmsClientSupervisor gmsClientSupervisor2 = this.zzo;
                        String strZza2 = this.zza.zza();
                        Preconditions.checkNotNull(strZza2);
                        String str2 = strZza2;
                        gmsClientSupervisor2.zzc(strZza2, this.zza.zzb(), 4225, zzeVar, zza(), this.zza.zzc(), this.zzG);
                    }
                    this.zzv = null;
                }
            } else if (i3 == 2 || i3 == 3) {
                zze zzeVar2 = this.zzv;
                if (zzeVar2 == null || (zzvVar = this.zza) == null) {
                    z = true;
                } else {
                    String strZza3 = zzvVar.zza();
                    String strZzb = zzvVar.zzb();
                    z = true;
                    StringBuilder sb = new StringBuilder(String.valueOf(strZza3).length() + 70 + String.valueOf(strZzb).length());
                    sb.append("Calling connect() while still connected, missing disconnect() for ");
                    sb.append(strZza3);
                    sb.append(" on ");
                    sb.append(strZzb);
                    Log.e("GmsClient", sb.toString());
                    GmsClientSupervisor gmsClientSupervisor3 = this.zzo;
                    String strZza4 = this.zza.zza();
                    Preconditions.checkNotNull(strZza4);
                    String str3 = strZza4;
                    gmsClientSupervisor3.zzc(strZza4, this.zza.zzb(), 4225, zzeVar2, zza(), this.zza.zzc(), this.zzG);
                    this.zzd.incrementAndGet();
                }
                zze zzeVar3 = new zze(this, this.zzd.get(), this.zzw == 3 ? z : false);
                this.zzv = zzeVar3;
                zzv zzvVar2 = (this.zzw != 3 || getLocalStartServiceAction() == null) ? new zzv(getStartServicePackage(), getStartServiceAction(), false, 4225, getUseDynamicLookup()) : new zzv(getContext().getPackageName(), getLocalStartServiceAction(), true, 4225, false);
                this.zza = zzvVar2;
                if (zzvVar2.zzc() && getMinApkVersion() < 17895000) {
                    String strZza5 = this.zza.zza();
                    String.valueOf(strZza5);
                    throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(strZza5)));
                }
                if (this.zzG == null || Build.VERSION.SDK_INT < 33) {
                    GmsClientSupervisor gmsClientSupervisor4 = this.zzo;
                    String strZza6 = this.zza.zza();
                    Preconditions.checkNotNull(strZza6);
                    String str4 = strZza6;
                    connectionResultZzb = gmsClientSupervisor4.zzb(new zzo(strZza6, this.zza.zzb(), 4225, this.zza.zzc(), null), zzeVar3, zza(), getBindServiceExecutor());
                } else {
                    GmsClientSupervisor gmsClientSupervisor5 = this.zzo;
                    String strZza7 = this.zza.zza();
                    Preconditions.checkNotNull(strZza7);
                    String str5 = strZza7;
                    String strZzb2 = this.zza.zzb();
                    String strZza8 = zza();
                    boolean zZzc = this.zza.zzc();
                    UserHandle userHandle = this.zzG;
                    Preconditions.checkNotNull(userHandle);
                    connectionResultZzb = gmsClientSupervisor5.zzb(new zzo(strZza7, strZzb2, 4225, zZzc, userHandle), zzeVar3, strZza8, null);
                }
                if (!connectionResultZzb.isSuccess()) {
                    String strZza9 = this.zza.zza();
                    String strZzb3 = this.zza.zzb();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strZza9).length() + 34 + String.valueOf(strZzb3).length());
                    sb2.append("unable to connect to service: ");
                    sb2.append(strZza9);
                    sb2.append(" on ");
                    sb2.append(strZzb3);
                    Log.w("GmsClient", sb2.toString());
                    int errorCode = connectionResultZzb.getErrorCode() == -1 ? 16 : connectionResultZzb.getErrorCode();
                    if (connectionResultZzb.getResolution() != null) {
                        bundle = new Bundle();
                        bundle.putParcelable(KEY_PENDING_INTENT, connectionResultZzb.getResolution());
                    }
                    zzb(errorCode, bundle, this.zzd.get());
                }
            } else {
                if (i3 == 4) {
                    Preconditions.checkNotNull(iInterface);
                    onConnectedLocked(iInterface);
                }
                z = true;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public final boolean zzg(int i, int i2, IInterface iInterface, int i3) {
        synchronized (this.zzq) {
            if (this.zzw != i) {
                return false;
            }
            return zzu(i2, iInterface, i3);
        }
    }

    public void checkAvailabilityAndConnect() {
        int iIsGooglePlayServicesAvailable = this.zzp.isGooglePlayServicesAvailable(this.zzm, getMinApkVersion());
        if (iIsGooglePlayServicesAvailable == 0) {
            connect(new LegacyClientCallbackAdapter(this));
        } else {
            zzu(1, null, -1);
            triggerNotAvailable(new LegacyClientCallbackAdapter(this), iIsGooglePlayServicesAvailable, null);
        }
    }

    protected final void checkConnected() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.zzc = connectionProgressReportCallbacks;
        zzu(2, null, -1);
    }

    protected abstract T createServiceInterface(IBinder iBinder);

    public void disconnect() {
        if (this.zzl) {
            Handler handler = this.zzb;
            if (handler instanceof zzb) {
                handler.removeCallbacksAndMessages(null);
            }
        }
        this.zzd.incrementAndGet();
        ArrayList arrayList = this.zzu;
        synchronized (arrayList) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((zzc) arrayList.get(i)).zzf();
            }
            arrayList.clear();
        }
        synchronized (this.zzr) {
            this.zzs = null;
        }
        zzu(1, null, -1);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        IInterface iInterface;
        IGmsServiceBroker iGmsServiceBroker;
        long j;
        synchronized (this.zzq) {
            i = this.zzw;
            iInterface = this.zzt;
        }
        synchronized (this.zzr) {
            iGmsServiceBroker = this.zzs;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        if (i == 1) {
            printWriter.print("DISCONNECTED");
        } else if (i == 2) {
            printWriter.print("REMOTE_CONNECTING");
        } else if (i == 3) {
            printWriter.print("LOCAL_CONNECTING");
        } else if (i == 4) {
            printWriter.print("CONNECTED");
        } else if (i != 5) {
            printWriter.print("UNKNOWN");
        } else {
            printWriter.print("DISCONNECTING");
        }
        printWriter.append(" mService=");
        if (iInterface == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) getServiceDescriptor()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(iInterface.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (iGmsServiceBroker == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(iGmsServiceBroker.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzh > 0) {
            PrintWriter printWriterAppend = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j2 = this.zzh;
            String str2 = simpleDateFormat.format(new Date(j2));
            j = 0;
            StringBuilder sb = new StringBuilder(String.valueOf(j2).length() + 1 + String.valueOf(str2).length());
            sb.append(j2);
            sb.append(" ");
            sb.append(str2);
            printWriterAppend.println(sb.toString());
        } else {
            j = 0;
        }
        if (this.zzg > j) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            int i2 = this.zzf;
            if (i2 == 1) {
                printWriter.append("CAUSE_SERVICE_DISCONNECTED");
            } else if (i2 == 2) {
                printWriter.append("CAUSE_NETWORK_LOST");
            } else if (i2 != 3) {
                printWriter.append((CharSequence) String.valueOf(i2));
            } else {
                printWriter.append("CAUSE_DEAD_OBJECT_EXCEPTION");
            }
            PrintWriter printWriterAppend2 = printWriter.append(" lastSuspendedTime=");
            long j3 = this.zzg;
            String str3 = simpleDateFormat.format(new Date(j3));
            StringBuilder sb2 = new StringBuilder(String.valueOf(j3).length() + 1 + String.valueOf(str3).length());
            sb2.append(j3);
            sb2.append(" ");
            sb2.append(str3);
            printWriterAppend2.println(sb2.toString());
        }
        if (this.zzj > j) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.getStatusCodeString(this.zzi));
            PrintWriter printWriterAppend3 = printWriter.append(" lastFailedTime=");
            long j4 = this.zzj;
            String str4 = simpleDateFormat.format(new Date(j4));
            StringBuilder sb3 = new StringBuilder(String.valueOf(j4).length() + 1 + String.valueOf(str4).length());
            sb3.append(j4);
            sb3.append(" ");
            sb3.append(str4);
            printWriterAppend3.println(sb3.toString());
        }
    }

    protected boolean enableLocalFallback() {
        return false;
    }

    public Account getAccount() {
        return null;
    }

    public Feature[] getApiFeatures() {
        return zze;
    }

    public AttributionSourceWrapper getAttributionSourceWrapper() {
        return this.zzC;
    }

    public final Feature[] getAvailableFeatures() {
        zzj zzjVar = this.zzF;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzb;
    }

    protected Executor getBindServiceExecutor() {
        return null;
    }

    public Bundle getConnectionHint() {
        return null;
    }

    public ConnectionThrottlingConfig getConnectionThrottlingConfig() {
        zzj zzjVar = this.zzF;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zze;
    }

    public final Context getContext() {
        return this.zzm;
    }

    public String getEndpointPackageName() {
        zzv zzvVar;
        if (!isConnected() || (zzvVar = this.zza) == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return zzvVar.zzb();
    }

    public int getGCoreServiceId() {
        return this.zzz;
    }

    protected Bundle getGetServiceRequestExtraArgs() {
        return new Bundle();
    }

    public String getLastDisconnectMessage() {
        return this.zzk;
    }

    protected String getLocalStartServiceAction() {
        return null;
    }

    public final Looper getLooper() {
        return this.zzn;
    }

    public int getMinApkVersion() {
        return GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    public void getRemoteService(IAccountAccessor iAccountAccessor, Set<Scope> set) {
        AttributionSource attributionSource;
        Bundle getServiceRequestExtraArgs = getGetServiceRequestExtraArgs();
        String attributionTag = (Build.VERSION.SDK_INT < 31 || this.zzC == null || (attributionSource = this.zzC.getAttributionSource()) == null || attributionSource.getAttributionTag() == null) ? this.zzB : attributionSource.getAttributionTag();
        String str = attributionTag;
        int i = this.zzz;
        int i2 = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Scope[] scopeArr = GetServiceRequest.zza;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.zzb;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i, i2, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.zzf = this.zzm.getPackageName();
        getServiceRequest.zzi = getServiceRequestExtraArgs;
        if (set != null) {
            getServiceRequest.zzh = (Scope[]) set.toArray(new Scope[0]);
        }
        if (requiresSignIn()) {
            Account account = getAccount();
            if (account == null) {
                account = new Account("<<default account>>", AccountType.GOOGLE);
            }
            getServiceRequest.zzj = account;
            if (iAccountAccessor != null) {
                getServiceRequest.zzg = iAccountAccessor.asBinder();
            }
        } else if (requiresAccount()) {
            getServiceRequest.zzj = getAccount();
        }
        getServiceRequest.zzk = zze;
        getServiceRequest.zzl = getApiFeatures();
        if (usesClientTelemetry()) {
            getServiceRequest.zzo = true;
        }
        try {
            synchronized (this.zzr) {
                IGmsServiceBroker iGmsServiceBroker = this.zzs;
                if (iGmsServiceBroker != null) {
                    iGmsServiceBroker.getService(new zzd(this, this.zzd.get()), getServiceRequest);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            triggerConnectionSuspended(3);
        } catch (RemoteException e2) {
            e = e2;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            onPostInitHandler(8, null, null, this.zzd.get());
        }
    }

    protected Set<Scope> getScopes() {
        return Collections.emptySet();
    }

    public final T getService() throws DeadObjectException {
        T t;
        synchronized (this.zzq) {
            if (this.zzw == 5) {
                throw new DeadObjectException();
            }
            checkConnected();
            t = (T) this.zzt;
            Preconditions.checkNotNull(t, "Client is connected but service is null");
        }
        return t;
    }

    protected abstract String getServiceDescriptor();

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    protected abstract String getStartServiceAction();

    protected String getStartServicePackage() {
        return "com.google.android.gms";
    }

    public ConnectionTelemetryConfiguration getTelemetryConfiguration() {
        zzj zzjVar = this.zzF;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.zzd;
    }

    protected boolean getUseDynamicLookup() {
        return getMinApkVersion() >= 211700000;
    }

    public boolean hasConnectionInfo() {
        return this.zzF != null;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.zzq) {
            z = this.zzw == 4;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.zzq) {
            int i = this.zzw;
            z = true;
            if (i != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    protected void onConnectedLocked(T t) {
        this.zzh = System.currentTimeMillis();
    }

    protected void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzi = connectionResult.getErrorCode();
        this.zzj = System.currentTimeMillis();
    }

    protected void onConnectionSuspended(int i) {
        this.zzf = i;
        this.zzg = System.currentTimeMillis();
    }

    protected void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        zzf zzfVar = new zzf(this, i, iBinder, bundle, i2);
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, zzfVar));
    }

    public void onUserSignOut(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.onSignOutComplete();
    }

    public boolean providesSignIn() {
        return false;
    }

    public boolean requiresAccount() {
        return false;
    }

    public boolean requiresGooglePlayServices() {
        return true;
    }

    public boolean requiresSignIn() {
        return false;
    }

    public void setAttributionSourceWrapper(AttributionSourceWrapper attributionSourceWrapper) {
        this.zzC = attributionSourceWrapper;
    }

    public void setAttributionTag(String str) {
        this.zzB = str;
    }

    public void setUserHandle(UserHandle userHandle) {
        if (isConnected()) {
            throw new IllegalStateException("setUserHandle must be called before connect()");
        }
        this.zzG = userHandle;
    }

    public void triggerConnectionSuspended(int i) {
        int i2 = this.zzd.get();
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(6, i2, i));
    }

    protected void triggerNotAvailable(ConnectionProgressReportCallbacks connectionProgressReportCallbacks, int i, PendingIntent pendingIntent) {
        Preconditions.checkNotNull(connectionProgressReportCallbacks, "Connection progress callbacks cannot be null.");
        this.zzc = connectionProgressReportCallbacks;
        int i2 = this.zzd.get();
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(3, i2, i, pendingIntent));
    }

    public boolean usesClientTelemetry() {
        return false;
    }

    public boolean usesClientThrottling() {
        return true;
    }

    protected final String zza() {
        String str = this.zzA;
        return str == null ? this.zzm.getClass().getName() : str;
    }

    protected final void zzb(int i, Bundle bundle, int i2) {
        zzg zzgVar = new zzg(this, i, bundle, i2);
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, zzgVar));
    }

    final /* synthetic */ void zzc(zzj zzjVar) {
        this.zzF = zzjVar;
        if (usesClientTelemetry()) {
            ConnectionTelemetryConfiguration connectionTelemetryConfiguration = zzjVar.zzd;
            RootTelemetryConfigManager.getInstance().zza(connectionTelemetryConfiguration == null ? null : connectionTelemetryConfiguration.zza());
        }
    }

    final /* synthetic */ boolean zzd(int i, IInterface iInterface) {
        return zzu(i, null, -1);
    }

    final /* synthetic */ boolean zze(int i, IInterface iInterface, int i2) {
        return zzu(i, null, i2);
    }

    final /* synthetic */ boolean zzf(int i, int i2, IInterface iInterface) {
        return zzg(i, i2, iInterface, -1);
    }

    final /* synthetic */ void zzh(int i) {
        int i2;
        int i3;
        synchronized (this.zzq) {
            i2 = this.zzw;
        }
        if (i2 == 3) {
            this.zzE = true;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(i3, this.zzd.get(), 16));
    }

    final /* synthetic */ void zzi(int i, int i2, boolean z) {
        int i3;
        if (z) {
            this.zzH = i2;
            i3 = 5;
        } else {
            i3 = 4;
        }
        Handler handler = this.zzb;
        handler.sendMessage(handler.obtainMessage(i3, i2, 16));
    }

    final /* synthetic */ boolean zzj() {
        if (this.zzl) {
            if (this.zzH == this.zzd.get()) {
                return false;
            }
        } else if (this.zzE) {
            return false;
        }
        if (TextUtils.isEmpty(getServiceDescriptor()) || TextUtils.isEmpty(getLocalStartServiceAction())) {
            return false;
        }
        try {
            Class.forName(getServiceDescriptor());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    final /* synthetic */ boolean zzk() {
        return this.zzl;
    }

    final /* synthetic */ Object zzl() {
        return this.zzr;
    }

    final /* synthetic */ void zzm(IGmsServiceBroker iGmsServiceBroker) {
        this.zzs = iGmsServiceBroker;
    }

    final /* synthetic */ ArrayList zzn() {
        return this.zzu;
    }

    final /* synthetic */ BaseConnectionCallbacks zzo() {
        return this.zzx;
    }

    final /* synthetic */ BaseOnConnectionFailedListener zzp() {
        return this.zzy;
    }

    final /* synthetic */ ConnectionResult zzq() {
        return this.zzD;
    }

    final /* synthetic */ void zzr(ConnectionResult connectionResult) {
        this.zzD = connectionResult;
    }

    final /* synthetic */ boolean zzs() {
        return this.zzE;
    }

    final /* synthetic */ int zzt() {
        return this.zzH;
    }

    public IBinder getServiceBrokerBinder() {
        synchronized (this.zzr) {
            IGmsServiceBroker iGmsServiceBroker = this.zzs;
            if (iGmsServiceBroker == null) {
                return null;
            }
            return iGmsServiceBroker.asBinder();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    protected BaseGmsClient(Context context, Looper looper, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
        Preconditions.checkNotNull(baseConnectionCallbacks);
        Preconditions.checkNotNull(baseOnConnectionFailedListener);
        this(context, looper, gmsClientSupervisor, googleApiAvailabilityLight, i, baseConnectionCallbacks, baseOnConnectionFailedListener, str);
    }

    public void disconnect(String str) {
        this.zzk = str;
        disconnect();
    }

    protected BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        this.zzk = null;
        this.zzq = new Object();
        this.zzr = new Object();
        this.zzu = new ArrayList();
        this.zzw = 1;
        this.zzD = null;
        this.zzE = false;
        this.zzF = null;
        this.zzd = new AtomicInteger(0);
        this.zzH = -1;
        Preconditions.checkNotNull(context, "Context must not be null");
        this.zzm = context;
        Preconditions.checkNotNull(looper, "Looper must not be null");
        this.zzn = looper;
        Preconditions.checkNotNull(gmsClientSupervisor, "Supervisor must not be null");
        this.zzo = gmsClientSupervisor;
        Preconditions.checkNotNull(googleApiAvailabilityLight, "API availability must not be null");
        this.zzp = googleApiAvailabilityLight;
        this.zzb = new zzb(this, looper);
        this.zzz = i;
        this.zzx = baseConnectionCallbacks;
        this.zzy = baseOnConnectionFailedListener;
        this.zzA = str;
        this.zzl = gmsClientSupervisor.zza();
    }
}
