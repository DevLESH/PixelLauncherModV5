.class public Landroid/support/v4/view/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final jA:Landroid/support/v4/view/D;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1658
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1659
    new-instance v0, Landroid/support/v4/view/C;

    invoke-direct {v0}, Landroid/support/v4/view/C;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1660
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 1661
    new-instance v0, Landroid/support/v4/view/B;

    invoke-direct {v0}, Landroid/support/v4/view/B;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1662
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1663
    new-instance v0, Landroid/support/v4/view/A;

    invoke-direct {v0}, Landroid/support/v4/view/A;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1664
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1665
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1666
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 1667
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1668
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    .line 1669
    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0}, Landroid/support/v4/view/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1670
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 1671
    new-instance v0, Landroid/support/v4/view/v;

    invoke-direct {v0}, Landroid/support/v4/view/v;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1672
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 1673
    new-instance v0, Landroid/support/v4/view/u;

    invoke-direct {v0}, Landroid/support/v4/view/u;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1674
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_8

    .line 1675
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    return-void

    .line 1677
    :cond_8
    new-instance v0, Landroid/support/v4/view/D;

    invoke-direct {v0}, Landroid/support/v4/view/D;-><init>()V

    sput-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    .line 1679
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 1

    .line 3143
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1

    .line 3002
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->a(Landroid/view/View;F)V

    .line 3003
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .line 2093
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/D;->a(Landroid/view/View;IIII)V

    .line 2094
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .line 2386
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 2387
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/b;)V
    .locals 0

    .line 1870
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/support/v4/view/b;->mBridge:Landroid/view/View$AccessibilityDelegate;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1871
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/q;)V
    .locals 1

    .line 3127
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->a(Landroid/view/View;Landroid/support/v4/view/q;)V

    .line 3128
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .line 2124
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/D;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 2125
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 3038
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 3039
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 1

    .line 3160
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 1

    .line 3018
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->b(Landroid/view/View;F)V

    .line 3019
    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 2107
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2108
    return-void
.end method

.method public static c(Landroid/view/View;F)V
    .locals 1

    .line 3666
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->c(Landroid/view/View;F)V

    .line 3667
    return-void
.end method

.method public static c(Landroid/view/View;)Z
    .locals 1

    .line 2039
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;I)V
    .locals 1

    .line 2167
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->d(Landroid/view/View;I)V

    .line 2168
    return-void
.end method

.method public static d(Landroid/view/View;)Z
    .locals 1

    .line 2051
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;)V
    .locals 1

    .line 2075
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->e(Landroid/view/View;)V

    .line 2076
    return-void
.end method

.method public static e(Landroid/view/View;I)V
    .locals 1

    .line 3675
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->e(Landroid/view/View;I)V

    .line 3676
    return-void
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .line 2143
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->f(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;I)V
    .locals 1

    .line 3684
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/D;->f(Landroid/view/View;I)V

    .line 3685
    return-void
.end method

.method public static g(Landroid/view/View;)I
    .locals 1

    .line 2402
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->g(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static h(Landroid/view/View;)I
    .locals 1

    .line 2716
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->h(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/view/View;)I
    .locals 1

    .line 2727
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->i(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/view/View;)F
    .locals 1

    .line 3011
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->j(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static k(Landroid/view/View;)F
    .locals 1

    .line 3027
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->k(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static l(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 3052
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/view/View;)V
    .locals 1

    .line 3067
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->m(Landroid/view/View;)V

    .line 3068
    return-void
.end method

.method public static n(Landroid/view/View;)Z
    .locals 1

    .line 3091
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->n(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/view/View;)Z
    .locals 1

    .line 3208
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->o(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .line 1845
    iget-object p1, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1846
    return-void
.end method

.method public static p(Landroid/view/View;)V
    .locals 1

    .line 3335
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->p(Landroid/view/View;)V

    .line 3336
    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 2225
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/D;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static q(Landroid/view/View;)Z
    .locals 1

    .line 3625
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->q(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/view/View;)F
    .locals 1

    .line 3650
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->r(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static s(Landroid/view/View;)Z
    .locals 1

    .line 3718
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->s(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static t(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .line 3812
    sget-object v0, Landroid/support/v4/view/s;->jA:Landroid/support/v4/view/D;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/D;->t(Landroid/view/View;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method
