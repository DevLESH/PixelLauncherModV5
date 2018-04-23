.class public Lcom/android/launcher3/uioverrides/PinchToOverviewListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field private mCurrentScale:F

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPinchDetector:Landroid/view/ScaleGestureDetector;

.field private mPinchStarted:Z

.field private mShouldGoToFinalState:Z

.field private mToState:Lcom/android/launcher3/LauncherState;

.field private mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchStarted:Z

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 63
    new-instance p1, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p1, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchDetector:Landroid/view/ScaleGestureDetector;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/uioverrides/PinchToOverviewListener;)Lcom/android/launcher3/LauncherState;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mToState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/uioverrides/PinchToOverviewListener;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 123
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 124
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchStarted:Z

    .line 125
    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchStarted:Z

    return p1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 145
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentScale:F

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mToState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentScale:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentScale:F

    div-float v0, v2, v0

    .line 152
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    sub-float v1, v2, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v3

    long-to-float p1, v3

    div-float/2addr v1, p1

    .line 153
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v3, 0x3a83126f    # 0.001f

    cmpl-float p1, p1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz p1, :cond_3

    .line 154
    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_1

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 155
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_2

    move v3, v4

    nop

    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mShouldGoToFinalState:Z

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    const p1, 0x3f266666    # 0.65f

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_4

    move v3, v4

    nop

    :cond_4
    iput-boolean v3, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mShouldGoToFinalState:Z

    .line 161
    :goto_2
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 162
    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .line 77
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 82
    return v0

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz p1, :cond_2

    .line 86
    return v0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 90
    return v0

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez p1, :cond_4

    .line 93
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean p1, p1, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz p1, :cond_5

    .line 98
    return v0

    .line 100
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 102
    return v0

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 106
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 109
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_8
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mToState:Lcom/android/launcher3/LauncherState;

    .line 110
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mToState:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0xfa

    .line 111
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 112
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mPinchStarted:Z

    .line 114
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentScale:F

    .line 115
    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mShouldGoToFinalState:Z

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 118
    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 129
    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mShouldGoToFinalState:Z

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/uioverrides/PinchToOverviewListener$1;-><init>(Lcom/android/launcher3/uioverrides/PinchToOverviewListener;)V

    iput-object v0, p1, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    .line 139
    iget-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->reverse()V

    .line 141
    return-void
.end method
