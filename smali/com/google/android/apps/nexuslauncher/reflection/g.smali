.class public Lcom/google/android/apps/nexuslauncher/reflection/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static tU:Lcom/google/android/apps/nexuslauncher/reflection/g;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mWorkerThread:Landroid/os/HandlerThread;

.field public tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

.field public final tV:Landroid/os/Handler;

.field private final tW:Lcom/android/launcher3/InvariantDeviceProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "reflection-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mWorkerThread:Landroid/os/HandlerThread;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    .line 68
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tW:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 69
    return-void
.end method

.method public static i(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;
    .locals 4

    .line 53
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/g;->tU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;-><init>(Landroid/content/Context;)V

    .line 56
    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/g;->tU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "pref_show_predictions"

    const/4 v3, 0x1

    .line 57
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 56
    invoke-virtual {v1, p0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->setEnabled(Z)V

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    sget-object p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tU:Lcom/google/android/apps/nexuslauncher/reflection/g;

    return-object p0

    .line 59
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 29

    move-object/from16 v0, p0

    .line 109
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    .line 147
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 141
    :pswitch_1
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v2, :cond_0

    .line 142
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->up:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iget-object v1, v1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->uR:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/apps/nexuslauncher/reflection/b/d;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/b/c;Landroid/content/ComponentName;JJ)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->cT()V

    .line 144
    :cond_0
    return v6

    .line 134
    :pswitch_2
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v1, :cond_e

    .line 135
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tW:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 136
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    const-string v2, "GEL"

    sget-object v7, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaR:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    const-string v8, "predictionEvent"

    const-string v9, ""

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uu:Lcom/google/android/apps/nexuslauncher/reflection/c;

    invoke-interface {v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->cK()J

    move-result-wide v10

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->um:Lcom/google/research/reflection/c/d;

    invoke-virtual {v3}, Lcom/google/research/reflection/c/d;->hX()Lcom/google/research/reflection/signal/b;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;Ljava/lang/String;Ljava/lang/String;JLcom/google/research/reflection/signal/b;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Z)V

    iget-object v7, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uw:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-eqz v7, :cond_1

    new-instance v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    invoke-direct {v7}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;-><init>()V

    const-string v8, "prediction_update"

    iput-object v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->vh:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    invoke-direct {v8}, Lcom/google/android/apps/nexuslauncher/reflection/e/f;-><init>()V

    iput-object v8, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->vH:Lcom/google/android/apps/nexuslauncher/reflection/e/f;

    goto :goto_0

    :cond_1
    move-object v7, v4

    move-object v8, v7

    :goto_0
    iget-object v9, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uo:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    iput v1, v9, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->uL:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ul:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {v10, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/j;->c(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Lcom/google/research/reflection/predictor/l;

    move-result-object v2

    iget-object v3, v2, Lcom/google/research/reflection/predictor/l;->aaJ:[D

    iget-object v2, v2, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    move-object v10, v4

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    :goto_1
    iget-object v14, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->up:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-virtual {v14, v2, v10}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->un:Lcom/google/android/apps/nexuslauncher/reflection/b/e;

    invoke-virtual {v10, v2, v12}, Lcom/google/android/apps/nexuslauncher/reflection/b/e;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->tT:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v10, v2, v13}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ur:Lcom/google/android/apps/nexuslauncher/reflection/b/g;

    invoke-virtual {v10, v2, v4}, Lcom/google/android/apps/nexuslauncher/reflection/b/g;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v10, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uo:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-virtual {v10, v2}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->j(Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_6

    iget-object v14, v10, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    invoke-virtual {v10, v2, v14}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v15

    const/4 v5, 0x0

    if-ltz v15, :cond_3

    invoke-interface {v2, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/research/reflection/predictor/m;

    iget-object v15, v14, Lcom/google/research/reflection/predictor/m;->aaN:Ljava/util/Set;

    const-string v4, "instant_app_filter"

    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v4, Landroid/content/ComponentName;

    const-string v15, "@instantapp"

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/research/reflection/predictor/m;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "instant_app_filter"

    invoke-direct {v14, v4, v5, v15}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget v15, v10, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->uL:I

    if-lez v15, :cond_4

    iget v10, v10, Lcom/google/android/apps/nexuslauncher/reflection/b/a;->uL:I

    sub-int/2addr v10, v6

    goto :goto_3

    :cond_4
    const/4 v10, 0x4

    :goto_3
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/predictor/m;

    iget v5, v5, Lcom/google/research/reflection/predictor/m;->vK:F

    nop

    :cond_5
    iput v5, v14, Lcom/google/research/reflection/predictor/m;->vK:F

    invoke-interface {v2, v4, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uq:Lcom/google/android/apps/nexuslauncher/reflection/b/f;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/nexuslauncher/reflection/b/f;->a(Ljava/util/List;Ljava/util/List;)V

    if-eqz v8, :cond_8

    if-eqz v3, :cond_7

    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/e/e;-><init>()V

    iput-object v4, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->vR:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    iget-object v4, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->vR:Lcom/google/android/apps/nexuslauncher/reflection/e/e;

    iput-object v3, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/e;->vn:[D

    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->vM:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-virtual {v0, v11}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->vN:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-virtual {v0, v12}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->vQ:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-virtual {v0, v13}, Lcom/google/android/apps/nexuslauncher/reflection/k;->i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    move-result-object v3

    iput-object v3, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/f;->vO:[Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->us:Lcom/google/android/apps/nexuslauncher/reflection/f;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/reflection/f;->cN()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_a

    invoke-interface {v9, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_b

    invoke-interface {v9, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v4, v8

    if-le v4, v1, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-interface {v2, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v4, v2

    :goto_5
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v4, v3}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    :cond_d
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->us:Lcom/google/android/apps/nexuslauncher/reflection/f;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v8, v10

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v5}, Lcom/google/android/apps/nexuslauncher/reflection/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/reflection/f;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/f;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/f;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v8, "reflection_last_predictions"

    invoke-interface {v3, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "reflection_last_shortcut_predictions"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "reflection_last_predictions_timestamp"

    invoke-interface {v1, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "prediction_order"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "prediction_order_by_rank"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v7, :cond_e

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uw:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-virtual {v0, v7}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/c;)V

    .line 138
    :cond_e
    return v6

    .line 123
    :pswitch_3
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 124
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/util/ComponentKey;

    .line 125
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    .line 126
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v5, :cond_13

    .line 127
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v5

    iget-object v7, v4, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 128
    invoke-virtual {v5, v7}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    .line 129
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_f

    iget-object v1, v4, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v8, v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaR:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    :goto_6
    move-object v8, v1

    move-object v7, v3

    goto :goto_7

    :cond_f
    const/4 v5, 0x6

    if-ne v1, v5, :cond_10

    iget-object v1, v4, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    const-string v5, "%s%s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v9, "_"

    const/4 v10, 0x0

    aput-object v9, v3, v10

    invoke-static {v1, v7, v8, v4}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaU:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    goto :goto_6

    :cond_10
    const/4 v3, 0x7

    if-ne v1, v3, :cond_13

    iget-object v1, v4, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v8, v3}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Landroid/content/ComponentName;JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaT:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    goto :goto_6

    :goto_7
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    const-string v1, "GEL"

    if-nez v8, :cond_11

    const-string v0, "Reflection.SvcHandler"

    const-string v1, "Empty event string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    const-string v3, ""

    iget-object v4, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v4, v4

    if-le v4, v6, :cond_12

    iget-object v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :cond_12
    move-object v9, v3

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uu:Lcom/google/android/apps/nexuslauncher/reflection/c;

    invoke-interface {v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->cK()J

    move-result-wide v10

    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/k;->um:Lcom/google/research/reflection/c/d;

    invoke-virtual {v3}, Lcom/google/research/reflection/c/d;->hX()Lcom/google/research/reflection/signal/b;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;Ljava/lang/String;Ljava/lang/String;JLcom/google/research/reflection/signal/b;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Z)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/apps/nexuslauncher/reflection/k;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V

    .line 131
    :cond_13
    :goto_8
    return v6

    .line 115
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    invoke-virtual {v1, v6}, Lcom/google/android/apps/nexuslauncher/reflection/k;->p(Z)V

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 116
    :cond_14
    return v6

    .line 111
    :pswitch_5
    move-object v5, v4

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/a;

    invoke-direct {v4, v1}, Lcom/google/android/apps/nexuslauncher/reflection/a;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/h;

    invoke-direct {v8}, Lcom/google/android/apps/nexuslauncher/reflection/h;-><init>()V

    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    const-string v9, "reflection.events"

    invoke-direct {v8, v1, v9}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-direct {v13, v8, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/a;Landroid/content/Context;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string v10, "client_actions"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v9, "pre_debug"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_16

    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    const-wide/32 v9, 0xa00000

    invoke-direct {v5, v8, v9, v10}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;-><init>(Ljava/io/File;J)V

    :cond_15
    :goto_9
    move-object/from16 v26, v5

    goto :goto_a

    :cond_16
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_9

    :goto_a
    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->j(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v14, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>(Landroid/content/Context;)V

    new-instance v15, Lcom/google/android/apps/nexuslauncher/reflection/b/e;

    invoke-direct {v15, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/e;-><init>(Landroid/content/Context;)V

    new-instance v12, Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-direct {v12, v1}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/google/android/apps/nexuslauncher/reflection/j;

    const-string v16, "foreground_evt_buf.properties"

    const/16 v17, 0x0

    move-object v7, v11

    move-object v8, v1

    move-object v9, v13

    move-object v10, v5

    move-object v3, v11

    move-object/from16 v11, v16

    move-object/from16 v23, v12

    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/j;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v12, Lcom/google/research/reflection/c/d;

    invoke-direct {v12}, Lcom/google/research/reflection/c/d;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/research/reflection/c/c;

    iget-object v8, v3, Lcom/google/android/apps/nexuslauncher/reflection/j;->ua:Lcom/google/research/reflection/c/b;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, v3, Lcom/google/android/apps/nexuslauncher/reflection/j;->ub:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    aput-object v8, v7, v6

    const/4 v8, 0x2

    aput-object v12, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v7, v12, v2}, Lcom/google/android/apps/nexuslauncher/reflection/m;->a(Landroid/content/Context;Ljava/util/List;Lcom/google/research/reflection/c/d;Ljava/util/List;)V

    new-instance v11, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "reflection.engine"

    invoke-direct {v11, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "reflection.engine.background"

    invoke-direct {v10, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Lcom/google/android/apps/nexuslauncher/reflection/p;

    move-object v7, v9

    move-object v8, v1

    move-object v6, v9

    move-object v9, v13

    move-object v13, v10

    move-object v10, v5

    move-object v0, v11

    move-object v11, v13

    move-object v13, v12

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/p;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/j;)V

    new-instance v7, Lcom/google/android/apps/nexuslauncher/reflection/d;

    invoke-direct {v7}, Lcom/google/android/apps/nexuslauncher/reflection/d;-><init>()V

    invoke-virtual {v7, v0, v3, v6}, Lcom/google/android/apps/nexuslauncher/reflection/d;->a(Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;)V

    invoke-virtual {v3, v0}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Ljava/io/File;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/f;

    invoke-direct {v0, v5}, Lcom/google/android/apps/nexuslauncher/reflection/f;-><init>(Landroid/content/SharedPreferences;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/google/android/apps/nexuslauncher/reflection/i;->tY:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    :goto_c
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_17
    goto :goto_c

    :cond_18
    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    new-instance v9, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v5, v9, v7}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;-><init>(Landroid/content/SharedPreferences;Ljava/io/File;Ljava/util/List;)V

    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/k;

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v24, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v4

    invoke-direct/range {v16 .. v27}, Lcom/google/android/apps/nexuslauncher/reflection/k;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/research/reflection/c/d;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/b/e;Lcom/google/android/apps/nexuslauncher/reflection/b/c;Lcom/google/android/apps/nexuslauncher/reflection/f;Lcom/google/android/apps/nexuslauncher/reflection/d/f;Lcom/google/android/apps/nexuslauncher/reflection/d/e;Lcom/google/android/apps/nexuslauncher/reflection/c;)V

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e;

    invoke-direct {v0, v1, v5, v14}, Lcom/google/android/apps/nexuslauncher/reflection/e;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/k;Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Lcom/google/android/apps/nexuslauncher/reflection/k;->uk:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e;->cL()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tR:Lcom/google/android/apps/nexuslauncher/reflection/k;

    .line 112
    :cond_19
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final setEnabled(Z)V
    .locals 2

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    return-void
.end method
