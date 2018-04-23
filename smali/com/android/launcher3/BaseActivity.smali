.class public abstract Lcom/android/launcher3/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field final mDPChangeListeners:Ljava/util/ArrayList;

.field public mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field mStarted:Z

.field protected mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

.field protected mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;
    .locals 1

    .line 62
    instance-of v0, p0, Lcom/android/launcher3/BaseActivity;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Lcom/android/launcher3/BaseActivity;

    return-object p0

    .line 65
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public final addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSystemUiController()Lcom/android/launcher3/util/SystemUiController;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/launcher3/util/SystemUiController;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SystemUiController;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mSystemUiController:Lcom/android/launcher3/util/SystemUiController;

    return-object v0
.end method

.method public final getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowModeCompat()Z

    move-result v1

    .line 51
    invoke-static {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->newInstance(Landroid/content/Context;ZZ)Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    return-object v0
.end method

.method public final isInMultiWindowModeCompat()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 84
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 90
    return-void
.end method
