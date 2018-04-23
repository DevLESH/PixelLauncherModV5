.class public abstract Lcom/android/launcher3/util/VerticalSwipeController;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SwipeDetector$Listener;
.implements Lcom/android/launcher3/util/TouchController;


# instance fields
.field private final mBaseState:Lcom/android/launcher3/LauncherState;

.field private mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field protected final mDetector:Lcom/android/launcher3/touch/SwipeDetector;

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private mNoIntercept:Z

.field private mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

.field private mProgressMultiplier:F

.field private mProgress:F

.field protected mSpringHandlers:[Lcom/android/launcher3/anim/SpringAnimationHandler;

.field private mStartProgress:F

.field private final mTargetState:Lcom/android/launcher3/LauncherState;

.field private mToState:Lcom/android/launcher3/LauncherState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V
    .locals 2

    .line 74
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/touch/SwipeDetector;->VERTICAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher3/util/VerticalSwipeController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 80
    new-instance v0, Lcom/android/launcher3/touch/SwipeDetector;

    invoke-direct {v0, p1, p0, p4}, Lcom/android/launcher3/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    iput-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    .line 81
    iput-object p2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mBaseState:Lcom/android/launcher3/LauncherState;

    .line 82
    iput-object p3, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    .line 83
    return-void
.end method

.method public static synthetic lambda$onDragEnd$0(Lcom/android/launcher3/util/VerticalSwipeController;Lcom/android/launcher3/LauncherState;Z)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {p0, p2, v1}, Lcom/android/launcher3/util/VerticalSwipeController;->onTransitionComplete(ZZ)V

    .line 257
    iget-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    sget-object p2, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 258
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 259
    return-void
.end method


# virtual methods
.method public abstract getSwipeDirection(Landroid/view/MotionEvent;)I
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 101
    const-string p1, "VerticalSwipeController"

    const-string v0, "Who dare cancel the animation when I am in control"

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    iget-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    sget-object v0, Lcom/android/launcher3/touch/SwipeDetector$ScrollState;->IDLE:Lcom/android/launcher3/touch/SwipeDetector$ScrollState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->setState(Lcom/android/launcher3/touch/SwipeDetector$ScrollState;)V

    .line 103
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 105
    :cond_0
    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/VerticalSwipeController;->shouldInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNoIntercept:Z

    .line 134
    iget-boolean v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_3

    .line 135
    return v1

    .line 141
    :cond_3
    nop

    .line 143
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    const v3, 0x3f69999a    # 0.9125f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 145
    nop

    .line 156
    move v3, v1

    move v0, v2

    goto :goto_3

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    const v3, 0x3db33333    # 0.0875f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 147
    const/4 v0, 0x2

    goto :goto_2

    .line 149
    :cond_5
    const/4 v0, 0x3

    .line 150
    nop

    .line 156
    move v3, v2

    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/VerticalSwipeController;->getSwipeDirection(Landroid/view/MotionEvent;)I

    move-result v0

    .line 156
    :goto_2
    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mSpringHandlers:[Lcom/android/launcher3/anim/SpringAnimationHandler;

    if-nez v0, :cond_a

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-boolean v3, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    iget-object v3, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->animationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    :goto_4
    if-nez v3, :cond_8

    new-array v0, v1, [Lcom/android/launcher3/anim/SpringAnimationHandler;

    :goto_5
    iput-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mSpringHandlers:[Lcom/android/launcher3/anim/SpringAnimationHandler;

    goto :goto_6

    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getSpringForFling()Landroid/support/a/C;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v5, Lcom/android/launcher3/anim/SpringAnimationHandler;

    iget-object v3, v3, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

    invoke-direct {v5, v1, v3}, Lcom/android/launcher3/anim/SpringAnimationHandler;-><init>(ILcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;)V

    invoke-virtual {v5, v0, v2}, Lcom/android/launcher3/anim/SpringAnimationHandler;->add(Landroid/support/a/C;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/anim/SpringAnimationHandler;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/anim/SpringAnimationHandler;

    goto :goto_5

    .line 164
    :cond_a
    :goto_6
    iget-boolean v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNoIntercept:Z

    if-eqz v0, :cond_b

    .line 165
    return v1

    .line 168
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/VerticalSwipeController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    iget-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {p1}, Lcom/android/launcher3/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result p1

    return p1
.end method

.method public final onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mSpringHandlers:[Lcom/android/launcher3/anim/SpringAnimationHandler;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 177
    invoke-virtual {v3, p1}, Lcom/android/launcher3/anim/SpringAnimationHandler;->addMovement(Landroid/view/MotionEvent;)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onDrag$2548a39(FF)Z
    .locals 4
    .param p1, "displacement"    # F
    .param p2, "velocity"    # F

    .prologue
    iget v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mProgressMultiplier:F

    mul-float/2addr v0, p1

    .line 218
    iget v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mStartProgress:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mProgress:F

    const/4 v2, 0x1

    .line 212
    const v1, 0x0

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 247
    :goto_0
    return v1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v3, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Locked:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-eq v1, v3, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget v1, v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 220
    sget-object v1, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Locked:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    iput-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mProgress:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    move v1, v2

    .line 247
    goto :goto_0

    .line 223
    .end local v0    # "shift":F
    :cond_2
    const/high16 v1, 0x40100000    # 2.25f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v3, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Free:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v3, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Closed:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-ne v1, v3, :cond_7

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/util/VerticalSwipeController;->openNotifications()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Opened:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    :goto_1
    iput-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    .line 236
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v3, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Opened:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v3, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Closed:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-ne v1, v3, :cond_1

    :cond_5
    move v1, v2

    .line 237
    goto :goto_0

    .line 225
    :cond_6
    sget-object v1, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Locked:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    goto :goto_1

    .line 228
    :cond_7
    const v1, -0x414ccccd    # -0.35f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v3, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Opened:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-ne v1, v3, :cond_4

    .line 230
    invoke-direct {p0}, Lcom/android/launcher3/util/VerticalSwipeController;->closeNotifications()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Closed:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    :goto_3
    iput-object v1, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Locked:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    goto :goto_3
.end method

.method public final onDragEnd(FZ)V
    .locals 12

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    .line 228
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v6, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Opened:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    sget-object v6, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Closed:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    if-eq v5, v6, :cond_3

    .line 229
    cmpg-float v5, p1, v4

    if-gez v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    .line 230
    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    goto :goto_1

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mBaseState:Lcom/android/launcher3/LauncherState;

    .line 234
    :goto_1
    nop

    .line 235
    iget-object v6, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne v6, v5, :cond_2

    sub-float v6, v1, v0

    goto :goto_2

    .line 234
    :cond_2
    move v6, v0

    :goto_2
    invoke-static {p1, v6}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    goto :goto_4

    .line 238
    :cond_3
    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    .line 239
    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 240
    sub-float v6, v1, v0

    invoke-static {p1, v6}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    goto :goto_4

    .line 242
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    iget-object v6, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mBaseState:Lcom/android/launcher3/LauncherState;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    .line 243
    :goto_3
    invoke-static {p1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    .line 247
    :goto_4
    if-eqz p2, :cond_6

    iget-object v8, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    if-ne v5, v8, :cond_6

    .line 248
    iget-object v8, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mSpringHandlers:[Lcom/android/launcher3/anim/SpringAnimationHandler;

    array-length v9, v8

    move v10, v2

    :goto_5
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 250
    invoke-virtual {v11, v4, v3}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FI)V

    .line 248
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 254
    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    new-instance v9, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;

    invoke-direct {v9, p0, v5, p2}, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;-><init>(Lcom/android/launcher3/util/VerticalSwipeController;Lcom/android/launcher3/LauncherState;Z)V

    iput-object v9, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    .line 261
    const/high16 p2, 0x41800000    # 16.0f

    mul-float/2addr p2, p1

    iget v8, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mProgressMultiplier:F

    mul-float/2addr p2, v8

    add-float/2addr v0, p2

    invoke-static {v0, v4, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p2

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 265
    const/4 v8, 0x2

    new-array v8, v8, [F

    aput p2, v8, v2

    iget-object p2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    if-ne v5, p2, :cond_7

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    aput v1, v8, v3

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 266
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 269
    return-void
.end method

.method public final onDragStart$1385ff()V
    .locals 8

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 186
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    float-to-long v2, v2

    .line 189
    iget-object v4, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mBaseState:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    :goto_0
    iput-object v4, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 190
    iget-object v4, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v5, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mToState:Lcom/android/launcher3/LauncherState;

    .line 191
    invoke-virtual {v4, v5, v2, v3}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 192
    iget-object v2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getTarget()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mStartProgress:F

    .line 194
    nop

    .line 195
    iget-object v2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mTargetState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    int-to-float v2, v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mProgressMultiplier:F

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()V

    .line 197
    goto :goto_2

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v0, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mCurrentAnimation:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mStartProgress:F

    .line 202
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mSpringHandlers:[Lcom/android/launcher3/anim/SpringAnimationHandler;

    array-length v2, v0

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 203
    iget-object v5, v4, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_4

    iget-object v7, v4, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/a/C;

    invoke-virtual {v7}, Landroid/support/a/C;->k()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/a/C;

    invoke-virtual {v7}, Landroid/support/a/C;->j()V

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 202
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 205
    :cond_5

    sget-object v0, Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;->Free:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    iput-object v0, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mNotificationState:Lcom/android/launcher3/util/VerticalSwipeController$NotificationState;

    return-void
.end method

.method public abstract onTransitionComplete(ZZ)V
.end method

.method public abstract shouldInterceptTouch(Landroid/view/MotionEvent;)Z
.end method

.method private openNotifications()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "PrivateApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 253
    :try_start_0
    const-string v2, "android.app.StatusBarManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "expandNotificationsPanel"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 254
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "statusbar"

    .line 255
    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 256
    const/4 v1, 0x1

    .line 258
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 258
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    :goto_1
    goto :goto_0

    .line 257
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private closeNotifications()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "PrivateApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 265
    :try_start_0
    const-string v2, "android.app.StatusBarManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "collapsePanels"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 266
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/VerticalSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "statusbar"

    .line 267
    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 268
    const/4 v1, 0x1

    .line 270
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    :goto_1
    goto :goto_0

    .line 269
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method
