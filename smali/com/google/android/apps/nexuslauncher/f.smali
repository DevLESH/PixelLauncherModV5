.class public Lcom/google/android/apps/nexuslauncher/f;
.super Lcom/google/android/apps/nexuslauncher/c/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/google/android/apps/nexuslauncher/g;


# instance fields
.field private final mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final qX:I

.field private final qY:Lcom/google/android/apps/nexuslauncher/instantapps/b;

.field private qZ:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/c/d;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 61
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 62
    const v0, 0x7f0e0027

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 63
    iget-object v0, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qX:I

    .line 64
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->d(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/instantapps/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->qY:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    .line 65
    return-void
.end method

.method private a(ZLjava/lang/String;)Ljava/util/List;
    .locals 7

    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 94
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 95
    new-instance v3, Lcom/google/android/apps/nexuslauncher/c/a;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/f;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/f;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v5, v6, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/nexuslauncher/c/a;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return-object p1
.end method

.method private a(ZLjava/util/List;)V
    .locals 0

    .line 193
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    .line 197
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/apps/nexuslauncher/f;->f(Ljava/util/List;)V

    .line 198
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    .line 200
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 147
    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    .line 148
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rF:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->onAppsUpdated()V

    .line 149
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 156
    invoke-direct {p0, p5, p1}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/util/List;)V

    .line 158
    nop

    .line 159
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/apps/nexuslauncher/c/a;

    .line 161
    const-string p4, "@instantapp"

    .line 162
    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/c/a;->dO()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 163
    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/f;->qY:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    invoke-virtual {p3}, Lcom/google/android/apps/nexuslauncher/c/a;->getPackage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p5, p4, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sv:Lcom/google/android/apps/nexuslauncher/instantapps/c;

    iget-object p5, p5, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sx:Ljava/util/Map;

    invoke-interface {p5, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p4, p4, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mWorker:Landroid/os/Handler;

    const/4 p5, 0x1

    invoke-static {p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 164
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 167
    :cond_2
    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object p4, p4, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p3, p4}, Lcom/google/android/apps/nexuslauncher/c/a;->a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/AppInfo;

    move-result-object p3

    .line 168
    if-eqz p3, :cond_4

    .line 169
    iget-boolean p4, p3, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    if-eqz p4, :cond_3

    .line 171
    iget-object p4, p0, Lcom/google/android/apps/nexuslauncher/f;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {p4, p0, p3}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 173
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 176
    :cond_4
    :goto_0
    iget p3, p0, Lcom/google/android/apps/nexuslauncher/f;->qX:I

    if-lt p2, p3, :cond_0

    .line 177
    :cond_5
    return-void
.end method

.method public final bS()V
    .locals 1

    .line 69
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/c/d;->bS()V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qY:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sw:Lcom/google/android/apps/nexuslauncher/g;

    .line 71
    return-void
.end method

.method public final bT()Ljava/util/List;
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->zp:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_predictions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 81
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/f;->vB:Landroid/content/SharedPreferences;

    const-string v3, "reflection_last_predictions"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    .line 83
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bU()V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/f;->bT()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/f;->a(ZLjava/util/List;)V

    .line 205
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/f;->f(Ljava/util/List;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qZ:Ljava/util/List;

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    :cond_1
    return-void
.end method

.method public final reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 0

    .line 189
    return-void
.end method

.method public final unregister()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/c/d;->unregister()V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/f;->qY:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sw:Lcom/google/android/apps/nexuslauncher/g;

    .line 77
    return-void
.end method
