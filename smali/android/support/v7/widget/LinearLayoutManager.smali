.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/af;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aw;


# instance fields
.field final mAnchorInfo:Landroid/support/v7/widget/F;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Landroid/support/v7/widget/G;

.field private mLayoutState:Landroid/support/v7/widget/H;

.field mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/M;

.field public mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field public mPendingScrollPosition:I

.field public mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 155
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 156
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 165
    invoke-direct {p0}, Landroid/support/v7/widget/af;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 102
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 109
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 115
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 127
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 137
    new-instance v2, Landroid/support/v7/widget/F;

    invoke-direct {v2}, Landroid/support/v7/widget/F;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    .line 142
    new-instance v2, Landroid/support/v7/widget/G;

    invoke-direct {v2}, Landroid/support/v7/widget/G;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/G;

    .line 147
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 166
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid orientation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    if-nez v2, :cond_2

    :cond_1
    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v2, Landroid/support/v7/widget/O;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/O;-><init>(Landroid/support/v7/widget/af;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/support/v7/widget/N;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/N;-><init>(Landroid/support/v7/widget/af;)V

    :goto_0
    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iput-object v3, v2, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 167
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eq p2, p1, :cond_3

    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 168
    :cond_3
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mAutoMeasure:Z

    .line 169
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private computeScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 6

    .line 1119
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1120
    const/4 p1, 0x0

    return p1

    .line 1122
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1123
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1124
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1125
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1123
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/aD;->a(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;Z)I

    move-result p1

    return p1
.end method

.method private computeScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 7

    .line 1108
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    const/4 p1, 0x0

    return p1

    .line 1111
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1112
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1113
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1114
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1112
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/aD;->a(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;ZZ)I

    move-result p1

    return p1
.end method

.method private computeScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 6

    .line 1130
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    const/4 p1, 0x0

    return p1

    .line 1133
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1134
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1135
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1136
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 1134
    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/aD;->b(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/M;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/af;Z)I

    move-result p1

    return p1
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;
    .locals 2

    .line 1829
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .locals 2

    .line 1730
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1731
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1734
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .locals 2

    .line 1712
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1716
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;
    .locals 2

    .line 1834
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private findLastReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 7

    .line 1778
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I
    .locals 1

    .line 907
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    sub-int/2addr v0, p1

    .line 908
    if-lez v0, :cond_1

    .line 910
    neg-int v0, v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p2

    neg-int p2, p2

    .line 915
    add-int/2addr p1, p2

    .line 916
    if-eqz p4, :cond_0

    .line 918
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p3}, Landroid/support/v7/widget/M;->bn()I

    move-result p3

    sub-int/2addr p3, p1

    .line 919
    if-lez p3, :cond_0

    .line 920
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/M;->T(I)V

    .line 921
    add-int/2addr p3, p2

    return p3

    .line 924
    :cond_0
    return p2

    .line 912
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I
    .locals 1

    .line 932
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    sub-int v0, p1, v0

    .line 933
    if-lez v0, :cond_1

    .line 936
    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p2

    neg-int p2, p2

    .line 940
    add-int/2addr p1, p2

    .line 941
    if-eqz p4, :cond_0

    .line 943
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p3}, Landroid/support/v7/widget/M;->bm()I

    move-result p3

    sub-int/2addr p1, p3

    .line 944
    if-lez p1, :cond_0

    .line 945
    iget-object p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/M;->T(I)V

    .line 946
    sub-int/2addr p2, p1

    return p2

    .line 949
    :cond_0
    return p2

    .line 938
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .line 1700
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .line 1690
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private recycleByLayoutState(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;)V
    .locals 5

    .line 1477
    iget-boolean v0, p2, Landroid/support/v7/widget/H;->nX:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p2, Landroid/support/v7/widget/H;->of:Z

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 1480
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/H;->ob:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 1481
    iget p2, p2, Landroid/support/v7/widget/H;->om:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-ltz p2, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_4

    move p2, v2

    :goto_0
    if-ge p2, v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_7

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_6

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->T(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    :cond_7
    return-void

    .line 1483
    :cond_8
    iget p2, p2, Landroid/support/v7/widget/H;->om:I

    if-ltz p2, :cond_f

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_c

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ltz v1, :cond_b

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_a

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_a
    :goto_5
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    :cond_b
    return-void

    :cond_c
    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_f

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_e

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->S(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    invoke-direct {p0, p1, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/aq;II)V

    return-void

    .line 1485
    :cond_f
    return-void

    .line 1478
    :cond_10
    :goto_8
    return-void
.end method

.method private recycleChildren(Landroid/support/v7/widget/aq;II)V
    .locals 0

    .line 1360
    if-ne p2, p3, :cond_0

    .line 1361
    return-void

    .line 1366
    :cond_0
    if-le p3, p2, :cond_2

    .line 1367
    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_1

    .line 1368
    invoke-virtual {p0, p3, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V

    .line 1367
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1371
    :cond_2
    :goto_1
    if-le p2, p3, :cond_3

    .line 1372
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V

    .line 1371
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 1375
    :cond_3
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .line 355
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 356
    :cond_2
    :goto_0
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 358
    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 360
    return-void
.end method

.method private updateLayoutState(IIZLandroid/support/v7/widget/ax;)V
    .locals 4

    .line 1175
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/H;->of:Z

    .line 1176
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/ax;)I

    move-result p4

    iput p4, v0, Landroid/support/v7/widget/H;->on:I

    .line 1177
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, p4, Landroid/support/v7/widget/H;->ob:I

    .line 1179
    const/4 p4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1180
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, p1, Landroid/support/v7/widget/H;->on:I

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/H;->on:I

    .line 1182
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1184
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move p4, v0

    :goto_0
    iput p4, v1, Landroid/support/v7/widget/H;->oa:I

    .line 1186
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->oa:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/H;->nZ:I

    .line 1187
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/H;->mOffset:I

    .line 1189
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1190
    invoke-virtual {p4}, Landroid/support/v7/widget/M;->bn()I

    move-result p4

    sub-int/2addr p1, p4

    .line 1192
    goto :goto_1

    .line 1193
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1194
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v1, Landroid/support/v7/widget/H;->on:I

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bm()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/H;->on:I

    .line 1195
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2

    move p4, v0

    nop

    :cond_2
    iput p4, v1, Landroid/support/v7/widget/H;->oa:I

    .line 1197
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->oa:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/support/v7/widget/H;->nZ:I

    .line 1198
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/H;->mOffset:I

    .line 1199
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p4, p1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1200
    invoke-virtual {p4}, Landroid/support/v7/widget/M;->bm()I

    move-result p4

    add-int/2addr p1, p4

    .line 1202
    :goto_1
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, p4, Landroid/support/v7/widget/H;->nY:I

    .line 1203
    if-eqz p3, :cond_3

    .line 1204
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget p3, p2, Landroid/support/v7/widget/H;->nY:I

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/support/v7/widget/H;->nY:I

    .line 1206
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, p2, Landroid/support/v7/widget/H;->om:I

    .line 1207
    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .locals 3

    .line 957
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bn()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/H;->nY:I

    .line 958
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroid/support/v7/widget/H;->oa:I

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, v0, Landroid/support/v7/widget/H;->nZ:I

    .line 961
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v2, p1, Landroid/support/v7/widget/H;->ob:I

    .line 962
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, p1, Landroid/support/v7/widget/H;->mOffset:I

    .line 963
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/H;->om:I

    .line 964
    return-void
.end method

.method private updateLayoutStateToFillEnd(Landroid/support/v7/widget/F;)V
    .locals 1

    .line 953
    iget v0, p1, Landroid/support/v7/widget/F;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/F;->og:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 954
    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .locals 2

    .line 971
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bm()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/support/v7/widget/H;->nY:I

    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, v0, Landroid/support/v7/widget/H;->nZ:I

    .line 973
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p1, Landroid/support/v7/widget/H;->oa:I

    .line 975
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v1, p1, Landroid/support/v7/widget/H;->ob:I

    .line 976
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, p1, Landroid/support/v7/widget/H;->mOffset:I

    .line 977
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/high16 p2, -0x80000000

    iput p2, p1, Landroid/support/v7/widget/H;->om:I

    .line 979
    return-void
.end method

.method private updateLayoutStateToFillStart(Landroid/support/v7/widget/F;)V
    .locals 1

    .line 967
    iget v0, p1, Landroid/support/v7/widget/F;->mPosition:I

    iget p1, p1, Landroid/support/v7/widget/F;->og:I

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 968
    return-void
.end method


# virtual methods
.method public final assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 1348
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1349
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1351
    :cond_0
    return-void
.end method

.method public final canScrollHorizontally()Z
    .locals 1

    .line 288
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canScrollVertically()Z
    .locals 2

    .line 296
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/ax;Landroid/support/v7/widget/ai;)V
    .locals 1

    .line 1307
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1308
    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    .line 1313
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1314
    const/4 p2, 0x1

    if-lez p1, :cond_2

    .line 1315
    move v0, p2

    goto :goto_1

    .line 1314
    :cond_2
    const/4 v0, -0x1

    .line 1315
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1316
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/ax;)V

    .line 1317
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {p0, p3, p1, p4}, Landroid/support/v7/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ai;)V

    .line 1318
    return-void

    .line 1310
    :cond_3
    :goto_2
    return-void
