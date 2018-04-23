.class public final Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field public action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

.field public actionDurationMillis:J

.field public destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

.field public elapsedContainerMillis:J

.field public elapsedSessionMillis:J

.field public extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

.field public isInLandscapeMode:Z

.field public isInMultiWindowMode:Z

.field public srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 684
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-static {}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->emptyArray()[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    iput-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    iput-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->cachedSize:I

    .line 686
    return-void
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 7

    .line 747
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->computeSerializedSize()I

    move-result v0

    .line 748
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    .line 750
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 753
    move v1, v0

    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 754
    iget-object v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v4, v4, v0

    .line 755
    if-eqz v4, :cond_1

    .line 756
    const/4 v5, 0x2

    .line 757
    invoke-static {v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v4

    add-int/2addr v1, v4

    .line 753
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 762
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-ge v3, v1, :cond_5

    .line 763
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    .line 764
    if-eqz v1, :cond_4

    .line 765
    const/4 v4, 0x3

    .line 766
    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 770
    :cond_5
    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    .line 771
    const/4 v1, 0x4

    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    .line 772
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_6
    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    .line 775
    const/4 v1, 0x5

    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    .line 776
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 778
    :cond_7
    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    .line 779
    const/4 v1, 0x6

    iget-wide v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    .line 780
    invoke-static {v1, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    :cond_8
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v1, :cond_9

    .line 783
    const/4 v1, 0x7

    .line 784
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bn(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 786
    :cond_9
    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v1, :cond_a

    .line 787
    const/16 v1, 0x8

    .line 788
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->bn(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 790
    :cond_a
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-eqz v1, :cond_b

    .line 791
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    .line 792
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->b(ILcom/google/protobuf/nano/g;)I

    move-result v1

    add-int/2addr v0, v1

    .line 794
    :cond_b
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 4

    .line 640
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v1, 0x38

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_1

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    goto :goto_0

    :cond_8
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    :cond_c
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    :goto_3
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_4
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_f

    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->hb()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    new-instance v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v2}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-direct {v0}, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/g;)V

    goto/16 :goto_0

    :cond_12
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6

    .line 705
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 709
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 710
    iget-object v2, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v0

    .line 711
    if-eqz v2, :cond_1

    .line 712
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 709
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 717
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v0, v1

    .line 719
    if-eqz v0, :cond_3

    .line 720
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 717
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 724
    :cond_4
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 725
    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 727
    :cond_5
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 728
    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 730
    :cond_6
    iget-wide v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 731
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->c(IJ)V

    .line 733
    :cond_7
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    if-eqz v0, :cond_8

    .line 734
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(IZ)V

    .line 736
    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    if-eqz v0, :cond_9

    .line 737
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->g(IZ)V

    .line 739
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    if-eqz v0, :cond_a

    .line 740
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$LauncherEventExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->a(ILcom/google/protobuf/nano/g;)V

    .line 742
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/g;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 743
    return-void
.end method
