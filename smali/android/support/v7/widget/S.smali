.class Landroid/support/v7/widget/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/aP;


# instance fields
.field final synthetic oD:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 550
    iput-object p1, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/aq;->m(Landroid/support/v7/widget/aA;)V

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V

    .line 556
    return-void
.end method

.method public final b(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V
    .locals 1

    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V

    .line 561
    return-void
.end method

.method public final c(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)V
    .locals 1

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->setIsRecyclable(Z)V

    .line 567
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/aa;->a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 573
    iget-object p1, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/aa;->f(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 576
    iget-object p1, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 578
    :cond_1
    return-void
.end method

.method public final e(Landroid/support/v7/widget/aA;)V
    .locals 2

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/S;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/aq;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/af;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/aq;)V

    .line 582
    return-void
.end method