.end method

.method public final collectInitialPrefetchPositions(ILandroid/support/v7/widget/ai;)V
    .locals 5

    .line 1227
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    .line 1230
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    goto :goto_0

    .line 1232
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1233
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1234
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v3, v1, :cond_2

    .line 1235
    if-eqz v0, :cond_1

    add-int/lit8 v3, p1, -0x1

    goto :goto_0

    .line 1241
    :cond_1
    move v3, v2

    goto :goto_0

    .line 1237
    :cond_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1241
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 1244
    :cond_3
    const/4 v1, 0x1

    .line 1245
    :goto_1
    move v0, v2

    :goto_2
    iget v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v0, v4, :cond_4

    .line 1246
    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    .line 1247
    invoke-interface {p2, v3, v2}, Landroid/support/v7/widget/ai;->o(II)V

    .line 1251
    add-int/2addr v3, v1

    .line 1245
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1253
    :cond_4
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ai;)V
    .locals 1

    .line 1216
    iget v0, p2, Landroid/support/v7/widget/H;->nZ:I

    .line 1217
    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 1218
    const/4 p1, 0x0

    iget p2, p2, Landroid/support/v7/widget/H;->om:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, v0, p1}, Landroid/support/v7/widget/ai;->o(II)V

    .line 1220
    :cond_0
    return-void
