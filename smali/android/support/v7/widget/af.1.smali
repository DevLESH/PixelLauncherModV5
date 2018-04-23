.class public abstract Landroid/support/v7/widget/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Landroid/support/v7/widget/d;

.field mHeight:I

.field mHeightMode:I

.field mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

.field private final mHorizontalBoundCheckCallback:Landroid/support/v7/widget/aM;

.field mIsAttachedToWindow:Z

.field mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Landroid/support/v7/widget/au;

.field mVerticalBoundCheck:Landroid/support/v7/widget/aK;

.field private final mVerticalBoundCheckCallback:Landroid/support/v7/widget/aM;

.field mWidth:I

.field mWidthMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7158
    new-instance v0, Landroid/support/v7/widget/ag;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ag;-><init>(Landroid/support/v7/widget/af;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/aM;

    .line 7204
    new-instance v0, Landroid/support/v7/widget/ah;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ah;-><init>(Landroid/support/v7/widget/af;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/aM;

    .line 7254
    new-instance v0, Landroid/support/v7/widget/aK;

    iget-object v1, p0, Landroid/support/v7/widget/af;->mHorizontalBoundCheckCallback:Landroid/support/v7/widget/aM;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aK;-><init>(Landroid/support/v7/widget/aM;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    .line 7255
    new-instance v0, Landroid/support/v7/widget/aK;

    iget-object v1, p0, Landroid/support/v7/widget/af;->mVerticalBoundCheckCallback:Landroid/support/v7/widget/aM;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/aK;-><init>(Landroid/support/v7/widget/aM;)V

    iput-object v0, p0, Landroid/support/v7/widget/af;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    .line 7260
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mRequestedSimpleAnimations:Z

    .line 7262
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    .line 7264
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mAutoMeasure:Z

    .line 7270
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mMeasurementCacheEnabled:Z

    .line 7272
    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mItemPrefetchEnabled:Z

    .line 10209
    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/af;Landroid/support/v7/widget/au;)V
    .locals 1

    .line 7150
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    :cond_0
    return-void
.end method

.method public static chooseSize(III)I
    .locals 2

    .line 7459
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7460
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 7461
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 7468
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 7463
    :cond_0
    return p0

    .line 7465
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .locals 4

    .line 8993
    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 8994
    nop

    .line 8995
    nop

    .line 8996
    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_4

    .line 8997
    if-ltz p3, :cond_0

    .line 8998
    nop

    .line 8999
    nop

    .line 9034
    :goto_0
    move p2, v3

    goto :goto_6

    .line 9000
    :cond_0
    if-ne p3, v1, :cond_3

    .line 9001
    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    goto :goto_1

    .line 9008
    :cond_1
    nop

    .line 9009
    nop

    .line 9010
    :goto_1
    goto :goto_5

    .line 9004
    :cond_2
    nop

    .line 9005
    nop

    .line 9006
    goto :goto_2

    .line 9012
    :cond_3
    if-ne p3, v0, :cond_9

    .line 9013
    nop

    .line 9014
    nop

    .line 9028
    move p3, p2

    goto :goto_3

    .line 9017
    :cond_4
    if-ltz p3, :cond_5

    .line 9018
    nop

    .line 9019
    goto :goto_0

    .line 9020
    :cond_5
    if-ne p3, v1, :cond_6

    .line 9021
    nop

    .line 9022
    nop

    .line 9034
    :goto_2
    move p3, p0

    move p2, p1

    goto :goto_6

    .line 9023
    :cond_6
    if-ne p3, v0, :cond_9

    .line 9024
    nop

    .line 9025
    if-eq p1, v2, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_4

    .line 9028
    :cond_7
    move p3, p0

    :goto_3
    goto :goto_6

    .line 9026
    :cond_8
    :goto_4
    nop

    .line 9034
    move p3, p0

    move p2, v2

    goto :goto_6

    :cond_9
    :goto_5
    move p3, p2

    :goto_6
    invoke-static {p3, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private static isMeasurementUpToDate(III)Z
    .locals 3

    .line 8887
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8888
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 8889
    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 8890
    return v1

    .line 8892
    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    .line 8900
    return v1

    .line 8898
    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    .line 8894
    :cond_3
    return v2

    .line 8896
    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method final addViewInt(Landroid/view/View;IZ)V
    .locals 6

    .line 8131
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 8132
    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 8141
    :cond_0
    iget-object p3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/aN;->p(Landroid/support/v7/widget/aA;)V

    goto :goto_1

    .line 8134
    :cond_1
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/aN;->o(Landroid/support/v7/widget/aA;)V

    .line 8143
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/v7/widget/aj;

    .line 8144
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 8154
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_8

    .line 8156
    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/d;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 8157
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8158
    iget-object p2, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p2}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result p2

    .line 8160
    :cond_3
    if-ne v1, v3, :cond_4

    .line 8161
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 8163
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8165
    :cond_4
    if-eq v1, p2, :cond_7

    .line 8166
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/af;->detachViewAt(I)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aj;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aN;->o(Landroid/support/v7/widget/aA;)V

    goto :goto_2

    :cond_6
    iget-object v5, p1, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aN;->p(Landroid/support/v7/widget/aA;)V

    :goto_2
    iget-object p1, p1, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v4}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    invoke-virtual {p1, v3, p2, v1, v4}, Landroid/support/v7/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8168
    :cond_7
    goto :goto_5

    .line 8169
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v1, p1, p2, v2}, Landroid/support/v7/widget/d;->a(Landroid/view/View;IZ)V

    .line 8170
    const/4 p2, 0x1

    iput-boolean p2, p3, Landroid/support/v7/widget/aj;->oM:Z

    .line 8171
    iget-object p2, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz p2, :cond_b

    iget-object p2, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    iget-boolean p2, p2, Landroid/support/v7/widget/au;->av:Z

    if-eqz p2, :cond_b

    .line 8172
    iget-object p2, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/au;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p2, Landroid/support/v7/widget/au;->pd:I

    if-ne v1, v3, :cond_b

    iput-object p1, p2, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    goto :goto_5

    .line 8145
    :cond_9
    :goto_3
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8146
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->unScrap()V

    goto :goto_4

    .line 8148
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 8150
    :goto_4
    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Landroid/support/v7/widget/d;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8175
    :cond_b
    :goto_5
    iget-boolean p1, p3, Landroid/support/v7/widget/aj;->oN:Z

    if-eqz p1, :cond_c

    .line 8179
    iget-object p1, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8180
    iput-boolean v2, p3, Landroid/support/v7/widget/aj;->oN:Z

    .line 8182
    :cond_c
    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    .line 7480
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7481
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7483
    :cond_0
    return-void
