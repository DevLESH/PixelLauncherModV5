.class Landroid/support/design/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/q;


# instance fields
.field final synthetic bm:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .line 3175
    iput-object p1, p0, Landroid/support/design/widget/a;->bm:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 5

    .line 3179
    iget-object p1, p0, Landroid/support/design/widget/a;->bm:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v0, p1, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x13

    if-lt v1, v4, :cond_0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_0
    if-eq v0, p2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    iput-object p2, p1, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/support/v4/view/aa;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    iput-boolean v0, p1, Landroid/support/design/widget/CoordinatorLayout;->bh:Z

    iget-boolean v0, p1, Landroid/support/design/widget/CoordinatorLayout;->bh:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    invoke-virtual {p2}, Landroid/support/v4/view/aa;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    :goto_4
    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/d;

    iget-object v1, v1, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/support/v4/view/aa;->isConsumed()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    :cond_7
    return-object p2
.end method
