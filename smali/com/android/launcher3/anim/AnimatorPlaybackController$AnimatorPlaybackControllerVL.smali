.class public Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;
.super Lcom/android/launcher3/anim/AnimatorPlaybackController;
.source "SourceFile"


# instance fields
.field private final mChildAnimations:[Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Landroid/animation/AnimatorSet;J)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;J)V

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object p2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->mAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->getAnimationsRecur(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->mChildAnimations:[Landroid/animation/ValueAnimator;

    .line 183
    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/AnimatorSet;JB)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;-><init>(Landroid/animation/AnimatorSet;J)V

    return-void
.end method

.method private getAnimationsRecur(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 5

    .line 186
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    .line 187
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 188
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 189
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 191
    :cond_0
    instance-of v3, v2, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 192
    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    :cond_1
    instance-of v3, v2, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_2

    .line 194
    check-cast v2, Landroid/animation/AnimatorSet;

    invoke-direct {p0, v2, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->getAnimationsRecur(Landroid/animation/AnimatorSet;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown animation type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_3
    return-void
.end method


# virtual methods
.method public final setPlayFraction(F)V
    .locals 7

    .line 203
    iput p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->mCurrentFraction:F

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->clampDuration(F)J

    move-result-wide v0

    .line 205
    iget-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$AnimatorPlaybackControllerVL;->mChildAnimations:[Landroid/animation/ValueAnimator;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 206
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method
