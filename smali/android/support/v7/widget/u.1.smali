.class Landroid/support/v7/widget/u;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field private mCanceled:Z

.field final synthetic nI:Landroid/support/v7/widget/r;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/r;)V
    .locals 0

    .line 550
    iput-object p1, p0, Landroid/support/v7/widget/u;->nI:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 552
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/u;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/r;B)V
    .locals 0

    .line 550
    invoke-direct {p0, p1}, Landroid/support/v7/widget/u;-><init>(Landroid/support/v7/widget/r;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 572
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/u;->mCanceled:Z

    .line 573
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 557
    iget-boolean p1, p0, Landroid/support/v7/widget/u;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 558
    iput-boolean v0, p0, Landroid/support/v7/widget/u;->mCanceled:Z

    .line 559
    return-void

    .line 561
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/u;->nI:Landroid/support/v7/widget/r;

    invoke-static {p1}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/r;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 562
    iget-object p1, p0, Landroid/support/v7/widget/u;->nI:Landroid/support/v7/widget/r;

    invoke-static {p1, v0}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/r;I)I

    .line 563
    iget-object p1, p0, Landroid/support/v7/widget/u;->nI:Landroid/support/v7/widget/r;

    invoke-static {p1, v0}, Landroid/support/v7/widget/r;->b(Landroid/support/v7/widget/r;I)V

    return-void

    .line 565
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/u;->nI:Landroid/support/v7/widget/r;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/support/v7/widget/r;->a(Landroid/support/v7/widget/r;I)I

    .line 566
    iget-object p1, p0, Landroid/support/v7/widget/u;->nI:Landroid/support/v7/widget/r;

    invoke-static {p1}, Landroid/support/v7/widget/r;->b(Landroid/support/v7/widget/r;)V

    .line 568
    return-void
.end method
