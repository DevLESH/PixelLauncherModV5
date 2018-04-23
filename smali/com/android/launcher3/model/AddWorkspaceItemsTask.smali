.class public Lcom/android/launcher3/model/AddWorkspaceItemsTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mItemList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    .line 56
    return-void
.end method

.method private findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z
    .locals 2

    .line 303
    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 305
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 306
    if-eqz p2, :cond_0

    .line 307
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/ItemInfo;Z)V

    .line 309
    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 60
    iget-object v1, v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 65
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    invoke-static {v10}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v14

    .line 73
    monitor-enter p2

    .line 75
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v2, v0, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v15, 0x1

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 77
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 78
    iget v5, v4, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz v5, :cond_2

    iget v5, v4, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-ne v5, v15, :cond_3

    .line 81
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    :cond_3
    iget v5, v4, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v5, :cond_a

    .line 87
    instance-of v5, v4, Lcom/android/launcher3/AppInfo;

    if-eqz v5, :cond_4

    .line 88
    check-cast v4, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v4

    .line 91
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 93
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    instance-of v5, v5, Landroid/content/pm/LauncherActivityInfo;

    if-eqz v5, :cond_1

    .line 94
    iget-object v5, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    .line 98
    if-nez v5, :cond_5

    .line 99
    new-instance v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v6, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v5, v10, v6, v8}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/launcher3/model/BgDataModel;)V

    .line 100
    iget-object v6, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v13, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5
    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v7, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->addIconToFolderTime:J

    cmp-long v3, v15, v7

    if-ltz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v3, :cond_8

    iget-object v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    iget-boolean v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderPendingAddition:Z

    if-eqz v3, :cond_9

    iput-boolean v7, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderPendingAddition:Z

    iget-object v3, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v3, 0x0

    .line 106
    :goto_2
    move-object v4, v3

    :cond_a
    :goto_3
    if-eqz v4, :cond_b

    .line 107
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_b
    nop

    .line 76
    move-object/from16 v8, p2

    goto/16 :goto_0

    .line 111
    :cond_c
    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/ItemInfo;

    .line 113
    iget v5, v6, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v6, Lcom/android/launcher3/ItemInfo;->spanY:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v16, p2

    move-object/from16 v3, v16

    move/from16 v17, v4

    move-object v4, v14

    move/from16 v18, v5

    move-object v5, v12

    move-object v15, v6

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v17

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;

    move-result-object v1

    .line 115
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 116
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [I

    .line 119
    instance-of v2, v15, Lcom/android/launcher3/ShortcutInfo;

    if-nez v2, :cond_f

    instance-of v2, v15, Lcom/android/launcher3/FolderInfo;

    if-nez v2, :cond_f

    instance-of v2, v15, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v2, :cond_d

    goto :goto_5

    .line 122
    :cond_d
    instance-of v2, v15, Lcom/android/launcher3/AppInfo;

    if-eqz v2, :cond_e

    .line 123
    move-object v6, v15

    check-cast v6, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    .line 129
    move-object v15, v6

    goto :goto_6

    .line 125
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected info type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_f
    :goto_5
    nop

    .line 129
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v19

    const-wide/16 v21, -0x64

    aget v25, v1, v18

    const/4 v2, 0x1

    aget v26, v1, v2

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v26}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 134
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    nop

    .line 111
    move v15, v2

    move/from16 v7, v18

    goto :goto_4

    .line 136
    :cond_10
    move-object/from16 v16, p2

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 139
    invoke-static {v10, v14}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 142
    new-instance v1, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;

    invoke-direct {v1, v0, v11, v12}, Lcom/android/launcher3/model/AddWorkspaceItemsTask$1;-><init>(Lcom/android/launcher3/model/AddWorkspaceItemsTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 164
    :cond_11
    invoke-virtual {v13}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->applyPendingState(Lcom/android/launcher3/model/ModelWriter;)V

    .line 166
    goto :goto_7

    .line 167
    :cond_12
    return-void

    .line 136
    :catchall_0
    move-exception v0

    move-object/from16 v16, p2

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v16, v8

    :goto_8
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method protected final findSpaceForItem(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Ljava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    .line 238
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 241
    monitor-enter p2

    .line 242
    :try_start_0
    iget-object v3, v1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 243
    iget-wide v5, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v7, -0x64

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 244
    iget-wide v5, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 245
    if-nez v5, :cond_0

    .line 246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 249
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    goto :goto_0

    .line 252
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    const-wide/16 v3, 0x0

    .line 256
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 257
    const/4 v5, 0x0

    .line 259
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 261
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    .line 262
    const/4 v12, 0x1

    xor-int/2addr v6, v12

    if-ge v6, v11, :cond_3

    .line 263
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 264
    nop

    .line 265
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 264
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    .line 268
    :cond_3
    move-wide v15, v3

    move v3, v5

    move-wide v4, v15

    if-nez v3, :cond_6

    .line 270
    move-wide v5, v4

    move v4, v12

    :goto_1
    if-ge v4, v11, :cond_5

    .line 271
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 272
    nop

    .line 273
    invoke-virtual {v2, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/util/ArrayList;

    .line 272
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 275
    nop

    .line 276
    nop

    .line 281
    move v3, v12

    goto :goto_2

    .line 270
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v13

    goto :goto_1

    .line 281
    :cond_5
    move-wide v13, v5

    goto :goto_2

    :cond_6
    move-wide v13, v4

    :goto_2
    if-nez v3, :cond_7

    .line 283
    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "generate_new_screen_id"

    invoke-static {v4, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "value"

    .line 285
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 288
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    nop

    .line 293
    invoke-virtual {v2, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    .line 292
    move-object/from16 v5, p0

    move-object v6, v3

    move-object v8, v1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/model/AddWorkspaceItemsTask;->findNextAvailableIconSpaceInScreen(Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;[III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find space to add the item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_7
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final shortcutExists(Lcom/android/launcher3/model/BgDataModel;Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 11

    .line 179
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 181
    return v0

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 195
    :cond_2
    nop

    .line 196
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {p2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_0
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v5

    .line 201
    monitor-enter p1

    .line 202
    :try_start_0
    iget-object v6, p1, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/ItemInfo;

    .line 203
    instance-of v8, v7, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v8, :cond_5

    .line 204
    move-object v8, v7

    check-cast v8, Lcom/android/launcher3/ShortcutInfo;

    .line 205
    invoke-virtual {v7}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 206
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v9, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 208
    invoke-virtual {v9, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 214
    :cond_3
    if-eqz v5, :cond_5

    .line 215
    const/4 v7, 0x3

    invoke-virtual {v8, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    .line 216
    invoke-virtual {v8, v7}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 217
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 220
    monitor-exit p1

    return v0

    .line 210
    :cond_4
    :goto_2
    monitor-exit p1

    return v0

    .line 224
    :cond_5
    goto :goto_1

    .line 225
    :cond_6
    monitor-exit p1

    .line 226
    return v3

    .line 225
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
