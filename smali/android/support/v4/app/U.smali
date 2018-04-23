.class final Landroid/support/v4/app/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fg:Ljava/util/ArrayList;

.field final synthetic fh:Ljava/lang/Object;

.field final synthetic fi:Landroid/support/v4/app/ad;

.field final synthetic fj:Landroid/view/View;

.field final synthetic fk:Landroid/support/v4/app/Fragment;

.field final synthetic fl:Ljava/util/ArrayList;

.field final synthetic fm:Ljava/util/ArrayList;

.field final synthetic fn:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/support/v4/app/ad;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 390
    iput-object p1, p0, Landroid/support/v4/app/U;->fh:Ljava/lang/Object;

    iput-object p2, p0, Landroid/support/v4/app/U;->fi:Landroid/support/v4/app/ad;

    iput-object p3, p0, Landroid/support/v4/app/U;->fj:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/U;->fk:Landroid/support/v4/app/Fragment;

    iput-object p5, p0, Landroid/support/v4/app/U;->fl:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/U;->fm:Ljava/util/ArrayList;

    iput-object p7, p0, Landroid/support/v4/app/U;->fg:Ljava/util/ArrayList;

    iput-object p8, p0, Landroid/support/v4/app/U;->fn:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 393
    iget-object v0, p0, Landroid/support/v4/app/U;->fh:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/support/v4/app/U;->fi:Landroid/support/v4/app/ad;

    iget-object v1, p0, Landroid/support/v4/app/U;->fh:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/U;->fj:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ad;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/U;->fi:Landroid/support/v4/app/ad;

    iget-object v1, p0, Landroid/support/v4/app/U;->fh:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/U;->fk:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/U;->fl:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/U;->fj:Landroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 398
    iget-object v1, p0, Landroid/support/v4/app/U;->fm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U;->fg:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Landroid/support/v4/app/U;->fn:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iget-object v1, p0, Landroid/support/v4/app/U;->fj:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v1, p0, Landroid/support/v4/app/U;->fi:Landroid/support/v4/app/ad;

    iget-object v2, p0, Landroid/support/v4/app/U;->fn:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/U;->fg:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 408
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U;->fg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 409
    iget-object v0, p0, Landroid/support/v4/app/U;->fg:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/U;->fj:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_2
    return-void
.end method
