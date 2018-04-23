.class public Lcom/android/launcher3/anim/SpringAnimationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

.field public mAnimations:Ljava/util/ArrayList;

.field public mCurrentVelocity:F

.field public mShouldComputeVelocity:Z

.field private mVelocityDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(ILcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    .line 68
    iput p1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityDirection:I

    .line 69
    iput-object p2, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

    .line 70
    return-void
.end method

.method private getVelocityTracker()Landroid/view/VelocityTracker;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method


# virtual methods
.method public final add(Landroid/support/a/C;Z)V
    .locals 0

    .line 79
    if-eqz p2, :cond_0

    .line 80
    iget-object p2, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimationFactory:Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;

    invoke-interface {p2, p1}, Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;->setDefaultValues(Landroid/support/a/C;)V

    .line 82
    :cond_0
    iget p2, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    iput p2, p1, Landroid/support/a/i;->mVelocity:F

    .line 83
    iget-object p2, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public final addMovement(Landroid/view/MotionEvent;)V
    .locals 2

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->reset()V

    .line 130
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 131
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 132
    return-void
.end method

.method public final animateToFinalPosition(FI)V
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FIZ)V

    .line 136
    return-void
.end method

.method public final animateToFinalPosition(FIZ)V
    .locals 5

    .line 150
    iget-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityDirection:I

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_1
    const v3, 0x3e333333    # 0.175f

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    :goto_2
    if-ge v1, v0, :cond_4

    .line 156
    iget-object v3, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/a/C;

    int-to-float v4, p2

    iput v4, v3, Landroid/support/a/i;->mValue:F

    iput-boolean v2, v3, Landroid/support/a/i;->as:Z

    .line 157
    if-eqz p3, :cond_3

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/a/C;

    iget v4, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    iput v4, v3, Landroid/support/a/i;->mVelocity:F

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/a/C;

    invoke-virtual {v3, p1}, Landroid/support/a/C;->b(F)V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/anim/SpringAnimationHandler;->reset()V

    .line 164
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mCurrentVelocity:F

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/SpringAnimationHandler;->mShouldComputeVelocity:Z

    .line 206
    return-void
.end method