.end method

.method public final calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 9253
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9254
    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 9255
    return-void

    .line 9257
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 9258
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9259
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 7987
    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 7997
    const/4 v0, 0x0

    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/aj;)Z
    .locals 0

    .line 7902
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/ax;Landroid/support/v7/widget/ai;)V
    .locals 0

    .line 7654
    return-void
.end method

.method public collectInitialPrefetchPositions(ILandroid/support/v7/widget/ai;)V
    .locals 0

    .line 7682
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9697
    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9712
    const/4 p1, 0x0

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9727
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9742
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9757
    const/4 p1, 0x0

    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 9772
    const/4 p1, 0x0

    return p1
.end method

.method public final detachAndScrapAttachedViews(Landroid/support/v7/widget/aq;)V
    .locals 4

    .line 8739
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    .line 8740
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 8741
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8742
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v3, v3, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->removeViewAt(I)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->detachViewAt(I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/aq;->aa(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/aN;->p(Landroid/support/v7/widget/aA;)V

    .line 8740
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8744
    :cond_2
    return-void
.end method

.method public final detachViewAt(I)V
    .locals 1

    .line 8351
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->detachViewFromParent(I)V

    .line 8352
    return-void
.end method

.method final dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 1

    .line 7690
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/af;->mIsAttachedToWindow:Z

    .line 7691
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/af;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V

    .line 7692
    return-void
.end method

.method public final findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 8271
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8272
    return-object v1

    .line 8274
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 8275
    if-nez p1, :cond_1

    .line 8276
    return-object v1

    .line 8278
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->M(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8279
    return-object v1

    .line 8281
    :cond_2
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5

    .line 8298
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    .line 8299
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 8300
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8301
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 8302
    if-eqz v3, :cond_1

    .line 8303
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 8306
    iget-boolean v4, v4, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8307
    :cond_0
    return-object v2

    .line 8299
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8310
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract generateDefaultLayoutParams()Landroid/support/v7/widget/aj;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 7943
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 7919
    instance-of v0, p1, Landroid/support/v7/widget/aj;

    if-eqz v0, :cond_0

    .line 7920
    new-instance v0, Landroid/support/v7/widget/aj;

    check-cast p1, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/support/v7/widget/aj;)V

    return-object v0

    .line 7921
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7922
    new-instance v0, Landroid/support/v7/widget/aj;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7924
    :cond_1
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 8499
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getChildCount()I
    .locals 1

    .line 8490
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->getChildCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 10056
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10059
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result p1

    return p1

    :cond_1
    return p2

    .line 10057
    :cond_2
    :goto_0
    return p2
.end method

.method public final getDecoratedBottom(Landroid/view/View;)I
    .locals 1

    .line 9232
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getDecoratedLeft(Landroid/view/View;)I
    .locals 1

    .line 9196
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 2

    .line 9061
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    iget-object v0, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9062
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 2

    .line 9047
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    iget-object v0, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9048
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public final getDecoratedRight(Landroid/view/View;)I
    .locals 1

    .line 9220
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final getDecoratedTop(Landroid/view/View;)I
    .locals 1

    .line 9208
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final getFocusedChild()Landroid/view/View;
    .locals 3

    .line 8636
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8637
    return-object v1

    .line 8639
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8640
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/d;->M(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8643
    :cond_1
    return-object v0

    .line 8641
    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getPaddingBottom()I
    .locals 1

    .line 8589
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 1

    .line 8562
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPaddingRight()I
    .locals 1

    .line 8580
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 8571
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getPosition(Landroid/view/View;)I
    .locals 0

    .line 8241
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aj;

    iget-object p1, p1, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result p1

    return p1
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 10037
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-nez p1, :cond_0

    goto :goto_0

    .line 10040
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p1}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result p1

    return p1

    :cond_1
    return p2

    .line 10038
    :cond_2
    :goto_0
    return p2
.end method

.method public final getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    .line 9151
    if-eqz p2, :cond_0

    .line 9152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/aj;

    iget-object p2, p2, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9153
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 9154
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 9153
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 9155
    goto :goto_0

    .line 9156
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9159
    :goto_0
    iget-object p2, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 9160
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 9161
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9162
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 9163
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 9164
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9165
    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    .line 9166
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 9167
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 9168
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    .line 9169
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 9165
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9173
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 9174
    return-void
.end method

.method public final isSmoothScrolling()Z
    .locals 1

    .line 8044
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    iget-boolean v0, v0, Landroid/support/v7/widget/au;->av:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .line 9132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 9133
    iget-object v1, v0, Landroid/support/v7/widget/aj;->mDecorInsets:Landroid/graphics/Rect;

    .line 9134
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/support/v7/widget/aj;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/support/v7/widget/aj;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 9137
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 1

    .line 8670
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8671
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8673
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 1

    .line 8682
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8683
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8685
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aq;)V
    .locals 0

    .line 7793
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 0

    .line 9346
    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 9928
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v0}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9929
    :cond_3
    return-void

    .line 9928
    :cond_4
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 6

    .line 9983
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/af;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 9984
    move v0, p1

    goto :goto_0

    .line 9983
    :cond_0
    nop

    .line 9984
    move v0, p2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/af;->getPosition(Landroid/view/View;)I

    move-result p2

    .line 9985
    :goto_1
    move v2, p2

    goto :goto_2

    .line 9984
    :cond_1
    goto :goto_1

    .line 9985
    :goto_2
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9986
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/c;->a(IIIIZZ)Landroid/support/v4/view/a/c;

    move-result-object p1

    .line 9988
    invoke-virtual {p4, p1}, Landroid/support/v4/view/a/a;->o(Ljava/lang/Object;)V

    .line 9989
    return-void
