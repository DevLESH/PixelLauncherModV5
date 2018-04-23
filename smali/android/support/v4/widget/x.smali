.class Landroid/support/v4/widget/x;
.super Landroid/support/v4/widget/v;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1532
    invoke-direct {p0}, Landroid/support/v4/widget/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .line 1535
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/s;

    iget-object p1, p1, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    invoke-static {p2, p1}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1536
    return-void
.end method
