.class Landroid/support/v4/app/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final eF:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 3918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3919
    iput-object p1, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    .line 3920
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation$AnimationListener;B)V
    .locals 0

    .line 3915
    invoke-direct {p0, p1}, Landroid/support/v4/app/F;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3933
    iget-object v0, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3934
    iget-object v0, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3936
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3941
    iget-object v0, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3942
    iget-object v0, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 3944
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3925
    iget-object v0, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3926
    iget-object v0, p0, Landroid/support/v4/app/F;->eF:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3928
    :cond_0
    return-void
.end method
