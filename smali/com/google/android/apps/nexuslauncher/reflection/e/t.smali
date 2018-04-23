.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/t;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile ws:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;


# instance fields
.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 762
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 763
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->cachedSize:I

    .line 764
    return-void
.end method

.method public static dd()[Lcom/google/android/apps/nexuslauncher/reflection/e/t;
    .locals 2

    .line 745
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->ws:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    if-nez v0, :cond_1

    .line 746
    sget-object v0, Lcom/google/protobuf/nano/f;->XT:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->ws:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    if-nez v1, :cond_0

    .line 749
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->ws:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    .line 751
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 753
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->ws:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 787
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 788
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    if-eqz v1, :cond_0

    .line 789
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    .line 790
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 793
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    .line 794
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 796
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 739
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

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

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 776
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    if-eqz v0, :cond_0

    .line 777
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(ILjava/lang/String;)V

    .line 782
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 783
    return-void
.end method
