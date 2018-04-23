.class Landroid/support/v4/app/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic fE:Landroid/support/v4/app/Y;

.field final synthetic fF:Landroid/view/View;

.field final synthetic fg:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Y;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 143
    iput-object p1, p0, Landroid/support/v4/app/aa;->fE:Landroid/support/v4/app/Y;

    iput-object p2, p0, Landroid/support/v4/app/aa;->fF:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/aa;->fg:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 160
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    .line 150
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 151
    iget-object p1, p0, Landroid/support/v4/app/aa;->fF:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Landroid/support/v4/app/aa;->fg:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 154
    iget-object v2, p0, Landroid/support/v4/app/aa;->fg:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 164
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 168
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 146
    return-void
.end method
