.class Landroid/support/v7/widget/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/f;


# instance fields
.field final synthetic oD:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 767
    iput-object p1, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final N(Landroid/view/View;)V
    .locals 1

    .line 873
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 874
    if-eqz p1, :cond_0

    .line 875
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$200(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/RecyclerView;)V

    .line 877
    :cond_0
    return-void
.end method

.method public final O(Landroid/view/View;)V
    .locals 1

    .line 881
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 882
    if-eqz p1, :cond_0

    .line 883
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$300(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/RecyclerView;)V

    .line 885
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 778
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 782
    iget-object p2, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 783
    return-void
.end method

.method public final attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 838
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_1

    .line 840
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 842
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 847
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->clearTmpDetachFlag()V

    .line 849
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->access$000(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 850
    return-void
.end method

.method public final detachViewFromParent(I)V
    .locals 3

    .line 854
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/T;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_1

    .line 856
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 859
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called detach on an already detached child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 860
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 865
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 868
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->access$100(Landroid/support/v7/widget/RecyclerView;I)V

    .line 869
    return-void
.end method

.method public final getChildAt(I)Landroid/view/View;
    .locals 1

    .line 812
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getChildCount()I
    .locals 1

    .line 770
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;
    .locals 0

    .line 832
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    return-object p1
.end method

.method public final indexOfChild(Landroid/view/View;)I
    .locals 1

    .line 787
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public final removeAllViews()V
    .locals 4

    .line 817
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 818
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 819
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/T;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 820
    iget-object v3, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 825
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 828
    return-void
.end method

.method public final removeViewAt(I)V
    .locals 2

    .line 792
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_0

    .line 794
    iget-object v1, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 799
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 804
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/T;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 808
    return-void
.end method
