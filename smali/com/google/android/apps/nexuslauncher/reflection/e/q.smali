.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/q;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public timestamp:J

.field public version:I

.field public we:Ljava/lang/String;

.field public wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

.field public wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->db()[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->dc()[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->cachedSize:I

    .line 42
    return-void
.end method

.method public static b([B)Lcom/google/android/apps/nexuslauncher/reflection/e/q;
    .locals 1

    .line 194
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/q;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    return-object p0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 87
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 88
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 89
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    .line 90
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    if-eqz v1, :cond_1

    .line 93
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    .line 94
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    .line 98
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 101
    move v1, v0

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 102
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    aget-object v3, v3, v0

    .line 103
    if-eqz v3, :cond_3

    .line 104
    const/4 v4, 0x4

    .line 105
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v3

    add-int/2addr v1, v3

    .line 101
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_4
    move v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v1, v1

    if-ge v2, v1, :cond_7

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    aget-object v1, v1, v2

    .line 112
    if-eqz v1, :cond_6

    .line 113
    const/4 v3, 0x5

    .line 114
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_7
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/s;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/s;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    goto :goto_0

    :cond_5
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/r;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/r;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    goto/16 :goto_0

    :cond_c
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 57
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 60
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 67
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 68
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    aget-object v2, v2, v0

    .line 69
    if-eqz v2, :cond_3

    .line 70
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    aget-object v0, v0, v1

    .line 77
    if-eqz v0, :cond_5

    .line 78
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 75
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 83
    return-void
.end method
