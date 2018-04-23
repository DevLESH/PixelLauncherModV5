.class Landroid/support/v4/view/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 3151
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/P;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/P;

    iget-boolean v0, p1, Landroid/support/v4/view/P;->jU:Z

    iget-boolean v1, p2, Landroid/support/v4/view/P;->jU:Z

    if-eq v0, v1, :cond_1

    iget-boolean p1, p1, Landroid/support/v4/view/P;->jU:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p1, Landroid/support/v4/view/P;->position:I

    iget p2, p2, Landroid/support/v4/view/P;->position:I

    sub-int/2addr p1, p2

    return p1
.end method
