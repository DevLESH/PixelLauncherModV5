.class public Landroid/support/v7/widget/A;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field public mSpanSizeLookup:Landroid/support/v7/widget/D;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 96
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 43
    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v7/widget/A;->mPendingSpanCountChange:Z

    .line 44
    const/4 p2, -0x1

    iput p2, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    .line 55
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance p2, Landroid/support/v7/widget/B;

    invoke-direct {p2}, Landroid/support/v7/widget/B;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    .line 59
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/A;->mDecorInsets:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/A;->setSpanCount(I)V

    .line 98
    return-void
.end method

.method private assignSpans$1d107c69(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;IZ)V
    .locals 4

    .line 770
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 771
    nop

    .line 772
    nop

    .line 773
    nop

    .line 779
    const/4 v0, 0x1

    move p4, v0

    move v0, p3

    move p3, v1

    goto :goto_0

    .line 775
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 776
    nop

    .line 777
    nop

    .line 779
    move p4, v0

    .line 780
    :goto_0
    if-eq p3, v0, :cond_1

    .line 781
    iget-object v2, p0, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    aget-object v2, v2, p3

    .line 782
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/C;

    .line 783
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/A;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/A;->getSpanSize(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v2

    iput v2, v3, Landroid/support/v7/widget/C;->nW:I

    .line 784
    iput v1, v3, Landroid/support/v7/widget/C;->nV:I

    .line 785
    iget v2, v3, Landroid/support/v7/widget/C;->nW:I

    add-int/2addr v1, v2

    .line 780
    add-int/2addr p3, p4

    goto :goto_0

    .line 787
    :cond_1
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 7

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v3, v0

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_0

    array-length v3, v0

    sub-int/2addr v3, v2

    aget v3, v0, v3

    if-eq v3, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    :cond_1
    const/4 v3, 0x0

    aput v3, v0, v3

    div-int v4, p1, v1

    rem-int/2addr p1, v1

    move v5, v3

    :goto_0
    if-gt v2, v1, :cond_3

    add-int/2addr v3, p1

    if-lez v3, :cond_2

    sub-int v6, v1, v3

    if-ge v6, p1, :cond_2

    add-int/lit8 v6, v4, 0x1

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    .line 310
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-eq v0, v1, :cond_1

    .line 364
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    .line 366
    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I
    .locals 1

    .line 450
    iget-boolean p2, p2, Landroid/support/v7/widget/ax;->pq:Z

    if-nez p2, :cond_0

    .line 451
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget p2, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/D;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    .line 453
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/aq;->V(I)I

    move-result p1

    .line 454
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 459
    const-string p1, "GridLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find span size for pre layout position. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 p1, 0x0

    return p1

    .line 462
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget p3, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/D;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I
    .locals 1

    .line 466
    iget-boolean p2, p2, Landroid/support/v7/widget/ax;->pq:Z

    if-nez p2, :cond_0

    .line 467
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget p2, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroid/support/v7/widget/D;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    .line 469
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 470
    if-eq p2, v0, :cond_1

    .line 471
    return p2

    .line 473
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/aq;->V(I)I

    move-result p1

    .line 474
    if-ne p1, v0, :cond_2

    .line 479
    const-string p1, "GridLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 p1, 0x0

    return p1

    .line 483
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget p3, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroid/support/v7/widget/D;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanSize(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I
    .locals 1

    .line 487
    iget-boolean p2, p2, Landroid/support/v7/widget/ax;->pq:Z

    if-nez p2, :cond_0

    .line 488
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result p1

    return p1

    .line 490
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    .line 491
    if-eq p2, v0, :cond_1

    .line 492
    return p2

    .line 494
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/aq;->V(I)I

    move-result p1

    .line 495
    if-ne p1, v0, :cond_2

    .line 500
    const-string p1, "GridLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 p1, 0x1

    return p1

    .line 504
    :cond_2
    iget-object p2, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/C;

    .line 712
    iget-object v1, v0, Landroid/support/v7/widget/C;->mDecorInsets:Landroid/graphics/Rect;

    .line 713
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/C;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/C;->bottomMargin:I

    add-int/2addr v2, v3

    .line 715
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/C;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/support/v7/widget/C;->rightMargin:I

    add-int/2addr v3, v1

    .line 717
    iget v1, v0, Landroid/support/v7/widget/C;->nV:I

    iget v4, v0, Landroid/support/v7/widget/C;->nW:I

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/widget/A;->getSpaceForSpanRange(II)I

    move-result v1

    .line 720
    iget v4, p0, Landroid/support/v7/widget/A;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 721
    iget v4, v0, Landroid/support/v7/widget/C;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroid/support/v7/widget/A;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 723
    iget-object v1, p0, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bo()I

    move-result v1

    iget v3, p0, Landroid/support/v7/widget/af;->mHeightMode:I

    iget v0, v0, Landroid/support/v7/widget/C;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroid/support/v7/widget/A;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0

    .line 726
    :cond_0
    iget v4, v0, Landroid/support/v7/widget/C;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroid/support/v7/widget/A;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 728
    iget-object v1, p0, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bo()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/af;->mWidthMode:I

    iget v0, v0, Landroid/support/v7/widget/C;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroid/support/v7/widget/A;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 731
    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v7/widget/A;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 732
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    .line 754
    if-eqz p4, :cond_0

    .line 755
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/A;->shouldReMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z

    move-result p4

    goto :goto_0

    .line 757
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/A;->shouldMeasureChild(Landroid/view/View;IILandroid/support/v7/widget/aj;)Z

    move-result p4

    .line 759
    :goto_0
    if-eqz p4, :cond_1

    .line 760
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 762
    :cond_1
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    .line 275
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    iget v0, p0, Landroid/support/v7/widget/af;->mWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 278
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/af;->mHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 280
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/A;->calculateItemBorders(I)V

    .line 281
    return-void
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/support/v7/widget/aj;)Z
    .locals 0

    .line 251
    instance-of p1, p1, Landroid/support/v7/widget/C;

    return p1
.end method

.method final collectPrefetchPositionsForLayoutState(Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/ai;)V
    .locals 5

    .line 510
    iget v0, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    .line 511
    nop

    .line 512
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/ax;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 513
    iget v3, p2, Landroid/support/v7/widget/H;->nZ:I

    .line 514
    iget v4, p2, Landroid/support/v7/widget/H;->om:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroid/support/v7/widget/ai;->o(II)V

    .line 515
    iget-object v4, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result v3

    .line 516
    sub-int/2addr v2, v3

    .line 517
    iget v3, p2, Landroid/support/v7/widget/H;->nZ:I

    iget v4, p2, Landroid/support/v7/widget/H;->oa:I

    add-int/2addr v3, v4

    iput v3, p2, Landroid/support/v7/widget/H;->nZ:I

    .line 518
    add-int/lit8 v0, v0, 0x1

    .line 519
    goto :goto_0

    .line 520
    :cond_0
    return-void
.end method

.method final findReferenceChild(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;III)Landroid/view/View;
    .locals 7

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->ensureLayoutState()V

    .line 417
    nop

    .line 418
    nop

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->bm()I

    move-result v0

    .line 420
    iget-object v1, p0, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v1}, Landroid/support/v7/widget/M;->bn()I

    move-result v1

    .line 421
    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 423
    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_5

    .line 424
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 425
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/A;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 426
    if-ltz v6, :cond_4

    if-ge v6, p5, :cond_4

    .line 427
    invoke-direct {p0, p1, p2, v6}, Landroid/support/v7/widget/A;->getSpanIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v6

    .line 428
    if-nez v6, :cond_4

    .line 429
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/aj;

    iget-object v6, v6, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v6}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 432
    if-nez v4, :cond_4

    .line 433
    nop

    .line 423
    move-object v4, v5

    goto :goto_3

    .line 435
    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/M;->Q(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    .line 436
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/M;->R(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_2

    goto :goto_2

    .line 441
    :cond_2
    return-object v5

    .line 437
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 438
    nop

    .line 423
    move-object v3, v5

    :cond_4
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    .line 445
    :cond_5
    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    return-object v4
.end method

.method public final generateDefaultLayoutParams()Landroid/support/v7/widget/aj;
    .locals 3

    .line 226
    iget v0, p0, Landroid/support/v7/widget/A;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/C;-><init>(II)V

    return-object v0

    .line 230
    :cond_0
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/C;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 237
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/aj;
    .locals 1

    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/support/v7/widget/C;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/C;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 245
    :cond_0
    new-instance v0, Landroid/support/v7/widget/C;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/C;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final getColumnCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 2

    .line 131
    iget v0, p0, Landroid/support/v7/widget/A;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget p1, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    return p1

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 135
    const/4 p1, 0x0

    return p1

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/A;->getSpanGroupIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 1

    .line 117
    iget v0, p0, Landroid/support/v7/widget/A;->mOrientation:I

    if-nez v0, :cond_0

    .line 118
    iget p1, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    return p1

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 121
    const/4 p1, 0x0

    return p1

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/A;->getSpanGroupIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method final getSpaceForSpanRange(II)I
    .locals 3

    .line 343
    iget v0, p0, Landroid/support/v7/widget/A;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v1, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v2, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget p1, v1, v2

    sub-int/2addr v0, p1

    return v0

    .line 347
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    iget-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method final layoutChunk(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/H;Landroid/support/v7/widget/G;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 525
    move-object/from16 v7, p4

    iget-object v3, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3}, Landroid/support/v7/widget/M;->bp()I

    move-result v3

    .line 526
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    .line 527
    move v9, v8

    goto :goto_0

    .line 526
    :cond_0
    nop

    .line 527
    move v9, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v10

    if-lez v10, :cond_1

    iget-object v10, v6, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v11, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    aget v10, v10, v11

    goto :goto_1

    .line 531
    :cond_1
    move v10, v5

    :goto_1
    if-eqz v9, :cond_2

    .line 532
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/A;->updateMeasurements()V

    .line 534
    :cond_2
    iget v11, v2, Landroid/support/v7/widget/H;->oa:I

    if-ne v11, v8, :cond_3

    .line 536
    move v11, v8

    goto :goto_2

    .line 534
    :cond_3
    nop

    .line 536
    move v11, v5

    .line 537
    :goto_2
    iget v12, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    .line 539
    if-nez v11, :cond_4

    .line 540
    iget v12, v2, Landroid/support/v7/widget/H;->nZ:I

    invoke-direct {v6, v0, v1, v12}, Landroid/support/v7/widget/A;->getSpanIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v12

    .line 541
    iget v13, v2, Landroid/support/v7/widget/H;->nZ:I

    invoke-direct {v6, v0, v1, v13}, Landroid/support/v7/widget/A;->getSpanSize(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v13

    .line 542
    add-int/2addr v12, v13

    .line 544
    :cond_4
    move v13, v12

    move v12, v5

    :goto_3
    iget v14, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    if-ge v12, v14, :cond_6

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/ax;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-lez v13, :cond_6

    .line 545
    iget v14, v2, Landroid/support/v7/widget/H;->nZ:I

    .line 546
    invoke-direct {v6, v0, v1, v14}, Landroid/support/v7/widget/A;->getSpanSize(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v15

    .line 547
    iget v4, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    if-le v15, v4, :cond_5

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item at position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_5
    sub-int/2addr v13, v15

    .line 553
    if-ltz v13, :cond_6

    .line 554
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/aq;)Landroid/view/View;

    move-result-object v4

    .line 557
    if-eqz v4, :cond_6

    .line 558
    iget-object v14, v6, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    aput-object v4, v14, v12

    .line 562
    add-int/lit8 v12, v12, 0x1

    .line 563
    nop

    .line 544
    const/high16 v4, 0x40000000    # 2.0f

    goto :goto_3

    .line 565
    :cond_6
    if-nez v12, :cond_7

    .line 566
    iput-boolean v8, v7, Landroid/support/v7/widget/G;->mFinished:Z

    .line 567
    return-void

    .line 570
    :cond_7
    nop

    .line 571
    const/4 v4, 0x0

    .line 574
    invoke-direct {v6, v0, v1, v12, v11}, Landroid/support/v7/widget/A;->assignSpans$1d107c69(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;IZ)V

    .line 575
    move v0, v5

    move v1, v0

    :goto_4
    const/4 v13, -0x1

    if-ge v0, v12, :cond_d

    .line 576
    iget-object v14, v6, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    aget-object v14, v14, v0

    .line 577
    iget-object v15, v2, Landroid/support/v7/widget/H;->oq:Ljava/util/List;

    if-nez v15, :cond_9

    .line 578
    if-eqz v11, :cond_8

    .line 579
    invoke-super {v6, v14, v13, v5}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_5

    .line 581
    :cond_8
    invoke-super {v6, v14, v5, v5}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_5

    .line 584
    :cond_9
    if-eqz v11, :cond_a

    .line 585
    invoke-super {v6, v14, v13, v8}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    goto :goto_5

    .line 587
    :cond_a
    invoke-super {v6, v14, v5, v8}, Landroid/support/v7/widget/af;->addViewInt(Landroid/view/View;IZ)V

    .line 590
    :goto_5
    iget-object v13, v6, Landroid/support/v7/widget/A;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v14, v13}, Landroid/support/v7/widget/A;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    invoke-direct {v6, v14, v3, v5}, Landroid/support/v7/widget/A;->measureChild(Landroid/view/View;IZ)V

    .line 593
    iget-object v13, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v13, v14}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v13

    .line 594
    if-le v13, v1, :cond_b

    .line 595
    nop

    .line 597
    move v1, v13

    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v7/widget/C;

    .line 598
    const/high16 v15, 0x3f800000    # 1.0f

    iget-object v5, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v5, v14}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v15, v5

    iget v5, v13, Landroid/support/v7/widget/C;->nW:I

    int-to-float v5, v5

    div-float/2addr v15, v5

    .line 600
    cmpl-float v5, v15, v4

    if-lez v5, :cond_c

    .line 601
    nop

    .line 575
    move v4, v15

    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_4

    .line 604
    :cond_d
    if-eqz v9, :cond_f

    .line 606
    iget v0, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v6, v0}, Landroid/support/v7/widget/A;->calculateItemBorders(I)V

    .line 608
    nop

    .line 609
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v0, v12, :cond_f

    .line 610
    iget-object v3, v6, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 611
    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v6, v3, v4, v8}, Landroid/support/v7/widget/A;->measureChild(Landroid/view/View;IZ)V

    .line 612
    iget-object v4, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v3

    .line 613
    if-le v3, v1, :cond_e

    .line 614
    nop

    .line 609
    move v1, v3

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 621
    :cond_f
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v12, :cond_12

    .line 622
    iget-object v3, v6, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    aget-object v3, v3, v0

    .line 623
    iget-object v4, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/M;->U(Landroid/view/View;)I

    move-result v4

    if-eq v4, v1, :cond_11

    .line 624
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/C;

    .line 625
    iget-object v5, v4, Landroid/support/v7/widget/C;->mDecorInsets:Landroid/graphics/Rect;

    .line 626
    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v4, Landroid/support/v7/widget/C;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v4, Landroid/support/v7/widget/C;->bottomMargin:I

    add-int/2addr v9, v10

    .line 628
    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v5

    iget v5, v4, Landroid/support/v7/widget/C;->leftMargin:I

    add-int/2addr v10, v5

    iget v5, v4, Landroid/support/v7/widget/C;->rightMargin:I

    add-int/2addr v10, v5

    .line 630
    iget v5, v4, Landroid/support/v7/widget/C;->nV:I

    iget v11, v4, Landroid/support/v7/widget/C;->nW:I

    invoke-virtual {v6, v5, v11}, Landroid/support/v7/widget/A;->getSpaceForSpanRange(II)I

    move-result v5

    .line 633
    iget v11, v6, Landroid/support/v7/widget/A;->mOrientation:I

    if-ne v11, v8, :cond_10

    .line 634
    iget v4, v4, Landroid/support/v7/widget/C;->width:I

    const/4 v11, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5, v14, v10, v4, v11}, Landroid/support/v7/widget/A;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    .line 636
    sub-int v5, v1, v9

    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 644
    move v10, v4

    goto :goto_8

    .line 639
    :cond_10
    const/4 v11, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    sub-int v10, v1, v10

    invoke-static {v10, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 641
    iget v4, v4, Landroid/support/v7/widget/C;->height:I

    invoke-static {v5, v14, v9, v4, v11}, Landroid/support/v7/widget/A;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 644
    :goto_8
    invoke-direct {v6, v3, v10, v5, v8}, Landroid/support/v7/widget/A;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_9

    .line 621
    :cond_11
    const/4 v11, 0x0

    const/high16 v14, 0x40000000    # 2.0f

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 648
    :cond_12
    const/4 v11, 0x0

    iput v1, v7, Landroid/support/v7/widget/G;->oj:I

    .line 650
    nop

    .line 651
    iget v0, v6, Landroid/support/v7/widget/A;->mOrientation:I

    if-ne v0, v8, :cond_14

    .line 652
    iget v0, v2, Landroid/support/v7/widget/H;->ob:I

    if-ne v0, v13, :cond_13

    .line 653
    iget v5, v2, Landroid/support/v7/widget/H;->mOffset:I

    .line 654
    sub-int v0, v5, v1

    .line 668
    move v1, v0

    move v2, v5

    :goto_a
    move v0, v11

    move v5, v0

    goto :goto_b

    .line 656
    :cond_13
    iget v5, v2, Landroid/support/v7/widget/H;->mOffset:I

    .line 657
    add-int v0, v5, v1

    .line 668
    move v2, v0

    move v1, v5

    goto :goto_a

    .line 660
    :cond_14
    iget v0, v2, Landroid/support/v7/widget/H;->ob:I

    if-ne v0, v13, :cond_15

    .line 661
    iget v5, v2, Landroid/support/v7/widget/H;->mOffset:I

    .line 662
    sub-int v0, v5, v1

    .line 668
    move v1, v11

    move v2, v1

    goto :goto_b

    .line 664
    :cond_15
    iget v5, v2, Landroid/support/v7/widget/H;->mOffset:I

    .line 665
    add-int v0, v5, v1

    .line 668
    move v1, v11

    move v2, v1

    move/from16 v17, v5

    move v5, v0

    move/from16 v0, v17

    :goto_b
    if-ge v11, v12, :cond_1a

    .line 669
    iget-object v3, v6, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    aget-object v9, v3, v11

    .line 670
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/support/v7/widget/C;

    .line 671
    iget v3, v6, Landroid/support/v7/widget/A;->mOrientation:I

    if-ne v3, v8, :cond_17

    .line 672
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->getPaddingLeft()I

    move-result v0

    iget-object v3, v6, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v4, v6, Landroid/support/v7/widget/A;->mSpanCount:I

    iget v5, v10, Landroid/support/v7/widget/C;->nV:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 674
    iget-object v3, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v3

    sub-int v3, v0, v3

    .line 685
    move v15, v0

    move v14, v1

    move/from16 v16, v2

    move v13, v3

    goto :goto_c

    .line 676
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->getPaddingLeft()I

    move-result v0

    iget-object v3, v6, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v4, v10, Landroid/support/v7/widget/C;->nV:I

    aget v3, v3, v4

    add-int/2addr v0, v3

    .line 677
    iget-object v3, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v0

    .line 685
    move v13, v0

    move v14, v1

    move/from16 v16, v2

    move v15, v3

    goto :goto_c

    .line 680
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->getPaddingTop()I

    move-result v1

    iget-object v2, v6, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget v3, v10, Landroid/support/v7/widget/C;->nV:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 681
    iget-object v2, v6, Landroid/support/v7/widget/A;->mOrientationHelper:Landroid/support/v7/widget/M;

    invoke-virtual {v2, v9}, Landroid/support/v7/widget/M;->V(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 685
    move v13, v0

    move v14, v1

    move/from16 v16, v2

    move v15, v5

    :goto_c
    move-object v0, v6

    move-object v1, v9

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/A;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 693
    iget-object v0, v10, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v10, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v0}, Landroid/support/v7/widget/aA;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 694
    :cond_18
    iput-boolean v8, v7, Landroid/support/v7/widget/G;->ok:Z

    .line 696
    :cond_19
    iget-boolean v0, v7, Landroid/support/v7/widget/G;->ol:Z

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v7, Landroid/support/v7/widget/G;->ol:Z

    .line 668
    add-int/lit8 v11, v11, 0x1

    move v0, v13

    move v1, v14

    move v5, v15

    move/from16 v2, v16

    goto/16 :goto_b

    .line 698
    :cond_1a
    iget-object v0, v6, Landroid/support/v7/widget/A;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method final onAnchorReady(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/F;I)V
    .locals 4

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onAnchorReady(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/support/v7/widget/F;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/A;->updateMeasurements()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p2, Landroid/support/v7/widget/ax;->pq:Z

    if-nez v0, :cond_3

    .line 357
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Landroid/support/v7/widget/F;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/A;->getSpanIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Landroid/support/v7/widget/F;->mPosition:I

    if-lez p4, :cond_3

    iget p4, p3, Landroid/support/v7/widget/F;->mPosition:I

    sub-int/2addr p4, v0

    iput p4, p3, Landroid/support/v7/widget/F;->mPosition:I

    iget p4, p3, Landroid/support/v7/widget/F;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Landroid/support/v7/widget/A;->getSpanIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/ax;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroid/support/v7/widget/F;->mPosition:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/A;->getSpanIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Landroid/support/v7/widget/F;->mPosition:I

    .line 359
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/A;->ensureViewSet()V

    .line 360
    return-void
.end method

.method public final onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 994
    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/A;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 995
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 996
    return-object v4

    .line 998
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/C;

    .line 999
    iget v6, v5, Landroid/support/v7/widget/C;->nV:I

    .line 1000
    iget v7, v5, Landroid/support/v7/widget/C;->nV:I

    iget v5, v5, Landroid/support/v7/widget/C;->nW:I

    add-int/2addr v7, v5

    .line 1001
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)Landroid/view/View;

    move-result-object v5

    .line 1002
    if-nez v5, :cond_1

    .line 1003
    return-object v4

    .line 1007
    :cond_1
    move/from16 v5, p2

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/A;->convertFocusDirectionToLayoutDirection(I)I

    move-result v5

    .line 1008
    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    move v5, v9

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    iget-boolean v10, v0, Landroid/support/v7/widget/A;->mShouldReverseLayout:Z

    if-eq v5, v10, :cond_3

    .line 1010
    move v5, v9

    goto :goto_1

    .line 1008
    :cond_3
    nop

    .line 1010
    const/4 v5, 0x0

    :goto_1
    const/4 v10, -0x1

    if-eqz v5, :cond_4

    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v9

    .line 1012
    nop

    .line 1013
    nop

    .line 1019
    move v11, v10

    move v12, v11

    goto :goto_2

    .line 1015
    :cond_4
    nop

    .line 1016
    nop

    .line 1017
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v5

    .line 1019
    move v11, v5

    move v12, v9

    const/4 v5, 0x0

    :goto_2
    iget v13, v0, Landroid/support/v7/widget/A;->mOrientation:I

    if-ne v13, v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/A;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1024
    move v13, v9

    goto :goto_3

    .line 1019
    :cond_5
    nop

    .line 1024
    const/4 v13, 0x0

    .line 1025
    :goto_3
    nop

    .line 1026
    nop

    .line 1034
    nop

    .line 1035
    nop

    .line 1036
    nop

    .line 1043
    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/A;->getSpanGroupIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v14

    .line 1044
    move v8, v10

    move/from16 v17, v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v4

    :goto_4
    if-eq v5, v11, :cond_18

    .line 1045
    invoke-direct {v0, v1, v2, v5}, Landroid/support/v7/widget/A;->getSpanGroupIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result v9

    .line 1046
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1047
    if-eq v1, v3, :cond_18

    .line 1048
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_7

    if-eq v9, v14, :cond_7

    .line 1056
    if-eqz v4, :cond_6

    .line 1057
    goto/16 :goto_e

    .line 1044
    :cond_6
    move-object/from16 v20, v3

    move/from16 v22, v8

    move/from16 v21, v11

    move/from16 v23, v14

    move/from16 v8, v16

    move/from16 v11, v17

    goto/16 :goto_b

    .line 1062
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/C;

    .line 1063
    iget v2, v9, Landroid/support/v7/widget/C;->nV:I

    .line 1064
    move-object/from16 v20, v3

    iget v3, v9, Landroid/support/v7/widget/C;->nV:I

    move/from16 v21, v11

    iget v11, v9, Landroid/support/v7/widget/C;->nW:I

    add-int/2addr v3, v11

    .line 1065
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_8

    if-ne v2, v6, :cond_8

    if-ne v3, v7, :cond_8

    .line 1067
    return-object v1

    .line 1069
    :cond_8
    nop

    .line 1070
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v4, :cond_a

    .line 1071
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-nez v11, :cond_b

    if-nez v10, :cond_b

    .line 1072
    :cond_a
    nop

    .line 1097
    :goto_5
    move/from16 v22, v8

    move/from16 v23, v14

    move/from16 v8, v16

    move/from16 v11, v17

    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_a

    .line 1074
    :cond_b
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1075
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1076
    sub-int v11, v19, v11

    .line 1077
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1078
    if-le v11, v15, :cond_c

    .line 1079
    goto :goto_5

    .line 1080
    :cond_c
    if-ne v11, v15, :cond_12

    if-le v2, v8, :cond_d

    const/4 v11, 0x1

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    :goto_7
    if-ne v13, v11, :cond_12

    .line 1083
    goto :goto_5

    .line 1085
    :cond_e
    if-nez v4, :cond_12

    .line 1086
    move/from16 v22, v8

    iget-object v8, v0, Landroid/support/v7/widget/af;->mHorizontalBoundCheck:Landroid/support/v7/widget/aK;

    move/from16 v23, v14

    const/16 v14, 0x6003

    invoke-virtual {v8, v1, v14}, Landroid/support/v7/widget/aK;->n(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Landroid/support/v7/widget/af;->mVerticalBoundCheck:Landroid/support/v7/widget/aK;

    invoke-virtual {v8, v1, v14}, Landroid/support/v7/widget/aK;->n(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    :goto_8
    const/4 v14, 0x1

    xor-int/2addr v8, v14

    if-eqz v8, :cond_13

    .line 1087
    move/from16 v8, v16

    if-le v11, v8, :cond_10

    .line 1088
    nop

    .line 1097
    move/from16 v18, v14

    move/from16 v11, v17

    goto :goto_a

    .line 1089
    :cond_10
    if-ne v11, v8, :cond_14

    move/from16 v11, v17

    if-le v2, v11, :cond_11

    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    :goto_9
    if-ne v13, v14, :cond_15

    .line 1092
    goto :goto_6

    .line 1097
    :cond_12
    move/from16 v22, v8

    move/from16 v23, v14

    :cond_13
    move/from16 v8, v16

    :cond_14
    move/from16 v11, v17

    :cond_15
    const/16 v18, 0x0

    :goto_a
    if-eqz v18, :cond_17

    .line 1098
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1099
    nop

    .line 1100
    iget v4, v9, Landroid/support/v7/widget/C;->nV:I

    .line 1101
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1102
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    .line 1044
    move v15, v3

    move/from16 v16, v8

    move/from16 v17, v11

    move v8, v4

    move-object v4, v1

    goto :goto_d

    .line 1104
    :cond_16
    nop

    .line 1105
    iget v8, v9, Landroid/support/v7/widget/C;->nV:I

    .line 1106
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1107
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    .line 1044
    move-object v10, v1

    move/from16 v16, v3

    move/from16 v17, v8

    goto :goto_c

    :cond_17
    :goto_b
    move/from16 v16, v8

    move/from16 v17, v11

    :goto_c
    move/from16 v8, v22

    :goto_d
    add-int/2addr v5, v12

    move-object/from16 v3, v20

    move/from16 v11, v21

    move/from16 v14, v23

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const/4 v9, 0x1

    goto/16 :goto_4

    .line 1111
    :cond_18
    :goto_e
    if-eqz v4, :cond_19

    return-object v4

    :cond_19
    return-object v10
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 7

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/C;

    if-nez v1, :cond_0

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 148
    return-void

    .line 150
    :cond_0
    check-cast v0, Landroid/support/v7/widget/C;

    .line 151
    iget-object p3, v0, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {p3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/A;->getSpanGroupIndex(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;I)I

    move-result p1

    .line 152
    iget p2, p0, Landroid/support/v7/widget/A;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 153
    nop

    .line 154
    iget p2, v0, Landroid/support/v7/widget/C;->nV:I

    iget v2, v0, Landroid/support/v7/widget/C;->nW:I

    const/4 v4, 0x1

    iget v3, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-le v3, v1, :cond_1

    .line 156
    iget v0, v0, Landroid/support/v7/widget/C;->nW:I

    iget v3, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-ne v0, v3, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, p3

    :goto_0
    const/4 v6, 0x0

    .line 153
    move v1, p2

    move v3, p1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/a/c;->a(IIIIZZ)Landroid/support/v4/view/a/c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/a/a;->o(Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_2
    const/4 v2, 0x1

    .line 160
    iget v3, v0, Landroid/support/v7/widget/C;->nV:I

    iget v4, v0, Landroid/support/v7/widget/C;->nW:I

    iget p2, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-le p2, v1, :cond_3

    .line 161
    iget p2, v0, Landroid/support/v7/widget/C;->nW:I

    iget v0, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-ne p2, v0, :cond_3

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, p3

    :goto_1
    const/4 v6, 0x0

    .line 158
    move v1, p1

    invoke-static/range {v1 .. v6}, Landroid/support/v4/view/a/c;->a(IIIIZZ)Landroid/support/v4/view/a/c;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/support/v4/view/a/a;->o(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public final onItemsAdded$5927c743(II)V
    .locals 0

    .line 200
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget-object p1, p1, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 201
    return-void
.end method

.method public final onItemsChanged$57043c5d()V
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget-object v0, v0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 206
    return-void
.end method

.method public final onItemsMoved$342e6be0(II)V
    .locals 0

    .line 221
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget-object p1, p1, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 222
    return-void
.end method

.method public final onItemsRemoved$5927c743(II)V
    .locals 0

    .line 210
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget-object p1, p1, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 211
    return-void
.end method

.method public final onItemsUpdated$783f8c5f$5927c743(II)V
    .locals 0

    .line 216
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget-object p1, p1, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 217
    return-void
.end method

.method public final onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V
    .locals 6

    .line 167
    iget-boolean v0, p2, Landroid/support/v7/widget/ax;->pq:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/A;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/C;

    iget-object v3, v2, Landroid/support/v7/widget/aj;->oL:Landroid/support/v7/widget/aA;

    invoke-virtual {v3}, Landroid/support/v7/widget/aA;->getLayoutPosition()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    iget v5, v2, Landroid/support/v7/widget/C;->nW:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    iget v2, v2, Landroid/support/v7/widget/C;->nV:I

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)V

    .line 174
    iget-object p1, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p1, p0, Landroid/support/v7/widget/A;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 175
    return-void
.end method

.method public final onLayoutCompleted(Landroid/support/v7/widget/ax;)V
    .locals 0

    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/ax;)V

    .line 180
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/A;->mPendingSpanCountChange:Z

    .line 181
    return-void
.end method

.method public final scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/A;->updateMeasurements()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/A;->ensureViewSet()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I
    .locals 0

    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/A;->updateMeasurements()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/A;->ensureViewSet()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/aq;Landroid/support/v7/widget/ax;)I

    move-result p1

    return p1
.end method

.method public final setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/A;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    iget v2, p0, Landroid/support/v7/widget/A;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 293
    iget-object v1, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/s;->i(Landroid/view/View;)I

    move-result v1

    invoke-static {p3, p1, v1}, Landroid/support/v7/widget/A;->chooseSize(III)I

    move-result p1

    .line 294
    iget-object p3, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget-object v1, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/s;->h(Landroid/view/View;)I

    move-result v0

    .line 294
    invoke-static {p2, p3, v0}, Landroid/support/v7/widget/A;->chooseSize(III)I

    move-result p2

    .line 296
    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/s;->h(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, p1, v0}, Landroid/support/v7/widget/A;->chooseSize(III)I

    move-result p2

    .line 299
    iget-object p1, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    iget-object v0, p0, Landroid/support/v7/widget/A;->mCachedBorders:[I

    array-length v0, v0

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/af;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/s;->i(Landroid/view/View;)I

    move-result v0

    .line 299
    invoke-static {p3, p1, v0}, Landroid/support/v7/widget/A;->chooseSize(III)I

    move-result p1

    .line 302
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/A;->setMeasuredDimension(II)V

    .line 303
    return-void
.end method

.method public final setSpanCount(I)V
    .locals 3

    .line 809
    iget v0, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    if-ne p1, v0, :cond_0

    .line 810
    return-void

    .line 812
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/A;->mPendingSpanCountChange:Z

    .line 813
    if-gtz p1, :cond_1

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/A;->mSpanCount:I

    .line 818
    iget-object p1, p0, Landroid/support/v7/widget/A;->mSpanSizeLookup:Landroid/support/v7/widget/D;

    iget-object p1, p1, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 819
    invoke-virtual {p0}, Landroid/support/v7/widget/A;->requestLayout()V

    .line 820
    return-void
.end method

.method public final supportsPredictiveItemAnimations()Z
    .locals 1

    .line 1116
    iget-object v0, p0, Landroid/support/v7/widget/A;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/A;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
