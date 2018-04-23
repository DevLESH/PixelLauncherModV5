.class Landroid/support/v4/app/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic fE:Landroid/support/v4/app/Y;

.field final synthetic fG:Ljava/lang/Object;

.field final synthetic fg:Ljava/util/ArrayList;

.field final synthetic fh:Ljava/lang/Object;

.field final synthetic fl:Ljava/util/ArrayList;

.field final synthetic fm:Ljava/util/ArrayList;

.field final synthetic fn:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Y;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 214
    iput-object p1, p0, Landroid/support/v4/app/ab;->fE:Landroid/support/v4/app/Y;

    iput-object p2, p0, Landroid/support/v4/app/ab;->fh:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/ab;->fm:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/ab;->fn:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/v4/app/ab;->fg:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/ab;->fG:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/ab;->fl:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 234
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 230
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 238
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 242
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .line 217
    iget-object p1, p0, Landroid/support/v4/app/ab;->fh:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 218
    iget-object p1, p0, Landroid/support/v4/app/ab;->fE:Landroid/support/v4/app/Y;

    iget-object v1, p0, Landroid/support/v4/app/ab;->fh:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ab;->fm:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/Y;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 220
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/ab;->fn:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 221
    iget-object p1, p0, Landroid/support/v4/app/ab;->fE:Landroid/support/v4/app/Y;

    iget-object v1, p0, Landroid/support/v4/app/ab;->fn:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ab;->fg:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/Y;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 223
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/ab;->fG:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Landroid/support/v4/app/ab;->fE:Landroid/support/v4/app/Y;

    iget-object v1, p0, Landroid/support/v4/app/ab;->fG:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/ab;->fl:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/Y;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 226
    :cond_2
    return-void
.end method