.end method

.method final onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 2

    .line 9959
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 9961
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v0, v0, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/d;->M(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9962
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v7/widget/af;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 9965
    :cond_0
    return-void
.end method

.method public onItemsAdded$5927c743(II)V
    .locals 0

    .line 9630
    return-void
.end method

.method public onItemsChanged$57043c5d()V
    .locals 0

    .line 9618
    return-void
.end method

.method public onItemsMoved$342e6be0(II)V
    .locals 0

    .line 9682
    return-void
.end method

.method public onItemsRemoved$5927c743(II)V
    .locals 0

    .line 9640
    return-void
.end method

.method public onItemsUpdated$783f8c5f$5927c743(II)V
    .locals 0

    .line 9665
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 7857
    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7858
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 7872
    return-void
.end method

.method public final onMeasure$19b62fcb(II)V
    .locals 1

    .line 9790
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9791
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    .line 9834
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 9828
    const/4 v0, 0x0

    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 9854
    return-void
.end method

.method public final removeAndRecycleAllViews(Landroid/support/v7/widget/aq;)V
    .locals 2

    .line 9869
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9870
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9871
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9872
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/af;->removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V

    .line 9869
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9875
    :cond_1
    return-void
.end method

.method final removeAndRecycleScrapInt(Landroid/support/v7/widget/aq;)V
    .locals 6

    .line 8775
    iget-object v0, p1, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8777
    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 8778
    iget-object v2, p1, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aA;

    iget-object v2, v2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 8779
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v3

    .line 8780
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8781
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 8789
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8790
    iget-object v5, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8792
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    if-eqz v4, :cond_1

    .line 8793
    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aa;->c(Landroid/support/v7/widget/aA;)V

    .line 8795
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 8796
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/aq;->Z(Landroid/view/View;)V

    .line 8777
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8798
    :cond_3
    iget-object v1, p1, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p1, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8799
    :cond_4
    if-lez v0, :cond_5

    .line 8800
    iget-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 8802
    :cond_5
    return-void
.end method

.method public final removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/aq;)V
    .locals 3

    .line 8467
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v1, v0, Landroid/support/v7/widget/d;->my:Landroid/support/v7/widget/f;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/d;->mz:Landroid/support/v7/widget/e;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/e;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->L(Landroid/view/View;)Z

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/d;->my:Landroid/support/v7/widget/f;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/f;->removeViewAt(I)V

    .line 8468
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/aq;->Y(Landroid/view/View;)V

    .line 8469
    return-void
