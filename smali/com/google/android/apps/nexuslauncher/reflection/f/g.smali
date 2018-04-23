.class Lcom/google/android/apps/nexuslauncher/reflection/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/t;


# instance fields
.field final synthetic wN:Lcom/google/android/apps/nexuslauncher/reflection/f/f;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/g;->wN:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 11

    .line 222
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/g;->wN:Lcom/google/android/apps/nexuslauncher/reflection/f/f;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.places.ui.PLACE_UPDATE_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/google/android/gms/location/places/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/i;-><init>()V

    sget-wide v1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wH:J

    iput-wide v1, v0, Lcom/google/android/gms/location/places/i;->Pe:J

    const/16 v1, 0x66

    iput v1, v0, Lcom/google/android/gms/location/places/i;->gp:I

    iget-object v1, v0, Lcom/google/android/gms/location/places/i;->RN:Lcom/google/android/gms/location/places/PlaceFilter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-direct {v1}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/location/places/i;->RN:Lcom/google/android/gms/location/places/PlaceFilter;

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/location/places/i;->RN:Lcom/google/android/gms/location/places/PlaceFilter;

    iget v1, v0, Lcom/google/android/gms/location/places/i;->gp:I

    invoke-static {v1}, Lcom/google/android/gms/location/places/PlaceRequest;->ba(I)V

    new-instance v1, Lcom/google/android/gms/location/places/PlaceRequest;

    iget-object v3, v0, Lcom/google/android/gms/location/places/i;->RN:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-wide v4, v0, Lcom/google/android/gms/location/places/i;->Pe:J

    iget v6, v0, Lcom/google/android/gms/location/places/i;->gp:I

    iget-wide v7, v0, Lcom/google/android/gms/location/places/i;->PU:J

    iget-boolean v9, v0, Lcom/google/android/gms/location/places/i;->RO:Z

    iget-boolean v10, v0, Lcom/google/android/gms/location/places/i;->RP:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/location/places/PlaceRequest;-><init>(Lcom/google/android/gms/location/places/PlaceFilter;JIJZZ)V

    iput-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wI:Lcom/google/android/gms/location/places/PlaceRequest;

    sget-object v0, Lcom/google/android/gms/location/places/j;->RV:Lcom/google/android/gms/location/places/e;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wJ:Lcom/google/android/gms/common/api/r;

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->wI:Lcom/google/android/gms/location/places/PlaceRequest;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/f;->dg()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/e;->a(Lcom/google/android/gms/common/api/r;Lcom/google/android/gms/location/places/PlaceRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/v;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/f/i;

    invoke-direct {v1, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/i;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/f/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/v;->a(Lcom/google/android/gms/common/api/z;)V

    .line 223
    :cond_1
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .line 215
    return-void
.end method
