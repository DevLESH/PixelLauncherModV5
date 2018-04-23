.class Landroid/support/v7/widget/as;
.super Landroid/support/v7/widget/X;
.source "SourceFile"


# instance fields
.field final synthetic oD:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 5162
    iput-object p1, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/X;-><init>()V

    .line 5163
    return-void
.end method


# virtual methods
.method final by()V
    .locals 2

    .line 5209
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5210
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/s;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 5212
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5213
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5215
    return-void
.end method

.method public final onChanged()V
    .locals 2

    .line 5167
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5168
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->pp:Z

    .line 5170
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 5171
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->ba()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5172
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5174
    :cond_0
    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 4

    .line 5178
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5179
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    const/4 v1, 0x1

    if-lez p2, :cond_0

    iget-object v2, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, p2, p3}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroid/support/v7/widget/a;->mu:I

    or-int/2addr p1, v3

    iput p1, v0, Landroid/support/v7/widget/a;->mu:I

    iget-object p1, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5180
    invoke-virtual {p0}, Landroid/support/v7/widget/as;->by()V

    .line 5182
    :cond_1
    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 4

    .line 5186
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5187
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    const/4 v2, 0x1

    if-lez p2, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroid/support/v7/widget/a;->mu:I

    or-int/2addr p1, v2

    iput p1, v0, Landroid/support/v7/widget/a;->mu:I

    iget-object p1, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5188
    invoke-virtual {p0}, Landroid/support/v7/widget/as;->by()V

    .line 5190
    :cond_1
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 5

    .line 5194
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5195
    iget-object v0, p0, Landroid/support/v7/widget/as;->oD:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/a;

    const/4 v2, 0x1

    if-lez p2, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v0, Landroid/support/v7/widget/a;->mu:I

    or-int/2addr p1, v4

    iput p1, v0, Landroid/support/v7/widget/a;->mu:I

    iget-object p1, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5196
    invoke-virtual {p0}, Landroid/support/v7/widget/as;->by()V

    .line 5198
    :cond_1
    return-void
.end method
