.class Landroid/support/v4/app/C;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic eB:Landroid/support/v4/app/Fragment;

.field final synthetic eD:Landroid/view/View;

.field final synthetic ey:Landroid/support/v4/app/x;

.field final synthetic ez:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1694
    iput-object p1, p0, Landroid/support/v4/app/C;->ey:Landroid/support/v4/app/x;

    iput-object p2, p0, Landroid/support/v4/app/C;->ez:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/C;->eD:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/C;->eB:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1697
    iget-object v0, p0, Landroid/support/v4/app/C;->ez:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/C;->eD:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1698
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1699
    iget-object p1, p0, Landroid/support/v4/app/C;->eB:Landroid/support/v4/app/Fragment;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1700
    iget-object p1, p0, Landroid/support/v4/app/C;->eB:Landroid/support/v4/app/Fragment;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    :cond_0
    return-void
.end method