.end method

.method public final removeAndRecycleViewAt(ILandroid/support/v7/widget/aq;)V
    .locals 1

    .line 8478
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8479
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->removeViewAt(I)V

    .line 8480
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/aq;->Y(Landroid/view/View;)V

    .line 8481
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1

    .line 7736
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7737
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    .line 7739
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeViewAt(I)V
    .locals 3

    .line 8205
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8206
    if-eqz v0, :cond_1

    .line 8207
    iget-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->M(I)I

    move-result p1

    iget-object v1, v0, Landroid/support/v7/widget/d;->my:Landroid/support/v7/widget/f;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/f;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroid/support/v7/widget/d;->mz:Landroid/support/v7/widget/e;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/e;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/d;->L(Landroid/view/View;)Z

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/d;->my:Landroid/support/v7/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/f;->removeViewAt(I)V

    .line 8209
    :cond_1
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 9

    .line 9455
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v6, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p3, v4

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v4, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    :goto_0
    move v3, v7

    goto :goto_1

    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v6, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    .line 9457
    aget p2, v0, v1

    .line 9458
    aget p3, v0, v8

    .line 9459
    if-eqz p5, :cond_7

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p5

    if-nez p5, :cond_5

    :cond_4
    :goto_3
    move p5, v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {p5, v5}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p5, p2

    if-ge p5, v3, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p2

    if-le p5, v0, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, p3

    if-ge p5, v4, :cond_4

    iget p5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p3

    if-gt p5, v2, :cond_6

    goto :goto_3

    :cond_6
    move p5, v8

    :goto_4
    if-eqz p5, :cond_8

    .line 9460
    :cond_7
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    .line 9469
    :cond_8
    return v1

    .line 9461
    :cond_9
    :goto_5
    if-eqz p4, :cond_a

    .line 9462
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_6

    .line 9464
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9466
    :goto_6
    return v8
.end method

.method public final requestLayout()V
    .locals 1

    .line 7430
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7431
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 7433
    :cond_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 7960
    const/4 p1, 0x0

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 8010
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 7977
    const/4 p1, 0x0

    return p1
.end method

.method final setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 10174
    nop

    .line 10175
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10176
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10174
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/af;->setMeasureSpecs(II)V

    .line 10178
    return-void
.end method

