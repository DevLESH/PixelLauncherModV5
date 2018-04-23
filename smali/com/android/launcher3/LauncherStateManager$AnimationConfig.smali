.class public Lcom/android/launcher3/LauncherStateManager$AnimationConfig;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public duration:J

.field mCurrentAnimation:Landroid/animation/AnimatorSet;

.field public userControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-ne v0, p1, :cond_0

    .line 369
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 371
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 3

    .line 356
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    .line 357
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    .line 359
    iget-object v2, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 364
    :cond_0
    return-void
.end method
