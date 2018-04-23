.class public Landroid/support/v7/widget/W;
.super Landroid/database/Observable;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11702
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(IILjava/lang/Object;)V
    .locals 2

    .line 11727
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11728
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/X;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 11727
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11730
    :cond_0
    return-void
.end method

.method public final notifyChanged()V
    .locals 2

    .line 11712
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11713
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1}, Landroid/support/v7/widget/X;->onChanged()V

    .line 11712
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11715
    :cond_0
    return-void
.end method

.method public final q(II)V
    .locals 2

    .line 11737
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11738
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/X;->onItemRangeInserted(II)V

    .line 11737
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11740
    :cond_0
    return-void
.end method

.method public final r(II)V
    .locals 2

    .line 11747
    iget-object v0, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 11748
    iget-object v1, p0, Landroid/support/v7/widget/W;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/X;

    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/X;->onItemRangeRemoved(II)V

    .line 11747
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 11750
    :cond_0
    return-void
.end method
