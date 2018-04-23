.class public abstract Lcom/android/launcher3/PagedView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# static fields
.field private static REORDERING_DROP_REPOSITION_DURATION:I

.field static REORDERING_REORDER_REPOSITION_DURATION:I

.field private static REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field private static final sTmpInvMatrix:Landroid/graphics/Matrix;

.field private static final sTmpPoint:[F

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mCancelTap:Z

.field private mChildCountOnLastLayout:I

.field protected mCurrentPage:I

.field private mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field mDragView:Landroid/view/View;

.field private mDragViewBaselineLeft:F

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field private mFreeScroll:Z

.field protected final mInsets:Landroid/graphics/Rect;

.field protected mIsLayoutValid:Z

.field protected mIsPageInTransition:Z

.field private mIsReordering:Z

.field protected final mIsRtl:Z

.field private mLastMotionX:F

.field private mLastMotionXRemainder:F

.field private mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field public mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

.field mPageIndicatorViewId:I

.field private mPageScrolls:[I

.field protected mPageSpacing:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field public mScroller:Lcom/android/launcher3/LauncherScroller;

.field private mSettleOnPageInFreeScroll:Z

.field mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field private mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mUnboundedScrollX:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWasInOverscroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    const/16 v0, 0xc8

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 163
    const/16 v0, 0x12c

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 164
    const/16 v0, 0x50

    sput v0, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 180
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 199
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mSettleOnPageInFreeScroll:Z

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 103
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 109
    iput v0, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 132
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 138
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 142
    iput v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 144
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 168
    iput v2, p0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 170
    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 184
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    .line 201
    sget-object v1, Lcom/android/launcher3/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 203
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    .line 208
    new-instance p1, Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/launcher3/LauncherScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p1, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43fa0000    # 500.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    const/high16 p2, 0x437a0000    # 250.0f

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    const p2, 0x44bb8000    # 1500.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-virtual {p0, p0}, Lcom/android/launcher3/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setWillNotDraw(Z)V

    .line 209
    return-void
.end method

.method private abortScrollerAnimation(Z)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 338
    if-eqz p1, :cond_0

    .line 339
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 341
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/PagedView;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateMaxScrollX()V

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1536
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1538
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1539
    return-void
.end method

.method private forceFinishScroller(Z)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 347
    if-eqz p1, :cond_0

    .line 348
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 350
    :cond_0
    return-void
.end method

.method private getPageNearestToCenterOfScreen(I)I
    .locals 6

    .line 1582
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 1583
    nop

    .line 1584
    nop

    .line 1585
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 1586
    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1587
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1588
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1589
    div-int/lit8 v4, v4, 0x2

    .line 1590
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 1591
    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1592
    if-ge v4, v1, :cond_0

    .line 1593
    nop

    .line 1594
    nop

    .line 1586
    move v2, v3

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1597
    :cond_1
    return v2
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    .line 932
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x3

    mul-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 933
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 2

    .line 254
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 255
    sget-object p2, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 257
    sget-object p1, Lcom/android/launcher3/PagedView;->sTmpInvMatrix:Landroid/graphics/Matrix;

    sget-object p2, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 258
    sget-object p1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object p1
.end method

.method private mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 3

    .line 246
    sget-object v0, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 247
    sget-object p2, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 249
    sget-object p2, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget p3, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p3, v2

    aput p3, p2, v1

    .line 250
    sget-object p2, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    aget p3, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    aput p3, p2, v0

    .line 251
    sget-object p1, Lcom/android/launcher3/PagedView;->sTmpPoint:[F

    return-object p1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1552
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1553
    iget v2, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 1557
    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1558
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1559
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1560
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1561
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1562
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 1563
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 1566
    :cond_1
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1542
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1544
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1547
    :cond_0
    return-void
.end method

.method private removeMarkerForView()V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->removeMarker()V

    .line 776
    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 4

    .line 1483
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1484
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    new-instance v0, Lcom/android/launcher3/PagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/PagedView$4;-><init>(Lcom/android/launcher3/PagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    new-instance v2, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v2}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget v2, Lcom/android/launcher3/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/PagedView$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/PagedView$3;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1485
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1486
    iput v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1487
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1488
    return-void
.end method

.method private setEnableFreeScroll(Z)V
    .locals 2

    .line 1163
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1164
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    .line 1166
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v1, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 1168
    :cond_0
    if-eqz v0, :cond_1

    .line 1169
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1172
    :cond_1
    :goto_0
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1173
    return-void
.end method

.method private updateDragViewTranslationDuringDrag()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 263
    iget v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 265
    iget v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    .line 266
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 272
    :cond_0
    return-void
.end method

.method private updateMaxScrollX()V
    .locals 1

    .line 733
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeMaxScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    .line 734
    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 392
    :cond_0
    return-void
.end method

.method private validateNewPage(I)I
    .locals 2

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 870
    return-void

    .line 874
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 875
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 877
    :cond_1
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 878
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_3

    .line 879
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    return-void

    .line 881
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_3

    .line 882
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 883
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 886
    :cond_3
    return-void
.end method

.method protected final cancelCurrentPageLongPress()V
    .locals 1

    .line 1075
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1079
    :cond_0
    return-void
.end method

.method protected final computeMaxScrollX()I
    .locals 3

    .line 737
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 738
    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 739
    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 740
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    return v0

    .line 742
    :cond_1
    return v1
.end method

.method public computeScroll()V
    .locals 1

    .line 566
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->computeScrollHelper(Z)Z

    .line 567
    return-void
.end method

.method protected final computeScrollHelper(Z)Z
    .locals 10

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v0, v3

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    sub-long/2addr v5, v7

    long-to-int v1, v5

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    if-ge v1, v5, :cond_3

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mMode:I

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    int-to-float v1, v1

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v6, v5, v1

    float-to-int v6, v6

    const/4 v7, 0x0

    const/16 v8, 0x64

    if-ge v6, v8, :cond_1

    int-to-float v7, v6

    div-float/2addr v7, v5

    add-int/lit8 v8, v6, 0x1

    int-to-float v9, v8

    div-float/2addr v9, v5

    sget-object v5, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    aget v5, v5, v6

    sget-object v6, Lcom/android/launcher3/LauncherScroller;->SPLINE_POSITION:[F

    aget v6, v6, v8

    sub-float/2addr v6, v5

    sub-float/2addr v9, v7

    div-float/2addr v6, v9

    sub-float/2addr v1, v7

    mul-float/2addr v1, v6

    add-float/2addr v1, v5

    goto :goto_0

    :cond_1
    move v1, v2

    move v6, v7

    :goto_0
    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    int-to-float v5, v5

    mul-float/2addr v6, v5

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v5, v5

    div-float/2addr v6, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v5

    iput v6, v0, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v7, v0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v7, v0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    if-ne v1, v5, :cond_4

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    if-ne v1, v5, :cond_4

    goto :goto_2

    :pswitch_1
    int-to-float v1, v1

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    mul-float/2addr v1, v5

    iget-object v5, v0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/android/launcher3/LauncherScroller;->viscousFluid(F)F

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v5, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    :goto_1
    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mDeltaX:F

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v5, v0, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    iget v6, v0, Lcom/android/launcher3/LauncherScroller;->mDeltaY:F

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    goto :goto_3

    :cond_3
    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    iget v1, v0, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iput v1, v0, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    :goto_2
    iput-boolean v4, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    :cond_4
    :goto_3
    move v0, v4

    :goto_4
    if-eqz v0, :cond_9

    .line 529
    iget v0, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    if-ne v0, v1, :cond_5

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 531
    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    if-eq v0, v1, :cond_7

    .line 532
    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v0

    goto :goto_5

    .line 533
    :cond_6
    move v0, v2

    :goto_5
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    int-to-float v1, v1

    div-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 534
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mCurrY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 536
    :cond_7
    if-eqz p1, :cond_8

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 539
    :cond_8
    return v4

    .line 540
    :cond_9
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-eqz p1, :cond_d

    .line 541
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isObservedEventType(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    if-eq p1, v2, :cond_a

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 543
    :cond_a
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 544
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 545
    iput v1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 550
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-nez p1, :cond_b

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 554
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPostReorderingAnimationCompleted()V

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 557
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 559
    :cond_c
    return v4

    .line 561
    :cond_d
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final dampedOverScroll(F)V
    .locals 2

    .line 1129
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1131
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v1

    .line 1132
    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 1133
    iput v1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 1134
    iget p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 1136
    :cond_1
    iget p1, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 1137
    iget p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1139
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1140
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1036
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1037
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 2

    .line 1045
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1046
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1049
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1050
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1051
    float-to-int v0, v1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1053
    :cond_1
    iget p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 1055
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1056
    const/4 v0, 0x1

    if-le p1, p2, :cond_2

    .line 1058
    move p1, v0

    goto :goto_0

    .line 1056
    :cond_2
    const/4 p1, 0x0

    .line 1058
    :goto_0
    if-eqz p1, :cond_3

    .line 1060
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1061
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget p2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1062
    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1063
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1064
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1065
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1067
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1069
    :cond_3
    return-void
.end method

.method protected final disableFreeScroll()V
    .locals 1

    .line 1159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1160
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    .line 842
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 843
    return v0

    .line 846
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/16 v1, 0x42

    const/16 v2, 0x11

    if-eqz p1, :cond_2

    .line 847
    if-ne p2, v2, :cond_1

    .line 848
    nop

    .line 853
    move p2, v1

    goto :goto_0

    .line 849
    :cond_1
    if-ne p2, v1, :cond_2

    .line 850
    nop

    .line 853
    move p2, v2

    :cond_2
    :goto_0
    if-ne p2, v2, :cond_3

    .line 854
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez p1, :cond_4

    .line 855
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 856
    return v0

    .line 858
    :cond_3
    if-ne p2, v1, :cond_4

    .line 859
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    .line 860
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 861
    return v0

    .line 864
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method protected final enableFreeScroll()V
    .locals 1

    .line 1150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mSettleOnPageInFreeScroll:Z

    .line 1151
    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 897
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 898
    nop

    .line 900
    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 902
    return-void

    .line 904
    :cond_0
    if-ne v1, p0, :cond_1

    .line 905
    return-void

    .line 907
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 908
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 909
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 911
    :cond_2
    return-void
.end method

.method public forceLayout()V
    .locals 1

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 596
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 597
    return-void
.end method

.method public getChildGap()I
    .locals 1

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method protected final getChildOffset(I)I
    .locals 1

    .line 811
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 812
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1

    .line 811
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getCurrentPage()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .line 1931
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1932
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1931
    const v2, 0x7f0c0048

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 570
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final getLayoutTransitionOffsetForPage(I)I
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_1

    .line 1120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v1

    .line 1123
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget p1, v2, p1

    add-int/2addr p1, v1

    .line 1124
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    .line 1118
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getNextPage()I
    .locals 2

    .line 303
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    return v0
.end method

.method public final getNormalChildHeight()I
    .locals 2

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getExpectedHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPageAt(I)Landroid/view/View;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 1

    .line 1927
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPageNearestToCenterOfScreen()I
    .locals 1

    .line 1578
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v0

    return v0
.end method

.method public final getScrollForPage(I)I
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget p1, v0, p1

    return p1

    .line 1108
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final getScrollProgress(ILandroid/view/View;I)F
    .locals 3

    .line 1082
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1084
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 1085
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 1089
    add-int/lit8 v1, p3, 0x1

    .line 1090
    if-gez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v2, :cond_2

    .line 1091
    :cond_1
    add-int/lit8 v1, p3, -0x1

    .line 1094
    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_3

    goto :goto_0

    .line 1097
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p2

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    goto :goto_1

    .line 1095
    :cond_4
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget p3, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr p2, p3

    .line 1100
    :goto_1
    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    .line 1101
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1102
    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1103
    return p1
.end method

.method protected final getUnboundedScrollX()I
    .locals 1

    .line 442
    iget v0, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    return v0
.end method

.method public initParentViews(Landroid/view/View;)V
    .locals 1

    .line 237
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    if-ltz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicatorViewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pageindicators/PageIndicator;

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    .line 239
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 240
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicatorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    return-void
.end method

.method protected final isPageInTransition()Z
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    return v0
.end method

.method final isReordering(Z)Z
    .locals 2

    .line 1839
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 1840
    if-eqz p1, :cond_1

    .line 1841
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr v0, p1

    .line 1843
    :cond_1
    return v0
.end method

.method public notifyPageSwitchListener(I)V
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 382
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 755
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 756
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher3/pageindicators/PageIndicator;->addMarker()V

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 762
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 766
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 767
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 768
    return-void
.end method

.method public onEndReordering()V
    .locals 1

    .line 1813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 1814
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_5

    .line 1511
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1512
    nop

    .line 1513
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1518
    move v2, v3

    goto :goto_0

    .line 1515
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .line 1516
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 1518
    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    cmpl-float v4, v0, v3

    if-nez v4, :cond_2

    cmpl-float v5, v2, v3

    if-eqz v5, :cond_9

    .line 1519
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_5

    cmpg-float p1, v0, v3

    if-ltz p1, :cond_4

    cmpg-float p1, v2, v3

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_3

    .line 1521
    :cond_4
    :goto_1
    move v5, v1

    goto :goto_3

    .line 1520
    :cond_5
    if-gtz v4, :cond_7

    cmpl-float p1, v2, v3

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    goto :goto_3

    :cond_7
    :goto_2
    goto :goto_1

    .line 1521
    :goto_3
    if-eqz v5, :cond_8

    .line 1522
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    goto :goto_4

    .line 1524
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 1526
    :goto_4
    return v1

    .line 1531
    :cond_9
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1937
    const/4 p1, 0x1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1900
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1901
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1902
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1873
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1874
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1875
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 1876
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1878
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v0, :cond_2

    .line 1879
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1881
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1886
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1887
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1888
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 943
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 953
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 954
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v1, v2, :cond_1

    .line 956
    return v2

    .line 959
    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 965
    :pswitch_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1019
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1020
    goto/16 :goto_2

    .line 977
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 980
    iput v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 981
    iput v1, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 982
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 983
    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 984
    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 985
    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 986
    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 987
    aget v0, v0, v2

    iput v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 988
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 989
    iput v0, p0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 990
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 997
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget p1, p1, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v0, v0, Lcom/android/launcher3/LauncherScroller;->mCurrX:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 998
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchSlop:I

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 1000
    :cond_2
    move p1, v3

    goto :goto_1

    .line 998
    :cond_3
    :goto_0
    nop

    .line 1000
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 1001
    iput v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1002
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez p1, :cond_7

    .line 1003
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 1004
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    goto :goto_2

    .line 1007
    :cond_4
    iget p1, p0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    float-to-int p1, p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1008
    iput v2, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    goto :goto_2

    .line 1010
    :cond_5
    iput v3, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1014
    goto :goto_2

    .line 1023
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1024
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1032
    :cond_7
    :goto_2
    iget p1, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-eqz p1, :cond_8

    return v2

    :cond_8
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 642
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p2

    if-nez p2, :cond_0

    .line 644
    return-void

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p2

    .line 650
    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    add-int/lit8 p3, p2, -0x1

    goto :goto_0

    .line 651
    :cond_1
    move p3, p4

    :goto_0
    iget-boolean p5, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v0, -0x1

    if-eqz p5, :cond_2

    .line 652
    move p5, v0

    goto :goto_1

    :cond_2
    move p5, p2

    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v1, :cond_3

    goto :goto_2

    .line 654
    :cond_3
    move v0, p1

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 656
    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 657
    nop

    .line 659
    nop

    .line 660
    iget-object v3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    if-eq p2, v3, :cond_4

    goto :goto_3

    .line 665
    :cond_4
    move v3, p4

    goto :goto_4

    .line 661
    :cond_5
    :goto_3
    new-array v3, p2, [I

    iput-object v3, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    .line 662
    nop

    .line 665
    move v3, p1

    :goto_4
    move v4, v3

    move v3, v2

    :goto_5
    if-eq p3, p5, :cond_8

    .line 666
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 667
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_7

    .line 668
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    .line 669
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    .line 670
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 672
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 673
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 676
    nop

    .line 677
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int/2addr v8, v6

    .line 676
    invoke-virtual {v5, v3, v6, v9, v8}, Landroid/view/View;->layout(IIII)V

    .line 679
    sub-int v5, v3, v2

    .line 680
    iget-object v6, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aget v6, v6, p3

    if-eq v6, v5, :cond_6

    .line 681
    nop

    .line 682
    iget-object v4, p0, Lcom/android/launcher3/PagedView;->mPageScrolls:[I

    aput v5, v4, p3

    .line 685
    move v4, p1

    :cond_6
    iget v5, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildGap()I

    move-result v5

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 665
    :cond_7
    add-int/2addr p3, v0

    goto :goto_5

    .line 689
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p3

    .line 692
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p5

    if-eqz p5, :cond_9

    .line 693
    new-instance p5, Lcom/android/launcher3/PagedView$1;

    invoke-direct {p5, p0}, Lcom/android/launcher3/PagedView$1;-><init>(Lcom/android/launcher3/PagedView;)V

    invoke-virtual {p3, p5}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    goto :goto_6

    .line 710
    :cond_9
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateMaxScrollX()V

    .line 713
    :goto_6
    iget-boolean p3, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    if-eqz p3, :cond_a

    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ltz p3, :cond_a

    iget p3, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ge p3, p2, :cond_a

    .line 714
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 715
    iput-boolean p4, p0, Lcom/android/launcher3/PagedView;->mFirstLayout:Z

    .line 718
    :cond_a
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p3, p3, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-eqz p3, :cond_b

    if-eqz v4, :cond_b

    .line 719
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    .line 721
    :cond_b
    iput p2, p0, Lcom/android/launcher3/PagedView;->mChildCountOnLastLayout:I

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 724
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 726
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 601
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 602
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 603
    return-void

    .line 608
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 609
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 610
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 611
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 613
    if-eqz v0, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 619
    :cond_1
    if-lez v1, :cond_3

    if-gtz v3, :cond_2

    goto :goto_0

    .line 628
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int p1, v1, p1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 630
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    iget-object v2, p0, Lcom/android/launcher3/PagedView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 635
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/PagedView;->measureChildren(II)V

    .line 636
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/PagedView;->setMeasuredDimension(II)V

    .line 637
    return-void

    .line 620
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 621
    return-void

    .line 614
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 615
    return-void
.end method

.method public onPageBeginTransition()V
    .locals 0

    .line 416
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 424
    return-void
.end method

.method final onPostReorderingAnimationCompleted()V
    .locals 1

    .line 1804
    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 1805
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 1810
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 828
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 829
    iget v0, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    goto :goto_0

    .line 831
    :cond_0
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 833
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 834
    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 837
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    .line 1494
    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    .line 1497
    return-void
.end method

.method public onStartReordering()V
    .locals 1

    .line 1794
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    .line 1795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsReordering:Z

    .line 1799
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1800
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    move-object/from16 v0, p0

    .line 1202
    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1207
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1209
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1211
    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2c

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    .line 1462
    :pswitch_0
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v1, v4, :cond_1

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1466
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1467
    goto/16 :goto_12

    .line 1239
    :pswitch_1
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v8, -0x1

    if-ne v2, v4, :cond_4

    .line 1241
    iget v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1243
    if-ne v2, v8, :cond_2

    return v4

    .line 1245
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1246
    iget v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v3, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v1

    .line 1248
    iget v3, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v3, v5

    iput v3, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1253
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_3

    .line 1254
    float-to-int v3, v2

    invoke-virtual {v0, v3, v9}, Lcom/android/launcher3/PagedView;->scrollBy(II)V

    .line 1255
    iput v1, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1256
    int-to-float v1, v3

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_12

    .line 1258
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->awakenScrollBars()Z

    .line 1260
    goto/16 :goto_12

    :cond_4
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v2, v5, :cond_a

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1263
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1267
    iget v1, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {v0, v0, v1, v2}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1268
    aget v2, v1, v9

    iput v2, v0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1269
    aget v1, v1, v4

    iput v1, v0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1273
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1280
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v6

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v4

    const v3, 0x7fffffff

    :goto_0
    if-gt v9, v7, :cond_7

    invoke-virtual {v0, v9}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v6

    add-int/2addr v11, v10

    sub-int v10, v2, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-ge v10, v3, :cond_5

    move v5, v9

    move v3, v10

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1282
    :cond_6
    move v5, v8

    :cond_7
    if-lez v5, :cond_8

    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-eq v5, v2, :cond_8

    .line 1283
    if-ltz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-gt v5, v2, :cond_9

    iget v2, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    if-eq v5, v2, :cond_9

    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1284
    iget-boolean v2, v2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-eqz v2, :cond_9

    .line 1285
    iput v5, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1286
    new-instance v2, Lcom/android/launcher3/PagedView$2;

    invoke-direct {v2, v0, v5, v1}, Lcom/android/launcher3/PagedView$2;-><init>(Lcom/android/launcher3/PagedView;II)V

    iput-object v2, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1330
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/android/launcher3/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 1333
    :cond_8
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1334
    iput v8, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1336
    :cond_9
    goto/16 :goto_12

    .line 1337
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1339
    goto/16 :goto_12

    .line 1342
    :pswitch_2
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v2, v4, :cond_24

    .line 1343
    iget v2, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1344
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 1345
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1346
    iget-object v5, v0, Lcom/android/launcher3/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1347
    const/16 v6, 0x3e8

    iget v10, v0, Lcom/android/launcher3/PagedView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v6, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1348
    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v2, v2

    .line 1349
    iget v5, v0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    sub-float v5, v1, v5

    float-to-int v5, v5

    .line 1350
    iget v6, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v6}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1351
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v6, v6

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v6

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    .line 1354
    move v10, v4

    goto :goto_1

    .line 1351
    :cond_b
    nop

    .line 1354
    move v10, v9

    :goto_1
    iget v11, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    iget v12, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v13, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v12, v13

    sub-float/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v11, v1

    iput v11, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1356
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    const/high16 v11, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v11

    if-lez v1, :cond_c

    .line 1357
    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1359
    move v1, v4

    goto :goto_2

    .line 1357
    :cond_c
    nop

    .line 1359
    move v1, v9

    :goto_2
    iget-boolean v11, v0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    if-nez v11, :cond_1a

    .line 1363
    nop

    .line 1364
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    int-to-float v3, v2

    .line 1365
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    int-to-float v6, v5

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_d

    if-eqz v1, :cond_d

    .line 1366
    nop

    .line 1373
    move v3, v4

    goto :goto_3

    :cond_d
    move v3, v9

    :goto_3
    iget-boolean v6, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_f

    if-lez v5, :cond_e

    .line 1374
    :goto_4
    move v5, v4

    goto :goto_5

    .line 1373
    :cond_e
    nop

    .line 1374
    move v5, v9

    goto :goto_5

    .line 1373
    :cond_f
    if-gez v5, :cond_e

    goto :goto_4

    .line 1374
    :goto_5
    iget-boolean v6, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v6, :cond_11

    if-lez v2, :cond_10

    .line 1375
    :goto_6
    move v9, v4

    goto :goto_7

    .line 1374
    :cond_10
    goto :goto_7

    :cond_11
    if-gez v2, :cond_10

    goto :goto_6

    .line 1375
    :goto_7
    if-eqz v10, :cond_12

    if-nez v5, :cond_12

    if-eqz v1, :cond_13

    :cond_12
    if-eqz v1, :cond_15

    if-nez v9, :cond_15

    :cond_13
    iget v6, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez v6, :cond_15

    .line 1377
    if-eqz v3, :cond_14

    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_8

    :cond_14
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    sub-int/2addr v1, v4

    .line 1378
    :goto_8
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto/16 :goto_10

    .line 1379
    :cond_15
    if-eqz v10, :cond_16

    if-eqz v5, :cond_16

    if-eqz v1, :cond_17

    :cond_16
    if-eqz v1, :cond_19

    if-eqz v9, :cond_19

    :cond_17
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ge v1, v5, :cond_19

    .line 1382
    if-eqz v3, :cond_18

    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    goto :goto_9

    :cond_18
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v1, v4

    .line 1383
    :goto_9
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPageWithVelocity(II)V

    goto/16 :goto_10

    .line 1385
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1387
    goto/16 :goto_10

    .line 1388
    :cond_1a
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v1, :cond_1b

    .line 1389
    invoke-direct {v0, v4}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1392
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v1

    .line 1393
    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 1396
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object v10, v0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v10, v6, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1397
    iget-object v6, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result v10

    .line 1397
    iget-boolean v11, v6, Lcom/android/launcher3/LauncherScroller;->mFlywheel:Z

    if-eqz v11, :cond_1d

    iget-boolean v11, v6, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v11, :cond_1d

    iget v11, v6, Lcom/android/launcher3/LauncherScroller;->mMode:I

    if-ne v11, v4, :cond_1c

    iget v11, v6, Lcom/android/launcher3/LauncherScroller;->mCurrVelocity:F

    goto :goto_a

    :cond_1c
    iget v11, v6, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    iget v12, v6, Lcom/android/launcher3/LauncherScroller;->mDeceleration:F

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x44fa0000    # 2000.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    :goto_a
    iget v12, v6, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v13, v6, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, v6, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v14, v6, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    float-to-double v14, v12

    move/from16 v16, v10

    float-to-double v9, v13

    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    div-float/2addr v12, v9

    div-float/2addr v13, v9

    mul-float/2addr v12, v11

    mul-float/2addr v13, v11

    int-to-float v9, v2

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v10

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1e

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v10

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1e

    add-float/2addr v9, v12

    float-to-int v2, v9

    add-float/2addr v13, v8

    float-to-int v9, v13

    goto :goto_b

    :cond_1d
    move/from16 v16, v10

    :cond_1e
    const/4 v9, 0x0

    :goto_b
    iput v4, v6, Lcom/android/launcher3/LauncherScroller;->mMode:I

    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    int-to-double v10, v2

    int-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v10, v10

    iput v10, v6, Lcom/android/launcher3/LauncherScroller;->mVelocity:F

    invoke-virtual {v6, v10}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v11

    sget v13, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v13, v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v13, v13, v17

    const-wide v19, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    mul-double v11, v11, v19

    double-to-int v11, v11

    iput v11, v6, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iput-wide v11, v6, Lcom/android/launcher3/LauncherScroller;->mStartTime:J

    iput v5, v6, Lcom/android/launcher3/LauncherScroller;->mStartX:I

    move/from16 v11, v16

    iput v11, v6, Lcom/android/launcher3/LauncherScroller;->mStartY:I

    cmpl-float v8, v10, v8

    if-nez v8, :cond_1f

    move v2, v7

    goto :goto_c

    :cond_1f
    int-to-float v2, v2

    div-float/2addr v2, v10

    :goto_c
    if-nez v8, :cond_20

    move v8, v7

    goto :goto_d

    :cond_20
    int-to-float v8, v9

    div-float/2addr v8, v10

    :goto_d
    invoke-virtual {v6, v10}, Lcom/android/launcher3/LauncherScroller;->getSplineDeceleration(F)D

    move-result-wide v12

    sget v9, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    float-to-double v14, v9

    sub-double v14, v14, v17

    iget v9, v6, Lcom/android/launcher3/LauncherScroller;->mFlingFriction:F

    iget v7, v6, Lcom/android/launcher3/LauncherScroller;->mPhysicalCoeff:F

    mul-float/2addr v9, v7

    move/from16 v21, v5

    float-to-double v4, v9

    sget v7, Lcom/android/launcher3/LauncherScroller;->DECELERATION_RATE:F

    move-wide/from16 v22, v4

    float-to-double v3, v7

    div-double/2addr v3, v14

    mul-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double v4, v22, v3

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-double v9, v3

    mul-double/2addr v9, v4

    double-to-int v3, v9

    iput v3, v6, Lcom/android/launcher3/LauncherScroller;->mDistance:I

    const/high16 v3, -0x80000000

    iput v3, v6, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    const v3, 0x7fffffff

    iput v3, v6, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    const/4 v3, 0x0

    iput v3, v6, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    iput v3, v6, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    float-to-double v2, v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int v2, v21, v2

    iput v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v3, v6, Lcom/android/launcher3/LauncherScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    iget v3, v6, Lcom/android/launcher3/LauncherScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    float-to-double v2, v8

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int v10, v11, v2

    iput v10, v6, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, v6, Lcom/android/launcher3/LauncherScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    iget v3, v6, Lcom/android/launcher3/LauncherScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Lcom/android/launcher3/LauncherScroller;->mFinalY:I

    .line 1399
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v2, v2, Lcom/android/launcher3/LauncherScroller;->mFinalX:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 1400
    invoke-direct {v0, v1}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1401
    iget-boolean v2, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v2, :cond_21

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto :goto_e

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v9, v2, -0x1

    :goto_e
    invoke-virtual {v0, v9}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 1402
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-nez v4, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v9, v4, -0x1

    goto :goto_f

    :cond_22
    const/4 v9, 0x0

    :goto_f
    invoke-virtual {v0, v9}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    .line 1403
    iget-boolean v4, v0, Lcom/android/launcher3/PagedView;->mSettleOnPageInFreeScroll:Z

    if-eqz v4, :cond_23

    if-le v1, v2, :cond_23

    if-ge v1, v3, :cond_23

    .line 1407
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v2, v0, Lcom/android/launcher3/PagedView;->mNextPage:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 1409
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    .line 1410
    iget v1, v1, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    rsub-int v1, v1, 0x10e

    .line 1411
    if-lez v1, :cond_23

    .line 1412
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherScroller;->timePassed()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    iget v1, v2, Lcom/android/launcher3/LauncherScroller;->mDuration:I

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v7, v3, v1

    iput v7, v2, Lcom/android/launcher3/LauncherScroller;->mDurationReciprocal:F

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    .line 1415
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1417
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1418
    goto :goto_11

    :cond_24
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v2, v6, :cond_26

    .line 1422
    iget v1, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1423
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_25

    .line 1424
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto :goto_11

    .line 1426
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1428
    goto :goto_11

    :cond_26
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v3, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    add-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1433
    iget v2, v0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq v1, v2, :cond_27

    .line 1434
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    goto :goto_11

    .line 1436
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1438
    goto :goto_11

    :cond_28
    iget v2, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v2, v5, :cond_29

    .line 1440
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 1445
    iget v1, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {v0, v0, v1, v2}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1446
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1447
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1448
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1449
    goto :goto_11

    .line 1450
    :cond_29
    iget-boolean v1, v0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    if-nez v1, :cond_2a

    .line 1451
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->onClick(Landroid/view/View;)V

    .line 1456
    :cond_2a
    :goto_11
    iget-object v1, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1458
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    .line 1459
    goto :goto_12

    .line 1217
    :pswitch_3
    iget-object v2, v0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v2, :cond_2b

    .line 1218
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1222
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionX:F

    .line 1223
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownMotionY:F

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/android/launcher3/PagedView;->mDownScrollX:F

    .line 1225
    iget v2, v0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    iget v3, v0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    invoke-direct {v0, v0, v2, v3}, Lcom/android/launcher3/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    .line 1226
    const/4 v3, 0x0

    aget v4, v2, v3

    iput v4, v0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    .line 1227
    const/4 v4, 0x1

    aget v2, v2, v4

    iput v2, v0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    .line 1228
    iput v8, v0, Lcom/android/launcher3/PagedView;->mLastMotionXRemainder:F

    .line 1229
    iput v8, v0, Lcom/android/launcher3/PagedView;->mTotalMotionX:F

    .line 1230
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/PagedView;->mActivePointerId:I

    .line 1232
    iget v1, v0, Lcom/android/launcher3/PagedView;->mTouchState:I

    if-ne v1, v4, :cond_2d

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    goto :goto_12

    .line 1470
    :cond_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1471
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/PagedView;->releaseVelocityTracker()V

    .line 1475
    :cond_2d
    :goto_12
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1143
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->dampedOverScroll(F)V

    .line 1144
    return-void
.end method

.method protected final pageBeginTransition()V
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 398
    :cond_0
    return-void
.end method

.method protected final pageEndTransition()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsPageInTransition:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 405
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 1906
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1907
    return v0

    .line 1909
    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 1917
    :cond_1
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-lez p1, :cond_3

    .line 1918
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 1919
    return v0

    .line 1911
    :cond_2
    iget p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 1912
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 1913
    return v0

    .line 1923
    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performLongClick()Z
    .locals 1

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mCancelTap:Z

    .line 1739
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public removeAllViewsInLayout()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setMarkersCount(I)V

    .line 807
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 808
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 782
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 783
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 784
    return-void
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 796
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 797
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 798
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 789
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->removeMarkerForView()V

    .line 790
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 791
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1570
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1571
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1572
    if-ltz p1, :cond_0

    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1575
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 818
    iget p2, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p2, p2, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 819
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 820
    const/4 p1, 0x1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 921
    if-eqz p1, :cond_0

    .line 924
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 927
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 928
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsLayoutValid:Z

    .line 590
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 591
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 447
    iget v0, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 448
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 1729
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1730
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 1733
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1734
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 4

    .line 453
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mFreeScroll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 457
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 460
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 463
    :cond_2
    iput p1, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    .line 465
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_3

    .line 466
    :goto_0
    move v0, v2

    goto :goto_1

    .line 465
    :cond_3
    nop

    .line 466
    move v0, v1

    goto :goto_1

    .line 465
    :cond_4
    if-gez p1, :cond_3

    goto :goto_0

    .line 466
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_6

    if-gez p1, :cond_5

    .line 467
    :goto_2
    move v3, v2

    goto :goto_3

    .line 466
    :cond_5
    nop

    .line 467
    move v3, v1

    goto :goto_3

    .line 466
    :cond_6
    iget v3, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-le p1, v3, :cond_5

    goto :goto_2

    .line 467
    :goto_3
    if-eqz v0, :cond_9

    .line 468
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 469
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_e

    .line 470
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 471
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_8

    .line 472
    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    .line 474
    :cond_8
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    .line 477
    :cond_9
    if-eqz v3, :cond_c

    .line 478
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_5

    :cond_a
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    :goto_5
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 479
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_e

    .line 480
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 481
    iget-boolean p2, p0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz p2, :cond_b

    .line 482
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    .line 484
    :cond_b
    iget p2, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    goto :goto_6

    .line 488
    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    if-eqz v0, :cond_d

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->overScroll(F)V

    .line 490
    iput-boolean v1, p0, Lcom/android/launcher3/PagedView;->mWasInOverscroll:Z

    .line 492
    :cond_d
    iput p1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    .line 493
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 497
    :cond_e
    :goto_6
    invoke-virtual {p0, v2}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 498
    iget p1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget p2, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, p1, p2}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object p1

    .line 499
    aget p2, p1, v1

    iput p2, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 500
    aget p1, p1, v2

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 501
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 503
    :cond_f
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 1893
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    .line 1894
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1896
    :cond_0
    return-void
.end method

.method public final setCurrentPage(I)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 367
    return-void

    .line 369
    :cond_1
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 370
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->updateCurrentPageScroll()V

    .line 372
    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 374
    return-void
.end method

.method public final setEnableOverscroll(Z)V
    .locals 0

    .line 1176
    iput-boolean p1, p0, Lcom/android/launcher3/PagedView;->mAllowOverScroll:Z

    .line 1177
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 433
    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 434
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    .line 435
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 436
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 439
    return-void
.end method

.method public final setPageSpacing(I)V
    .locals 0

    .line 747
    iput p1, p0, Lcom/android/launcher3/PagedView;->mPageSpacing:I

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->requestLayout()V

    .line 749
    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 277
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/android/launcher3/PagedView;->mParentDownMotionY:F

    invoke-direct {p0, p0, v0, v1}, Lcom/android/launcher3/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 279
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher3/PagedView;->mLastMotionX:F

    .line 280
    aget p1, v0, p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mLastMotionY:F

    .line 281
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 283
    :cond_0
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 1

    .line 1479
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/PagedView;->mFlingThresholdVelocity:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected snapToDestination()V
    .locals 3

    .line 1601
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    iget v2, p0, Lcom/android/launcher3/PagedView;->mMaxScrollX:I

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher3/PagedView;->mOverScrollX:I

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/16 v1, 0x10e

    goto :goto_2

    :cond_2
    const/16 v1, 0x2ee

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1602
    return-void
.end method

.method public final snapToPage(I)V
    .locals 1

    .line 1660
    const/16 v0, 0x2ee

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1661
    return-void
.end method

.method public final snapToPage(II)V
    .locals 2

    .line 1668
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1669
    return-void
.end method

.method protected final snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .line 1690
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result p1

    .line 1692
    iput p1, p0, Lcom/android/launcher3/PagedView;->mNextPage:I

    .line 1694
    invoke-virtual {p0, p3}, Lcom/android/launcher3/PagedView;->awakenScrollBars(I)Z

    .line 1695
    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 1696
    nop

    .line 1701
    move v5, p1

    goto :goto_0

    .line 1697
    :cond_0
    if-nez p3, :cond_1

    .line 1698
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1701
    :cond_1
    move v5, p3

    :goto_0
    if-eqz v5, :cond_2

    .line 1702
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageBeginTransition()V

    .line 1705
    :cond_2
    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-boolean p3, p3, Lcom/android/launcher3/LauncherScroller;->mFinished:Z

    if-nez p3, :cond_3

    .line 1706
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->abortScrollerAnimation(Z)V

    .line 1709
    :cond_3
    if-eqz p5, :cond_4

    .line 1710
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iput-object p5, p1, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 1712
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget-object p3, p0, Lcom/android/launcher3/PagedView;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p1, Lcom/android/launcher3/LauncherScroller;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 1715
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    iget v1, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherScroller;->startScroll(IIIII)V

    .line 1717
    invoke-direct {p0}, Lcom/android/launcher3/PagedView;->updatePageIndicator()V

    .line 1720
    if-eqz p4, :cond_5

    .line 1721
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1722
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->pageEndTransition()V

    .line 1725
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->invalidate()V

    .line 1726
    return-void
.end method

.method protected final snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    .line 1672
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1673
    return-void
.end method

.method protected final snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 6

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 1679
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    .line 1680
    iget v0, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    sub-int v2, p1, v0

    .line 1681
    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1682
    return-void
.end method

.method public final snapToPageImmediately(I)V
    .locals 3

    .line 1664
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher3/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    .line 1665
    return-void
.end method

.method protected final snapToPageWithVelocity(II)V
    .locals 7

    .line 1626
    invoke-direct {p0, p1}, Lcom/android/launcher3/PagedView;->validateNewPage(I)I

    move-result v1

    .line 1627
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getMeasuredWidth()I

    move-result p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    .line 1629
    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v2

    .line 1630
    iget v3, p0, Lcom/android/launcher3/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v2, v3

    .line 1631
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/PagedView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_0

    .line 1636
    const/16 p1, 0x2ee

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/PagedView;->snapToPage(II)V

    .line 1637
    return-void

    .line 1644
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    mul-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1645
    int-to-float p1, p1

    .line 1646
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v0, v3

    float-to-double v3, v0

    const-wide v5, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v3, v5

    double-to-float v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr p1, v0

    .line 1648
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1649
    iget v0, p0, Lcom/android/launcher3/PagedView;->mMinSnapVelocity:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1654
    const/4 v0, 0x4

    const/high16 v3, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int v3, v0, p1

    .line 1656
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    .line 1657
    return-void
.end method

.method public final startReordering(Landroid/view/View;)Z
    .locals 5

    .line 1817
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1820
    iget v0, p0, Lcom/android/launcher3/PagedView;->mTouchState:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 1823
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_1

    .line 1825
    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    .line 1826
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f933333    # 1.15f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1827
    iget-object p1, p0, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/PagedView;->mDragViewBaselineLeft:F

    .line 1828
    iput-boolean v2, p0, Lcom/android/launcher3/PagedView;->mReorderingStarted:Z

    .line 1830
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageNearestToCenterOfScreen()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1831
    invoke-direct {p0, v1}, Lcom/android/launcher3/PagedView;->setEnableFreeScroll(Z)V

    .line 1832
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    .line 1833
    return v2

    .line 1835
    :cond_1
    return v1

    .line 1820
    :cond_2
    :goto_0
    return v1
.end method

.method protected final updateCurrentPageScroll()V
    .locals 3

    .line 325
    nop

    .line 326
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 327
    iget v0, p0, Lcom/android/launcher3/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v0

    goto :goto_0

    .line 329
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/PagedView;->scrollTo(II)V

    .line 330
    iget-object v1, p0, Lcom/android/launcher3/PagedView;->mScroller:Lcom/android/launcher3/LauncherScroller;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherScroller;->setFinalX(I)V

    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/PagedView;->forceFinishScroller(Z)V

    .line 332
    return-void
.end method