.end method

.method public final computeHorizontalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1089
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1079
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeHorizontalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1099
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    .line 455
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const/4 p1, 0x0

    return-object p1

    .line 458
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 459
    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    nop

    .line 460
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 461
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 463
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final computeVerticalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1094
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1084
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final computeVerticalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollRange(Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method final convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    .line 1645
    const/16 v0, 0x11

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_a

    const/16 v0, 0x21

    const/4 v3, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-eq p1, v0, :cond_6

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 1678
    return v2

    .line 1655
    :pswitch_0
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_0

    .line 1656
    return v3

    .line 1657
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1658
    return v1

    .line 1660
    :cond_1
    return v3

    .line 1647
    :pswitch_1
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_2

    .line 1648
    return v1

    .line 1649
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1650
    return v3

    .line 1652
    :cond_3
    return v1

    .line 1666
    :cond_4
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_5

    return v3

    :cond_5
    return v2

    .line 1672
    :cond_6
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v2

    .line 1663
    :cond_8
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v3, :cond_9

    return v1

    :cond_9
    return v2

    .line 1669
    :cond_a
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final ensureLayoutState()V
    .locals 1

    .line 986
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Landroid/support/v7/widget/H;

    invoke-direct {v0}, Landroid/support/v7/widget/H;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    .line 989
    :cond_0
    return-void
.end method

.method final fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I
    .locals 7

    .line 1501
    iget v0, p2, Landroid/support/v7/widget/H;->nY:I

    .line 1502
    iget v1, p2, Landroid/support/v7/widget/H;->om:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 1504
    iget v1, p2, Landroid/support/v7/widget/H;->nY:I

    if-gez v1, :cond_0

    .line 1505
    iget v1, p2, Landroid/support/v7/widget/H;->om:I

    iget v3, p2, Landroid/support/v7/widget/H;->nY:I

    add-int/2addr v1, v3

    iput v1, p2, Landroid/support/v7/widget/H;->om:I

    .line 1507
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;)V

    .line 1509
    :cond_1
    iget v1, p2, Landroid/support/v7/widget/H;->nY:I

    iget v3, p2, Landroid/support/v7/widget/H;->on:I

    add-int/2addr v1, v3

    .line 1510
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Landroid/support/v7/widget/G;

    .line 1511
    :cond_2
    iget-boolean v4, p2, Landroid/support/v7/widget/H;->of:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_8

    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/ax;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1512
    const/4 v4, 0x0

    iput v4, v3, Landroid/support/v7/widget/G;->oj:I

    iput-boolean v4, v3, Landroid/support/v7/widget/G;->mFinished:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/G;->ok:Z

    iput-boolean v4, v3, Landroid/support/v7/widget/G;->ol:Z

    .line 1516
    invoke-virtual {p0, p1, p3, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->layoutChunk(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/G;)V

    .line 1520
    iget-boolean v4, v3, Landroid/support/v7/widget/G;->mFinished:Z

    if-nez v4, :cond_8

    .line 1521
    iget v4, p2, Landroid/support/v7/widget/H;->mOffset:I

    iget v5, v3, Landroid/support/v7/widget/G;->oj:I

    iget v6, p2, Landroid/support/v7/widget/H;->ob:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->mOffset:I

    .line 1530
    iget-boolean v4, v3, Landroid/support/v7/widget/G;->ok:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-object v4, v4, Landroid/support/v7/widget/H;->oq:Ljava/util/List;

    if-nez v4, :cond_4

    .line 1531
    iget-boolean v4, p3, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v4, :cond_5

    .line 1532
    :cond_4
    iget v4, p2, Landroid/support/v7/widget/H;->nY:I

    iget v5, v3, Landroid/support/v7/widget/G;->oj:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->nY:I

    .line 1534
    iget v4, v3, Landroid/support/v7/widget/G;->oj:I

    sub-int/2addr v1, v4

    .line 1537
    :cond_5
    iget v4, p2, Landroid/support/v7/widget/H;->om:I

    if-eq v4, v2, :cond_7

    .line 1538
    iget v4, p2, Landroid/support/v7/widget/H;->om:I

    iget v5, v3, Landroid/support/v7/widget/G;->oj:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->om:I

    .line 1539
    iget v4, p2, Landroid/support/v7/widget/H;->nY:I

    if-gez v4, :cond_6

    .line 1540
    iget v4, p2, Landroid/support/v7/widget/H;->om:I

    iget v5, p2, Landroid/support/v7/widget/H;->nY:I

    add-int/2addr v4, v5

    iput v4, p2, Landroid/support/v7/widget/H;->om:I

    .line 1542
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;)V

    .line 1544
    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v4, v3, Landroid/support/v7/widget/G;->ol:Z

    if-eqz v4, :cond_2

    .line 1545
    :cond_8
    iget p1, p2, Landroid/support/v7/widget/H;->nY:I

    sub-int/2addr v0, p1

    return v0
