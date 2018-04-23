.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/android/aidl/BaseStub;-><init>()V

    .line 33
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;
    .locals 2

    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 p0, 0x0

    return-object p0

    .line 40
    :cond_0
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlayCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 51
    return p4

    .line 53
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 65
    const/4 p1, 0x0

    return p1

    .line 60
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayStatusChanged(I)V

    .line 62
    goto :goto_0

    .line 55
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->overlayScrollChanged(F)V

    .line 57
    nop

    .line 68
    :goto_0
    return p4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
