.class Landroid/support/v4/view/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/q;


# instance fields
.field final synthetic jP:Landroid/support/v4/view/ViewPager;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 422
    iput-object p1, p0, Landroid/support/v4/view/M;->jP:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/M;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 5

    .line 429
    nop

    .line 430
    invoke-static {p1, p2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Landroid/support/v4/view/aa;->isConsumed()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 433
    return-object p1

    .line 443
    :cond_0
    iget-object p2, p0, Landroid/support/v4/view/M;->mTempRect:Landroid/graphics/Rect;

    .line 444
    invoke-virtual {p1}, Landroid/support/v4/view/aa;->getSystemWindowInsetLeft()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 445
    invoke-virtual {p1}, Landroid/support/v4/view/aa;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 446
    invoke-virtual {p1}, Landroid/support/v4/view/aa;->getSystemWindowInsetRight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 447
    invoke-virtual {p1}, Landroid/support/v4/view/aa;->getSystemWindowInsetBottom()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 449
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/view/M;->jP:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 450
    iget-object v2, p0, Landroid/support/v4/view/M;->jP:Landroid/support/v4/view/ViewPager;

    .line 451
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/view/s;->b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object v2

    .line 454
    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getSystemWindowInsetLeft()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 456
    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getSystemWindowInsetTop()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 458
    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getSystemWindowInsetRight()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 460
    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getSystemWindowInsetBottom()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_2

    new-instance v3, Landroid/support/v4/view/aa;

    iget-object p1, p1, Landroid/support/v4/view/aa;->ka:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsets;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/support/v4/view/aa;-><init>(Ljava/lang/Object;)V

    return-object v3

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