.method final setMeasureSpecs(II)V
    .locals 1

    .line 7341
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7342
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    .line 7343
    iget p1, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_0

    .line 7344
    iput v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7347
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mHeight:I

    .line 7348
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    .line 7349
    iget p1, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_1

    .line 7350
    iput v0, p0, Landroid/support/v7/widget/af;->mHeight:I

    .line 7352
    :cond_1
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    .line 9801
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->access$1200(Landroid/support/v7/widget/RecyclerView;II)V

    .line 9802
    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 2

    .line 7419
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7420
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 7421
    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/s;->h(Landroid/view/View;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/af;->chooseSize(III)I

    move-result p2

    .line 7422
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/s;->i(Landroid/view/View;)I

    move-result v0

    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/af;->chooseSize(III)I

    move-result p1

    .line 7423
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/af;->setMeasuredDimension(II)V

    .line 7424
    return-void
.end method

.method final setMeasuredDimensionFromChildren(II)V
    .locals 8

    .line 7368
    invoke-virtual {p0}, Landroid/support/v7/widget/af;->getChildCount()I

    move-result v0

    .line 7369
    if-nez v0, :cond_0

    .line 7370
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7371
    return-void

    .line 7373
    :cond_0
    nop

    .line 7374
    nop

    .line 7375
    nop

    .line 7376
    nop

    .line 7378
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v2

    move v5, v4

    move v2, v3

    :goto_0
    if-ge v1, v0, :cond_5

    .line 7379
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/af;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7380
    iget-object v7, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7381
    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7382
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    .line 7383
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 7385
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2

    .line 7386
    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 7388
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    .line 7389
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 7391
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_4

    .line 7392
    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 7378
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7395
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7396
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/widget/af;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7397
    return-void
.end method

.method final setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 7325
    if-nez p1, :cond_0

    .line 7326
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7327
    iput-object p1, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    .line 7328
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7329
    iput p1, p0, Landroid/support/v7/widget/af;->mHeight:I

    goto :goto_0

    .line 7331
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 7332
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iput-object v0, p0, Landroid/support/v7/widget/af;->mChildHelper:Landroid/support/v7/widget/d;

    .line 7333
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    .line 7334
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/af;->mHeight:I

    .line 7336
    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    .line 7337
    iput p1, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    .line 7338
    return-void
.end method

.method final shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z
    .locals 2

    .line 8854
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/af;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8856
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/aj;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8857
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/support/v7/widget/aj;->height:I

    invoke-static {p1, p3, p2}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method shouldMeasureTwice()Z
    .locals 1

    .line 10191
    const/4 v0, 0x0

    return v0
.end method

.method final shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z
    .locals 2

    .line 8840
    iget-boolean v0, p0, Landroid/support/v7/widget/af;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8841
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/aj;->width:I

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8842
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/support/v7/widget/aj;->height:I

    invoke-static {p1, p3, p2}, Landroid/support/v7/widget/af;->isMeasurementUpToDate(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public smoothScrollToPosition$7d69765f(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 8023
    const-string p1, "RecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8024
    return-void
.end method

.method public final startSmoothScroll(Landroid/support/v7/widget/au;)V
    .locals 2

    .line 8032
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    .line 8033
    iget-boolean v0, v0, Landroid/support/v7/widget/au;->av:Z

    if-eqz v0, :cond_0

    .line 8034
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->stop()V

    .line 8036
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    .line 8037
    iget-object p1, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p0, p1, Landroid/support/v7/widget/au;->oB:Landroid/support/v7/widget/af;

    iget v0, p1, Landroid/support/v7/widget/au;->pd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid target position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget v1, p1, Landroid/support/v7/widget/au;->pd:I

    iput v1, v0, Landroid/support/v7/widget/ax;->pd:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/au;->av:Z

    iput-boolean v0, p1, Landroid/support/v7/widget/au;->pe:Z

    iget v0, p1, Landroid/support/v7/widget/au;->pd:I

    iget-object v1, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    iget-object p1, p1, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-virtual {p1}, Landroid/support/v7/widget/az;->bA()V

    .line 8038
    return-void
.end method

.method final stopSmoothScroller()V
    .locals 1

    .line 9837
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    if-eqz v0, :cond_0

    .line 9838
    iget-object v0, p0, Landroid/support/v7/widget/af;->mSmoothScroller:Landroid/support/v7/widget/au;

    invoke-virtual {v0}, Landroid/support/v7/widget/au;->stop()V

    .line 9840
    :cond_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .line 7589
    const/4 v0, 0x0

    return v0
.end method
