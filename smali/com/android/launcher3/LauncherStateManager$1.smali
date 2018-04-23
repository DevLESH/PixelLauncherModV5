.class Lcom/android/launcher3/LauncherStateManager$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherStateManager;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$state:Lcom/android/launcher3/LauncherState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherStateManager;Lcom/android/launcher3/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iput-object p2, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$state:Lcom/android/launcher3/LauncherState;

    iput-object p3, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 246
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherStateManager$StateListener;->onStateTransitionComplete$503aab85()V

    .line 249
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$state:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherStateManager;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    .line 238
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object p1, p1, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherStateManager$StateListener;->onStateTransitionStart$503aab85()V

    .line 241
    :cond_0
    return-void
.end method

.method public final onAnimationSuccess$5c3ae1ee()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$1;->this$0:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, p0, Lcom/android/launcher3/LauncherStateManager$1;->val$state:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->onStateTransitionEnd(Lcom/android/launcher3/LauncherState;)V

    .line 258
    return-void
.end method