.end method

.method final findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .locals 3

    .line 1945
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1946
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1947
    :goto_0
    if-nez v0, :cond_2

    .line 1948
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1950
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1953
    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bm()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1954
    const/16 v0, 0x4104

    .line 1956
    const/16 v1, 0x4004

    goto :goto_1

    .line 1959
    :cond_3
    const/16 v0, 0x1041

    .line 1961
    const/16 v1, 0x1001

    .line 1964
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1965
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1967
    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final findOneVisibleChild(IIZZ)Landroid/view/View;
    .locals 1

    .line 1923
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1924
    nop

    .line 1926
    const/16 v0, 0x140

    if-eqz p3, :cond_0

    .line 1927
    const/16 p3, 0x6003

    goto :goto_0

    .line 1930
    :cond_0
    nop

    .line 1933
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    .line 1934
    goto :goto_1

    .line 1937
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_2

    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1938
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    .line 1940
    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/support/v7/widget/aK;->c(IIII)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;
    .locals 5

    .line 1784
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1785
    nop

    .line 1786
    nop

    .line 1787
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->bm()I

    move-result p1

    .line 1788
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p2}, Landroid/support/v7/widget/M;->bn()I

    move-result p2

    .line 1789
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 1790
    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    if-eq p3, p4, :cond_5

    .line 1791
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1792
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1793
    if-ltz v4, :cond_4

    if-ge v4, p5, :cond_4

    .line 1794
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aj;

    iget-object v4, v4, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1795
    if-nez v2, :cond_4

    .line 1796
    nop

    .line 1790
    move-object v2, v3

    goto :goto_3

    .line 1798
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1799
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_2

    goto :goto_2

    .line 1804
    :cond_2
    return-object v3

    .line 1800
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 1801
    nop

    .line 1790
    move-object v1, v3

    :cond_4
    :goto_3
    add-int/2addr p3, v0

    goto :goto_1

    .line 1808
    :cond_5
    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    return-object v2
.end method

.method public final findViewByPosition(I)Landroid/view/View;
    .locals 2

    .line 400
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 401
    if-nez v0, :cond_0

    .line 402
    const/4 p1, 0x0

    return-object p1

    .line 404
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 405
    sub-int v1, p1, v1

    .line 406
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 407
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 409
    return-object v0

    .line 413
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/aj;
    .locals 2

    .line 193
    new-instance v0, Landroid/support/v7/widget/aj;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/aj;-><init>(II)V

    return-object v0
.end method

