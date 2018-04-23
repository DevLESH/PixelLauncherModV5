.class Landroid/support/v4/app/z;
.super Landroid/support/v4/app/F;
.source "SourceFile"


# instance fields
.field final synthetic eA:Landroid/view/View;

.field final synthetic eB:Landroid/support/v4/app/Fragment;

.field final synthetic ey:Landroid/support/v4/app/x;

.field final synthetic ez:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Landroid/support/v4/app/z;->ey:Landroid/support/v4/app/x;

    iput-object p3, p0, Landroid/support/v4/app/z;->ez:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/support/v4/app/z;->eA:Landroid/view/View;

    iput-object p5, p0, Landroid/support/v4/app/z;->eB:Landroid/support/v4/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/support/v4/app/F;-><init>(Landroid/view/animation/Animation$AnimationListener;B)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1607
    invoke-super {p0, p1}, Landroid/support/v4/app/F;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1611
    iget-object p1, p0, Landroid/support/v4/app/z;->ez:Landroid/view/ViewGroup;

    new-instance v0, Landroid/support/v4/app/A;

    invoke-direct {v0, p0}, Landroid/support/v4/app/A;-><init>(Landroid/support/v4/app/z;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1623
    return-void
.end method
