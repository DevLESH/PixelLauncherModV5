.class Landroid/support/v4/view/y;
.super Landroid/support/v4/view/x;
.source "SourceFile"


# static fields
.field private static jB:Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1257
    invoke-direct {p0}, Landroid/support/v4/view/x;-><init>()V

    return-void
.end method

.method private static aJ()Landroid/graphics/Rect;
    .locals 2

    .line 1498
    sget-object v0, Landroid/support/v4/view/y;->jB:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 1499
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/view/y;->jB:Ljava/lang/ThreadLocal;

    .line 1501
    :cond_0
    sget-object v0, Landroid/support/v4/view/y;->jB:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1502
    if-nez v0, :cond_1

    .line 1503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1504
    sget-object v1, Landroid/support/v4/view/y;->jB:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1506
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1507
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 0

    .line 1417
    invoke-static {p2}, Landroid/support/v4/view/aa;->a(Landroid/support/v4/view/aa;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowInsets;

    .line 1418
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1419
    if-eq p1, p2, :cond_0

    .line 1420
    new-instance p2, Landroid/view/WindowInsets;

    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1422
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/aa;->n(Ljava/lang/Object;)Landroid/support/v4/view/aa;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;F)V
    .locals 0

    .line 1277
    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    .line 1278
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/support/v4/view/q;)V
    .locals 1

    .line 1298
    if-nez p2, :cond_0

    .line 1299
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1300
    return-void

    .line 1303
    :cond_0
    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/view/z;-><init>(Landroid/support/v4/view/y;Landroid/support/v4/view/q;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1311
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1262
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 0

    .line 1427
    invoke-static {p2}, Landroid/support/v4/view/aa;->a(Landroid/support/v4/view/aa;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowInsets;

    .line 1428
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 1429
    if-eq p1, p2, :cond_0

    .line 1430
    new-instance p2, Landroid/view/WindowInsets;

    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 1432
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/aa;->n(Ljava/lang/Object;)Landroid/support/v4/view/aa;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/view/View;F)V
    .locals 0

    .line 1287
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationZ(F)V

    .line 1288
    return-void
.end method

.method public final c(Landroid/view/View;F)V
    .locals 0

    .line 1442
    invoke-virtual {p1, p2}, Landroid/view/View;->setZ(F)V

    .line 1443
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 6

    .line 1473
    invoke-static {}, Landroid/support/v4/view/y;->aJ()Landroid/graphics/Rect;

    move-result-object v0

    .line 1474
    nop

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1477
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1478
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 1479
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1483
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1482
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    .line 1487
    xor-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/x;->e(Landroid/view/View;I)V

    .line 1491
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1492
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1491
    invoke-virtual {v0, p2, v2, v3, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1493
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1495
    :cond_1
    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 6

    .line 1447
    invoke-static {}, Landroid/support/v4/view/y;->aJ()Landroid/graphics/Rect;

    move-result-object v0

    .line 1448
    nop

    .line 1450
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1451
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1452
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 1453
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1456
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1457
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1456
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    .line 1461
    xor-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/x;->f(Landroid/view/View;I)V

    .line 1465
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1466
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 1465
    invoke-virtual {v0, p2, v2, v3, p1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1467
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 1469
    :cond_1
    return-void
.end method

.method public final j(Landroid/view/View;)F
    .locals 0

    .line 1282
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public final k(Landroid/view/View;)F
    .locals 0

    .line 1292
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    return p1
.end method

.method public final l(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 1267
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final m(Landroid/view/View;)V
    .locals 0

    .line 1272
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 1273
    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 0

    .line 1330
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 1331
    return-void
.end method

.method public final r(Landroid/view/View;)F
    .locals 0

    .line 1437
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result p1

    return p1
.end method
