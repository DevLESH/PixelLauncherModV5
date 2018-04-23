.class public final Landroid/support/v7/widget/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic oD:Landroid/support/v7/widget/RecyclerView;

.field final oU:Ljava/util/ArrayList;

.field oV:Ljava/util/ArrayList;

.field final oW:Ljava/util/ArrayList;

.field final oX:Ljava/util/List;

.field oY:I

.field oZ:I

.field pa:Landroid/support/v7/widget/ao;

.field pb:Landroid/support/v7/widget/ay;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 5496
    iput-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5497
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    .line 5498
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    .line 5500
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    .line 5502
    iget-object p1, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    .line 5503
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/aq;->oX:Ljava/util/List;

    .line 5505
    const/4 p1, 0x2

    iput p1, p0, Landroid/support/v7/widget/aq;->oY:I

    .line 5506
    iput p1, p0, Landroid/support/v7/widget/aq;->oZ:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 5918
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 5919
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5920
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5921
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/aq;->a(Landroid/view/ViewGroup;Z)V

    .line 5918
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5924
    :cond_1
    if-nez p2, :cond_2

    .line 5925
    return-void

    .line 5928
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 5929
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5930
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 5932
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 5933
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5934
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5936
    return-void
.end method


# virtual methods
.method public final V(I)I
    .locals 3

    .line 5686
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v0}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 5690
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v0, v0, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v0, :cond_1

    .line 5691
    return p1

    .line 5693
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a;->K(I)I

    move-result p1

    return p1

    .line 5687
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5688
    invoke-virtual {p1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W(I)Landroid/view/View;
    .locals 3

    .line 5711
    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/v7/widget/aq;->a(IZJ)Landroid/support/v7/widget/aA;

    move-result-object p1

    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    return-object p1
.end method

.method final X(I)V
    .locals 2

    .line 5998
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aA;

    .line 6002
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/aA;Z)V

    .line 6003
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6004
    return-void
.end method

.method final Y(I)Landroid/support/v7/widget/aA;
    .locals 9

    .line 6196
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 6200
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 6201
    iget-object v5, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/aA;

    .line 6202
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 6203
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6204
    return-object v5

    .line 6200
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6208
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v3, v3, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v3, :cond_4

    .line 6209
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v3, p1, v2}, Landroid/support/v7/widget/a;->j(II)I

    move-result p1

    .line 6210
    if-lez p1, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v3}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 6211
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v5

    .line 6212
    :goto_1
    if-ge v2, v0, :cond_4

    .line 6213
    iget-object p1, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/aA;

    .line 6214
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    iget-wide v7, p1, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 6215
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6216
    return-object p1

    .line 6212
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6221
    :cond_4
    return-object v1

    .line 6197
    :cond_5
    :goto_2
    return-object v1
.end method

.method public final Y(Landroid/view/View;)V
    .locals 3

    .line 5951
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v0

    .line 5952
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5953
    iget-object v1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5955
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5956
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->unScrap()V

    goto :goto_0

    .line 5957
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5958
    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 5960
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 5961
    return-void
.end method

.method final Z(Landroid/view/View;)V
    .locals 1

    .line 6125
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 6126
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1002(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aq;)Landroid/support/v7/widget/aq;

    .line 6127
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1102(Landroid/support/v7/widget/aA;Z)Z

    .line 6128
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 6129
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 6130
    return-void
.end method

