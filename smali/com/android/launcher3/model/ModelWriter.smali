.class public Lcom/android/launcher3/model/ModelWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field final mContext:Landroid/content/Context;

.field private final mHasVerticalHotseat:Z

.field public final mWorkerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/BgDataModel;Z)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 58
    new-instance p1, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    .line 59
    iput-boolean p3, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    .line 60
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/model/ModelWriter;JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 4

    .line 46
    iget-object p0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/ItemInfo;

    if-eqz p0, :cond_4

    if-eq p3, p0, :cond_4

    instance-of p1, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    instance-of p1, p3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    move-object p2, p3

    check-cast p2, Lcom/android/launcher3/ShortcutInfo;

    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->id:J

    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->container:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iget-wide v2, p2, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iget v1, p2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iget p2, p2, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    if-eq p1, p2, :cond_4

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "item: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "modelItem: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "null"

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Error: ItemInfo passed to checkItemInfo doesn\'t match original"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-virtual {p1, p4}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_3
    throw p1

    :cond_4
    return-void
.end method

.method private updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 2

    .line 64
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 65
    iput p6, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 66
    iput p7, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 69
    const-wide/16 v0, -0x65

    cmp-long p2, p2, v0

    if-nez p2, :cond_1

    .line 70
    iget-boolean p2, p0, Lcom/android/launcher3/model/ModelWriter;->mHasVerticalHotseat:Z

    if-eqz p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    sub-int/2addr p2, p7

    add-int/lit8 p2, p2, -0x1

    int-to-long p2, p2

    goto :goto_0

    :cond_0
    int-to-long p2, p6

    :goto_0
    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    return-void

    .line 73
    :cond_1
    iput-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 75
    return-void
.end method


# virtual methods
.method public final addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 2

    .line 206
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 208
    new-instance p5, Lcom/android/launcher3/util/ContentWriter;

    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {p5, p2}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 209
    iget-object p2, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    .line 210
    invoke-virtual {p1, p5}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 212
    const-string p2, "generate_new_item_id"

    invoke-static {p4, p2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/launcher3/ItemInfo;->id:J

    .line 213
    const-string p2, "_id"

    iget-wide p6, p1, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    .line 215
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p7

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$1;

    move-object p2, v1

    move-object p3, p0

    move-object p6, p1

    invoke-direct/range {p2 .. p7}, Lcom/android/launcher3/model/ModelWriter$1;-><init>(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 226
    return-void
.end method

.method public final addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 4

    .line 83
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 85
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    return-void

    .line 88
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 90
    return-void
.end method

.method public final deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V
    .locals 2

    .line 232
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/ItemInfo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 233
    return-void
.end method

.method public final deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/lang/Iterable;)V

    .line 240
    return-void
.end method

.method public final deleteItemsFromDatabase(Ljava/lang/Iterable;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/model/ModelWriter$2;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/lang/Iterable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public final modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V
    .locals 0

    .line 175
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 176
    iput p8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 177
    iput p9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 179
    new-instance p2, Lcom/android/launcher3/util/ContentWriter;

    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    const-string p3, "container"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 180
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellX"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 181
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellY"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 182
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "rank"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 183
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "spanX"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 184
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "spanY"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 185
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "screen"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 186
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    .line 188
    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public final moveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V
    .locals 0

    .line 134
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 136
    new-instance p2, Lcom/android/launcher3/util/ContentWriter;

    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    const-string p3, "container"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->container:J

    .line 137
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellX"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 138
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "cellY"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 139
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "rank"

    iget p4, p1, Lcom/android/launcher3/ItemInfo;->rank:I

    .line 140
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    const-string p3, "screen"

    iget-wide p4, p1, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 141
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Long;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p2

    .line 143
    iget-object p3, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance p4, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method public final moveItemsInDatabase(Ljava/util/ArrayList;JI)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    .line 151
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 154
    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_0

    .line 155
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/ItemInfo;

    .line 156
    move/from16 v14, p4

    int-to-long v4, v14

    iget v6, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object v0, v8

    move-object v1, v13

    move-wide/from16 v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->updateItemInfoProps(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 158
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 159
    const-string v1, "container"

    iget-wide v2, v13, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    const-string v1, "cellX"

    iget v2, v13, Lcom/android/launcher3/ItemInfo;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v1, "cellY"

    iget v2, v13, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v1, "rank"

    iget v2, v13, Lcom/android/launcher3/ItemInfo;->rank:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v1, "screen"

    iget-wide v2, v13, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, v8, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;

    invoke-direct {v1, v8, v9, v10}, Lcom/android/launcher3/model/ModelWriter$UpdateItemsRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public final updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V
    .locals 3

    .line 195
    new-instance v0, Lcom/android/launcher3/util/ContentWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ContentWriter;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p1, v0}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 197
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/util/ContentWriter;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method
