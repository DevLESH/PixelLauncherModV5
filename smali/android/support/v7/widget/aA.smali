.class public abstract Landroid/support/v7/widget/aA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field public mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/aq;

.field mShadowedHolder:Landroid/support/v7/widget/aA;

.field mShadowingHolder:Landroid/support/v7/widget/aA;

.field mUnmodifiedPayloads:Ljava/util/List;

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10587
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/aA;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 10614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10475
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aA;->mPosition:I

    .line 10476
    iput v0, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 10477
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/v7/widget/aA;->mItemId:J

    .line 10478
    iput v0, p0, Landroid/support/v7/widget/aA;->mItemViewType:I

    .line 10479
    iput v0, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 10482
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/aA;->mShadowedHolder:Landroid/support/v7/widget/aA;

    .line 10484
    iput-object v1, p0, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    .line 10589
    iput-object v1, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    .line 10590
    iput-object v1, p0, Landroid/support/v7/widget/aA;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10592
    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    .line 10596
    iput-object v1, p0, Landroid/support/v7/widget/aA;->mScrapContainer:Landroid/support/v7/widget/aq;

    .line 10598
    iput-boolean v2, p0, Landroid/support/v7/widget/aA;->mInChangeScrap:Z

    .line 10602
    iput v2, p0, Landroid/support/v7/widget/aA;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10605
    iput v0, p0, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    .line 10615
    if-nez p1, :cond_0

    .line 10616
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "itemView may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10618
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 10619
    return-void
.end method

.method static synthetic access$1002(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aq;)Landroid/support/v7/widget/aq;
    .locals 0

    .line 10472
    iput-object p1, p0, Landroid/support/v7/widget/aA;->mScrapContainer:Landroid/support/v7/widget/aq;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/aA;)Z
    .locals 0

    .line 10472
    iget-boolean p0, p0, Landroid/support/v7/widget/aA;->mInChangeScrap:Z

    return p0
.end method

.method static synthetic access$1102(Landroid/support/v7/widget/aA;Z)Z
    .locals 0

    .line 10472
    iput-boolean p1, p0, Landroid/support/v7/widget/aA;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/aA;)Z
    .locals 0

    .line 10472
    iget p0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/aA;)I
    .locals 0

    .line 10472
    iget p0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    return p0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 10472
    iget v0, p0, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/aA;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->f(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/aA;I)Z

    return-void
.end method

.method static synthetic access$300(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 10472
    iget v0, p0, Landroid/support/v7/widget/aA;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/aA;I)Z

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/aA;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/aA;)Z
    .locals 1

    .line 10472
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/s;->d(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final addChangePayload(Ljava/lang/Object;)V
    .locals 2

    .line 10824
    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 10825
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aA;->addFlags(I)V

    return-void

    .line 10826
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 10827
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/aA;->mUnmodifiedPayloads:Ljava/util/List;

    .line 10828
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10830
    :cond_2
    return-void
.end method

.method final addFlags(I)V
    .locals 1

    .line 10820
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10821
    return-void
.end method

.method final clearOldPosition()V
    .locals 1

    .line 10644
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 10645
    iput v0, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 10646
    return-void
.end method

.method final clearPayload()V
    .locals 1

    .line 10840
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 10841
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10843
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10844
    return-void
.end method

.method final clearReturnedFromScrapFlag()V
    .locals 1

    .line 10771
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10772
    return-void
.end method

.method final clearTmpDetachFlag()V
    .locals 1

    .line 10775
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10776
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    .line 10720
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 10721
    const/4 v0, -0x1

    return v0

    .line 10723
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/aA;)I

    move-result v0

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    .line 10694
    iget v0, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/aA;->mPosition:I

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    return v0
.end method

