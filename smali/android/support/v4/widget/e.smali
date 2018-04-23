.class Landroid/support/v4/widget/e;
.super Landroid/support/v4/widget/A;
.source "SourceFile"


# instance fields
.field private final kV:I

.field private kW:Landroid/support/v4/widget/y;

.field private final kX:Ljava/lang/Runnable;

.field final synthetic kY:Landroid/support/v4/widget/DrawerLayout;


# virtual methods
.method public final B(I)V
    .locals 7

    .line 2077
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/e;->kW:Landroid/support/v4/widget/y;

    iget-object v1, v1, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    iget v2, v2, Landroid/support/v4/widget/y;->lT:I

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    iget v3, v3, Landroid/support/v4/widget/y;->lT:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    if-ne v3, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eq v2, v5, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_2

    :cond_2
    :goto_0
    goto :goto_2

    :cond_3
    :goto_1
    move v5, v6

    :goto_2
    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget v2, p1, Landroid/support/v4/widget/c;->kN:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/16 v3, 0x20

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget v2, p1, Landroid/support/v4/widget/c;->kP:I

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_7

    iput v4, p1, Landroid/support/v4/widget/c;->kP:I

    iget-object p1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    if-eqz p1, :cond_4

    iget-object p1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_3
    if-ltz p1, :cond_4

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1, v4}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_5

    :cond_5
    iget p1, p1, Landroid/support/v4/widget/c;->kN:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v2

    if-nez p1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget v2, p1, Landroid/support/v4/widget/c;->kP:I

    and-int/2addr v2, v6

    if-nez v2, :cond_7

    iput v6, p1, Landroid/support/v4/widget/c;->kP:I

    iget-object p1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    if-eqz p1, :cond_6

    iget-object p1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_4
    if-ltz p1, :cond_6

    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v1, v6}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    :cond_7
    :goto_5
    iget p1, v0, Landroid/support/v4/widget/DrawerLayout;->kx:I

    if-eq v5, p1, :cond_8

    iput v5, v0, Landroid/support/v4/widget/DrawerLayout;->kx:I

    iget-object p1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    if-eqz p1, :cond_8

    iget-object p1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_6
    if-ltz p1, :cond_8

    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 2078
    :cond_8
    return-void
.end method

.method public final C(Landroid/view/View;)Z
    .locals 2

    .line 2071
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    iget v1, p0, Landroid/support/v4/widget/e;->kV:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    .line 2072
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->v(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final D(Landroid/view/View;)V
    .locals 1

    .line 2099
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    .line 2100
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/widget/c;->kO:Z

    .line 2102
    iget p1, p0, Landroid/support/v4/widget/e;->kV:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    nop

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->A(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)V

    .line 2103
    :cond_1
    return-void
.end method

.method public final E(Landroid/view/View;)I
    .locals 1

    .line 2192
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final F(Landroid/view/View;)I
    .locals 0

    .line 2207
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final aO()V
    .locals 2

    .line 2064
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/e;->kX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2065
    return-void
.end method

.method public final aP()V
    .locals 4

    .line 2134
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Landroid/support/v4/widget/e;->kX:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2135
    return-void
.end method

.method public final aQ()Z
    .locals 1

    .line 2173
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/view/View;F)V
    .locals 6

    .line 2117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget v0, v0, Landroid/support/v4/widget/c;->kN:F

    .line 2118
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2121
    iget-object v2, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 2122
    cmpl-float p2, p2, v4

    if-gtz p2, :cond_1

    if-nez p2, :cond_0

    cmpl-float p2, v0, v3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 2124
    :cond_2
    iget-object v2, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 2125
    cmpg-float v5, p2, v4

    if-ltz v5, :cond_3

    cmpl-float p2, p2, v4

    if-nez p2, :cond_4

    cmpl-float p2, v0, v3

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v2, v1

    .line 2128
    :cond_4
    move p2, v2

    :goto_1
    iget-object v0, p0, Landroid/support/v4/widget/e;->kW:Landroid/support/v4/widget/y;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-boolean v1, v0, Landroid/support/v4/widget/y;->mi:Z

    if-nez v1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v1, v0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v0, Landroid/support/v4/widget/y;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, v0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v0, Landroid/support/v4/widget/y;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/support/v4/widget/y;->a(IIII)Z

    .line 2129
    iget-object p1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2130
    return-void
.end method

.method public final g(II)V
    .locals 1

    .line 2179
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 2180
    iget-object p1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->A(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2182
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->A(I)Landroid/view/View;

    move-result-object p1

    .line 2185
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->v(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2186
    iget-object v0, p0, Landroid/support/v4/widget/e;->kW:Landroid/support/v4/widget/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/y;->j(Landroid/view/View;I)V

    .line 2188
    :cond_1
    return-void
.end method

.method public final h(Landroid/view/View;I)V
    .locals 3

    .line 2083
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2086
    iget-object v1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2087
    add-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    goto :goto_0

    .line 2089
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    .line 2090
    sub-int/2addr v1, p2

    int-to-float p2, v1

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 2092
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;F)V

    .line 2093
    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2094
    iget-object p1, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 2095
    return-void
.end method

.method public final i(Landroid/view/View;I)I
    .locals 2

    .line 2197
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2198
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    .line 2200
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/e;->kY:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    .line 2201
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
