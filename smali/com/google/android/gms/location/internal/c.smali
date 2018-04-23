.class public final Lcom/google/android/gms/location/internal/c;
.super Ljava/lang/Object;


# instance fields
.field final QB:Lcom/google/android/gms/location/internal/n;

.field private QC:Landroid/content/ContentProviderClient;

.field QD:Z

.field final QE:Ljava/util/Map;

.field final QF:Ljava/util/Map;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/internal/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/internal/c;->QC:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/internal/c;->QD:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/c;->QE:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/internal/c;->QF:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/location/internal/c;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/location/internal/c;->QB:Lcom/google/android/gms/location/internal/n;

    return-void
.end method


# virtual methods
.method public final gL()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/location/internal/c;->QB:Lcom/google/android/gms/location/internal/n;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/n;->eI()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/internal/c;->QB:Lcom/google/android/gms/location/internal/n;

    invoke-interface {v0}, Lcom/google/android/gms/location/internal/n;->eJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/zzam;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/internal/zzam;->zzdB(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
