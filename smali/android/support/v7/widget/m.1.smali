.class Landroid/support/v7/widget/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic mQ:Landroid/support/v7/widget/g;

.field final synthetic mT:Landroid/support/v7/widget/aA;

.field final synthetic mU:Landroid/view/ViewPropertyAnimator;

.field final synthetic mV:Landroid/view/View;

.field final synthetic mW:I

.field final synthetic mX:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/aA;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroid/support/v7/widget/m;->mQ:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/m;->mT:Landroid/support/v7/widget/aA;

    iput p3, p0, Landroid/support/v7/widget/m;->mW:I

    iput-object p4, p0, Landroid/support/v7/widget/m;->mV:Landroid/view/View;

    iput p5, p0, Landroid/support/v7/widget/m;->mX:I

    iput-object p6, p0, Landroid/support/v7/widget/m;->mU:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 300
    iget p1, p0, Landroid/support/v7/widget/m;->mW:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 301
    iget-object p1, p0, Landroid/support/v7/widget/m;->mV:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 303
    :cond_0
    iget p1, p0, Landroid/support/v7/widget/m;->mX:I

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Landroid/support/v7/widget/m;->mV:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 306
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 310
    iget-object p1, p0, Landroid/support/v7/widget/m;->mU:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 311
    iget-object p1, p0, Landroid/support/v7/widget/m;->mQ:Landroid/support/v7/widget/g;

    iget-object v0, p0, Landroid/support/v7/widget/m;->mT:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aE;->h(Landroid/support/v7/widget/aA;)V

    .line 312
    iget-object p1, p0, Landroid/support/v7/widget/m;->mQ:Landroid/support/v7/widget/g;

    iget-object p1, p1, Landroid/support/v7/widget/g;->mM:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/m;->mT:Landroid/support/v7/widget/aA;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Landroid/support/v7/widget/m;->mQ:Landroid/support/v7/widget/g;

    invoke-virtual {p1}, Landroid/support/v7/widget/g;->bf()V

    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 295
    return-void
.end method
