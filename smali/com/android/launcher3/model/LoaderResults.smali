.class public Lcom/android/launcher3/model/LoaderResults;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mCallbacks:Ljava/lang/ref/WeakReference;

.field private final mPageToBindFirst:I

.field private final mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;ILjava/lang/ref/WeakReference;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v0}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 72
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 73
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 74
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderResults;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 75
    iput p4, p0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    .line 76
    if-nez p5, :cond_0

    new-instance p5, Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object p5, p0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 77
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 6

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 302
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 303
    nop

    .line 304
    add-int/lit8 v3, v2, 0x6

    if-gt v3, v0, :cond_0

    .line 305
    const/4 v4, 0x6

    goto :goto_1

    .line 304
    :cond_0
    sub-int v4, v0, v2

    .line 305
    :goto_1
    new-instance v5, Lcom/android/launcher3/model/LoaderResults$8;

    invoke-direct {v5, p0, p1, v2, v4}, Lcom/android/launcher3/model/LoaderResults$8;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;II)V

    .line 314
    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 302
    move v2, v3

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 319
    :goto_2
    if-ge v1, p1, :cond_2

    .line 320
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 321
    new-instance v2, Lcom/android/launcher3/model/LoaderResults$9;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/model/LoaderResults$9;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/ItemInfo;)V

    .line 329
    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 331
    :cond_2
    return-void
.end method

.method private filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    .line 218
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 221
    if-nez v1, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 224
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/LoaderResults$6;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 237
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 238
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->screenId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 239
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-wide v1, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    :cond_2
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 244
    :cond_3
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 245
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-wide v1, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_4
    iget-wide v2, v1, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-wide v1, v1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_5
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    goto :goto_1

    .line 256
    :cond_6
    return-void
.end method

.method private sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 262
    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 263
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    mul-int/2addr v2, v0

    .line 264
    new-instance v0, Lcom/android/launcher3/model/LoaderResults$7;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/launcher3/model/LoaderResults$7;-><init>(Lcom/android/launcher3/model/LoaderResults;II)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    return-void
.end method


# virtual methods
.method public final bindAllApps()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v0, v0, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 355
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$11;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$11;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public final bindDeepShortcuts()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object v1

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    new-instance v0, Lcom/android/launcher3/model/LoaderResults$10;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/model/LoaderResults$10;-><init>(Lcom/android/launcher3/model/LoaderResults;Lcom/android/launcher3/util/MultiHashMap;)V

    .line 347
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 348
    return-void

    .line 337
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final bindWidgets()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderResults;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 368
    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 369
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$12;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/model/LoaderResults$12;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public final bindWorkspace()V
    .locals 17

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherModel$Callbacks;

    .line 88
    if-nez v1, :cond_0

    .line 90
    const-string v0, "LoaderResults"

    const-string v1, "LoaderTask running with no launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 95
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v2, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v2

    .line 100
    :try_start_0
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget v2, v0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_1

    .line 108
    iget v1, v0, Lcom/android/launcher3/model/LoaderResults;->mPageToBindFirst:I

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/launcher3/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v1

    .line 109
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 111
    nop

    .line 113
    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v1

    .line 115
    :goto_1
    if-ltz v9, :cond_3

    const/4 v1, 0x1

    .line 117
    :goto_2
    move v10, v1

    goto :goto_3

    .line 115
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 117
    :goto_3
    if-eqz v10, :cond_4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 120
    :goto_4
    move-wide v11, v1

    goto :goto_5

    .line 117
    :cond_4
    const-wide/16 v1, -0x1

    goto :goto_4

    .line 120
    :goto_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    move-object v1, v0

    move-wide v2, v11

    move-object v5, v13

    move-object/from16 v16, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 127
    move-object v4, v7

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/LoaderResults;->filterCurrentWorkspaceItems(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 129
    invoke-direct {v0, v13}, Lcom/android/launcher3/model/LoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 130
    invoke-direct {v0, v14}, Lcom/android/launcher3/model/LoaderResults;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V

    .line 133
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$1;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/LoaderResults$1;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    .line 142
    iget-object v2, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    iget-object v1, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/LoaderResults$2;

    invoke-direct {v2, v0, v8}, Lcom/android/launcher3/model/LoaderResults$2;-><init>(Lcom/android/launcher3/model/LoaderResults;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 155
    iget-object v1, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 157
    invoke-direct {v0, v13, v15, v1}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 165
    if-eqz v10, :cond_5

    new-instance v2, Lcom/android/launcher3/util/ViewOnDrawExecutor;

    iget-object v3, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/ViewOnDrawExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_6

    .line 167
    :cond_5
    move-object v2, v1

    :goto_6
    new-instance v3, Lcom/android/launcher3/model/LoaderResults$3;

    invoke-direct {v3, v0, v10, v2}, Lcom/android/launcher3/model/LoaderResults$3;-><init>(Lcom/android/launcher3/model/LoaderResults;ZLjava/util/concurrent/Executor;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 178
    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1, v2}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    .line 181
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$4;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/LoaderResults$4;-><init>(Lcom/android/launcher3/model/LoaderResults;)V

    .line 189
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 191
    if-eqz v10, :cond_6

    .line 192
    new-instance v1, Lcom/android/launcher3/model/LoaderResults$5;

    invoke-direct {v1, v0, v9, v2}, Lcom/android/launcher3/model/LoaderResults$5;-><init>(Lcom/android/launcher3/model/LoaderResults;ILjava/util/concurrent/Executor;)V

    .line 206
    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    :cond_6
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