.method final a(IZJ)Landroid/support/v7/widget/aA;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 5739
    if-ltz v1, :cond_29

    iget-object v5, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    invoke-virtual {v5}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v5

    if-lt v1, v5, :cond_0

    goto/16 :goto_12

    .line 5744
    :cond_0
    nop

    .line 5745
    nop

    .line 5747
    iget-object v5, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v5, v5, Landroid/support/v7/widget/ax;->pq:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 5748
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/aq;->Y(I)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5749
    if-eqz v5, :cond_1

    .line 5752
    move v9, v7

    goto :goto_0

    .line 5749
    :cond_1
    nop

    .line 5752
    move v9, v8

    goto :goto_0

    :cond_2
    move v9, v8

    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_c

    .line 5753
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/aq;->d(IZ)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5754
    if-eqz v5, :cond_c

    .line 5755
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v10, v10, Landroid/support/v7/widget/ax;->pq:Z

    goto :goto_2

    :cond_3
    iget v10, v5, Landroid/support/v7/widget/aA;->mPosition:I

    if-ltz v10, :cond_b

    iget v10, v5, Landroid/support/v7/widget/aA;->mPosition:I

    iget-object v11, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v11}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v11

    if-lt v10, v11, :cond_4

    goto :goto_4

    :cond_4
    iget-object v10, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v10, v10, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v10, :cond_5

    iget-object v10, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget v11, v5, Landroid/support/v7/widget/aA;->mPosition:I

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/V;->getItemViewType(I)I

    move-result v10

    iget v11, v5, Landroid/support/v7/widget/aA;->mItemViewType:I

    if-eq v10, v11, :cond_5

    :goto_1
    move v10, v8

    goto :goto_2

    :cond_5
    iget-object v10, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v10, v10, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v10, :cond_6

    iget-wide v10, v5, Landroid/support/v7/widget/aA;->mItemId:J

    iget-object v12, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget v13, v5, Landroid/support/v7/widget/aA;->mPosition:I

    invoke-virtual {v12, v13}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    move v10, v7

    :goto_2
    if-nez v10, :cond_a

    .line 5757
    if-nez v2, :cond_9

    .line 5760
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 5761
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5762
    iget-object v10, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v10, v11, v8}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5763
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->unScrap()V

    goto :goto_3

    .line 5764
    :cond_7
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 5765
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 5767
    :cond_8
    :goto_3
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/aq;->l(Landroid/support/v7/widget/aA;)V

    .line 5769
    :cond_9
    nop

    .line 5775
    const/4 v5, 0x0

    goto :goto_5

    .line 5771
    :cond_a
    nop

    .line 5775
    move v9, v7

    goto :goto_5

    .line 5755
    :cond_b
    :goto_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5775
    :cond_c
    :goto_5
    const-wide/16 v10, 0x0

    const-wide v12, 0x7fffffffffffffffL

    if-nez v5, :cond_19

    .line 5776
    iget-object v14, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v14, v14, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v14, v1}, Landroid/support/v7/widget/a;->K(I)I

    move-result v14

    .line 5777
    if-ltz v14, :cond_18

    iget-object v15, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v15}, Landroid/support/v7/widget/V;->getItemCount()I

    move-result v15

    if-lt v14, v15, :cond_d

    goto/16 :goto_9

    .line 5783
    :cond_d
    iget-object v15, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v15, v14}, Landroid/support/v7/widget/V;->getItemViewType(I)I

    move-result v15

    .line 5785
    iget-object v6, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v6, v6, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v6, :cond_e

    .line 5786
    iget-object v5, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {v5, v14}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v15, v2}, Landroid/support/v7/widget/aq;->a(JIZ)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5788
    if-eqz v5, :cond_e

    .line 5790
    iput v14, v5, Landroid/support/v7/widget/aA;->mPosition:I

    .line 5791
    nop

    .line 5794
    move v9, v7

    :cond_e
    if-nez v5, :cond_10

    iget-object v2, v0, Landroid/support/v7/widget/aq;->pb:Landroid/support/v7/widget/ay;

    if-eqz v2, :cond_10

    .line 5797
    iget-object v2, v0, Landroid/support/v7/widget/aq;->pb:Landroid/support/v7/widget/ay;

    .line 5798
    invoke-virtual {v2}, Landroid/support/v7/widget/ay;->bz()Landroid/view/View;

    move-result-object v2

    .line 5799
    if-eqz v2, :cond_10

    .line 5800
    iget-object v5, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v5

    .line 5801
    if-nez v5, :cond_f

    .line 5802
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 5804
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5805
    :cond_f
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5806
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 5808
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5812
    :cond_10
    if-nez v5, :cond_13

    .line 5817
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/aq;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ap;

    if-eqz v2, :cond_11

    iget-object v5, v2, Landroid/support/v7/widget/ap;->oQ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v2, v2, Landroid/support/v7/widget/ap;->oQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/support/v7/widget/aA;

    goto :goto_6

    .line 5818
    :cond_11
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_12

    .line 5819
    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->resetInternal()V

    .line 5820
    sget-boolean v2, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v2, :cond_12

    .line 5821
    iget-object v2, v6, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_12

    iget-object v2, v6, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v0, v2, v8}, Landroid/support/v7/widget/aq;->a(Landroid/view/ViewGroup;Z)V

    .line 5825
    :cond_12
    move-object v5, v6

    :cond_13
    if-nez v5, :cond_19

    .line 5826
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v5

    .line 5827
    cmp-long v2, p3, v12

    if-eqz v2, :cond_16

    iget-object v2, v0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    .line 5828
    invoke-virtual {v2, v15}, Landroid/support/v7/widget/ao;->U(I)Landroid/support/v7/widget/ap;

    move-result-object v2

    iget-wide v12, v2, Landroid/support/v7/widget/ap;->oS:J

    cmp-long v2, v12, v10

    if-eqz v2, :cond_15

    add-long/2addr v12, v5

    cmp-long v2, v12, p3

    if-gez v2, :cond_14

    goto :goto_7

    :cond_14
    move v2, v8

    goto :goto_8

    :cond_15
    :goto_7
    move v2, v7

    :goto_8
    if-nez v2, :cond_16

    .line 5830
    const/4 v0, 0x0

    return-object v0

    .line 5832
    :cond_16
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-object v12, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v12, v15}, Landroid/support/v7/widget/V;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aA;

    move-result-object v2

    .line 5833
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 5835
    iget-object v12, v2, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v12}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v12

    .line 5836
    if-eqz v12, :cond_17

    .line 5837
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v2, Landroid/support/v7/widget/aA;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5841
    :cond_17
    iget-object v12, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    .line 5842
    iget-object v14, v0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    sub-long/2addr v12, v5

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/ao;->U(I)Landroid/support/v7/widget/ap;

    move-result-object v5

    iget-wide v10, v5, Landroid/support/v7/widget/ap;->oS:J

    invoke-virtual {v14, v10, v11, v12, v13}, Landroid/support/v7/widget/ao;->a(JJ)J

    move-result-wide v10

    iput-wide v10, v5, Landroid/support/v7/widget/ap;->oS:J

    .line 5852
    move-object v5, v2

    goto :goto_a

    .line 5778
    :cond_18
    :goto_9
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inconsistency detected. Invalid item position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(offset:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").state:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5780
    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5852
    :cond_19
    :goto_a
    if-eqz v9, :cond_1a

    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v2, :cond_1a

    .line 5853
    const/16 v2, 0x2000

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 5854
    invoke-virtual {v5, v8, v2}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 5855
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->pt:Z

    if-eqz v2, :cond_1a

    .line 5856
    nop

    .line 5857
    invoke-static {v5}, Landroid/support/v7/widget/aa;->g(Landroid/support/v7/widget/aA;)I

    .line 5858
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/aa;

    iget-object v6, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5860
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    .line 5859
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/aa;->f(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object v2

    .line 5861
    iget-object v6, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5, v2}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;)V

    .line 5865
    :cond_1a
    nop

    .line 5866
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->pq:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5868
    iput v1, v5, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    goto :goto_b

    .line 5869
    :cond_1b
    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->needsUpdate()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_c

    .line 5879
    :cond_1c
    :goto_b
    move v1, v8

    goto/16 :goto_f

    .line 5875
    :cond_1d
    :goto_c
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/a;->K(I)I

    move-result v2

    .line 5876
    iget-object v6, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iput-object v6, v5, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v6, v5, Landroid/support/v7/widget/aA;->mItemViewType:I

    iget-object v10, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, p3, v12

    if-eqz v12, :cond_20

    iget-object v12, v0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    invoke-virtual {v12, v6}, Landroid/support/v7/widget/ao;->U(I)Landroid/support/v7/widget/ap;

    move-result-object v6

    iget-wide v12, v6, Landroid/support/v7/widget/ap;->oT:J

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-eqz v6, :cond_1f

    add-long/2addr v12, v10

    cmp-long v3, v12, p3

    if-gez v3, :cond_1e

    goto :goto_d

    :cond_1e
    move v3, v8

    goto :goto_e

    :cond_1f
    :goto_d
    move v3, v7

    :goto_e
    if-nez v3, :cond_20

    goto :goto_b

    :cond_20
    iget-object v3, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iput v2, v5, Landroid/support/v7/widget/aA;->mPosition:I

    iget-boolean v4, v3, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-eqz v4, :cond_21

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/V;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v5, Landroid/support/v7/widget/aA;->mItemId:J

    :cond_21
    const/16 v4, 0x207

    invoke-virtual {v5, v7, v4}, Landroid/support/v7/widget/aA;->setFlags(II)V

    const-string v4, "RV OnBindView"

    invoke-static {v4}, Landroid/support/v4/os/e;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->getUnmodifiedPayloads()Ljava/util/List;

    invoke-virtual {v3, v5, v2}, Landroid/support/v7/widget/V;->onBindViewHolder(Landroid/support/v7/widget/aA;I)V

    invoke-virtual {v5}, Landroid/support/v7/widget/aA;->clearPayload()V

    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/support/v7/widget/aj;

    if-eqz v3, :cond_22

    check-cast v2, Landroid/support/v7/widget/aj;

    iput-boolean v7, v2, Landroid/support/v7/widget/aj;->oM:Z

    :cond_22
    invoke-static {}, Landroid/support/v4/os/e;->endSection()V

    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    iget-object v4, v0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    iget v6, v5, Landroid/support/v7/widget/aA;->mItemViewType:I

    sub-long/2addr v2, v10

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/ao;->U(I)Landroid/support/v7/widget/ap;

    move-result-object v6

    iget-wide v10, v6, Landroid/support/v7/widget/ap;->oT:J

    invoke-virtual {v4, v10, v11, v2, v3}, Landroid/support/v7/widget/ao;->a(JJ)J

    move-result-wide v2

    iput-wide v2, v6, Landroid/support/v7/widget/ap;->oT:J

    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/s;->f(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_23

    invoke-static {v2, v7}, Landroid/support/v4/view/s;->d(Landroid/view/View;I)V

    :cond_23
    invoke-static {v2}, Landroid/support/v4/view/s;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_24

    const/16 v3, 0x4000

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/aA;->addFlags(I)V

    iget-object v3, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/aB;

    iget-object v3, v3, Landroid/support/v7/widget/aB;->pE:Landroid/support/v4/view/b;

    invoke-static {v2, v3}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    :cond_24
    iget-object v2, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v2, v2, Landroid/support/v7/widget/ax;->pq:Z

    if-eqz v2, :cond_25

    iput v1, v5, Landroid/support/v7/widget/aA;->mPreLayoutPosition:I

    .line 5879
    :cond_25
    move v1, v7

    :goto_f
    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 5881
    if-nez v2, :cond_26

    .line 5882
    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 5883
    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 5884
    :cond_26
    iget-object v3, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 5885
    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 5886
    iget-object v2, v5, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 5888
    :cond_27
    move-object v0, v2

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 5890
    :goto_10
    iput-object v5, v0, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    .line 5891
    if-eqz v9, :cond_28

    if-eqz v1, :cond_28

    goto :goto_11

    :cond_28
    move v7, v8

    :goto_11
    iput-boolean v7, v0, Landroid/support/v7/widget/aj;->oN:Z

    .line 5892
    return-object v5

    .line 5740
    :cond_29
    :goto_12
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid item position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Item count:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    .line 5741
    invoke-virtual {v1}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 5742
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method final a(JIZ)Landroid/support/v7/widget/aA;
    .locals 5

    .line 6286
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6287
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 6288
    iget-object v1, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aA;

    .line 6289
    iget-wide v2, v1, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6290
    iget v2, v1, Landroid/support/v7/widget/aA;->mItemViewType:I

    if-ne p3, v2, :cond_1

    .line 6291
    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6292
    invoke-virtual {v1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6301
    iget-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean p1, p1, Landroid/support/v7/widget/ax;->pq:Z

    if-nez p1, :cond_0

    .line 6302
    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 6306
    :cond_0
    return-object v1

    .line 6307
    :cond_1
    if-nez p4, :cond_2

    .line 6311
    iget-object v2, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6312
    iget-object v2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6313
    iget-object v1, v1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->Z(Landroid/view/View;)V

    .line 6287
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6319
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6320
    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 6321
    iget-object v2, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/aA;

    .line 6322
    iget-wide v3, v2, Landroid/support/v7/widget/aA;->mItemId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_6

    .line 6323
    iget v3, v2, Landroid/support/v7/widget/aA;->mItemViewType:I

    if-ne p3, v3, :cond_5

    .line 6324
    if-nez p4, :cond_4

    .line 6325
    iget-object p1, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6327
    :cond_4
    return-object v2

    .line 6328
    :cond_5
    if-nez p4, :cond_6

    .line 6329
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->X(I)V

    .line 6330
    return-object v1

    .line 6320
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6334
    :cond_7
    return-object v1
.end method

.method final a(Landroid/support/v7/widget/aA;Z)V
    .locals 3

    .line 6107
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/aA;)V

    .line 6108
    const/16 v0, 0x4000

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6109
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/aA;->setFlags(II)V

    .line 6110
    iget-object v0, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 6112
    :cond_0
    if-eqz p2, :cond_3

    .line 6113
    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/ar;

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/ar;

    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/V;->onViewRecycled(Landroid/support/v7/widget/aA;)V

    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/aN;->q(Landroid/support/v7/widget/aA;)V

    .line 6115
    :cond_3
    iput-object v2, p1, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6116
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/ao;->k(Landroid/support/v7/widget/aA;)V

    .line 6117
    return-void
.end method

.method final aa(Landroid/view/View;)V
    .locals 2

    .line 6142
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 6143
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6144
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 6154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    .line 6156
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/aA;->setScrapContainer(Landroid/support/v7/widget/aq;Z)V

    .line 6157
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6159
    return-void

    .line 6145
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    iget-boolean v0, v0, Landroid/support/v7/widget/V;->mHasStableIds:Z

    if-nez v0, :cond_3

    .line 6146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 6148
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6150
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/widget/aA;->setScrapContainer(Landroid/support/v7/widget/aq;Z)V

    .line 6151
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final bw()V
    .locals 3

    .line 5534
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/af;

    iget v0, v0, Landroid/support/v7/widget/af;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5535
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/aq;->oY:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/aq;->oZ:I

    .line 5538
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5539
    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/aq;->oZ:I

    if-le v1, v2, :cond_1

    .line 5540
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->X(I)V

    .line 5539
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5542
    :cond_1
    return-void
.end method

.method final bx()V
    .locals 1

    .line 5973
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5974
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5975
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/aq;->X(I)V

    .line 5974
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5977
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5978
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5979
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v0}, Landroid/support/v7/widget/y;->bi()V

    .line 5981
    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 5519
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5520
    invoke-virtual {p0}, Landroid/support/v7/widget/aq;->bx()V

    .line 5521
    return-void
