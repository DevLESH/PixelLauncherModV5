.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final LAYOUT_ATTRS:[I

.field private static final kl:[I

.field static final km:Z

.field private static final kn:Z


# instance fields
.field private bh:Z

.field private bi:Landroid/graphics/drawable/Drawable;

.field private kA:I

.field private kB:I

.field private kC:Z

.field private kD:Z

.field kE:Ljava/util/List;

.field private kF:Landroid/graphics/drawable/Drawable;

.field private kG:Landroid/graphics/drawable/Drawable;

.field private kH:Ljava/lang/Object;

.field private kI:Landroid/graphics/drawable/Drawable;

.field private kJ:Landroid/graphics/drawable/Drawable;

.field private kK:Landroid/graphics/drawable/Drawable;

.field private kL:Landroid/graphics/drawable/Drawable;

.field private final kM:Ljava/util/ArrayList;

.field private final ko:Landroid/support/v4/widget/b;

.field private kp:F

.field private kq:I

.field private kr:F

.field private ks:Landroid/graphics/Paint;

.field final kt:Landroid/support/v4/widget/y;

.field final ku:Landroid/support/v4/widget/y;

.field private final kv:Landroid/support/v4/widget/e;

.field private final kw:Landroid/support/v4/widget/e;

.field kx:I

.field private ky:I

.field private kz:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mScrimColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 100
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->kl:[I

    .line 180
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 185
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->km:Z

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->kn:Z

    return-void
.end method

.method static B(Landroid/view/View;)Z
    .locals 2

    .line 1988
    invoke-static {p0}, Landroid/support/v4/view/s;->f(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1990
    invoke-static {p0}, Landroid/support/v4/view/s;->f(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;I)Z
    .locals 3

    .line 1148
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 1152
    :cond_1
    invoke-static {p1, p2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)Z

    .line 1153
    const/4 p1, 0x1

    return p1

    .line 1149
    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method final A(I)Landroid/view/View;
    .locals 4

    .line 926
    nop

    .line 927
    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v0

    .line 926
    invoke-static {p1, v0}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 928
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 929
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 930
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 931
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->w(Landroid/view/View;)I

    move-result v3

    .line 932
    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    .line 933
    return-object v2

    .line 929
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final A(Landroid/view/View;)V
    .locals 3

    .line 1650
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    iput p1, v0, Landroid/support/v4/widget/c;->kN:F

    const/4 p1, 0x0

    iput p1, v0, Landroid/support/v4/widget/c;->kP:I

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/support/v4/widget/c;->kP:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/support/v4/widget/c;->kP:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/y;->b(Landroid/view/View;II)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1651
    return-void
.end method

.method final a(Landroid/view/View;Z)V
    .locals 4

    .line 841
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 842
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 843
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 844
    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    .line 847
    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/s;->d(Landroid/view/View;I)V

    goto :goto_1

    .line 850
    :cond_2
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/s;->d(Landroid/view/View;I)V

    .line 842
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    :cond_3
    return-void
.end method

.method final aM()Landroid/view/View;
    .locals 5

    .line 896
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 897
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 898
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 899
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/c;

    .line 900
    iget v3, v3, Landroid/support/v4/widget/c;->kP:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 901
    return-object v2

    .line 897
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final aN()Landroid/view/View;
    .locals 6

    .line 1852
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1853
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1854
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1855
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/c;

    iget v4, v4, Landroid/support/v4/widget/c;->kN:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 1856
    return-object v3

    .line 1853
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1859
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7

    .line 1814
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 1815
    return-void

    .line 1820
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1821
    nop

    .line 1822
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_5

    .line 1823
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1824
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 1825
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "View "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a drawer"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/c;

    iget v5, v5, Landroid/support/v4/widget/c;->kP:I

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-eqz v5, :cond_4

    .line 1826
    nop

    .line 1827
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1822
    move v3, v6

    goto :goto_2

    .line 1830
    :cond_3
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->kM:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1834
    :cond_5
    if-nez v3, :cond_7

    .line 1835
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1836
    :goto_3
    if-ge v1, v0, :cond_7

    .line 1837
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->kM:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1838
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 1839
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1836
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1844
    :cond_7
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kM:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1845
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1960
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1962
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aM()Landroid/view/View;

    move-result-object p2

    .line 1963
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1971
    :cond_0
    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->d(Landroid/view/View;I)V

    goto :goto_1

    .line 1966
    :cond_1
    :goto_0
    const/4 p2, 0x4

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->d(Landroid/view/View;I)V

    .line 1977
    :goto_1
    sget-boolean p2, Landroid/support/v4/widget/DrawerLayout;->km:Z

    if-nez p2, :cond_2

    .line 1978
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->ko:Landroid/support/v4/widget/b;

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/b;)V

    .line 1980
    :cond_2
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1804
    instance-of v0, p1, Landroid/support/v4/widget/c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    .line 1249
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1250
    nop

    .line 1251
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1252
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/c;

    iget v3, v3, Landroid/support/v4/widget/c;->kN:F

    .line 1253
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    :cond_0
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->kr:F

    .line 1257
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/y;->g(Z)Z

    move-result v0

    .line 1258
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/y;->g(Z)Z

    move-result v1

    .line 1259
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1260
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/s;->e(Landroid/view/View;)V

    .line 1262
    :cond_2
    return-void
.end method

.method final d(Landroid/view/View;F)V
    .locals 1

    .line 868
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    .line 869
    iget v0, p1, Landroid/support/v4/widget/c;->kN:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 870
    return-void

    .line 873
    :cond_0
    iput p2, p1, Landroid/support/v4/widget/c;->kN:F

    .line 874
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->kE:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 875
    :cond_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1341
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    .line 1342
    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)Z

    move-result v4

    .line 1343
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    .line 1345
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1346
    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    .line 1347
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    .line 1348
    move v11, v5

    move v5, v8

    move v10, v5

    :goto_0
    if-ge v5, v9, :cond_4

    .line 1349
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1350
    if-eq v12, v2, :cond_3

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_3

    .line 1351
    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v8

    :goto_1
    if-eqz v13, :cond_3

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1352
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-lt v13, v3, :cond_3

    .line 1353
    invoke-virtual {v0, v12, v7}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1357
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1358
    if-le v12, v10, :cond_1

    .line 1359
    move v10, v12

    :cond_1
    goto :goto_2

    .line 1360
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1361
    if-ge v12, v11, :cond_3

    .line 1348
    move v11, v12

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1364
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    .line 1366
    :cond_5
    move v11, v5

    move v10, v8

    :goto_3
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    .line 1367
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1369
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->kr:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6

    if-eqz v4, :cond_6

    .line 1370
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    .line 1371
    int-to-float v2, v2

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->kr:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1372
    shl-int/lit8 v2, v2, 0x18

    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1373
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->ks:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1375
    int-to-float v2, v10

    const/4 v3, 0x0

    int-to-float v4, v11

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->ks:Landroid/graphics/Paint;

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1376
    goto/16 :goto_4

    :cond_6
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->kF:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    .line 1377
    invoke-virtual {v0, v2, v7}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1378
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->kF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1380
    iget-object v9, v0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    iget v9, v9, Landroid/support/v4/widget/y;->me:I

    .line 1381
    int-to-float v10, v7

    int-to-float v9, v9

    div-float/2addr v10, v9

    .line 1382
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1383
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->kF:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v3, v7

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1383
    invoke-virtual {v6, v7, v9, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1385
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->kF:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, v5

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1386
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->kF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1387
    goto :goto_4

    :cond_7
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->kG:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    .line 1388
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1389
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->kG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1391
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v9

    sub-int/2addr v9, v7

    .line 1392
    iget-object v10, v0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    iget v10, v10, Landroid/support/v4/widget/y;->me:I

    .line 1393
    int-to-float v9, v9

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 1394
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1395
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->kG:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1395
    invoke-virtual {v6, v3, v9, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1397
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->kG:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v4, v5

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1398
    iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->kG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1400
    :cond_8
    :goto_4
    return v8
.end method

.method public final f(II)V
    .locals 3

    .line 570
    nop

    .line 571
    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v0

    .line 570
    invoke-static {p2, v0}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v0

    .line 573
    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->kB:I

    goto :goto_0

    .line 581
    :cond_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->kA:I

    .line 582
    goto :goto_0

    .line 578
    :cond_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->kz:I

    .line 579
    goto :goto_0

    .line 575
    :cond_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->ky:I

    .line 576
    nop

    .line 588
    :goto_0
    if-eqz p1, :cond_5

    .line 590
    if-ne v0, v1, :cond_4

    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    .line 591
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/widget/y;->cancel()V

    .line 593
    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 595
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->A(I)Landroid/view/View;

    move-result-object p1

    .line 596
    if-eqz p1, :cond_6

    .line 597
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)V

    return-void

    .line 601
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->A(I)Landroid/view/View;

    move-result-object p1

    .line 602
    if-eqz p1, :cond_6

    .line 603
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->A(Landroid/view/View;)V

    .line 608
    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final f(Z)V
    .locals 9

    .line 1544
    nop

    .line 1545
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1546
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1547
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1548
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/c;

    .line 1550
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroid/support/v4/widget/c;->kO:Z

    if-eqz v6, :cond_2

    .line 1551
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1556
    const/4 v7, 0x3

    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1557
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    neg-int v6, v6

    .line 1558
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1557
    invoke-virtual {v7, v4, v6, v8}, Landroid/support/v4/widget/y;->b(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    .line 1560
    :cond_1
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    .line 1561
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1560
    invoke-virtual {v6, v4, v7, v8}, Landroid/support/v4/widget/y;->b(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1564
    :goto_1
    iput-boolean v1, v5, Landroid/support/v4/widget/c;->kO:Z

    .line 1546
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1567
    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kv:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->aO()V

    .line 1568
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kw:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->aO()V

    .line 1570
    if-eqz v3, :cond_4

    .line 1571
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1573
    :cond_4
    return-void
.end method

.method final g(Landroid/view/View;I)Z
    .locals 0

    .line 891
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->w(Landroid/view/View;)I

    move-result p1

    .line 892
    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1790
    new-instance v0, Landroid/support/v4/widget/c;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/c;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1809
    new-instance v0, Landroid/support/v4/widget/c;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1795
    instance-of v0, p1, Landroid/support/v4/widget/c;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/c;

    check-cast p1, Landroid/support/v4/widget/c;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/support/v4/widget/c;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/c;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 963
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 965
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 957
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 959
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1323
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1324
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->bh:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->bi:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 1327
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kH:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kH:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 1328
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 1330
    :cond_1
    nop

    .line 1332
    :goto_0
    move v0, v2

    :goto_1
    if-lez v0, :cond_2

    .line 1333
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->bi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1334
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->bi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1337
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1428
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/y;->c(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    .line 1429
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/y;->c(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1431
    nop

    .line 1433
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1452
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    iget-object v0, p1, Landroid/support/v4/widget/y;->lU:[F

    array-length v0, v0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1, v4}, Landroid/support/v4/widget/y;->F(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/support/v4/widget/y;->lW:[F

    aget v5, v5, v4

    iget-object v6, p1, Landroid/support/v4/widget/y;->lU:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    iget-object v6, p1, Landroid/support/v4/widget/y;->lX:[F

    aget v6, v6, v4

    iget-object v7, p1, Landroid/support/v4/widget/y;->lV:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    iget v6, p1, Landroid/support/v4/widget/y;->mTouchSlop:I

    iget v7, p1, Landroid/support/v4/widget/y;->mTouchSlop:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_2
    if-eqz p1, :cond_4

    .line 1453
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kv:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->aO()V

    .line 1454
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kw:Landroid/support/v4/widget/e;

    invoke-virtual {p1}, Landroid/support/v4/widget/e;->aO()V

    goto :goto_4

    .line 1461
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(Z)V

    .line 1462
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kC:Z

    .line 1463
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kD:Z

    goto :goto_4

    .line 1435
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1437
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1438
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1439
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->kr:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1440
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object p1

    .line 1441
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1442
    nop

    .line 1445
    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kC:Z

    .line 1446
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kD:Z

    .line 1447
    goto :goto_5

    .line 1467
    :cond_4
    :goto_4
    move p1, v3

    :goto_5
    if-nez v1, :cond_8

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result p1

    move v0, v3

    :goto_6
    if-ge v0, p1, :cond_6

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/c;

    iget-boolean v1, v1, Landroid/support/v4/widget/c;->kO:Z

    if-eqz v1, :cond_5

    move p1, v2

    goto :goto_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    move p1, v3

    :goto_7
    if-nez p1, :cond_8

    iget-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->kD:Z

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return v3

    :cond_8
    :goto_8
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1879
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aN()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1880
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1881
    return v1

    .line 1883
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1888
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1889
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aN()Landroid/view/View;

    move-result-object p1

    .line 1890
    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->v(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1891
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->f(Z)V

    .line 1893
    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2

    .line 1895
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 1158
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1159
    sub-int v3, p4, p2

    .line 1160
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 1161
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    .line 1162
    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1164
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_9

    .line 1165
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/c;

    .line 1170
    invoke-virtual {v0, v7}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1171
    iget v9, v8, Landroid/support/v4/widget/c;->leftMargin:I

    iget v10, v8, Landroid/support/v4/widget/c;->topMargin:I

    iget v11, v8, Landroid/support/v4/widget/c;->leftMargin:I

    .line 1172
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v8, v8, Landroid/support/v4/widget/c;->topMargin:I

    .line 1173
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 1171
    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 1175
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1176
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1180
    const/4 v11, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1181
    neg-int v11, v9

    int-to-float v12, v9

    iget v13, v8, Landroid/support/v4/widget/c;->kN:F

    mul-float/2addr v13, v12

    float-to-int v13, v13

    add-int/2addr v11, v13

    .line 1182
    add-int v13, v9, v11

    int-to-float v13, v13

    div-float/2addr v13, v12

    goto :goto_1

    .line 1184
    :cond_1
    int-to-float v11, v9

    iget v12, v8, Landroid/support/v4/widget/c;->kN:F

    mul-float/2addr v12, v11

    float-to-int v12, v12

    sub-int v12, v3, v12

    .line 1185
    sub-int v13, v3, v12

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 1188
    move v11, v12

    :goto_1
    iget v12, v8, Landroid/support/v4/widget/c;->kN:F

    cmpl-float v12, v13, v12

    if-eqz v12, :cond_2

    .line 1190
    move v12, v2

    goto :goto_2

    .line 1188
    :cond_2
    nop

    .line 1190
    const/4 v12, 0x0

    :goto_2
    iget v14, v8, Landroid/support/v4/widget/c;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1192
    const/16 v2, 0x10

    if-eq v14, v2, :cond_4

    const/16 v2, 0x50

    if-eq v14, v2, :cond_3

    .line 1195
    iget v2, v8, Landroid/support/v4/widget/c;->topMargin:I

    add-int/2addr v9, v11

    iget v14, v8, Landroid/support/v4/widget/c;->topMargin:I

    add-int/2addr v14, v10

    invoke-virtual {v7, v11, v2, v9, v14}, Landroid/view/View;->layout(IIII)V

    .line 1197
    goto :goto_4

    .line 1201
    :cond_3
    sub-int v2, p5, p3

    .line 1202
    iget v10, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int v10, v2, v10

    .line 1203
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v9, v11

    iget v14, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int/2addr v2, v14

    .line 1202
    invoke-virtual {v7, v11, v10, v9, v2}, Landroid/view/View;->layout(IIII)V

    .line 1206
    goto :goto_4

    .line 1210
    :cond_4
    sub-int v2, p5, p3

    .line 1211
    sub-int v14, v2, v10

    div-int/lit8 v14, v14, 0x2

    .line 1215
    iget v5, v8, Landroid/support/v4/widget/c;->topMargin:I

    if-ge v14, v5, :cond_5

    .line 1216
    iget v14, v8, Landroid/support/v4/widget/c;->topMargin:I

    goto :goto_3

    .line 1217
    :cond_5
    add-int v5, v14, v10

    iget v1, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int v1, v2, v1

    if-le v5, v1, :cond_6

    .line 1218
    iget v1, v8, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int/2addr v2, v1

    sub-int v14, v2, v10

    .line 1220
    :cond_6
    :goto_3
    add-int/2addr v9, v11

    add-int/2addr v10, v14

    invoke-virtual {v7, v11, v14, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1222
    :goto_4
    if-eqz v12, :cond_7

    .line 1227
    invoke-virtual {v0, v7, v13}, Landroid/support/v4/widget/DrawerLayout;->d(Landroid/view/View;F)V

    .line 1230
    :cond_7
    iget v1, v8, Landroid/support/v4/widget/c;->kN:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 1231
    const/4 v5, 0x0

    goto :goto_5

    .line 1230
    :cond_8
    const/4 v5, 0x4

    .line 1231
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 1232
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    :cond_9
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1236
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1237
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1238
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 969
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 970
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 971
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 972
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 974
    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_2

    .line 975
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 980
    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_1

    .line 981
    if-nez v1, :cond_1

    .line 983
    nop

    .line 986
    move v3, v5

    :cond_1
    if-eq v2, v7, :cond_2

    .line 987
    if-nez v2, :cond_2

    .line 989
    nop

    .line 998
    move v4, v5

    :cond_2
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1000
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->kH:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1001
    const/4 v1, 0x1

    goto :goto_0

    .line 1000
    :cond_3
    nop

    .line 1001
    move v1, v5

    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v7

    .line 1005
    nop

    .line 1006
    nop

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    .line 1008
    move v9, v5

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v9, v8, :cond_15

    .line 1009
    invoke-virtual {v0, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1011
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_14

    .line 1012
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/c;

    .line 1017
    const/4 v15, 0x3

    if-eqz v1, :cond_9

    .line 1018
    iget v2, v13, Landroid/support/v4/widget/c;->gravity:I

    invoke-static {v2, v7}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v2

    .line 1019
    invoke-static {v12}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    if-eqz v16, :cond_6

    .line 1020
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1021
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->kH:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    .line 1022
    if-ne v2, v15, :cond_4

    .line 1023
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1024
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1025
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1023
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_2

    .line 1026
    :cond_4
    const/4 v14, 0x5

    if-ne v2, v14, :cond_5

    .line 1027
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1028
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1029
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1027
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1031
    :cond_5
    :goto_2
    invoke-virtual {v12, v6}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1032
    goto :goto_4

    .line 1034
    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v14, v6, :cond_9

    .line 1035
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->kH:Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowInsets;

    .line 1036
    const/4 v14, 0x3

    if-ne v2, v14, :cond_7

    .line 1037
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 1038
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1039
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1037
    invoke-virtual {v6, v2, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    goto :goto_3

    .line 1040
    :cond_7
    const/4 v14, 0x5

    if-ne v2, v14, :cond_8

    .line 1041
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 1042
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1043
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1041
    invoke-virtual {v6, v5, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v6

    .line 1045
    :cond_8
    :goto_3
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->leftMargin:I

    .line 1046
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->topMargin:I

    .line 1047
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->rightMargin:I

    .line 1048
    invoke-virtual {v6}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/c;->bottomMargin:I

    .line 1053
    :cond_9
    :goto_4
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1055
    iget v2, v13, Landroid/support/v4/widget/c;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroid/support/v4/widget/c;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1057
    iget v14, v13, Landroid/support/v4/widget/c;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/support/v4/widget/c;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1059
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    .line 1060
    goto/16 :goto_8

    :cond_a
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1061
    sget-boolean v2, Landroid/support/v4/widget/DrawerLayout;->kn:Z

    if-eqz v2, :cond_b

    .line 1062
    invoke-static {v12}, Landroid/support/v4/view/s;->j(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroid/support/v4/widget/DrawerLayout;->kp:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_b

    .line 1063
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->kp:F

    invoke-static {v12, v2}, Landroid/support/v4/view/s;->a(Landroid/view/View;F)V

    .line 1066
    :cond_b
    nop

    .line 1067
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->w(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 1070
    const/4 v14, 0x3

    if-ne v2, v14, :cond_c

    .line 1071
    const/4 v14, 0x1

    goto :goto_5

    .line 1070
    :cond_c
    nop

    .line 1071
    move v14, v5

    :goto_5
    if-eqz v14, :cond_d

    if-nez v10, :cond_e

    :cond_d
    if-nez v14, :cond_11

    if-eqz v11, :cond_11

    .line 1073
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Child drawer has absolute gravity "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    and-int/lit8 v3, v2, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    const-string v2, "LEFT"

    goto :goto_6

    :cond_f
    and-int/lit8 v3, v2, 0x5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_10

    const-string v2, "RIGHT"

    goto :goto_6

    :cond_10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this DrawerLayout already has a drawer view along that edge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_11
    if-eqz v14, :cond_12

    .line 1078
    nop

    .line 1082
    const/4 v10, 0x1

    goto :goto_7

    .line 1080
    :cond_12
    nop

    .line 1082
    const/4 v11, 0x1

    :goto_7
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->kq:I

    iget v14, v13, Landroid/support/v4/widget/c;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/support/v4/widget/c;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/support/v4/widget/c;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1085
    iget v14, v13, Landroid/support/v4/widget/c;->topMargin:I

    iget v5, v13, Landroid/support/v4/widget/c;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/support/v4/widget/c;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 1088
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    .line 1089
    goto :goto_9

    .line 1090
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_14
    :goto_8
    move/from16 v15, p1

    move/from16 v13, p2

    :goto_9
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1095
    :cond_15
    return-void

    .line 993
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1900
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 1901
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1902
    return-void

    .line 1905
    :cond_0
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1906
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jo:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1908
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kQ:I

    if-eqz v0, :cond_1

    .line 1909
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kQ:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->A(I)Landroid/view/View;

    move-result-object v0

    .line 1910
    if-eqz v0, :cond_1

    .line 1911
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->z(Landroid/view/View;)V

    .line 1915
    :cond_1
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kR:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1916
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kR:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->f(II)V

    .line 1918
    :cond_2
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kS:I

    if-eq v0, v1, :cond_3

    .line 1919
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kS:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(II)V

    .line 1921
    :cond_3
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kT:I

    if-eq v0, v1, :cond_4

    .line 1922
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kT:I

    const v2, 0x800003

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(II)V

    .line 1924
    :cond_4
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kU:I

    if-eq v0, v1, :cond_5

    .line 1925
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kU:I

    const v0, 0x800005

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->f(II)V

    .line 1927
    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 1318
    sget-boolean p1, Landroid/support/v4/widget/DrawerLayout;->kn:Z

    if-nez p1, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kI:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kI:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kJ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kJ:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kJ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kK:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kF:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kJ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kJ:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kJ:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kI:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kI:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/widget/DrawerLayout;->b(Landroid/graphics/drawable/Drawable;I)Z

    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kI:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kL:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->kG:Landroid/graphics/drawable/Drawable;

    .line 1319
    :cond_4
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1931
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1932
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1934
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1935
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1936
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1937
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/c;

    .line 1939
    iget v5, v4, Landroid/support/v4/widget/c;->kP:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1941
    move v5, v6

    goto :goto_1

    .line 1939
    :cond_0
    nop

    .line 1941
    move v5, v2

    :goto_1
    iget v7, v4, Landroid/support/v4/widget/c;->kP:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    .line 1942
    :cond_1
    move v6, v2

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    .line 1935
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1945
    :cond_3
    :goto_3
    iget v0, v4, Landroid/support/v4/widget/c;->gravity:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kQ:I

    .line 1946
    nop

    .line 1950
    :cond_4
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->ky:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kR:I

    .line 1951
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->kz:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kS:I

    .line 1952
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->kA:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kT:I

    .line 1953
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->kB:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->kU:I

    .line 1955
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1472
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/y;->d(Landroid/view/MotionEvent;)V

    .line 1473
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/y;->d(Landroid/view/MotionEvent;)V

    .line 1475
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1476
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1490
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1492
    nop

    .line 1493
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1494
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->x(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1495
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v0, v1

    .line 1496
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr p1, v1

    .line 1497
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    iget v1, v1, Landroid/support/v4/widget/y;->mTouchSlop:I

    .line 1498
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    mul-int/2addr v1, v1

    int-to-float p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 1500
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->aM()Landroid/view/View;

    move-result-object p1

    .line 1501
    if-eqz p1, :cond_1

    .line 1502
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->v(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1506
    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->f(Z)V

    .line 1507
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kC:Z

    .line 1508
    goto :goto_2

    .line 1480
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1482
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1483
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1484
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kC:Z

    .line 1485
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kD:Z

    .line 1486
    goto :goto_2

    .line 1512
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->f(Z)V

    .line 1513
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kC:Z

    .line 1514
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->kD:Z

    .line 1519
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1528
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1530
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->kC:Z

    .line 1531
    if-eqz p1, :cond_0

    .line 1532
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->f(Z)V

    .line 1534
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1242
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1243
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1245
    :cond_0
    return-void
.end method

.method public final v(Landroid/view/View;)I
    .locals 3

    .line 703
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    .line 707
    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const v2, 0x800003

    if-eq p1, v2, :cond_4

    const v2, 0x800005

    if-eq p1, v2, :cond_1

    goto :goto_4

    :cond_1
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kB:I

    if-eq p1, v1, :cond_2

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kB:I

    return p1

    :cond_2
    if-nez v0, :cond_3

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kz:I

    goto :goto_0

    :cond_3
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->ky:I

    :goto_0
    if-eq p1, v1, :cond_d

    return p1

    :cond_4
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kA:I

    if-eq p1, v1, :cond_5

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kA:I

    return p1

    :cond_5
    if-nez v0, :cond_6

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->ky:I

    goto :goto_1

    :cond_6
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kz:I

    :goto_1
    if-eq p1, v1, :cond_d

    return p1

    :cond_7
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kz:I

    if-eq p1, v1, :cond_8

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kz:I

    return p1

    :cond_8
    if-nez v0, :cond_9

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kB:I

    goto :goto_2

    :cond_9
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kA:I

    :goto_2
    if-eq p1, v1, :cond_d

    return p1

    :cond_a
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->ky:I

    if-eq p1, v1, :cond_b

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->ky:I

    return p1

    :cond_b
    if-nez v0, :cond_c

    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kA:I

    goto :goto_3

    :cond_c
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->kB:I

    :goto_3
    if-eq p1, v1, :cond_d

    return p1

    :cond_d
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method final w(Landroid/view/View;)I
    .locals 1

    .line 886
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    .line 887
    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result p1

    return p1
.end method

.method final x(Landroid/view/View;)Z
    .locals 0

    .line 1404
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/c;

    iget p1, p1, Landroid/support/v4/widget/c;->gravity:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final y(Landroid/view/View;)Z
    .locals 2

    .line 1408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget v0, v0, Landroid/support/v4/widget/c;->gravity:I

    .line 1409
    nop

    .line 1410
    invoke-static {p1}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result p1

    .line 1409
    invoke-static {v0, p1}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result p1

    .line 1411
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1413
    return v1

    .line 1415
    :cond_0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    .line 1417
    return v1

    .line 1419
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final z(Landroid/view/View;)V
    .locals 3

    .line 1581
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/c;

    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/support/v4/widget/c;->kN:F

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/widget/c;->kP:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/support/v4/widget/c;->kP:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/support/v4/widget/c;->kP:I

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->g(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->kt:Landroid/support/v4/widget/y;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/widget/y;->b(Landroid/view/View;II)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->ku:Landroid/support/v4/widget/y;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1582
    return-void
.end method
