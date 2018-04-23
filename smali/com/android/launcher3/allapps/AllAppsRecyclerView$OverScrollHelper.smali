.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SwipeDetector$Listener;


# instance fields
.field private mAlreadyScrollingUp:Z

.field private mFirstDisplacement:F

.field private mFirstScrollYOnScrollUp:I

.field mIsInOverScroll:Z

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;B)V
    .locals 0

    .line 503
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method private getDampedOverScroll(F)F
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private reset(Z)V
    .locals 6

    .line 564
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mContentTranslationY:F

    .line 565
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 566
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$400(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 568
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->getDampedOverScroll(F)F

    move-result p1

    div-float/2addr v0, p1

    const p1, 0x459c4000    # 5000.0f

    mul-float/2addr v0, p1

    .line 571
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$400(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object p1

    neg-float v0, v0

    iput v0, p1, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    iput-boolean v3, p1, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0, v4}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FIZ)V

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->CONTENT_TRANS_Y:Landroid/util/Property;

    new-array v2, v4, [F

    aput v1, v2, v3

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0x64

    .line 576
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 577
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 579
    :cond_1
    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    .line 580
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    .line 581
    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstScrollYOnScrollUp:I

    .line 582
    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    .line 583
    return-void
.end method


# virtual methods
.method public final onDrag$2548a39(FF)Z
    .locals 7

    .line 522
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    .line 523
    move v1, v3

    goto :goto_0

    .line 522
    :cond_0
    nop

    .line 523
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 524
    iget-boolean v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    if-nez v4, :cond_2

    .line 525
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstScrollYOnScrollUp:I

    .line 526
    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    goto :goto_1

    .line 529
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mAlreadyScrollingUp:Z

    .line 536
    :cond_2
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    .line 537
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$500(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher3/views/RecyclerViewFastScroller;->mIsDragging:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 538
    invoke-virtual {v5, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_3

    cmpg-float v5, p1, v0

    if-ltz v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v6, -0x1

    .line 539
    invoke-virtual {v5, v6}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstScrollYOnScrollUp:I

    if-eqz v1, :cond_5

    :cond_4
    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    .line 541
    if-eqz v4, :cond_6

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    if-nez v1, :cond_6

    .line 544
    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->reset(Z)V

    goto :goto_3

    .line 545
    :cond_6
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    if-eqz v1, :cond_8

    .line 546
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_7

    .line 549
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    .line 551
    :cond_7
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mFirstDisplacement:F

    sub-float/2addr p1, v0

    .line 552
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->getDampedOverScroll(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setContentTranslationY(F)V

    .line 555
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    return p1
.end method

.method public final onDragEnd(FZ)V
    .locals 0

    .line 560
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->reset(Z)V

    .line 561
    return-void
.end method

.method public final onDragStart$1385ff()V
    .locals 0

    .line 518
    return-void
.end method
