.class Landroid/support/v4/app/B;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic eA:Landroid/view/View;

.field final synthetic eB:Landroid/support/v4/app/Fragment;

.field final synthetic ey:Landroid/support/v4/app/x;

.field final synthetic ez:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Landroid/support/v4/app/B;->ey:Landroid/support/v4/app/x;

    iput-object p2, p0, Landroid/support/v4/app/B;->ez:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/B;->eA:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/B;->eB:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1633
    iget-object p1, p0, Landroid/support/v4/app/B;->ez:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/B;->eA:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1636
    iget-object p1, p0, Landroid/support/v4/app/B;->eB:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object p1

    .line 1637
    iget-object v0, p0, Landroid/support/v4/app/B;->eB:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1638
    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/B;->ez:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/app/B;->eA:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 1639
    iget-object v0, p0, Landroid/support/v4/app/B;->ey:Landroid/support/v4/app/x;

    iget-object v1, p0, Landroid/support/v4/app/B;->eB:Landroid/support/v4/app/Fragment;

    iget-object p1, p0, Landroid/support/v4/app/B;->eB:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->P()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1641
    :cond_0
    return-void
.end method
