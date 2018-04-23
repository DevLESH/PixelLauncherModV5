.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/o;


# static fields
.field static final aQ:Ljava/lang/String;

.field static final aR:[Ljava/lang/Class;

.field static final aS:Ljava/lang/ThreadLocal;

.field static final aT:Ljava/util/Comparator;

.field private static final aU:Landroid/support/v4/c/r;


# instance fields
.field private final aV:Ljava/util/List;

.field private final aW:Landroid/support/v4/widget/a;

.field private final aX:Ljava/util/List;

.field private final aY:[I

.field private aZ:Z

.field private ba:[I

.field private bb:Landroid/view/View;

.field private bc:Landroid/view/View;

.field private bd:Landroid/support/design/widget/e;

.field private be:Z

.field bf:Landroid/support/v4/view/aa;

.field bh:Z

.field private bi:Landroid/graphics/drawable/Drawable;

.field bj:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private bk:Landroid/support/v4/view/q;

.field private final bl:Landroid/support/v4/view/p;

.field private mIsAttachedToWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    const-class v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->aQ:Ljava/lang/String;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 126
    new-instance v0, Landroid/support/design/widget/g;

    invoke-direct {v0}, Landroid/support/design/widget/g;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->aT:Ljava/util/Comparator;

    goto :goto_1

    .line 128
    :cond_1
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->aT:Ljava/util/Comparator;

    .line 132
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->aR:[Ljava/lang/Class;

    .line 137
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->aS:Ljava/lang/ThreadLocal;

    .line 151
    new-instance v0, Landroid/support/v4/c/t;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/c/t;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout;->aU:Landroid/support/v4/c/r;

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 580
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->ba:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return v1

    .line 585
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->ba:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 590
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->ba:[I

    aget p1, v0, p1

    return p1

    .line 586
    :cond_2
    :goto_0
    const-string v0, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " out of range for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v1
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/b;
    .locals 4

    .line 594
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 p0, 0x0

    return-object p0

    .line 599
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 602
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 604
    goto :goto_0

    .line 607
    :cond_2
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->aQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/support/design/widget/CoordinatorLayout;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 613
    :cond_3
    :goto_0
    :try_start_0
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->aS:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 614
    if-nez v0, :cond_4

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 616
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->aS:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 618
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 619
    const/4 v2, 0x1

    if-nez v1, :cond_5

    .line 620
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 621
    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 622
    sget-object v3, Landroid/support/design/widget/CoordinatorLayout;->aR:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 624
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/design/widget/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 627
    :catch_0
    move-exception p0

    .line 628
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not inflate Behavior subclass "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/d;II)V
    .locals 6

    .line 956
    iget v0, p4, Landroid/support/design/widget/d;->gravity:I

    .line 957
    if-nez v0, :cond_0

    const/16 v0, 0x11

    .line 956
    :cond_0
    invoke-static {v0, p1}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v0

    .line 958
    iget p4, p4, Landroid/support/design/widget/d;->bp:I

    .line 959
    invoke-static {p4}, Landroid/support/design/widget/CoordinatorLayout;->b(I)I

    move-result p4

    .line 958
    invoke-static {p4, p1}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result p1

    .line 962
    and-int/lit8 p4, v0, 0x7

    .line 963
    and-int/lit8 v0, v0, 0x70

    .line 964
    and-int/lit8 v1, p1, 0x7

    .line 965
    and-int/lit8 p1, p1, 0x70

    .line 973
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 976
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 977
    goto :goto_0

    .line 979
    :cond_1
    iget v1, p2, Landroid/graphics/Rect;->right:I

    .line 980
    goto :goto_0

    .line 982
    :cond_2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 986
    :goto_0
    const/16 v4, 0x50

    const/16 v5, 0x10

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    .line 989
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 990
    goto :goto_1

    .line 992
    :cond_3
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 993
    goto :goto_1

    .line 995
    :cond_4
    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 1000
    :goto_1
    if-eq p4, v3, :cond_6

    if-eq p4, v2, :cond_5

    .line 1003
    sub-int/2addr v1, p5

    .line 1004
    goto :goto_2

    .line 1007
    :cond_5
    goto :goto_2

    .line 1009
    :cond_6
    div-int/lit8 p2, p5, 0x2

    sub-int/2addr v1, p2

    .line 1013
    :goto_2
    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    .line 1016
    sub-int/2addr p1, p6

    .line 1017
    goto :goto_3

    .line 1020
    :cond_7
    goto :goto_3

    .line 1022
    :cond_8
    div-int/lit8 p2, p6, 0x2

    sub-int/2addr p1, p2

    .line 1026
    :goto_3
    add-int/2addr p5, v1

    add-int/2addr p6, p1

    invoke-virtual {p3, v1, p1, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1027
    return-void
.end method

.method private static a(Landroid/graphics/Rect;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 164
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->aU:Landroid/support/v4/c/r;

    invoke-interface {v0, p0}, Landroid/support/v4/c/r;->m(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method private a(Landroid/support/design/widget/d;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1030
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1031
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1034
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/d;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1036
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/support/design/widget/d;->rightMargin:I

    sub-int/2addr v0, v4

    .line 1035
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1034
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1037
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/support/design/widget/d;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 1039
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/support/design/widget/d;->bottomMargin:I

    sub-int/2addr v1, p1

    .line 1038
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1037
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1041
    add-int/2addr p3, v0

    add-int/2addr p4, p1

    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1042
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    .line 1448
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/d;

    .line 1449
    iget v1, v0, Landroid/support/design/widget/d;->bu:I

    if-eq v1, p2, :cond_0

    .line 1450
    iget v1, v0, Landroid/support/design/widget/d;->bu:I

    sub-int v1, p2, v1

    .line 1451
    invoke-static {p1, v1}, Landroid/support/v4/view/s;->f(Landroid/view/View;I)V

    .line 1452
    iput p2, v0, Landroid/support/design/widget/d;->bu:I

    .line 1454
    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    .line 432
    nop

    .line 435
    nop

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 439
    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->aX:Ljava/util/List;

    .line 440
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    invoke-virtual {v0, v6}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->aT:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->aT:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_a

    .line 445
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 446
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/d;

    .line 447
    iget-object v8, v7, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 449
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 452
    if-eqz v8, :cond_9

    .line 453
    if-nez v6, :cond_3

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 455
    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v11

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 458
    :cond_3
    goto :goto_5

    .line 470
    :cond_4
    iget-object v5, v7, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    if-nez v5, :cond_5

    iput-boolean v3, v7, Landroid/support/design/widget/d;->bx:Z

    :cond_5
    iget-boolean v5, v7, Landroid/support/design/widget/d;->bx:Z

    .line 487
    iget-boolean v8, v7, Landroid/support/design/widget/d;->bx:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_6

    .line 488
    move v8, v9

    goto :goto_3

    .line 487
    :cond_6
    iget-boolean v8, v7, Landroid/support/design/widget/d;->bx:Z

    or-int/2addr v8, v3

    iput-boolean v8, v7, Landroid/support/design/widget/d;->bx:Z

    .line 488
    :goto_3
    if-eqz v8, :cond_7

    if-nez v5, :cond_7

    goto :goto_4

    .line 489
    :cond_7
    move v9, v3

    :goto_4
    if-eqz v8, :cond_8

    if-eqz v9, :cond_a

    .line 492
    :cond_8
    move v5, v9

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 496
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 498
    return v3
.end method

.method private static b(I)I
    .locals 1

    .line 1191
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    .line 1192
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1194
    :cond_0
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_1

    .line 1195
    or-int/lit8 p0, p0, 0x30

    .line 1197
    :cond_1
    return p0
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    .line 1457
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/d;

    .line 1458
    iget v1, v0, Landroid/support/design/widget/d;->bv:I

    if-eq v1, p2, :cond_0

    .line 1459
    iget v1, v0, Landroid/support/design/widget/d;->bv:I

    sub-int v1, p2, v1

    .line 1460
    invoke-static {p1, v1}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    .line 1461
    iput p2, v0, Landroid/support/design/widget/d;->bv:I

    .line 1463
    :cond_0
    return-void
.end method

.method private static c(I)I
    .locals 0

    .line 1205
    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private static l()Landroid/graphics/Rect;
    .locals 1

    .line 155
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->aU:Landroid/support/v4/c/r;

    invoke-interface {v0}, Landroid/support/v4/c/r;->aH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 156
    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 159
    :cond_0
    return-object v0
.end method

.method private m()V
    .locals 12

    .line 384
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 385
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 386
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/d;

    .line 388
    iget-object v3, v3, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 389
    if-eqz v3, :cond_0

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 391
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 393
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    :cond_1
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 403
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/d;

    .line 405
    iput-boolean v1, v3, Landroid/support/design/widget/d;->bx:Z

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bb:Landroid/view/View;

    .line 408
    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->aZ:Z

    .line 409
    return-void
.end method


# virtual methods
.method final a(Landroid/view/View;)Landroid/support/design/widget/d;
    .locals 6

    .line 633
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/d;

    .line 634
    iget-boolean v1, v0, Landroid/support/design/widget/d;->bo:Z

    if-nez v1, :cond_3

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 636
    nop

    .line 637
    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_0

    const-class v2, Landroid/support/design/widget/c;

    .line 638
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/c;

    if-nez v2, :cond_0

    .line 639
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 641
    :cond_0
    const/4 p1, 0x1

    if-eqz v2, :cond_2

    .line 643
    nop

    .line 644
    :try_start_0
    invoke-interface {v2}, Landroid/support/design/widget/c;->value()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/b;

    .line 643
    iget-object v4, v0, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    if-eq v4, v3, :cond_1

    iput-object v3, v0, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    iput-object v1, v0, Landroid/support/design/widget/d;->bC:Ljava/lang/Object;

    iput-boolean p1, v0, Landroid/support/design/widget/d;->bo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :cond_1
    goto :goto_1

    .line 645
    :catch_0
    move-exception v1

    .line 646
    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default behavior class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/support/design/widget/c;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    :cond_2
    :goto_1
    iput-boolean p1, v0, Landroid/support/design/widget/d;->bo:Z

    .line 652
    :cond_3
    return-object v0
.end method

.method public final a(II[II)V
    .locals 10

    .line 1842
    nop

    .line 1843
    nop

    .line 1844
    nop

    .line 1846
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1847
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v2, v0, :cond_3

    .line 1848
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1849
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 1851
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/d;

    .line 1855
    invoke-virtual {v7, p4}, Landroid/support/design/widget/d;->h(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1856
    iget-object v7, v7, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 1860
    if-eqz v7, :cond_2

    .line 1861
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->aY:[I

    iget-object v7, p0, Landroid/support/design/widget/CoordinatorLayout;->aY:[I

    aput v1, v7, v6

    aput v1, v5, v1

    .line 1862
    if-lez p1, :cond_0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->aY:[I

    aget v5, v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_0
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->aY:[I

    aget v5, v5, v1

    .line 1865
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1866
    :goto_1
    if-lez p2, :cond_1

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->aY:[I

    aget v5, v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_1
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->aY:[I

    aget v5, v5, v6

    .line 1867
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1869
    :goto_2
    nop

    .line 1847
    move v5, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1873
    :cond_3
    aput v3, p3, v1

    .line 1874
    aput v4, p3, v6

    .line 1876
    if-eqz v5, :cond_4

    .line 1877
    invoke-virtual {p0, v6}, Landroid/support/design/widget/CoordinatorLayout;->d(I)V

    .line 1879
    :cond_4
    return-void
.end method

.method final a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 2

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    if-eqz p2, :cond_1

    .line 948
    invoke-static {p0, p1, p3}, Landroid/support/v4/widget/B;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    .line 950
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 952
    return-void

    .line 944
    :cond_2
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 945
    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 1

    .line 1751
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bl:Landroid/support/v4/view/p;

    iput p2, v0, Landroid/support/v4/view/p;->jz:I

    .line 1752
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bc:Landroid/view/View;

    .line 1754
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1755
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 1756
    invoke-virtual {p0, p2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1757
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1758
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1768
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1711
    instance-of v0, p1, Landroid/support/design/widget/d;

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

.method final d(I)V
    .locals 25

    move-object/from16 v7, p0

    .line 1262
    move/from16 v8, p1

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v9

    .line 1263
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1264
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v11

    .line 1265
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v12

    .line 1266
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v13

    .line 1268
    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v10, :cond_17

    .line 1269
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/View;

    .line 1270
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/design/widget/d;

    .line 1271
    if-nez v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1268
    :cond_0
    move v1, v10

    move-object v2, v13

    move v0, v14

    move/from16 v22, v15

    goto/16 :goto_d

    .line 1273
    :cond_1
    :goto_1
    move v4, v14

    :goto_2
    if-ge v4, v15, :cond_6

    .line 1278
    iget-object v0, v7, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1280
    iget-object v1, v5, Landroid/support/design/widget/d;->bw:Landroid/view/View;

    if-ne v1, v0, :cond_5

    .line 1281
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/design/widget/d;

    iget-object v0, v3, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    invoke-static {v7, v0, v2}, Landroid/support/v4/widget/B;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v6, v14, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move/from16 v18, v0

    move-object/from16 v17, v16

    move-object v0, v7

    move/from16 v19, v10

    move-object v10, v1

    move v1, v9

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v3, v17

    move/from16 v16, v4

    move-object/from16 v4, v21

    move/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v18

    move-object/from16 v23, v13

    move-object v13, v6

    move v6, v14

    invoke-direct/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/d;II)V

    move-object/from16 v0, v17

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    :cond_2
    move/from16 v2, v18

    move-object/from16 v1, v21

    invoke-direct {v7, v1, v0, v2, v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/d;Landroid/graphics/Rect;II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    if-eqz v1, :cond_3

    invoke-static {v13, v1}, Landroid/support/v4/view/s;->f(Landroid/view/View;I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v13, v2}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    :cond_4
    move-object/from16 v1, v20

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 1277
    :cond_5
    move/from16 v16, v4

    move/from16 v19, v10

    move-object/from16 v23, v13

    move/from16 v22, v15

    move-object v15, v5

    move-object v13, v6

    :goto_3
    add-int/lit8 v4, v16, 0x1

    .line 1273
    move-object v6, v13

    move-object v5, v15

    move/from16 v10, v19

    move/from16 v15, v22

    move-object/from16 v13, v23

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1286
    :cond_6
    move/from16 v19, v10

    move-object/from16 v23, v13

    move/from16 v22, v15

    move-object v15, v5

    move-object v13, v6

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14, v12}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1289
    iget v0, v15, Landroid/support/design/widget/d;->bs:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/16 v3, 0x50

    const/16 v4, 0x30

    if-eqz v0, :cond_b

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1290
    iget v0, v15, Landroid/support/design/widget/d;->bs:I

    invoke-static {v0, v9}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v0

    .line 1292
    and-int/lit8 v5, v0, 0x70

    if-eq v5, v4, :cond_8

    if-eq v5, v3, :cond_7

    goto :goto_4

    .line 1297
    :cond_7
    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v10, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v11, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 1294
    :cond_8
    iget v5, v11, Landroid/graphics/Rect;->top:I

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v11, Landroid/graphics/Rect;->top:I

    .line 1295
    nop

    .line 1300
    :goto_4
    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_a

    if-eq v0, v1, :cond_9

    goto :goto_5

    .line 1305
    :cond_9
    iget v0, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 1302
    :cond_a
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 1303
    nop

    .line 1311
    :cond_b
    :goto_5
    iget v0, v15, Landroid/support/design/widget/d;->bt:I

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 1312
    invoke-static {v13}, Landroid/support/v4/view/s;->q(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/d;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v6, v10, v15, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-static {v6}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, v0, Landroid/support/design/widget/d;->bt:I

    invoke-static {v1, v9}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v6, v1, 0x30

    if-ne v6, v4, :cond_d

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/support/design/widget/d;->topMargin:I

    sub-int/2addr v4, v6

    iget v6, v0, Landroid/support/design/widget/d;->bv:I

    sub-int/2addr v4, v6

    iget v6, v11, Landroid/graphics/Rect;->top:I

    if-ge v4, v6, :cond_d

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    invoke-direct {v7, v13, v6}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    const/4 v14, 0x1

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    :goto_6
    and-int/lit8 v4, v1, 0x50

    if-ne v4, v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/design/widget/d;->bottomMargin:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/design/widget/d;->bv:I

    add-int/2addr v3, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_e

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-direct {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    const/4 v14, 0x1

    :cond_e
    if-nez v14, :cond_f

    const/4 v3, 0x0

    invoke-direct {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->b(Landroid/view/View;I)V

    :cond_f
    and-int/lit8 v3, v1, 0x3

    if-ne v3, v2, :cond_10

    iget v2, v5, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/support/design/widget/d;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/design/widget/d;->bu:I

    sub-int/2addr v2, v3

    iget v3, v11, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_10

    iget v3, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    invoke-direct {v7, v13, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    const/4 v14, 0x1

    goto :goto_7

    :cond_10
    const/4 v14, 0x0

    :goto_7
    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v1

    iget v2, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/support/design/widget/d;->rightMargin:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/support/design/widget/d;->bu:I

    add-int/2addr v1, v0

    iget v0, v11, Landroid/graphics/Rect;->right:I

    if-ge v1, v0, :cond_11

    iget v0, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    invoke-direct {v7, v13, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    const/4 v14, 0x1

    :cond_11
    if-nez v14, :cond_12

    const/4 v0, 0x0

    invoke-direct {v7, v13, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;I)V

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    :goto_8
    invoke-static {v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 1315
    :cond_13
    :goto_9
    const/4 v0, 0x0

    :goto_a
    const/4 v1, 0x2

    if-eq v8, v1, :cond_15

    .line 1317
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/d;

    iget-object v1, v1, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    move-object/from16 v2, v23

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1318
    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1319
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/d;

    iget-object v1, v1, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 1268
    :cond_14
    move/from16 v1, v19

    goto :goto_d

    .line 1325
    :cond_15
    move-object/from16 v2, v23

    :goto_b
    add-int/lit8 v15, v22, 0x1

    :goto_c
    move/from16 v1, v19

    if-ge v15, v1, :cond_16

    .line 1326
    iget-object v3, v7, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1327
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1328
    add-int/lit8 v15, v15, 0x1

    .line 1325
    move/from16 v19, v1

    goto :goto_c

    .line 1268
    :cond_16
    :goto_d
    add-int/lit8 v15, v22, 0x1

    move v14, v0

    move v10, v1

    move-object v13, v2

    goto/16 :goto_0

    .line 1361
    :cond_17
    move-object v2, v13

    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 1362
    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 1363
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    .line 1364
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1218
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 305
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 307
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 308
    nop

    .line 310
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    .line 311
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    .line 315
    :cond_0
    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 318
    :cond_1
    return-void
.end method

.method public final e(I)Z
    .locals 6

    .line 1721
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1724
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1725
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1726
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1728
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/d;

    .line 1731
    invoke-virtual {v3, p1, v1}, Landroid/support/design/widget/d;->a(IZ)V

    .line 1724
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1741
    :cond_1
    return v1
.end method

.method public final f(I)V
    .locals 5

    .line 1777
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bl:Landroid/support/v4/view/p;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v4/view/p;->jz:I

    .line 1779
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1780
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1781
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1782
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/d;

    .line 1783
    invoke-virtual {v3, p1}, Landroid/support/design/widget/d;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1784
    invoke-virtual {v3, p1, v1}, Landroid/support/design/widget/d;->a(IZ)V

    .line 1792
    iput-boolean v1, v3, Landroid/support/design/widget/d;->bA:Z

    .line 1780
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1794
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bc:Landroid/view/View;

    .line 1795
    return-void
.end method

.method public final g(I)V
    .locals 7

    .line 1807
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1808
    nop

    .line 1810
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 1811
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1812
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 1814
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/d;

    .line 1818
    invoke-virtual {v4, p1}, Landroid/support/design/widget/d;->h(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1819
    iget-object v4, v4, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 1823
    if-eqz v4, :cond_0

    .line 1824
    nop

    .line 1810
    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1830
    :cond_1
    if-eqz v2, :cond_2

    .line 1831
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->d(I)V

    .line 1833
    :cond_2
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 112
    new-instance v0, Landroid/support/design/widget/d;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/d;-><init>(II)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 112
    new-instance v0, Landroid/support/design/widget/d;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 112
    instance-of v0, p1, Landroid/support/design/widget/d;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/design/widget/d;

    check-cast p1, Landroid/support/design/widget/d;

    invoke-direct {v0, p1}, Landroid/support/design/widget/d;-><init>(Landroid/support/design/widget/d;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/design/widget/d;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/d;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/design/widget/d;

    invoke-direct {v0, p1}, Landroid/support/design/widget/d;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1937
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bl:Landroid/support/v4/view/p;

    iget v0, v0, Landroid/support/v4/view/p;->jz:I

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .line 709
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .line 704
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 238
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->m()V

    .line 239
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->be:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0, p0}, Landroid/support/design/widget/e;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 244
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/s;->m(Landroid/view/View;)V

    .line 251
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 252
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 256
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 257
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->m()V

    .line 258
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->be:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 260
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bc:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bc:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 265
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 266
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 890
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 891
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v0}, Landroid/support/v4/view/aa;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    .line 893
    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    .line 894
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 895
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 898
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 508
    if-nez v0, :cond_0

    .line 509
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->m()V

    .line 512
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 514
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 519
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->m()V

    .line 522
    :cond_2
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 870
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v8

    .line 871
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 872
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_c

    .line 873
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/view/View;

    .line 874
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    .line 876
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 880
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/d;

    iget-object v2, v1, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, v1, Landroid/support/design/widget/d;->br:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v13

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v14

    :try_start_0
    invoke-static {v0, v1, v13}, Landroid/support/v4/widget/B;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/support/design/widget/d;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object v1, v0

    move v2, v8

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v16, v6

    move v6, v7

    move v10, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/d;II)V

    move/from16 v1, v16

    invoke-direct {v0, v15, v14, v10, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/support/design/widget/d;Landroid/graphics/Rect;II)V

    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/Rect;->right:I

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v13}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v13}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v14}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    throw v0

    :cond_2
    iget v2, v1, Landroid/support/design/widget/d;->bq:I

    if-ltz v2, :cond_8

    iget v1, v1, Landroid/support/design/widget/d;->bq:I

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/d;

    iget v4, v2, Landroid/support/design/widget/d;->gravity:I

    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->c(I)I

    move-result v4

    invoke-static {v4, v8}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    if-ne v8, v3, :cond_3

    sub-int v1, v6, v1

    :cond_3
    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v1

    sub-int/2addr v1, v10

    if-eq v5, v3, :cond_5

    const/4 v3, 0x5

    if-eq v5, v3, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr v1, v10

    goto :goto_2

    :cond_5
    div-int/lit8 v3, v10, 0x2

    add-int/2addr v1, v3

    :goto_2
    const/16 v3, 0x10

    if-eq v4, v3, :cond_7

    const/16 v3, 0x50

    if-eq v4, v3, :cond_6

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    add-int v3, v14, v13

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    div-int/lit8 v3, v13, 0x2

    add-int/2addr v3, v14

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v2, Landroid/support/design/widget/d;->leftMargin:I

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int/2addr v6, v10

    iget v5, v2, Landroid/support/design/widget/d;->rightMargin:I

    sub-int/2addr v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v4

    iget v5, v2, Landroid/support/design/widget/d;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v7, v5

    sub-int/2addr v7, v13

    iget v2, v2, Landroid/support/design/widget/d;->bottomMargin:I

    sub-int/2addr v7, v2

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v10, v1

    add-int/2addr v13, v2

    invoke-virtual {v12, v1, v2, v10, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    :cond_8
    const/4 v14, 0x0

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/d;

    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/support/design/widget/d;->leftMargin:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, v1, Landroid/support/design/widget/d;->topMargin:I

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/support/design/widget/d;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/support/design/widget/d;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    if-eqz v2, :cond_9

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v12}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v3}, Landroid/support/v4/view/aa;->getSystemWindowInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->left:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v3}, Landroid/support/v4/view/aa;->getSystemWindowInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->top:I

    iget v2, v7, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v3}, Landroid/support/v4/view/aa;->getSystemWindowInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->right:I

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v3}, Landroid/support/v4/view/aa;->getSystemWindowInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :cond_9
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->l()Landroid/graphics/Rect;

    move-result-object v10

    iget v1, v1, Landroid/support/design/widget/d;->gravity:I

    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->b(I)I

    move-result v1

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_a

    move-object v4, v7

    move-object v5, v10

    move v6, v8

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_4

    :cond_a
    invoke-static {v1, v2, v3, v7, v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_4
    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    invoke-static {v10}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 872
    :cond_b
    :goto_5
    const/4 v14, 0x0

    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 886
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v6, p0

    .line 733
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    iget-object v1, v0, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v1}, Landroid/support/v4/c/u;->size()I

    move-result v1

    const/4 v7, 0x0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Landroid/support/v4/widget/a;->kh:Landroid/support/v4/c/r;

    invoke-interface {v4, v3}, Landroid/support/v4/c/r;->m(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v0}, Landroid/support/v4/c/u;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_1
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1b

    invoke-virtual {v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Landroid/support/design/widget/d;

    move-result-object v4

    iget v5, v4, Landroid/support/design/widget/d;->br:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-ne v5, v8, :cond_2

    :goto_2
    iput-object v9, v4, Landroid/support/design/widget/d;->bw:Landroid/view/View;

    iput-object v9, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    goto/16 :goto_8

    :cond_2
    iget-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    iget v8, v4, Landroid/support/design/widget/d;->br:I

    if-eq v5, v8, :cond_3

    :goto_3
    move v5, v7

    goto :goto_6

    :cond_3
    iget-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    iget-object v8, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    :goto_4
    if-eq v8, v6, :cond_7

    if-eqz v8, :cond_6

    if-ne v8, v3, :cond_4

    goto :goto_5

    :cond_4
    instance-of v10, v8, Landroid/view/View;

    if-eqz v10, :cond_5

    move-object v5, v8

    check-cast v5, Landroid/view/View;

    :cond_5
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_4

    :cond_6
    :goto_5
    iput-object v9, v4, Landroid/support/design/widget/d;->bw:Landroid/view/View;

    iput-object v9, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    goto :goto_3

    :cond_7
    iput-object v5, v4, Landroid/support/design/widget/d;->bw:Landroid/view/View;

    move v5, v2

    :goto_6
    if-nez v5, :cond_10

    :cond_8
    iget v5, v4, Landroid/support/design/widget/d;->br:I

    invoke-virtual {v6, v5}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    iget-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_f

    iget-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    if-ne v5, v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v5, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    iget-object v8, v4, Landroid/support/design/widget/d;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    :goto_7
    if-eq v8, v6, :cond_e

    if-eqz v8, :cond_e

    if-ne v8, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    instance-of v10, v8, Landroid/view/View;

    if-eqz v10, :cond_d

    move-object v5, v8

    check-cast v5, Landroid/view/View;

    :cond_d
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    goto :goto_7

    :cond_e
    iput-object v5, v4, Landroid/support/design/widget/d;->bw:Landroid/view/View;

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto/16 :goto_2

    :cond_10
    :goto_8
    iget-object v5, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    invoke-virtual {v5, v3}, Landroid/support/v4/widget/a;->p(Ljava/lang/Object;)V

    move v5, v7

    :goto_9
    if-ge v5, v0, :cond_19

    if-eq v5, v1, :cond_18

    invoke-virtual {v6, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, v4, Landroid/support/design/widget/d;->bw:Landroid/view/View;

    if-eq v8, v9, :cond_12

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/d;

    iget v10, v10, Landroid/support/design/widget/d;->bs:I

    invoke-static {v10, v9}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v10

    if-eqz v10, :cond_11

    iget v11, v4, Landroid/support/design/widget/d;->bt:I

    invoke-static {v11, v9}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v9

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_11

    move v9, v2

    goto :goto_a

    :cond_11
    move v9, v7

    :goto_a
    if-nez v9, :cond_12

    iget-object v9, v4, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    move v9, v7

    goto :goto_b

    :cond_12
    move v9, v2

    :goto_b
    if-eqz v9, :cond_18

    iget-object v9, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    iget-object v9, v9, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v9, v8}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v9, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    invoke-virtual {v9, v8}, Landroid/support/v4/widget/a;->p(Ljava/lang/Object;)V

    :cond_13
    iget-object v9, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    iget-object v10, v9, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v10, v8}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v10, v9, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v10, v3}, Landroid/support/v4/c/u;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto :goto_c

    :cond_14
    iget-object v10, v9, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v10, v8}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_16

    iget-object v10, v9, Landroid/support/v4/widget/a;->kh:Landroid/support/v4/c/r;

    invoke-interface {v10}, Landroid/support/v4/c/r;->aH()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_15

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    iget-object v9, v9, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v9, v8, v10}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    :goto_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All nodes must be present in the graph before being added as an edge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v4, Landroid/support/design/widget/d;->br:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    invoke-virtual {v1}, Landroid/support/v4/widget/a;->aL()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_e
    if-ge v1, v0, :cond_1f

    invoke-virtual {v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v6, Landroid/support/design/widget/CoordinatorLayout;->aW:Landroid/support/v4/widget/a;

    iget-object v5, v4, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v5}, Landroid/support/v4/c/u;->size()I

    move-result v5

    move v8, v7

    :goto_f
    if-ge v8, v5, :cond_1d

    iget-object v9, v4, Landroid/support/v4/widget/a;->ki:Landroid/support/v4/c/u;

    invoke-virtual {v9, v8}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_1c

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    move v3, v2

    goto :goto_10

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1d
    move v3, v7

    :goto_10
    if-eqz v3, :cond_1e

    move v0, v2

    goto :goto_11

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    move v0, v7

    :goto_11
    iget-boolean v1, v6, Landroid/support/design/widget/CoordinatorLayout;->be:Z

    if-eq v0, v1, :cond_24

    if-eqz v0, :cond_22

    iget-boolean v0, v6, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_21

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    if-nez v0, :cond_20

    new-instance v0, Landroid/support/design/widget/e;

    invoke-direct {v0, v6}, Landroid/support/design/widget/e;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_21
    iput-boolean v2, v6, Landroid/support/design/widget/CoordinatorLayout;->be:Z

    goto :goto_12

    :cond_22
    iget-boolean v0, v6, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_23

    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    if-eqz v0, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bd:Landroid/support/design/widget/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_23
    iput-boolean v7, v6, Landroid/support/design/widget/CoordinatorLayout;->be:Z

    .line 736
    :cond_24
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    .line 738
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v9

    .line 739
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v1

    .line 740
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v10

    .line 741
    if-ne v10, v2, :cond_25

    .line 742
    move v11, v2

    goto :goto_13

    .line 741
    :cond_25
    nop

    .line 742
    move v11, v7

    :goto_13
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 743
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 744
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 745
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 747
    add-int v16, v8, v9

    .line 748
    add-int v17, v0, v1

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v0

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v1

    .line 751
    nop

    .line 753
    iget-object v3, v6, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    if-eqz v3, :cond_26

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 755
    move/from16 v18, v2

    goto :goto_14

    .line 753
    :cond_26
    nop

    .line 755
    move/from16 v18, v7

    :goto_14
    iget-object v2, v6, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 756
    move v3, v0

    move v2, v7

    move v4, v2

    :goto_15
    if-ge v4, v5, :cond_30

    .line 757
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout;->aV:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 758
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v20, v1

    const/16 v1, 0x8

    if-eq v7, v1, :cond_2f

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/support/design/widget/d;

    .line 765
    nop

    .line 766
    iget v1, v7, Landroid/support/design/widget/d;->bq:I

    if-ltz v1, :cond_2c

    if-eqz v12, :cond_2c

    .line 767
    iget v1, v7, Landroid/support/design/widget/d;->bq:I

    invoke-direct {v6, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(I)I

    move-result v1

    .line 768
    move/from16 v21, v2

    iget v2, v7, Landroid/support/design/widget/d;->gravity:I

    .line 769
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->c(I)I

    move-result v2

    .line 768
    invoke-static {v2, v10}, Landroid/support/v4/view/g;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 771
    move/from16 v22, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    if-eqz v11, :cond_28

    :cond_27
    const/4 v3, 0x5

    if-ne v2, v3, :cond_29

    if-eqz v11, :cond_29

    .line 773
    :cond_28
    sub-int v2, v13, v9

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 780
    move v3, v1

    move/from16 v19, v2

    goto :goto_16

    .line 774
    :cond_29
    if-ne v2, v3, :cond_2a

    if-eqz v11, :cond_2b

    :cond_2a
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    if-eqz v11, :cond_2d

    .line 776
    :cond_2b
    sub-int/2addr v1, v8

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 780
    move/from16 v19, v1

    goto :goto_16

    :cond_2c
    move/from16 v21, v2

    move/from16 v22, v3

    :cond_2d
    const/4 v3, 0x0

    move/from16 v19, v3

    .line 781
    :goto_16
    nop

    .line 782
    if-eqz v18, :cond_2e

    invoke-static {v0}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 785
    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v1}, Landroid/support/v4/view/aa;->getSystemWindowInsetLeft()I

    move-result v1

    iget-object v2, v6, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    .line 786
    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getSystemWindowInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 787
    iget-object v2, v6, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    invoke-virtual {v2}, Landroid/support/v4/view/aa;->getSystemWindowInsetTop()I

    move-result v2

    iget-object v3, v6, Landroid/support/design/widget/CoordinatorLayout;->bf:Landroid/support/v4/view/aa;

    .line 788
    invoke-virtual {v3}, Landroid/support/v4/view/aa;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 790
    sub-int v1, v13, v1

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 792
    sub-int v2, v15, v2

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 796
    move/from16 v23, v2

    move v2, v1

    goto :goto_17

    :cond_2e
    move/from16 v2, p1

    move/from16 v23, p2

    :goto_17
    const/16 v24, 0x0

    move-object v3, v0

    move-object v0, v6

    move/from16 v25, v20

    move-object v1, v3

    move/from16 v26, v21

    move-object/from16 v27, v3

    move/from16 v28, v22

    const/16 v20, 0x0

    move/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v23

    move/from16 v21, v5

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 803
    move-object/from16 v0, v27

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v1, v16, v1

    iget v2, v7, Landroid/support/design/widget/d;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v7, Landroid/support/design/widget/d;->rightMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v28

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 806
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v17, v2

    iget v3, v7, Landroid/support/design/widget/d;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v7, Landroid/support/design/widget/d;->bottomMargin:I

    add-int/2addr v2, v3

    move/from16 v3, v25

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 808
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    move/from16 v7, v26

    invoke-static {v7, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    .line 756
    move v3, v1

    move v1, v2

    move v2, v0

    goto :goto_18

    :cond_2f
    move v7, v2

    move v2, v3

    move/from16 v19, v4

    move/from16 v21, v5

    move/from16 v3, v20

    const/16 v20, 0x0

    move v1, v3

    move v3, v2

    move v2, v7

    :goto_18
    add-int/lit8 v4, v19, 0x1

    move/from16 v7, v20

    move/from16 v5, v21

    goto/16 :goto_15

    .line 811
    :cond_30
    move v7, v2

    move v2, v3

    move v3, v1

    const/high16 v0, -0x1000000

    and-int/2addr v0, v7

    move/from16 v1, p1

    invoke-static {v2, v1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 813
    shl-int/lit8 v1, v7, 0x10

    move/from16 v2, p2

    invoke-static {v3, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 815
    invoke-virtual {v6, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 816
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1883
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1886
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1887
    invoke-virtual {p0, p3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 1888
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1890
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1894
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1904
    :cond_1
    return p2
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    .line 1912
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result p1

    .line 1915
    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1916
    invoke-virtual {p0, p3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1917
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1919
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1923
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 1932
    :cond_1
    return p2
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    .line 1837
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(II[II)V

    .line 1838
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 1800
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->g(I)V

    .line 1802
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1746
    invoke-virtual {p0, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;I)V

    .line 1747
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 3106
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_0

    .line 3107
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3108
    return-void

    .line 3111
    :cond_0
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 3112
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jo:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3114
    iget-object p1, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;->bD:Landroid/util/SparseArray;

    .line 3116
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3117
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3118
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 3119
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)Landroid/support/design/widget/d;

    move-result-object v2

    .line 3120
    iget-object v2, v2, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 3122
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz v2, :cond_1

    .line 3123
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 3124
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3129
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 3133
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3135
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3136
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3137
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3138
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3139
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/d;

    .line 3140
    iget-object v4, v4, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 3142
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v4, :cond_0

    .line 3144
    sget-object v4, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 3145
    if-eqz v4, :cond_0

    .line 3146
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3150
    :cond_1
    iput-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->bD:Landroid/util/SparseArray;

    .line 3151
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1716
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->e(I)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 1772
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->f(I)V

    .line 1773
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 527
    nop

    .line 528
    nop

    .line 529
    nop

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 533
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bb:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 536
    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->bb:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/d;

    .line 537
    iget-object v3, v3, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 538
    if-eqz v3, :cond_1

    .line 539
    nop

    .line 544
    :cond_1
    iget-object v3, p0, Landroid/support/design/widget/CoordinatorLayout;->bb:Landroid/view/View;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 545
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 546
    :cond_2
    if-eqz v1, :cond_3

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 549
    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v5, v7

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 552
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 555
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    .line 560
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 563
    :cond_4
    const/4 p1, 0x1

    if-eq v0, p1, :cond_5

    const/4 p1, 0x3

    if-ne v0, p1, :cond_6

    .line 564
    :cond_5
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->m()V

    .line 567
    :cond_6
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 3156
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 3157
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 572
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 573
    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout;->aZ:Z

    if-nez p1, :cond_0

    .line 574
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->m()V

    .line 575
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/design/widget/CoordinatorLayout;->aZ:Z

    .line 577
    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 1

    .line 902
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 903
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/s;->n(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bk:Landroid/support/v4/view/q;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/design/widget/a;

    invoke-direct {p1, p0}, Landroid/support/design/widget/a;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bk:Landroid/support/v4/view/q;

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bk:Landroid/support/v4/view/q;

    invoke-static {p0, p1}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/q;)V

    const/16 p1, 0x500

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/view/s;->a(Landroid/view/View;Landroid/support/v4/view/q;)V

    .line 904
    :cond_2
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 232
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->bj:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 233
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 331
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 333
    :cond_1
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->bi:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