.method protected final getExtraLayoutSpace(Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 437
    iget p1, p1, Landroid/support/v7/widget/ax;->pd:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->bo()I

    move-result p1

    return p1

    .line 440
    :cond_1
    return v0
.end method

.method protected final isLayoutRTL()Z
    .locals 2

    .line 982
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method layoutChunk(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/G;)V
    .locals 9

    .line 1556
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/aq;)Landroid/view/View;

    move-result-object p1

    .line 1557
    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 1563
    iput-boolean p2, p4, Landroid/support/v7/widget/G;->mFinished:Z

    .line 1564
    return-void

    .line 1566
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v7/widget/aj;

    .line 1567
    iget-object v0, p3, Landroid/support/v7/widget/H;->oq:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1568
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/H;->ob:I

    if-ne v3, v1, :cond_1

    move v3, p2

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-ne v0, v3, :cond_2

    .line 1570
    invoke-super {p0, p1, v1, v2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_2

    .line 1572
    :cond_2
    invoke-super {p0, p1, v2, v2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_2

    .line 1575
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Landroid/support/v7/widget/H;->ob:I

    if-ne v3, v1, :cond_4

    move v3, p2

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_5

    .line 1577
    invoke-super {p0, p1, v1, p2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_2

    .line 1579
    :cond_5
    invoke-super {p0, p1, v2, p2}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    .line 1582
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    iget-object v3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    iget v3, p0, Landroid/support/v7/widget/af;->mWidth:I

    iget v5, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iget v4, v0, Landroid/support/v7/widget/aj;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result v8

    invoke-static {v3, v5, v7, v4, v8}, Landroid/support/v7/widget/af;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/af;->mHeight:I

    iget v5, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result v8

    invoke-static {v4, v5, v7, v2, v8}, Landroid/support/v7/widget/af;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    invoke-virtual {p0, p1, v3, v2, v0}, Landroid/support/v7/widget/af;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1583
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Landroid/support/v7/widget/G;->oj:I

    .line 1585
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_9

    .line 1586
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1587
    iget v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1588
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_3

    .line 1590
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1591
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1593
    :goto_3
    iget v3, p3, Landroid/support/v7/widget/H;->ob:I

    if-ne v3, v1, :cond_8

    .line 1594
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1595
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->oj:I

    sub-int/2addr p3, v3

    .line 1614
    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_4

    .line 1597
    :cond_8
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1598
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->oj:I

    add-int/2addr p3, v3

    .line 1614
    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_4

    .line 1601
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v0

    .line 1602
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1604
    iget v3, p3, Landroid/support/v7/widget/H;->ob:I

    if-ne v3, v1, :cond_a

    .line 1605
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1606
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->oj:I

    sub-int/2addr p3, v3

    .line 1614
    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    goto :goto_4

    .line 1608
    :cond_a
    iget v1, p3, Landroid/support/v7/widget/H;->mOffset:I

    .line 1609
    iget p3, p3, Landroid/support/v7/widget/H;->mOffset:I

    iget v3, p4, Landroid/support/v7/widget/G;->oj:I

    add-int/2addr p3, v3

    .line 1614
    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    :goto_4
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1621
    iget-object p3, v6, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {p3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p3, v6, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {p3}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 1622
    :cond_b
    iput-boolean p2, p4, Landroid/support/v7/widget/G;->ok:Z

    .line 1624
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    iput-boolean p1, p4, Landroid/support/v7/widget/G;->ol:Z

    .line 1625
    return-void
.end method

.method onAnchorReady(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/F;I)V
    .locals 0

    .line 689
    return-void
.end method

.method public final onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 0

    .line 227
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/af;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 228
    iget-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    .line 230
    invoke-virtual {p2}, Landroid/support/v7/widget/aq;->clear()V

    .line 232
    :cond_0
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 3

    .line 1974
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1975
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1976
    return-object v0

    .line 1979
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    .line 1980
    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    .line 1981
    return-object v0

    .line 1983
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1984
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1985
    const v1, 0x3eaaaaab

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bo()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1986
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/ax;)V

    .line 1987
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p2, v1, Landroid/support/v7/widget/H;->om:I

    .line 1988
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput-boolean v2, p2, Landroid/support/v7/widget/H;->nX:Z

    .line 1989
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/4 v1, 0x1

    invoke-virtual {p0, p3, p2, p4, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 1996
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 1997
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p3, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 1999
    :cond_3
    iget-boolean p3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p3, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild$5a57ce53()Landroid/view/View;

    move-result-object p3

    .line 2004
    :goto_0
    if-ne p1, p2, :cond_5

    .line 2005
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    goto :goto_1

    .line 2007
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 2009
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2010
    if-nez p3, :cond_6

    .line 2011
    return-object v0

    .line 2013
    :cond_6
    return-object p1

    .line 2015
    :cond_7
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 236
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 239
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 241
    :cond_2
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 482
    move-object/from16 v8, p2

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v9, :cond_1

    .line 483
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 484
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V

    .line 485
    return-void

    .line 488
    :cond_1
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->bk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    iput v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 492
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 493
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/support/v7/widget/H;->nX:Z

    .line 495
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 497
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 498
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v1, v1, Landroid/support/v7/widget/F;->oi:Z

    const/high16 v11, -0x80000000

    const/4 v12, 0x1

    if-eqz v1, :cond_5

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v9, :cond_5

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 505
    :cond_3
    if-eqz v0, :cond_21

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 506
    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bn()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 507
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 508
    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bm()I

    move-result v2

    if-gt v1, v2, :cond_21

    .line 520
    :cond_4
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/F;->l(Landroid/view/View;I)V

    goto/16 :goto_13

    .line 500
    :cond_5
    :goto_0
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v0}, Landroid/support/v7/widget/F;->reset()V

    .line 501
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v7/widget/F;->oh:Z

    .line 503
    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v0, v8, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v0, :cond_15

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v9, :cond_6

    goto/16 :goto_8

    :cond_6
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ltz v0, :cond_14

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    goto/16 :goto_7

    :cond_7
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v0, v13, Landroid/support/v7/widget/F;->mPosition:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_9

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->bk()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    iput-boolean v0, v13, Landroid/support/v7/widget/F;->oh:Z

    iget-boolean v0, v13, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v0, :cond_8

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    sub-int/2addr v0, v1

    :goto_1
    iput v0, v13, Landroid/support/v7/widget/F;->og:I

    goto :goto_2

    :cond_8
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    add-int/2addr v0, v1

    goto :goto_1

    :goto_2
    move v0, v12

    goto/16 :goto_9

    :cond_9
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne v0, v11, :cond_12

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bo()I

    move-result v2

    if-le v1, v2, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bm()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_b

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    iput v0, v13, Landroid/support/v7/widget/F;->og:I

    iput-boolean v10, v13, Landroid/support/v7/widget/F;->oh:Z

    goto :goto_2

    :cond_b
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bn()I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_c

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    iput v0, v13, Landroid/support/v7/widget/F;->og:I

    iput-boolean v12, v13, Landroid/support/v7/widget/F;->oh:Z

    goto :goto_2

    :cond_c
    iget-boolean v1, v13, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v1, :cond_d

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bl()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_d
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v0

    :goto_3
    goto :goto_1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v1, v0, :cond_f

    move v0, v12

    goto :goto_4

    :cond_f
    move v0, v10

    :goto_4
    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne v0, v1, :cond_10

    move v0, v12

    goto :goto_5

    :cond_10
    move v0, v10

    :goto_5
    iput-boolean v0, v13, Landroid/support/v7/widget/F;->oh:Z

    :cond_11
    :goto_6
    invoke-virtual {v13}, Landroid/support/v7/widget/F;->bj()V

    goto/16 :goto_2

    :cond_12
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, v13, Landroid/support/v7/widget/F;->oh:Z

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_13

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v0, v1

    goto/16 :goto_1

    :cond_13
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v0, v1

    goto/16 :goto_1

    :cond_14
    :goto_7
    iput v9, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v11, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    nop

    :cond_15
    :goto_8
    move v0, v10

    :goto_9
    if-nez v0, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aj;

    iget-object v2, v1, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v1, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v2

    if-ltz v2, :cond_16

    iget-object v1, v1, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_16

    move v1, v12

    goto :goto_a

    :cond_16
    move v1, v10

    :goto_a
    if-eqz v1, :cond_17

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/support/v7/widget/F;->l(Landroid/view/View;I)V

    :goto_b
    move v0, v12

    goto/16 :goto_11

    :cond_17
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_1e

    iget-boolean v0, v13, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v0, :cond_18

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_19

    :goto_c
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;

    move-result-object v0

    goto :goto_d

    :cond_18
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_19

    goto :goto_c

    :cond_19
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v5

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutManager;->findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_1e

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/support/v7/widget/F;->m(Landroid/view/View;I)V

    iget-boolean v1, v8, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bn()I

    move-result v2

    if-ge v1, v2, :cond_1b

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v0

    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bm()I

    move-result v1

    if-ge v0, v1, :cond_1a

    goto :goto_e

    :cond_1a
    move v0, v10

    goto :goto_f

    :cond_1b
    :goto_e
    move v0, v12

    :goto_f
    if-eqz v0, :cond_1d

    iget-boolean v0, v13, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v0, :cond_1c

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    goto :goto_10

    :cond_1c
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    :goto_10
    iput v0, v13, Landroid/support/v7/widget/F;->og:I

    :cond_1d
    goto :goto_b

    :cond_1e
    move v0, v10

    :goto_11
    if-nez v0, :cond_20

    invoke-virtual {v13}, Landroid/support/v7/widget/F;->bj()V

    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v0, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v12

    goto :goto_12

    :cond_1f
    move v0, v10

    :goto_12
    iput v0, v13, Landroid/support/v7/widget/F;->mPosition:I

    .line 504
    :cond_20
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iput-boolean v12, v0, Landroid/support/v7/widget/F;->oi:Z

    .line 530
    :cond_21
    :goto_13
    invoke-virtual {v6, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/ax;)I

    move-result v0

    .line 533
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->op:I

    if-ltz v1, :cond_22

    .line 534
    nop

    .line 535
    nop

    .line 540
    move v1, v0

    move v0, v10

    goto :goto_14

    .line 537
    :cond_22
    nop

    .line 538
    nop

    .line 540
    move v1, v10

    :goto_14
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bm()I

    move-result v2

    add-int/2addr v0, v2

    .line 541
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->getEndPadding()I

    move-result v2

    add-int/2addr v1, v2

    .line 542
    iget-boolean v2, v8, Landroid/support/v7/widget/ax;->pq:Z

    if-eqz v2, :cond_25

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v2, v9, :cond_25

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v2, v11, :cond_25

    .line 547
    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 548
    if-eqz v2, :cond_25

    .line 551
    iget-boolean v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v3, :cond_23

    .line 552
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bn()I

    move-result v3

    iget-object v4, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 553
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v3, v2

    .line 554
    iget v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v3, v2

    goto :goto_15

    .line 556
    :cond_23
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 557
    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bm()I

    move-result v3

    sub-int/2addr v2, v3

    .line 558
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v3, v2

    .line 560
    :goto_15
    if-lez v3, :cond_24

    .line 561
    add-int/2addr v0, v3

    goto :goto_16

    .line 563
    :cond_24
    sub-int/2addr v1, v3

    .line 570
    :cond_25
    :goto_16
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v2, v2, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v2, :cond_27

    .line 571
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_26

    .line 578
    :goto_17
    move v2, v12

    goto :goto_19

    .line 571
    :cond_26
    nop

    .line 578
    :goto_18
    move v2, v9

    goto :goto_19

    .line 574
    :cond_27
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_28

    goto :goto_18

    :cond_28
    goto :goto_17

    .line 578
    :goto_19
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/F;I)V

    .line 579
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/aq;)V

    .line 580
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/widget/H;->of:Z

    .line 581
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget-boolean v3, v8, Landroid/support/v7/widget/ax;->pq:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/H;->oo:Z

    .line 582
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    iget-boolean v2, v2, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v2, :cond_2b

    .line 584
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/F;)V

    .line 585
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v0, v2, Landroid/support/v7/widget/H;->on:I

    .line 586
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 587
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v0, v0, Landroid/support/v7/widget/H;->mOffset:I

    .line 588
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v2, Landroid/support/v7/widget/H;->nZ:I

    .line 589
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    if-lez v3, :cond_29

    .line 590
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    add-int/2addr v1, v3

    .line 593
    :cond_29
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/F;)V

    .line 594
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v1, v3, Landroid/support/v7/widget/H;->on:I

    .line 595
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v1, Landroid/support/v7/widget/H;->nZ:I

    iget-object v4, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v4, v4, Landroid/support/v7/widget/H;->oa:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/support/v7/widget/H;->nZ:I

    .line 596
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v1, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 597
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->mOffset:I

    .line 599
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    if-lez v3, :cond_2a

    .line 601
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    .line 602
    invoke-direct {v6, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 603
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v3, v0, Landroid/support/v7/widget/H;->on:I

    .line 604
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 605
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v0, v0, Landroid/support/v7/widget/H;->mOffset:I

    .line 607
    :cond_2a
    goto :goto_1a

    .line 609
    :cond_2b
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v2}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Landroid/support/v7/widget/F;)V

    .line 610
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v1, v2, Landroid/support/v7/widget/H;->on:I

    .line 611
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v1, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 612
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->mOffset:I

    .line 613
    iget-object v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v2, Landroid/support/v7/widget/H;->nZ:I

    .line 614
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    if-lez v3, :cond_2c

    .line 615
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    add-int/2addr v0, v3

    .line 618
    :cond_2c
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-direct {v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Landroid/support/v7/widget/F;)V

    .line 619
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v0, v3, Landroid/support/v7/widget/H;->on:I

    .line 620
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v0, Landroid/support/v7/widget/H;->nZ:I

    iget-object v4, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v4, v4, Landroid/support/v7/widget/H;->oa:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/support/v7/widget/H;->nZ:I

    .line 621
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 622
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v0, v0, Landroid/support/v7/widget/H;->mOffset:I

    .line 624
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    if-lez v3, :cond_2d

    .line 625
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v3, v3, Landroid/support/v7/widget/H;->nY:I

    .line 627
    invoke-direct {v6, v2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 628
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v3, v1, Landroid/support/v7/widget/H;->on:I

    .line 629
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v1, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    .line 630
    iget-object v1, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v1, v1, Landroid/support/v7/widget/H;->mOffset:I

    .line 637
    :cond_2d
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 641
    iget-boolean v2, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2e

    .line 642
    invoke-direct {v6, v1, v7, v8, v12}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 643
    add-int/2addr v0, v2

    .line 644
    add-int/2addr v1, v2

    .line 645
    invoke-direct {v6, v0, v7, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 646
    add-int/2addr v0, v2

    .line 647
    add-int/2addr v1, v2

    .line 648
    goto :goto_1b

    .line 649
    :cond_2e
    invoke-direct {v6, v0, v7, v8, v12}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 650
    add-int/2addr v0, v2

    .line 651
    add-int/2addr v1, v2

    .line 652
    invoke-direct {v6, v1, v7, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Z)I

    move-result v2

    .line 653
    add-int/2addr v0, v2

    .line 654
    add-int/2addr v1, v2

    .line 657
    :cond_2f
    :goto_1b
    iget-boolean v2, v8, Landroid/support/v7/widget/ax;->pu:Z

    if-eqz v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_38

    iget-boolean v2, v8, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_20

    :cond_30
    iget-object v2, v7, Landroid/support/v7/widget/aq;->oX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v10}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    move v5, v10

    move v11, v5

    move v13, v11

    :goto_1c
    if-ge v5, v3, :cond_35

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/aA;

    invoke-virtual {v14}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v15

    if-nez v15, :cond_34

    invoke-virtual {v14}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v15

    if-ge v15, v4, :cond_31

    move v15, v12

    goto :goto_1d

    :cond_31
    move v15, v10

    :goto_1d
    iget-boolean v12, v6, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v15, v12, :cond_32

    move v12, v9

    goto :goto_1e

    :cond_32
    const/4 v12, 0x1

    :goto_1e
    if-ne v12, v9, :cond_33

    iget-object v12, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-object v14, v14, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_1f

    :cond_33
    iget-object v12, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    iget-object v14, v14, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v12

    add-int/2addr v13, v12

    :cond_34
    :goto_1f
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x1

    goto :goto_1c

    :cond_35
    iget-object v3, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput-object v2, v3, Landroid/support/v7/widget/H;->oq:Ljava/util/List;

    const/4 v2, 0x0

    if-lez v11, :cond_36

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-direct {v6, v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v11, v0, Landroid/support/v7/widget/H;->on:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v10, v0, Landroid/support/v7/widget/H;->nY:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/H;->P(Landroid/view/View;)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    :cond_36
    if-lez v13, :cond_37

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-direct {v6, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v13, v0, Landroid/support/v7/widget/H;->on:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput v10, v0, Landroid/support/v7/widget/H;->nY:I

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/H;->P(Landroid/view/View;)V

    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    :cond_37
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput-object v2, v0, Landroid/support/v7/widget/H;->oq:Ljava/util/List;

    .line 658
    :cond_38
    :goto_20
    iget-boolean v0, v8, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v0, :cond_39

    .line 659
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bo()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/M;->oC:I

    goto :goto_21

    .line 661
    :cond_39
    iget-object v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {v0}, Landroid/support/v7/widget/F;->reset()V

    .line 663
    :goto_21
    iget-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v0, v6, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 667
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 671
    invoke-super {p0, p1}, Landroid/support/v7/widget/af;->onLayoutCompleted(Landroid/support/v7/widget/ax;)V

    .line 672
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 673
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 674
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 675
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Landroid/support/v7/widget/F;

    invoke-virtual {p1}, Landroid/support/v7/widget/F;->reset()V

    .line 676
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 272
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 274
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 281
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 249
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 250
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 251
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 252
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    .line 253
    if-eqz v1, :cond_1

    .line 254
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 255
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bn()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 256
    invoke-virtual {v3, v1}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    .line 257
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    .line 258
    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 260
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    .line 261
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 262
    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bm()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    .line 264
    goto :goto_0

    .line 265
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    .line 267
    :goto_0
    return-object v0
.end method

.method final resolveIsInfinite()Z
    .locals 1

    .line 1210
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 1211
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->getEnd()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 5

    .line 1321
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1324
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/H;->nX:Z

    .line 1325
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1326
    if-lez p1, :cond_1

    .line 1327
    move v0, v2

    goto :goto_0

    .line 1326
    :cond_1
    const/4 v0, -0x1

    .line 1327
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1328
    invoke-direct {p0, v0, v3, v2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLandroid/support/v7/widget/ax;)V

    .line 1329
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iget v2, v2, Landroid/support/v7/widget/H;->om:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    .line 1330
    invoke-virtual {p0, p2, v4, p3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ax;Z)I

    move-result p2

    add-int/2addr v2, p2

    .line 1331
    if-gez v2, :cond_2

    .line 1335
    return v1

    .line 1337
    :cond_2
    if-le v3, v2, :cond_3

    mul-int p1, v0, v2

    .line 1338
    :cond_3
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/M;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/M;->T(I)V

    .line 1342
    iget-object p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLayoutState:Landroid/support/v7/widget/H;

    iput p1, p2, Landroid/support/v7/widget/H;->op:I

    .line 1343
    return p1

    .line 1322
    :cond_4
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 1059
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1060
    const/4 p1, 0x0

    return p1

    .line 1062
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final scrollToPosition(I)V
    .locals 1

    .line 1016
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1017
    const/high16 p1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1018
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1019
    iget-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, -0x1

    iput v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    .line 1021
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 1022
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 1

    .line 1071
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 1072
    const/4 p1, 0x0

    return p1

    .line 1074
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method final shouldMeasureTwice()Z
    .locals 6

    .line 1629
    iget v0, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 1630
    iget v0, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    if-eq v0, v1, :cond_2

    .line 1631
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 447
    new-instance v0, Landroid/support/v7/widget/J;

    .line 448
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v7/widget/J;-><init>(Landroid/content/Context;)V

    .line 449
    iput p2, v0, Landroid/support/v7/widget/au;->pd:I

    .line 450
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/au;)V

    .line 451
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 2

    .line 2084
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
