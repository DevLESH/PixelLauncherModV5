.class Landroid/support/v7/widget/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mOrientationHelper:Landroid/support/v7/widget/M;

.field mPosition:I

.field og:I

.field oh:Z

.field oi:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2379
    invoke-virtual {p0}, Landroid/support/v7/widget/F;->reset()V

    .line 2380
    return-void
.end method


# virtual methods
.method final bj()V
    .locals 1

    .line 2394
    iget-boolean v0, p0, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 2395
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 2396
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/F;->og:I

    .line 2397
    return-void
.end method

.method public final l(Landroid/view/View;I)V
    .locals 4

    .line 2416
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bl()I

    move-result v0

    .line 2417
    if-ltz v0, :cond_0

    .line 2418
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/F;->m(Landroid/view/View;I)V

    .line 2419
    return-void

    .line 2421
    :cond_0
    iput p2, p0, Landroid/support/v7/widget/F;->mPosition:I

    .line 2422
    iget-boolean p2, p0, Landroid/support/v7/widget/F;->oh:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 2423
    iget-object p2, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p2}, Landroid/support/v7/widget/M;->bn()I

    move-result p2

    sub-int/2addr p2, v0

    .line 2424
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v0

    .line 2425
    sub-int/2addr p2, v0

    .line 2426
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bn()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/support/v7/widget/F;->og:I

    .line 2428
    if-lez p2, :cond_1

    .line 2429
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v0

    .line 2430
    iget v2, p0, Landroid/support/v7/widget/F;->og:I

    sub-int/2addr v2, v0

    .line 2431
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    .line 2432
    iget-object v3, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p1, v0

    .line 2434
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 2435
    sub-int/2addr v2, v0

    .line 2436
    if-gez v2, :cond_1

    .line 2438
    iget p1, p0, Landroid/support/v7/widget/F;->og:I

    neg-int v0, v2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/F;->og:I

    .line 2441
    :cond_1
    return-void

    .line 2442
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result p2

    .line 2443
    iget-object v2, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2}, Landroid/support/v7/widget/M;->bm()I

    move-result v2

    sub-int v2, p2, v2

    .line 2444
    iput p2, p0, Landroid/support/v7/widget/F;->og:I

    .line 2445
    if-lez v2, :cond_3

    .line 2446
    iget-object v3, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 2447
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v3

    add-int/2addr p2, v3

    .line 2448
    iget-object v3, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bn()I

    move-result v3

    sub-int/2addr v3, v0

    .line 2450
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 2451
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v3, p1

    .line 2452
    iget-object p1, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {p1}, Landroid/support/v7/widget/M;->bn()I

    move-result p1

    .line 2453
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2454
    sub-int/2addr p1, p2

    .line 2455
    if-gez p1, :cond_3

    .line 2456
    iget p2, p0, Landroid/support/v7/widget/F;->og:I

    neg-int p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/support/v7/widget/F;->og:I

    .line 2460
    :cond_3
    return-void
.end method

.method public final m(Landroid/view/View;I)V
    .locals 1

    .line 2463
    iget-boolean v0, p0, Landroid/support/v7/widget/F;->oh:Z

    if-eqz v0, :cond_0

    .line 2464
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 2465
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bl()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/F;->og:I

    goto :goto_0

    .line 2467
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/F;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/F;->og:I

    .line 2470
    :goto_0
    iput p2, p0, Landroid/support/v7/widget/F;->mPosition:I

    .line 2471
    return-void
.end method

.method final reset()V
    .locals 1

    .line 2383
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/F;->mPosition:I

    .line 2384
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/F;->og:I

    .line 2385
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/F;->oh:Z

    .line 2386
    iput-boolean v0, p0, Landroid/support/v7/widget/F;->oi:Z

    .line 2387
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/F;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/F;->og:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/F;->oh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/F;->oi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
