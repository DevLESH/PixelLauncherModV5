.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/o;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile wa:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;


# instance fields
.field public key:I

.field public value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 861
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 862
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->cachedSize:I

    .line 863
    return-void
.end method

.method public static cZ()[Lcom/google/android/apps/nexuslauncher/reflection/e/o;
    .locals 2

    .line 844
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->wa:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v0, :cond_1

    .line 845
    sget-object v0, Lcom/google/protobuf/nano/f;->XT:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->wa:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    if-nez v1, :cond_0

    .line 848
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->wa:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    .line 850
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 852
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->wa:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 5

    .line 886
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 887
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    if-eqz v1, :cond_0

    .line 888
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    .line 889
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_0
    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 892
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    .line 893
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 895
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 838
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 875
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    if-eqz v0, :cond_0

    .line 876
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 878
    :cond_0
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 879
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 881
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 882
    return-void
.end method
