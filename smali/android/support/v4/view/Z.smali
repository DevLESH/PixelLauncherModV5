.class Landroid/support/v4/view/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 1

    .line 55
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Landroid/support/v4/view/n;

    invoke-interface {p1, p2}, Landroid/support/v4/view/n;->onStopNestedScroll(Landroid/view/View;)V

    .line 58
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .locals 7

    .line 62
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 63
    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/n;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/view/n;->onNestedScroll(Landroid/view/View;IIII)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .locals 1

    .line 70
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Landroid/support/v4/view/n;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/n;->onNestedPreScroll(Landroid/view/View;II[I)V

    .line 73
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .line 86
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Landroid/support/v4/view/n;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/n;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1

    .line 90
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 1

    .line 77
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 78
    check-cast p1, Landroid/support/v4/view/n;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/n;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    .line 81
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 39
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Landroid/support/v4/view/n;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/n;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 48
    instance-of v0, p1, Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Landroid/support/v4/view/n;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/n;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 52
    :cond_0
    return-void
.end method
