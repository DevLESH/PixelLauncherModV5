.class public Lcom/android/launcher3/LauncherStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

.field private mCurrentStableState:Lcom/android/launcher3/LauncherState;

.field mLastStableState:Lcom/android/launcher3/LauncherState;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field mRestState:Lcom/android/launcher3/LauncherState;

.field public mState:Lcom/android/launcher3/LauncherState;

.field private mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

.field public mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-direct {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    .line 83
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 85
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 86
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 95
    return-void
.end method

.method private goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    if-eqz p5, :cond_0

    .line 164
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 166
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->reset()V

    .line 172
    if-nez p2, :cond_5

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherStateManager;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    aget-object v0, p2, p4

    .line 175
    invoke-interface {v0, p1}, Lcom/android/launcher3/LauncherStateManager$StateHandler;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 174
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    if-eqz p2, :cond_3

    .line 178
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    invoke-interface {p2}, Lcom/android/launcher3/LauncherStateManager$StateListener;->onStateSetImmediately$503aab85()V

    .line 180
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherStateManager;->onStateTransitionEnd(Lcom/android/launcher3/LauncherState;)V

    .line 183
    if-eqz p5, :cond_4

    .line 184
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 186
    :cond_4
    return-void

    .line 191
    :cond_5
    iget-object p2, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->transitionDuration:I

    :goto_1
    int-to-long v0, v0

    goto :goto_2

    :cond_6
    iget v0, p1, Lcom/android/launcher3/LauncherState;->transitionDuration:I

    goto :goto_1

    :goto_2
    iput-wide v0, p2, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    .line 193
    new-instance p2, Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {p2}, Lcom/android/launcher3/anim/AnimatorSetBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 195
    new-instance p5, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getFinalFocus(Lcom/android/launcher3/Launcher;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p5, p0, p2, p1}, Lcom/android/launcher3/LauncherStateManager$StartAnimRunnable;-><init>(Lcom/android/launcher3/LauncherStateManager;Landroid/animation/AnimatorSet;Landroid/view/View;)V

    .line 196
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_7

    .line 197
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, p5, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 199
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method


# virtual methods
.method public final createAnimationToNewWorkspace(Lcom/android/launcher3/LauncherState;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 3

    .line 212
    new-instance v0, Lcom/android/launcher3/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatorSetBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->reset()V

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    iput-wide p2, v1, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/LauncherStateManager;->createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p1

    return-object p1
.end method

.method protected final createAnimationToNewWorkspaceInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Ljava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 227
    iget-object v4, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-interface {v3, p1, p2, v4}, Lcom/android/launcher3/LauncherStateManager$StateHandler;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 232
    new-instance v0, Lcom/android/launcher3/LauncherStateManager$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/launcher3/LauncherStateManager$1;-><init>(Lcom/android/launcher3/LauncherStateManager;Lcom/android/launcher3/LauncherState;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    iput-object p2, p1, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    iget-object p2, p1, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {p1}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public final getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/launcher3/LauncherStateManager$StateHandler;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    check-cast v3, Lcom/android/launcher3/uioverrides/OverviewPanel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mStateHandlers:[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    return-object v0
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v3, v0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;J)V
    .locals 6

    .line 148
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;JLjava/lang/Runnable;)V
    .locals 6

    .line 141
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;Z)V
    .locals 6

    .line 123
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public final goToState(Lcom/android/launcher3/LauncherState;ZLjava/lang/Runnable;)V
    .locals 6

    .line 134
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;ZJLjava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method final onStateTransitionEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_0

    .line 286
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 287
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mCurrentStableState:Lcom/android/launcher3/LauncherState;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v1, p1, Lcom/android/launcher3/LauncherState;->disablePageClipping:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    .line 295
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_1

    .line 296
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    .line 298
    :cond_1
    return-void
.end method

.method final onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->onStateDisabled(Lcom/android/launcher3/Launcher;)V

    .line 266
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->onStateEnabled(Lcom/android/launcher3/Launcher;)V

    .line 268
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eq v1, v4, :cond_3

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/android/launcher3/LauncherAppWidgetHost;->mFlags:I

    .line 270
    :cond_3
    :goto_2
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->disablePageClipping:Z

    if-eqz p1, :cond_4

    .line 272
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->setClipChildren(Z)V

    .line 277
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    .line 278
    return-void
.end method

.method public final reapplyState()V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager;->mConfig:Lcom/android/launcher3/LauncherStateManager$AnimationConfig;

    invoke-static {v0}, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherStateManager;->getStateHandlers()[Lcom/android/launcher3/LauncherStateManager$StateHandler;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 154
    iget-object v4, p0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    invoke-interface {v3, v4}, Lcom/android/launcher3/LauncherStateManager$StateHandler;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
