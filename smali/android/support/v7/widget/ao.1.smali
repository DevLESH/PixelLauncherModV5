.class public Landroid/support/v7/widget/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field oO:Landroid/util/SparseArray;

.field oP:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5290
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    .line 5292
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ao;->oP:I

    return-void
.end method


# virtual methods
.method final U(I)Landroid/support/v7/widget/ap;
    .locals 2

    .line 5415
    iget-object v0, p0, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 5416
    if-nez v0, :cond_0

    .line 5417
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0}, Landroid/support/v7/widget/ap;-><init>()V

    .line 5418
    iget-object v1, p0, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5420
    :cond_0
    return-object v0
.end method

.method final a(JJ)J
    .locals 4

    .line 5353
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5354
    return-wide p3

    .line 5356
    :cond_0
    const-wide/16 v0, 0x4

    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method final bv()V
    .locals 1

    .line 5382
    iget v0, p0, Landroid/support/v7/widget/ao;->oP:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ao;->oP:I

    .line 5383
    return-void
.end method

.method public final clear()V
    .locals 2

    .line 5295
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5296
    iget-object v1, p0, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ap;

    .line 5297
    iget-object v1, v1, Landroid/support/v7/widget/ap;->oQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5299
    :cond_0
    return-void
.end method

.method final detach()V
    .locals 1

    .line 5386
    iget v0, p0, Landroid/support/v7/widget/ao;->oP:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ao;->oP:I

    .line 5387
    return-void
.end method

.method public final k(Landroid/support/v7/widget/aA;)V
    .locals 3

    .line 5340
    iget v0, p1, Landroid/support/v7/widget/aA;->mItemViewType:I

    .line 5341
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ao;->U(I)Landroid/support/v7/widget/ap;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/ap;->oQ:Ljava/util/ArrayList;

    .line 5342
    iget-object v2, p0, Landroid/support/v7/widget/ao;->oO:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    iget v0, v0, Landroid/support/v7/widget/ap;->oR:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 5343
    return-void

    .line 5348
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/aA;->resetInternal()V

    .line 5349
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5350
    return-void
.end method

.method public final s(II)V
    .locals 1

    .line 5302
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ao;->U(I)Landroid/support/v7/widget/ap;

    move-result-object p1

    .line 5303
    iput p2, p1, Landroid/support/v7/widget/ap;->oR:I

    .line 5304
    iget-object p1, p1, Landroid/support/v7/widget/ap;->oQ:Ljava/util/ArrayList;

    .line 5305
    if-eqz p1, :cond_0

    .line 5306
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 5307
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5310
    :cond_0
    return-void
.end method
