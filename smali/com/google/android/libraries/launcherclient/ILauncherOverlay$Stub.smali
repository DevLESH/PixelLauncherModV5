.class public abstract Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .locals 2

    .line 160
    if-nez p0, :cond_0

    .line 161
    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    const-string v0, "com.google.android.libraries.launcherclient.ILauncherOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_1

    .line 165
    check-cast v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    return-object v0

    .line 167
    :cond_1
    new-instance v0, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->routeToSuperOrEnforceInterface(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 174
    return v0

    .line 176
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 263
    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 255
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 256
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startSearch([BLandroid/os/Bundle;)Z

    move-result p1

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-static {p3, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Z)V

    .line 260
    goto/16 :goto_0

    .line 222
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->setActivityState(I)V

    .line 224
    goto/16 :goto_0

    .line 198
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object p2

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 201
    goto/16 :goto_0

    .line 249
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->hasOverlayContent()Z

    move-result p1

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-static {p3, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Z)V

    .line 252
    goto :goto_0

    .line 243
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->isVoiceDetectionRunning()Z

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-static {p3, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Z)V

    .line 246
    goto :goto_0

    .line 237
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    goto :goto_0

    .line 232
    :pswitch_7
    invoke-static {p2}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 233
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->requestVoiceDetection(Z)V

    .line 234
    goto :goto_0

    .line 227
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 228
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->openOverlay(I)V

    .line 229
    goto :goto_0

    .line 218
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onResume()V

    .line 219
    goto :goto_0

    .line 214
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onPause()V

    .line 215
    goto :goto_0

    .line 209
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->closeOverlay(I)V

    .line 211
    goto :goto_0

    .line 204
    :pswitch_c
    invoke-static {p2}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;)Z

    move-result p1

    .line 205
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowDetached(Z)V

    .line 206
    goto :goto_0

    .line 191
    :pswitch_d
    sget-object p1, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/aidl/a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;

    move-result-object p3

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 194
    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    .line 195
    goto :goto_0

    .line 187
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->endScroll()V

    .line 188
    goto :goto_0

    .line 182
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->onScroll(F)V

    .line 184
    goto :goto_0

    .line 178
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->startScroll()V

    .line 179
    nop

    .line 266
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
