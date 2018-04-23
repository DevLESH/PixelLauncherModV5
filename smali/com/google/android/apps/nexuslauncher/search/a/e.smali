.class public final Lcom/google/android/apps/nexuslauncher/search/a/e;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

.field public xO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 667
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xO:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->cachedSize:I

    .line 669
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 692
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    if-eqz v1, :cond_0

    .line 694
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    .line 695
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xO:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xO:Ljava/lang/String;

    .line 699
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 701
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xO:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xN:Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xO:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/a/e;->xO:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 687
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 688
    return-void
.end method
