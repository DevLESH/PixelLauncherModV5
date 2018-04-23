.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/r;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile wh:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;


# instance fields
.field public uW:Ljava/lang/String;

.field public wi:Ljava/lang/String;

.field public wj:[B

.field public wk:I

.field public wl:I

.field public wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

.field public wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

.field public wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

.field public wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 248
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/j;->Yc:[B

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->dd()[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->cZ()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->cZ()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->cZ()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->cachedSize:I

    .line 250
    return-void
.end method

.method public static db()[Lcom/google/android/apps/nexuslauncher/reflection/e/r;
    .locals 2

    .line 210
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wh:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-nez v0, :cond_1

    .line 211
    sget-object v0, Lcom/google/protobuf/nano/f;->XT:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wh:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-nez v1, :cond_0

    .line 214
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wh:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    .line 216
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 218
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wh:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 321
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    .line 324
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    .line 328
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    sget-object v2, Lcom/google/protobuf/nano/j;->Yc:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    .line 332
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    if-eqz v1, :cond_3

    .line 335
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    .line 336
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 339
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 340
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    aget-object v3, v3, v0

    .line 341
    if-eqz v3, :cond_4

    .line 342
    const/4 v4, 0x5

    .line 343
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 339
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_5
    move v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 348
    move v1, v0

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 349
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v3, v3, v0

    .line 350
    if-eqz v3, :cond_7

    .line 351
    const/4 v4, 0x6

    .line 352
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 348
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_8
    move v0, v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 357
    move v1, v0

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 358
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v3, v3, v0

    .line 359
    if-eqz v3, :cond_a

    .line 360
    const/4 v4, 0x7

    .line 361
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 357
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 365
    :cond_b
    move v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-lez v1, :cond_e

    .line 366
    :goto_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    if-ge v2, v1, :cond_e

    .line 367
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v1, v1, v2

    .line 368
    if-eqz v1, :cond_d

    .line 369
    const/16 v3, 0x8

    .line 370
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 366
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 374
    :cond_e
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    if-eqz v1, :cond_f

    .line 375
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    .line 376
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_f
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0xa

    if-eq v0, v1, :cond_15

    const/16 v1, 0x12

    if-eq v0, v1, :cond_14

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_13

    const/16 v1, 0x20

    if-eq v0, v1, :cond_12

    const/16 v1, 0x2a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/16 v1, 0x32

    if-eq v0, v1, :cond_a

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    const/16 v1, 0x42

    if-eq v0, v1, :cond_2

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    goto :goto_0

    :cond_6
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, v1

    :goto_5
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_6
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_d

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/o;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    goto/16 :goto_0

    :cond_e
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v1, v1

    :goto_7
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_8
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_11

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_11
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/t;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    sget-object v1, Lcom/google/protobuf/nano/j;->Yc:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(I[B)V

    .line 278
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    if-eqz v0, :cond_3

    .line 279
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 282
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 283
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    aget-object v2, v2, v0

    .line 284
    if-eqz v2, :cond_4

    .line 285
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 282
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 290
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 291
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v2, v2, v0

    .line 292
    if-eqz v2, :cond_6

    .line 293
    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 290
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 298
    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 299
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v2, v2, v0

    .line 300
    if-eqz v2, :cond_8

    .line 301
    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 298
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 305
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-lez v0, :cond_b

    .line 306
    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v0, v0

    if-ge v1, v0, :cond_b

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    aget-object v0, v0, v1

    .line 308
    if-eqz v0, :cond_a

    .line 309
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 306
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 313
    :cond_b
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    if-eqz v0, :cond_c

    .line 314
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 316
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 317
    return-void
.end method
