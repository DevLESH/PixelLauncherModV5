.class public final Lcom/google/android/apps/nexuslauncher/search/a/d;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public xC:I

.field public xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

.field public xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public xF:Ljava/lang/String;

.field public xG:I

.field public xH:I

.field public xI:Ljava/lang/String;

.field public xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

.field public xK:Z

.field public xL:Z

.field public xM:I

.field public xw:I

.field public xx:Z

.field public xy:Ljava/lang/String;

.field public xz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 342
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xw:I

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xx:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xy:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xz:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xC:I

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/search/a/c;->dw()[Lcom/google/android/apps/nexuslauncher/search/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xF:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xG:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xH:I

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xI:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xK:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xL:Z

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xM:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->cachedSize:I

    .line 344
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 432
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 433
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xw:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 434
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xw:I

    .line 435
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xy:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 438
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xy:Ljava/lang/String;

    .line 439
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xz:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 442
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xz:Ljava/lang/String;

    .line 443
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_3

    .line 446
    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 447
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_3
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xC:I

    if-eqz v1, :cond_4

    .line 450
    const/4 v1, 0x5

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xC:I

    .line 451
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 454
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 455
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    aget-object v3, v3, v1

    .line 456
    if-eqz v3, :cond_5

    .line 457
    const/4 v4, 0x6

    .line 458
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v0, v3

    .line 454
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_7

    .line 463
    const/4 v1, 0x7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 464
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xF:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 467
    const/16 v1, 0x8

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xF:Ljava/lang/String;

    .line 468
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_8
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xG:I

    if-eqz v1, :cond_9

    .line 471
    const/16 v1, 0x9

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xG:I

    .line 472
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    :cond_9
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xH:I

    if-eqz v1, :cond_a

    .line 475
    const/16 v1, 0xa

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xH:I

    .line 476
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    :cond_a
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xI:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 479
    const/16 v1, 0xb

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xI:Ljava/lang/String;

    .line 480
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 482
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_c

    .line 483
    const/16 v1, 0xc

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 484
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_c
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xK:Z

    if-eqz v1, :cond_d

    .line 487
    const/16 v1, 0xd

    .line 488
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bn(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 490
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v1, :cond_e

    .line 491
    const/16 v1, 0xe

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 492
    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_e
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xx:Z

    if-eqz v1, :cond_f

    .line 495
    const/16 v1, 0xf

    .line 496
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bn(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 498
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xL:Z

    if-eqz v1, :cond_10

    .line 499
    const/16 v1, 0x10

    .line 500
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bn(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 502
    :cond_10
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xM:I

    if-eqz v1, :cond_11

    .line 503
    const/16 v1, 0x11

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xM:I

    .line 504
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 506
    :cond_11
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xM:I

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xL:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xx:Z

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto/16 :goto_3

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xK:Z

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto/16 :goto_3

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xI:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xH:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xG:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xF:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    goto :goto_3

    :sswitch_b
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_6

    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xC:I

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    :goto_3
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xz:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xy:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xw:I

    goto/16 :goto_0

    :sswitch_11
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x8 -> :sswitch_10
        0x12 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x28 -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x68 -> :sswitch_4
        0x72 -> :sswitch_3
        0x78 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .line 371
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xw:I

    if-eqz v0, :cond_0

    .line 372
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xw:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xy:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xz:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 378
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xz:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_3

    .line 381
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xA:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 383
    :cond_3
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xC:I

    if-eqz v0, :cond_4

    .line 384
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xC:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 387
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 388
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xD:[Lcom/google/android/apps/nexuslauncher/search/a/c;

    aget-object v1, v1, v0

    .line 389
    if-eqz v1, :cond_5

    .line 390
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 387
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_7

    .line 395
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xE:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 397
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xF:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 398
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 400
    :cond_8
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xG:I

    if-eqz v0, :cond_9

    .line 401
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xG:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 403
    :cond_9
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xH:I

    if-eqz v0, :cond_a

    .line 404
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xH:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 406
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xI:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 407
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 409
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_c

    .line 410
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xJ:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 412
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xK:Z

    if-eqz v0, :cond_d

    .line 413
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xK:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(IZ)V

    .line 415
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    if-eqz v0, :cond_e

    .line 416
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xB:Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 418
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xx:Z

    if-eqz v0, :cond_f

    .line 419
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xx:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(IZ)V

    .line 421
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xL:Z

    if-eqz v0, :cond_10

    .line 422
    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xL:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(IZ)V

    .line 424
    :cond_10
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xM:I

    if-eqz v0, :cond_11

    .line 425
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/d;->xM:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 427
    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 428
    return-void
.end method
