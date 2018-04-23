.class public final Lcom/google/android/apps/nexuslauncher/reflection/e/p;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# static fields
.field private static volatile wb:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;


# instance fields
.field public wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

.field public wd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 660
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->cachedSize:I

    .line 662
    return-void
.end method

.method public static da()[Lcom/google/android/apps/nexuslauncher/reflection/e/p;
    .locals 2

    .line 643
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wb:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    if-nez v0, :cond_1

    .line 644
    sget-object v0, Lcom/google/protobuf/nano/f;->XT:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wb:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    if-nez v1, :cond_0

    .line 647
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    sput-object v1, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wb:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    .line 649
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 651
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wb:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    return-object v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 3

    .line 685
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-eqz v1, :cond_0

    .line 687
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    .line 688
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 690
    :cond_0
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    if-eqz v1, :cond_1

    .line 691
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    .line 692
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->E(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 694
    :cond_1
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 2

    .line 637
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hc()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 677
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    if-eqz v0, :cond_1

    .line 678
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->D(II)V

    .line 680
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 681
    return-void
.end method
