.class Landroid/support/v7/widget/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic mQ:Landroid/support/v7/widget/g;

.field final synthetic mV:Landroid/view/View;

.field final synthetic mY:Landroid/support/v7/widget/p;

.field final synthetic mZ:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/p;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 358
    iput-object p1, p0, Landroid/support/v7/widget/n;->mQ:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/n;->mY:Landroid/support/v7/widget/p;

    iput-object p3, p0, Landroid/support/v7/widget/n;->mZ:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/n;->mV:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 366
    iget-object p1, p0, Landroid/support/v7/widget/n;->mZ:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 367
    iget-object p1, p0, Landroid/support/v7/widget/n;->mV:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 368
    iget-object p1, p0, Landroid/support/v7/widget/n;->mV:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 369
    iget-object p1, p0, Landroid/support/v7/widget/n;->mV:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    iget-object p1, p0, Landroid/support/v7/widget/n;->mQ:Landroid/support/v7/widget/g;

    iget-object v0, p0, Landroid/support/v7/widget/n;->mY:Landroid/support/v7/widget/p;

    iget-object v0, v0, Landroid/support/v7/widget/p;->nc:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aE;->h(Landroid/support/v7/widget/aA;)V

    .line 371
    iget-object p1, p0, Landroid/support/v7/widget/n;->mQ:Landroid/support/v7/widget/g;

    iget-object p1, p1, Landroid/support/v7/widget/g;->mO:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/n;->mY:Landroid/support/v7/widget/p;

    iget-object v0, v0, Landroid/support/v7/widget/p;->nc:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object p1, p0, Landroid/support/v7/widget/n;->mQ:Landroid/support/v7/widget/g;

    invoke-virtual {p1}, Landroid/support/v7/widget/g;->bf()V

    .line 373
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 361
    return-void
.end method
