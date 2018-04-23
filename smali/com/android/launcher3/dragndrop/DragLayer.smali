.class public Lcom/android/launcher3/dragndrop/DragLayer;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "SourceFile"


# instance fields
.field private mActiveController:Lcom/android/launcher3/util/TouchController;

.field mAnchorView:Landroid/view/View;

.field mAnchorViewInitialScrollX:I

.field private mChildCountOnLastUpdate:I

.field protected mControllers:[Lcom/android/launcher3/util/TouchController;

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field public mDropView:Lcom/android/launcher3/dragndrop/DragView;

.field public final mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final mHitRect:Landroid/graphics/Rect;

.field private mHoverPointClosesFolder:Z

.field public mLauncher:Lcom/android/launcher3/Launcher;

.field public final mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

.field private final mTmpXY:[I

.field private mTopViewIndex:I

.field public mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    .line 75
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 76
    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 78
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 79
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 81
    iput-boolean p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 82
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 87
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 106
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 108
    new-instance p1, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 109
    new-instance p1, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    invoke-direct {p1, p0}, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    .line 110
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    return-void
.end method

.method private isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method private isInAccessibleDrag()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    return v0
.end method

.method private sendTapOutsideFolderAccessibilityEvent(Z)V
    .locals 2

    .line 227
    if-eqz p1, :cond_0

    const p1, 0x7f0c004d

    goto :goto_0

    :cond_0
    const p1, 0x7f0c004c

    .line 228
    :goto_0
    const/16 v0, 0x8

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p0, v0, p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 230
    return-void
.end method

.method private updateChildIndices()V
    .locals 3

    .line 719
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 720
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result v0

    .line 721
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 722
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_0

    .line 723
    iput v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    .line 721
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    :cond_1
    iput v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    .line 727
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 265
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 267
    :cond_1
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    return-void

    .line 789
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/InsettableFrameLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 791
    return-void
.end method

.method public final animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 652
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 653
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnimationCancelled:Z

    iget-object v0, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 654
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->requestLayout()V

    .line 657
    if-eqz p7, :cond_2

    .line 658
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorViewInitialScrollX:I

    .line 660
    :cond_2
    iput-object p7, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mAnchorView:Landroid/view/View;

    .line 663
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 664
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 665
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 666
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 667
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 668
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/launcher3/dragndrop/DragLayer$3;

    invoke-direct {p2, p0, p5, p6}, Lcom/android/launcher3/dragndrop/DragLayer$3;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 682
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 683
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 582
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, v13, Landroid/graphics/Rect;->top:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 584
    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 587
    if-gez p9, :cond_1

    .line 588
    const v3, 0x7f0d0008

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 589
    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    .line 590
    int-to-float v3, v3

    iget-object v4, v14, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 592
    :cond_0
    const v0, 0x7f0d0007

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 596
    move v15, v0

    goto :goto_0

    :cond_1
    move/from16 v15, p9

    :goto_0
    const/4 v0, 0x0

    .line 597
    if-eqz p11, :cond_3

    if-nez p10, :cond_2

    goto :goto_2

    .line 602
    :cond_2
    :goto_1
    move-object/from16 v16, v0

    goto :goto_3

    .line 598
    :cond_3
    :goto_2
    iget-object v0, v14, Lcom/android/launcher3/dragndrop/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 602
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getAlpha()F

    move-result v11

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getScaleX()F

    move-result v6

    .line 604
    new-instance v17, Lcom/android/launcher3/dragndrop/DragLayer$2;

    move-object/from16 v0, v17

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/launcher3/dragndrop/DragLayer$2;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Lcom/android/launcher3/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 641
    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, p12

    move/from16 v6, p13

    move-object/from16 v7, p14

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 643
    return-void
.end method

.method public final animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    .line 546
    new-instance v4, Landroid/graphics/Rect;

    .line 547
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 548
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 549
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 551
    return-void
.end method

.method public final animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 482
    invoke-virtual {v3, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 484
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 485
    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 487
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 489
    iget v8, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v11, v10, v7

    mul-float/2addr v9, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v9, v12

    float-to-int v9, v9

    add-int/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 490
    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v11

    div-float/2addr v8, v12

    float-to-int v8, v8

    add-int/2addr v4, v8

    const/4 v8, 0x1

    aput v4, v6, v8

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v4

    .line 497
    mul-float/2addr v4, v7

    .line 498
    aget v7, v6, v9

    .line 499
    aget v6, v6, v8

    .line 500
    nop

    .line 501
    instance-of v8, v2, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 502
    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    .line 505
    iget v9, v1, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    div-float v9, v4, v9

    .line 510
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v6, v8

    .line 511
    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v10, v9

    mul-float/2addr v8, v10

    div-float/2addr v8, v12

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 512
    iget-object v8, v1, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    if-eqz v8, :cond_0

    .line 513
    iget-object v8, v1, Lcom/android/launcher3/dragndrop/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    sub-int/2addr v6, v8

    .line 516
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v8, v4

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    .line 517
    nop

    .line 530
    move v5, v6

    move v4, v7

    move v10, v9

    goto :goto_1

    .line 517
    :cond_1
    instance-of v8, v2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v8, :cond_2

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, v1, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v6, v8

    .line 520
    int-to-float v6, v6

    iget v8, v1, Lcom/android/launcher3/dragndrop/DragView;->mBlurSizeOutline:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v12

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 521
    int-to-float v6, v6

    sub-float/2addr v10, v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v10, v8

    div-float/2addr v10, v12

    sub-float/2addr v6, v10

    float-to-int v6, v6

    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    .line 530
    :goto_0
    move v10, v4

    move v5, v6

    move v4, v7

    goto :goto_1

    .line 525
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    div-int/2addr v8, v5

    sub-int/2addr v6, v8

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v8

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v8, v4

    .line 526
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    div-int/2addr v8, v5

    sub-int/2addr v7, v8

    goto :goto_0

    .line 530
    :goto_1
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 531
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 532
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 533
    new-instance v11, Lcom/android/launcher3/dragndrop/DragLayer$1;

    invoke-direct {v11, v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer$1;-><init>(Lcom/android/launcher3/dragndrop/DragLayer;Landroid/view/View;)V

    .line 538
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move v2, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 540
    return-void
.end method

.method public final animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 475
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    .line 476
    return-void
.end method

.method public final animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 16

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 466
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 467
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 468
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 470
    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p6

    move/from16 v14, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 472
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    .line 714
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 715
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 716
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 390
    instance-of p1, p1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    return p1
.end method

.method public final clearAnimatedView()V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 692
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    .line 693
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 694
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 770
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 771
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 369
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 371
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 371
    return v0

    .line 373
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 364
    move v0, v2

    goto :goto_0

    .line 363
    :cond_0
    nop

    .line 364
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected final generateDefaultLayoutParams()Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 2

    .line 384
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 2

    .line 379
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
    .locals 1

    .line 395
    new-instance v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 731
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 740
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 742
    return p2

    .line 743
    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    .line 745
    iget p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    return p1

    .line 746
    :cond_2
    iget p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTopViewIndex:I

    if-ge p2, p1, :cond_3

    .line 747
    return p2

    .line 751
    :cond_3
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public final getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1

    .line 317
    const/4 v0, 0x0

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public final getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    invoke-static {p1, p0, v0, v1}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    .line 304
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v1, v5, v1

    int-to-float v1, v1

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTmpXY:[I

    aget v2, v5, v2

    int-to-float v2, v2

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 304
    invoke-virtual {p2, v3, v4, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 307
    return v0
.end method

.method public final getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2

    .line 311
    const/4 v0, 0x0

    aput v0, p2, v0

    .line 312
    const/4 v1, 0x1

    aput v0, p2, v1

    .line 313
    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result p1

    return p1
.end method

.method public final getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 347
    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInWindow([I)V

    .line 348
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 349
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 352
    aget v1, v0, v1

    .line 353
    aget v0, v0, v3

    .line 355
    sub-int/2addr v1, v2

    .line 356
    sub-int/2addr v0, v4

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p2, v1, v0, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 358
    return-void
.end method

.method public final isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 147
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 273
    const/4 p1, 0x0

    return p1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    .line 191
    return v1

    .line 193
    :cond_1
    nop

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 195
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 198
    const/4 v3, 0x7

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    goto :goto_4

    .line 200
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 201
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 202
    :cond_3
    move p1, v1

    goto :goto_1

    .line 201
    :cond_4
    :goto_0
    nop

    .line 202
    move p1, v4

    :goto_1
    if-nez p1, :cond_5

    .line 203
    iget-boolean p1, v0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 204
    iput-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 205
    return v4

    .line 207
    :cond_5
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 208
    goto :goto_4

    .line 210
    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverDropTargetBar(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 212
    :cond_7
    move p1, v1

    goto :goto_3

    .line 211
    :cond_8
    :goto_2
    nop

    .line 212
    move p1, v4

    :goto_3
    if-nez p1, :cond_9

    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    if-nez v2, :cond_9

    .line 213
    iget-boolean p1, v0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->sendTapOutsideFolderAccessibilityEvent(Z)V

    .line 214
    iput-boolean v4, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 215
    return v4

    .line 216
    :cond_9
    if-nez p1, :cond_a

    .line 217
    return v4

    .line 219
    :cond_a
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mHoverPointClosesFolder:Z

    .line 223
    :cond_b
    :goto_4
    return v1

    .line 187
    :cond_c
    :goto_5
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    if-nez v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    goto :goto_1

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 158
    :cond_2
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 162
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 167
    return v2

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 172
    return v2

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_7

    aget-object v5, v0, v4

    .line 176
    invoke-interface {v5, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 177
    iput-object v5, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    .line 178
    return v2

    .line 175
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 181
    :cond_7
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 448
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 449
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildCount()I

    move-result p1

    .line 450
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 451
    invoke-virtual {p0, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 452
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 453
    instance-of p5, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    if-eqz p5, :cond_0

    .line 454
    check-cast p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 455
    iget-boolean p5, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    if-eqz p5, :cond_0

    .line 456
    iget p5, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v0, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget v1, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    iget v2, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    iget p4, p4, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    add-int/2addr v2, p4

    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 450
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 460
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1

    .line 779
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2

    .line 241
    if-ne p1, v0, :cond_0

    .line 242
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->isInAccessibleDrag()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/DropTargetBar;

    if-eqz v0, :cond_1

    .line 245
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 249
    :cond_1
    const/4 p1, 0x0

    return p1

    .line 251
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 279
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 283
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/dragndrop/DragLayer$TouchCompleteListener;

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mActiveController:Lcom/android/launcher3/util/TouchController;

    invoke-interface {v0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 289
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 702
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 703
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 704
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 708
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 709
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->updateChildIndices()V

    .line 710
    return-void
.end method

.method public final setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 115
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/android/launcher3/util/TouchController;

    new-instance v0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;

    invoke-direct {v0, p1}, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;-><init>(Lcom/android/launcher3/Launcher;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;

    invoke-direct {v0, p1}, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;-><init>(Lcom/android/launcher3/Launcher;)V

    const/4 p1, 0x1

    aput-object v0, p2, p1

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    .line 117
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragLayer;->mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
