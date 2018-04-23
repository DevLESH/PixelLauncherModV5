.class final Landroid/support/v4/app/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fh:Ljava/lang/Object;

.field final synthetic fi:Landroid/support/v4/app/ad;

.field final synthetic fj:Landroid/view/View;

.field final synthetic fk:Landroid/support/v4/app/Fragment;

.field final synthetic fl:Ljava/util/ArrayList;

.field final synthetic fo:Landroid/support/v4/app/Fragment;

.field final synthetic fp:Z

.field final synthetic ft:Landroid/support/v4/c/a;

.field final synthetic fu:Ljava/lang/Object;

.field final synthetic fv:Landroid/support/v4/app/X;

.field final synthetic fw:Ljava/util/ArrayList;

.field final synthetic fx:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 732
    iput-object p1, p0, Landroid/support/v4/app/W;->fi:Landroid/support/v4/app/ad;

    iput-object p2, p0, Landroid/support/v4/app/W;->ft:Landroid/support/v4/c/a;

    iput-object p3, p0, Landroid/support/v4/app/W;->fu:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/W;->fv:Landroid/support/v4/app/X;

    iput-object p5, p0, Landroid/support/v4/app/W;->fl:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/W;->fj:Landroid/view/View;

    iput-object p7, p0, Landroid/support/v4/app/W;->fk:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Landroid/support/v4/app/W;->fo:Landroid/support/v4/app/Fragment;

    iput-boolean p9, p0, Landroid/support/v4/app/W;->fp:Z

    iput-object p10, p0, Landroid/support/v4/app/W;->fw:Ljava/util/ArrayList;

    iput-object p11, p0, Landroid/support/v4/app/W;->fh:Ljava/lang/Object;

    iput-object p12, p0, Landroid/support/v4/app/W;->fx:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 735
    iget-object v0, p0, Landroid/support/v4/app/W;->fi:Landroid/support/v4/app/ad;

    iget-object v1, p0, Landroid/support/v4/app/W;->ft:Landroid/support/v4/c/a;

    iget-object v2, p0, Landroid/support/v4/app/W;->fu:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/W;->fv:Landroid/support/v4/app/X;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/S;->c(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;

    move-result-object v0

    .line 738
    if-eqz v0, :cond_0

    .line 739
    iget-object v1, p0, Landroid/support/v4/app/W;->fl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 740
    iget-object v1, p0, Landroid/support/v4/app/W;->fl:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/W;->fj:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/W;->fk:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/W;->fo:Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Landroid/support/v4/app/W;->fp:Z

    invoke-static {v1, v2, v3, v0}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    .line 745
    iget-object v1, p0, Landroid/support/v4/app/W;->fu:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Landroid/support/v4/app/W;->fi:Landroid/support/v4/app/ad;

    iget-object v2, p0, Landroid/support/v4/app/W;->fu:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/W;->fw:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/W;->fl:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 750
    iget-object v1, p0, Landroid/support/v4/app/W;->fv:Landroid/support/v4/app/X;

    iget-object v2, p0, Landroid/support/v4/app/W;->fh:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/W;->fp:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/S;->b(Landroid/support/v4/c/a;Landroid/support/v4/app/X;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 752
    if-eqz v0, :cond_1

    .line 753
    iget-object v1, p0, Landroid/support/v4/app/W;->fi:Landroid/support/v4/app/ad;

    iget-object v2, p0, Landroid/support/v4/app/W;->fx:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 757
    :cond_1
    return-void
.end method
