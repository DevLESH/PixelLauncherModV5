.class public final Landroid/support/v4/view/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final jZ:Landroid/support/v4/view/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 193
    new-instance v0, Landroid/support/v4/view/Y;

    invoke-direct {v0}, Landroid/support/v4/view/Y;-><init>()V

    sput-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    return-void

    .line 194
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 195
    new-instance v0, Landroid/support/v4/view/X;

    invoke-direct {v0}, Landroid/support/v4/view/X;-><init>()V

    sput-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    return-void

    .line 197
    :cond_1
    new-instance v0, Landroid/support/v4/view/Z;

    invoke-direct {v0}, Landroid/support/v4/view/Z;-><init>()V

    sput-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    .line 199
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;I)V
    .locals 1

    .line 394
    instance-of v0, p0, Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    .line 396
    check-cast p0, Landroid/support/v4/view/o;

    invoke-interface {p0, p2}, Landroid/support/v4/view/o;->f(I)V

    return-void

    .line 397
    :cond_0
    if-nez p2, :cond_1

    .line 399
    sget-object p2, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    invoke-virtual {p2, p0, p1}, Landroid/support/v4/view/Z;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 401
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V
    .locals 7

    .line 427
    instance-of v0, p0, Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    .line 429
    check-cast p0, Landroid/support/v4/view/o;

    invoke-interface {p0, p6}, Landroid/support/v4/view/o;->g(I)V

    return-void

    .line 431
    :cond_0
    if-nez p6, :cond_1

    .line 433
    sget-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/Z;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 435
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;II[II)V
    .locals 6

    .line 460
    instance-of v0, p0, Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    .line 462
    check-cast p0, Landroid/support/v4/view/o;

    invoke-interface {p0, p2, p3, p4, p5}, Landroid/support/v4/view/o;->a(II[II)V

    return-void

    .line 463
    :cond_0
    if-nez p5, :cond_1

    .line 465
    sget-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/Z;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 467
    :cond_1
    return-void
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .locals 1

    .line 515
    sget-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/view/Z;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .locals 6

    .line 490
    sget-object v0, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/Z;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    .line 341
    instance-of v0, p0, Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    .line 343
    check-cast p0, Landroid/support/v4/view/o;

    invoke-interface {p0, p4}, Landroid/support/v4/view/o;->e(I)Z

    move-result p0

    return p0

    .line 345
    :cond_0
    if-nez p4, :cond_1

    .line 347
    sget-object p4, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/Z;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 349
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 229
    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 371
    instance-of v0, p0, Landroid/support/v4/view/o;

    if-eqz v0, :cond_0

    .line 373
    check-cast p0, Landroid/support/v4/view/o;

    invoke-interface {p0, p2, p3}, Landroid/support/v4/view/o;->c(Landroid/view/View;I)V

    return-void

    .line 375
    :cond_0
    if-nez p4, :cond_1

    .line 377
    sget-object p4, Landroid/support/v4/view/W;->jZ:Landroid/support/v4/view/Z;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/support/v4/view/Z;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    .line 379
    :cond_1
    return-void
.end method