.end method

.method final d(IZ)Landroid/support/v7/widget/aA;
    .locals 8

    .line 6232
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6235
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6236
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aA;

    .line 6237
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 6238
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-boolean v4, v4, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6239
    :cond_0
    const/16 p1, 0x20

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6240
    return-object v3

    .line 6235
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6244
    :cond_2
    const/4 v0, 0x0

    if-nez p2, :cond_8

    .line 6245
    iget-object v2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v3, v2, Landroid/support/v7/widget/d;->mA:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    iget-object v5, v2, Landroid/support/v7/widget/d;->mA:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v6, v2, Landroid/support/v7/widget/d;->my:Landroid/support/v7/widget/f;

    invoke-interface {v6, v5}, Landroid/support/v7/widget/f;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6246
    :cond_4
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_8

    .line 6249
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/aA;

    move-result-object p1

    .line 6250
    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    iget-object v0, p2, Landroid/support/v7/widget/d;->my:Landroid/support/v7/widget/f;

    invoke-interface {v0, v5}, Landroid/support/v7/widget/f;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_5

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "view is not a child, cannot hide "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v1, p2, Landroid/support/v7/widget/d;->mz:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/e;->get(I)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "trying to unhide a view that was not hidden"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object v1, p2, Landroid/support/v7/widget/d;->mz:Landroid/support/v7/widget/e;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/e;->clear(I)V

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/d;->L(Landroid/view/View;)Z

    .line 6251
    iget-object p2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {p2, v5}, Landroid/support/v7/widget/d;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 6252
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 6253
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 6254
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6256
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/d;->detachViewFromParent(I)V

    .line 6257
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/aq;->aa(Landroid/view/View;)V

    .line 6258
    const/16 p2, 0x2020

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/aA;->addFlags(I)V

    .line 6260
    return-object p1

    .line 6265
    :cond_8
    iget-object v2, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6266
    :goto_3
    if-ge v1, v2, :cond_b

    .line 6267
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/aA;

    .line 6270
    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_a

    .line 6271
    if-nez p2, :cond_9

    .line 6272
    iget-object p1, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6278
    :cond_9
    return-object v3

    .line 6266
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 6281
    :cond_b
    return-object v0