.method final getUnmodifiedPayloads()Ljava/util/List;
    .locals 1

    .line 10847
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 10848
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/aA;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10853
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 10850
    :cond_1
    :goto_0
    sget-object v0, Landroid/support/v7/widget/aA;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 10856
    :cond_2
    sget-object v0, Landroid/support/v7/widget/aA;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method final hasAnyOfTheFlags(I)Z
    .locals 1

    .line 10804
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final isBound()Z
    .locals 2

    .line 10796
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isInvalid()Z
    .locals 1

    .line 10788
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRecyclable()Z
    .locals 1

    .line 10961
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 10962
    invoke-static {v0}, Landroid/support/v4/view/s;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isRemoved()Z
    .locals 1

    .line 10800
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isScrap()Z
    .locals 1

    .line 10759
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mScrapContainer:Landroid/support/v7/widget/aq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isTmpDetached()Z
    .locals 1

    .line 10808
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isUpdated()Z
    .locals 1

    .line 10982
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final needsUpdate()Z
    .locals 1

    .line 10792
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final offsetPosition(IZ)V
    .locals 2

    .line 10628
    iget v0, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 10629
    iget v0, p0, Landroid/support/v7/widget/aA;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 10631
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    .line 10632
    iget v0, p0, Landroid/support/v7/widget/aA;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 10634
    :cond_1
    if-eqz p2, :cond_2

    .line 10635
    iget p2, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 10637
    :cond_2
    iget p2, p0, Landroid/support/v7/widget/aA;->mPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/aA;->mPosition:I

    .line 10638
    iget-object p1, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10639
    iget-object p1, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/aj;->oM:Z

    .line 10641
    :cond_3
    return-void
.end method

.method final resetInternal()V
    .locals 4

    .line 10861
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10862
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/aA;->mPosition:I

    .line 10863
    iput v1, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 10864
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/support/v7/widget/aA;->mItemId:J

    .line 10865
    iput v1, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 10866
    iput v0, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    .line 10867
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/aA;->mShadowedHolder:Landroid/support/v7/widget/aA;

    .line 10868
    iput-object v2, p0, Landroid/support/v7/widget/aA;->mShadowingHolder:Landroid/support/v7/widget/aA;

    .line 10869
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->clearPayload()V

    .line 10870
    iput v0, p0, Landroid/support/v7/widget/aA;->mWasImportantForAccessibilityBeforeHidden:I

    .line 10871
    iput v1, p0, Landroid/support/v7/widget/aA;->mPendingAccessibilityState:I

    .line 10872
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/aA;)V

    .line 10873
    return-void
.end method

.method final setFlags(II)V
    .locals 2

    .line 10816
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10817
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 2

    .line 10936
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    .line 10937
    iget v1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    if-gez v1, :cond_1

    .line 10938
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    .line 10943
    const-string p1, "View"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10945
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    if-ne v1, v0, :cond_2

    .line 10946
    iget p1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    return-void

    .line 10947
    :cond_2
    if-eqz p1, :cond_3

    iget p1, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    if-nez p1, :cond_3

    .line 10948
    iget p1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    .line 10953
    :cond_3
    return-void
.end method

.method final setScrapContainer(Landroid/support/v7/widget/aq;Z)V
    .locals 0

    .line 10783
    iput-object p1, p0, Landroid/support/v7/widget/aA;->mScrapContainer:Landroid/support/v7/widget/aq;

    .line 10784
    iput-boolean p2, p0, Landroid/support/v7/widget/aA;->mInChangeScrap:Z

    .line 10785
    return-void
.end method

.method final shouldIgnore()Z
    .locals 1

    .line 10655
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 10901
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10902
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/aA;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/v7/widget/aA;->mItemId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10904
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10905
    const-string v1, " scrap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/aA;->mInChangeScrap:Z

    if-eqz v1, :cond_0

    const-string v1, "[changeScrap]"

    goto :goto_0

    :cond_0
    const-string v1, "[attachedScrap]"

    .line 10906
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10908
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10909
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10910
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->needsUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10911
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10912
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10913
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10914
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isRecyclable()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/aA;->mIsRecyclableCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10915
    :cond_8
    iget v1, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_b

    const-string v1, " undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10917
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10918
    :cond_c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final unScrap()V
    .locals 1

    .line 10763
    iget-object v0, p0, Landroid/support/v7/widget/aA;->mScrapContainer:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/aq;->m(Landroid/support/v7/widget/aA;)V

    .line 10764
    return-void
.end method

.method final wasReturnedFromScrap()Z
    .locals 1

    .line 10767
    iget v0, p0, Landroid/support/v7/widget/aA;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
