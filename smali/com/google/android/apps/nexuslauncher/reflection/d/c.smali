.class public Lcom/google/android/apps/nexuslauncher/reflection/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/a/c;


# static fields
.field private static final vp:[Ljava/lang/String;

.field private static final vq:[Ljava/lang/String;

.field private static final vt:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private vr:J

.field private vs:Ljava/lang/String;

.field private final vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 212
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 73
    const-string v0, "com.spotify.music"

    const-string v1, "com.google.android.music"

    const-string v2, "com.pandora.android"

    const-string v3, "com.amazon.mp3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vp:[Ljava/lang/String;

    .line 81
    const-string v0, "com.ubercab"

    const-string v1, "me.lyft.android"

    const-string v2, "com.sdu.didi.psnger"

    const-string v3, "com.olacabs.customer"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vq:[Ljava/lang/String;

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vt:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/d/a;Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private declared-synchronized j(Ljava/lang/String;)J
    .locals 3

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 352
    const-string v1, "select count(*) from reflection_event where id like ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 359
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 350
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(JI)Lcom/google/android/apps/nexuslauncher/reflection/d/d;
    .locals 21

    move-object/from16 v1, p0

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 222
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const-wide/16 v12, -0x1

    .line 224
    const-string v3, "reflection_event"

    const/4 v4, 0x0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s > ?"

    const/4 v14, 0x1

    new-array v6, v14, [Ljava/lang/Object;

    const-string v7, "_id"

    const/4 v15, 0x0

    aput-object v7, v6, v15

    .line 226
    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v14, [Ljava/lang/String;

    .line 227
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id ASC"

    .line 230
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 224
    nop

    .line 232
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 233
    const-string v0, "proto"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 234
    const-string v0, "id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 235
    const-string v0, "public_place"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 236
    const-string v0, "semanticPlace"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 237
    const-string v0, "latLong"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 239
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    .line 244
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :try_start_3
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 247
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->a([B)Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/h;)V

    .line 246
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    .line 256
    :goto_1
    nop

    .line 257
    :try_start_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-nez v0, :cond_0

    goto :goto_2

    .line 265
    :cond_0
    move v0, v15

    goto :goto_3

    .line 258
    :cond_1
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 259
    nop

    .line 260
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;-><init>()V

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;

    .line 259
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/a;->a(Lcom/google/android/apps/nexuslauncher/reflection/c/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    nop

    .line 265
    move v0, v14

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 266
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v14

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->l(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 267
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/g/e;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;-><init>()V

    .line 268
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 269
    nop

    .line 270
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15
    :try_end_4
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    invoke-direct {v14}, Lcom/google/android/apps/nexuslauncher/reflection/e/l;-><init>()V

    invoke-static {v14, v15}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v14

    check-cast v14, Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    .line 271
    new-instance v15, Lcom/google/android/apps/nexuslauncher/reflection/g/g;

    invoke-direct {v15, v14}, Lcom/google/android/apps/nexuslauncher/reflection/g/g;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/l;)V

    invoke-virtual {v3, v15}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->a(Lcom/google/research/reflection/signal/c;)Lcom/google/research/reflection/signal/b;

    .line 273
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 274
    if-eqz v0, :cond_3

    .line 275
    nop

    .line 276
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    invoke-direct {v14}, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;-><init>()V

    invoke-static {v14, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;

    .line 277
    nop

    .line 278
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/a;->a(Lcom/google/android/apps/nexuslauncher/reflection/c/a/f;)Lcom/google/android/apps/nexuslauncher/reflection/g/f;

    move-result-object v0

    .line 277
    invoke-virtual {v3, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->a(Lcom/google/research/reflection/signal/ReflectionPrivatePlace;)Lcom/google/research/reflection/signal/b;

    .line 279
    goto :goto_4

    .line 280
    :cond_3
    nop

    .line 281
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    invoke-direct {v14}, Lcom/google/android/apps/nexuslauncher/reflection/e/k;-><init>()V

    invoke-static {v14, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    .line 282
    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/g/f;

    invoke-direct {v14, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/f;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/k;)V

    invoke-virtual {v3, v14}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->a(Lcom/google/research/reflection/signal/ReflectionPrivatePlace;)Lcom/google/research/reflection/signal/b;

    .line 285
    :cond_4
    :goto_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 286
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    invoke-direct {v14}, Lcom/google/android/apps/nexuslauncher/reflection/e/i;-><init>()V

    invoke-static {v14, v0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    .line 287
    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/g/d;

    invoke-direct {v14, v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/d;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/i;)V

    invoke-virtual {v3, v14}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->a(Lcom/google/research/reflection/signal/a;)Lcom/google/research/reflection/signal/b;

    .line 289
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    :try_start_6
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/b;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 291
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 294
    :catch_1
    move-exception v0

    const/4 v14, 0x1

    goto :goto_6

    .line 293
    :cond_6
    :goto_5
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16
    :try_end_6
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 299
    nop

    .line 239
    move-wide/from16 v12, v16

    goto :goto_7

    .line 294
    :catch_2
    move-exception v0

    .line 299
    :goto_6
    nop

    .line 239
    :goto_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 301
    :cond_7
    if-eqz v2, :cond_8

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3, v2}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 302
    :cond_8
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    invoke-direct {v0, v12, v13, v11}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;-><init>(JLjava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v0

    .line 301
    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_8

    .line 224
    :catch_3
    move-exception v0

    move-object v3, v0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 301
    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v2, :cond_9

    :try_start_9
    invoke-static {v3, v2}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 219
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/e/h;)V
    .locals 5

    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {p1}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->a([B)Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    nop

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 125
    const-string v2, "timestamp"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vS:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    iget-wide v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/m;->timestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string v2, "client"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "type"

    iget v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v2, "id"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->ra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "generated_from"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vV:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "eventSource"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vd:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vd:[Ljava/lang/String;

    aget-object v3, v3, v4

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->vW:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    if-eqz v2, :cond_1

    .line 135
    const-string v2, "semanticPlace"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->vW:Lcom/google/android/apps/nexuslauncher/reflection/e/k;

    .line 136
    invoke-static {v3}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v3

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 138
    :cond_1
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->vX:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "public_place"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->vX:Lcom/google/android/apps/nexuslauncher/reflection/e/l;

    .line 140
    invoke-static {v3}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v3

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 142
    :cond_2
    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->vY:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    if-eqz v2, :cond_3

    .line 143
    const-string v2, "latLong"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/reflection/e/j;->vY:Lcom/google/android/apps/nexuslauncher/reflection/e/i;

    .line 144
    invoke-static {v3}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v3

    .line 143
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 147
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->vT:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 149
    const-string v3, "proto"

    invoke-static {p1}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 150
    const-string p1, "reflection_event"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 118
    :catch_0
    move-exception p1

    .line 120
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 186
    :try_start_1
    const-string v2, "reflection_event"

    const-string v1, "_id"

    const-string v3, "id"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "id like ?"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 192
    const/4 v1, 0x0

    :try_start_2
    const-string v2, "UPDATE reflection_event SET id = ? WHERE _id = ?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 186
    nop

    .line 195
    :try_start_3
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 196
    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 198
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 199
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 200
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 203
    if-nez v8, :cond_0

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 205
    invoke-interface {p3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    invoke-virtual {v2, v10, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 208
    const/4 v7, 0x2

    invoke-virtual {v2, v7, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 209
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 210
    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    if-eqz v2, :cond_2

    :try_start_4
    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    if-eqz p1, :cond_3

    :try_start_5
    invoke-static {v1, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 215
    :cond_3
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 216
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception p2

    move-object p3, v1

    goto :goto_2

    .line 186
    :catch_0
    move-exception p2

    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 212
    :catchall_1
    move-exception p3

    move-object v11, p3

    move-object p3, p2

    move-object p2, v11

    :goto_2
    if-eqz v2, :cond_4

    :try_start_8
    invoke-static {p3, v2}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw p2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_3

    .line 186
    :catch_1
    move-exception p2

    move-object v1, p2

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 212
    :goto_3
    if-eqz p1, :cond_5

    :try_start_a
    invoke-static {v1, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw p2
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 215
    :catchall_3
    move-exception p1

    goto :goto_4

    .line 212
    :catch_2
    move-exception p1

    .line 213
    :try_start_b
    const-string p2, "Reflection.EvtDbLogger"

    const-string p3, "Error renaming EventIds"

    invoke-static {p2, p3, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    .line 215
    :goto_4
    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 181
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 0

    monitor-enter p0

    .line 105
    :try_start_0
    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->xd:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final cV()Ljava/lang/String;
    .locals 9

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vr:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vs:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vs:Ljava/lang/String;

    return-object v0

    .line 309
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vp:[Ljava/lang/String;

    const-wide/16 v1, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_3

    aget-object v6, v0, v3

    invoke-direct {p0, v6}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->j(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-ltz v8, :cond_2

    aget-object v1, v0, v3

    move-object v5, v1

    move-wide v1, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iput-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vs:Ljava/lang/String;

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vr:J

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->mContext:Landroid/content/Context;

    .line 312
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vs:Ljava/lang/String;

    .line 313
    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->uK:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->uK:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->className:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->a(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 311
    return-object v0

    .line 313
    :cond_5
    :goto_2
    return-object v4
.end method

.method public final declared-synchronized d(J)V
    .locals 5

    monitor-enter p0

    .line 157
    const-wide v0, 0xb43e9400L

    sub-long/2addr p1, v0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->vu:Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    const-string v1, "reflection_event"

    const-string v2, "timestamp <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 161
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