.end method

.method final getRecycledViewPool()Landroid/support/v7/widget/ao;
    .locals 1

    .line 6442
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    if-nez v0, :cond_0

    .line 6443
    new-instance v0, Landroid/support/v7/widget/ao;

    invoke-direct {v0}, Landroid/support/v7/widget/ao;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    .line 6445
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->pa:Landroid/support/v7/widget/ao;

    return-object v0
.end method

.method final l(Landroid/support/v7/widget/aA;)V
    .locals 6

    .line 6012
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 6019
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6020
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 6022
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6025
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6026
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    .line 6028
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6031
    :cond_2
    nop

    .line 6032
    invoke-static {p1}, Landroid/support/v7/widget/aA;->access$900(Landroid/support/v7/widget/aA;)Z

    move-result v0

    .line 6033
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/V;

    .line 6035
    invoke-virtual {v3}, Landroid/support/v7/widget/V;->onFailedToRecycleView$cb3a904()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6036
    move v3, v2

    goto :goto_0

    .line 6035
    :cond_3
    nop

    .line 6036
    move v3, v1

    .line 6037
    :goto_0
    nop

    .line 6042
    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 6092
    :cond_4
    move v3, v1

    goto :goto_4

    .line 6043
    :cond_5
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/aq;->oZ:I

    if-lez v3, :cond_9

    const/16 v3, 0x20e

    .line 6044
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/aA;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 6049
    iget-object v3, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6050
    iget v4, p0, Landroid/support/v7/widget/aq;->oZ:I

    if-lt v3, v4, :cond_6

    if-lez v3, :cond_6

    .line 6051
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/aq;->X(I)V

    .line 6052
    add-int/lit8 v3, v3, -0x1

    .line 6055
    :cond_6
    nop

    .line 6056
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$800()Z

    move-result v4

    if-eqz v4, :cond_8

    if-lez v3, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    iget v5, p1, Landroid/support/v7/widget/aA;->mPosition:I

    .line 6058
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/y;->R(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 6060
    add-int/lit8 v3, v3, -0x1

    .line 6061
    :goto_2
    if-ltz v3, :cond_7

    .line 6062
    iget-object v4, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/aA;

    iget v4, v4, Landroid/support/v7/widget/aA;->mPosition:I

    .line 6063
    iget-object v5, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/y;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/y;->R(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6064
    add-int/lit8 v3, v3, -0x1

    .line 6067
    goto :goto_2

    .line 6068
    :cond_7
    add-int/2addr v3, v2

    .line 6070
    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/aq;->oW:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6071
    nop

    .line 6073
    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v1

    :goto_3
    if-nez v3, :cond_a

    .line 6074
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/aq;->a(Landroid/support/v7/widget/aA;Z)V

    .line 6075
    nop

    .line 6092
    move v1, v2

    :cond_a
    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/aN;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/aN;->q(Landroid/support/v7/widget/aA;)V

    .line 6093
    if-nez v3, :cond_b

    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    .line 6094
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/aA;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 6096
    :cond_b
    return-void

    .line 6013
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6015
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/aA;->itemView:Landroid/view/View;

    .line 6016
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d

    move v1, v2

    nop

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/aq;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final m(Landroid/support/v7/widget/aA;)V
    .locals 1

    .line 6168
    invoke-static {p1}, Landroid/support/v7/widget/aA;->access$1100(Landroid/support/v7/widget/aA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6169
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6171
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aq;->oU:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6173
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1002(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aq;)Landroid/support/v7/widget/aq;

    .line 6174
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/aA;->access$1102(Landroid/support/v7/widget/aA;Z)Z

    .line 6175
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->clearReturnedFromScrapFlag()V

    .line 6176
    return-void
.end method
