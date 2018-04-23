.class Landroid/support/v4/app/D;
.super Landroid/support/v4/app/F;
.source "SourceFile"


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1

    .line 3954
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v4/app/F;-><init>(Landroid/view/animation/Animation$AnimationListener;B)V

    .line 3955
    iput-object p1, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    .line 3956
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 3971
    iget-object v0, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->s(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3979
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 3972
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/app/E;

    invoke-direct {v1, p0}, Landroid/support/v4/app/E;-><init>(Landroid/support/v4/app/D;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3981
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v4/app/F;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3982
    return-void
.end method
