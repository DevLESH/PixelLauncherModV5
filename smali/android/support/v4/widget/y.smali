.class public Landroid/support/v4/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field lT:I

.field lU:[F

.field lV:[F

.field lW:[F

.field lX:[F

.field private lY:[I

.field private lZ:[I

.field private lc:Landroid/widget/OverScroller;

.field mActivePointerId:I

.field mTouchSlop:I

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private ma:[I

.field private mb:I

.field private mc:F

.field private md:F

.field me:I

.field mf:I

.field private final mg:Landroid/support/v4/widget/A;

.field mh:Landroid/view/View;

.field mi:Z

.field private final mj:Landroid/view/ViewGroup;

.field private final mk:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 330
    new-instance v0, Landroid/support/v4/widget/z;

    invoke-direct {v0}, Landroid/support/v4/widget/z;-><init>()V

    sput-object v0, Landroid/support/v4/widget/y;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private E(I)V
    .locals 2

    .line 800
    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/y;->F(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 804
    iget-object v0, p0, Landroid/support/v4/widget/y;->lV:[F

    aput v1, v0, p1

    .line 805
    iget-object v0, p0, Landroid/support/v4/widget/y;->lW:[F

    aput v1, v0, p1

    .line 806
    iget-object v0, p0, Landroid/support/v4/widget/y;->lX:[F

    aput v1, v0, p1

    .line 807
    iget-object v0, p0, Landroid/support/v4/widget/y;->lY:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 808
    iget-object v0, p0, Landroid/support/v4/widget/y;->lZ:[I

    aput v1, v0, p1

    .line 809
    iget-object v0, p0, Landroid/support/v4/widget/y;->ma:[I

    aput v1, v0, p1

    .line 810
    iget v0, p0, Landroid/support/v4/widget/y;->mb:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/support/v4/widget/y;->mb:I

    .line 811
    return-void

    .line 801
    :cond_1
    :goto_0
    return-void
.end method

.method private H(I)Z
    .locals 3

    .line 1506
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/y;->F(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    const-string v0, "ViewDragHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring pointerId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/4 p1, 0x0

    return p1

    .line 1512
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(FFI)V
    .locals 10

    .line 844
    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    array-length v0, v0

    if-gt v0, p3, :cond_2

    :cond_0
    add-int/lit8 v0, p3, 0x1

    new-array v2, v0, [F

    new-array v3, v0, [F

    new-array v4, v0, [F

    new-array v5, v0, [F

    new-array v6, v0, [I

    new-array v7, v0, [I

    new-array v0, v0, [I

    iget-object v8, p0, Landroid/support/v4/widget/y;->lU:[F

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/support/v4/widget/y;->lU:[F

    iget-object v9, p0, Landroid/support/v4/widget/y;->lU:[F

    array-length v9, v9

    invoke-static {v8, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/y;->lV:[F

    iget-object v9, p0, Landroid/support/v4/widget/y;->lV:[F

    array-length v9, v9

    invoke-static {v8, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/y;->lW:[F

    iget-object v9, p0, Landroid/support/v4/widget/y;->lW:[F

    array-length v9, v9

    invoke-static {v8, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/y;->lX:[F

    iget-object v9, p0, Landroid/support/v4/widget/y;->lX:[F

    array-length v9, v9

    invoke-static {v8, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/y;->lY:[I

    iget-object v9, p0, Landroid/support/v4/widget/y;->lY:[I

    array-length v9, v9

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/y;->lZ:[I

    iget-object v9, p0, Landroid/support/v4/widget/y;->lZ:[I

    array-length v9, v9

    invoke-static {v8, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/support/v4/widget/y;->ma:[I

    iget-object v9, p0, Landroid/support/v4/widget/y;->ma:[I

    array-length v9, v9

    invoke-static {v8, v1, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Landroid/support/v4/widget/y;->lU:[F

    iput-object v3, p0, Landroid/support/v4/widget/y;->lV:[F

    iput-object v4, p0, Landroid/support/v4/widget/y;->lW:[F

    iput-object v5, p0, Landroid/support/v4/widget/y;->lX:[F

    iput-object v6, p0, Landroid/support/v4/widget/y;->lY:[I

    iput-object v7, p0, Landroid/support/v4/widget/y;->lZ:[I

    iput-object v0, p0, Landroid/support/v4/widget/y;->ma:[I

    .line 845
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    iget-object v2, p0, Landroid/support/v4/widget/y;->lW:[F

    aput p1, v2, p3

    aput p1, v0, p3

    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/y;->lV:[F

    iget-object v2, p0, Landroid/support/v4/widget/y;->lX:[F

    aput p2, v2, p3

    aput p2, v0, p3

    .line 847
    iget-object v0, p0, Landroid/support/v4/widget/y;->lY:[I

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v2, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/support/v4/widget/y;->me:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-ge p1, v2, :cond_3

    move v1, v3

    :cond_3
    iget-object v2, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget v4, p0, Landroid/support/v4/widget/y;->me:I

    add-int/2addr v2, v4

    if-ge p2, v2, :cond_4

    or-int/lit8 v1, v1, 0x4

    :cond_4
    iget-object v2, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Landroid/support/v4/widget/y;->me:I

    sub-int/2addr v2, v4

    if-le p1, v2, :cond_5

    or-int/lit8 v1, v1, 0x2

    :cond_5
    iget-object p1, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v2, p0, Landroid/support/v4/widget/y;->me:I

    sub-int/2addr p1, v2

    if-le p2, p1, :cond_6

    or-int/lit8 v1, v1, 0x8

    :cond_6
    aput v1, v0, p3

    .line 848
    iget p1, p0, Landroid/support/v4/widget/y;->mb:I

    shl-int p2, v3, p3

    or-int/2addr p1, p2

    iput p1, p0, Landroid/support/v4/widget/y;->mb:I

    .line 849
    return-void
.end method

.method private a(FFII)Z
    .locals 2

    .line 1272
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 1273
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 1275
    iget-object v0, p0, Landroid/support/v4/widget/y;->lY:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_3

    iget v0, p0, Landroid/support/v4/widget/y;->mf:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/y;->ma:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget-object v0, p0, Landroid/support/v4/widget/y;->lZ:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_3

    iget v0, p0, Landroid/support/v4/widget/y;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/y;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1281
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p2}, Landroid/support/v4/widget/A;->aQ()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1282
    iget-object p1, p0, Landroid/support/v4/widget/y;->ma:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    .line 1283
    return v1

    .line 1285
    :cond_1
    iget-object p2, p0, Landroid/support/v4/widget/y;->lZ:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Landroid/support/v4/widget/y;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 1279
    :cond_3
    :goto_0
    return v1
.end method

.method private aX()V
    .locals 4

    .line 1409
    iget-object v0, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/y;->mc:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1410
    iget-object v0, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 1411
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Landroid/support/v4/widget/y;->md:F

    iget v2, p0, Landroid/support/v4/widget/y;->mc:F

    .line 1410
    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/y;->b(FFF)F

    move-result v0

    .line 1413
    iget-object v1, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 1414
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/y;->md:F

    iget v3, p0, Landroid/support/v4/widget/y;->mc:F

    .line 1413
    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/y;->b(FFF)F

    .line 1416
    invoke-direct {p0, v0}, Landroid/support/v4/widget/y;->f(F)V

    .line 1417
    return-void
.end method

.method private b(FFF)F
    .locals 2

    .line 683
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 684
    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    .line 685
    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    return p3

    :cond_1
    neg-float p1, p3

    return p1

    .line 686
    :cond_2
    return p1
.end method

.method private b(FFI)V
    .locals 2

    .line 1251
    nop

    .line 1252
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/widget/y;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    goto :goto_0

    .line 1255
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/y;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    or-int/lit8 v0, v0, 0x4

    .line 1258
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/y;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1259
    or-int/lit8 v0, v0, 0x2

    .line 1261
    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/y;->a(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1262
    or-int/lit8 v0, v0, 0x8

    .line 1265
    :cond_3
    if-eqz v0, :cond_4

    .line 1266
    iget-object p1, p0, Landroid/support/v4/widget/y;->lZ:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 1267
    iget-object p1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p1, v0, p3}, Landroid/support/v4/widget/A;->g(II)V

    .line 1269
    :cond_4
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 6

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 853
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 854
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 856
    invoke-direct {p0, v2}, Landroid/support/v4/widget/y;->H(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 860
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 861
    iget-object v5, p0, Landroid/support/v4/widget/y;->lW:[F

    aput v3, v5, v2

    .line 862
    iget-object v3, p0, Landroid/support/v4/widget/y;->lX:[F

    aput v4, v3, v2

    .line 853
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    :cond_1
    return-void
.end method

.method private d(III)I
    .locals 4

    .line 634
    if-nez p1, :cond_0

    .line 635
    const/4 p1, 0x0

    return p1

    .line 638
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 639
    div-int/lit8 v1, v0, 0x2

    .line 640
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 641
    int-to-float v1, v1

    .line 642
    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    const v3, 0x3ef1463b

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 645
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 646
    if-lez p2, :cond_1

    .line 647
    const/4 p1, 0x4

    const/high16 p3, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/2addr p1, p2

    goto :goto_0

    .line 649
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 650
    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 652
    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private e(III)I
    .locals 1

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 667
    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 668
    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    return p3

    :cond_1
    neg-int p1, p3

    return p1

    .line 669
    :cond_2
    return p1
.end method

.method private f(F)V
    .locals 3

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/y;->mi:Z

    .line 776
    iget-object v1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    iget-object v2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/widget/A;->e(Landroid/view/View;F)V

    .line 777
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/widget/y;->mi:Z

    .line 779
    iget v1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne v1, v0, :cond_0

    .line 781
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/y;->G(I)V

    .line 783
    :cond_0
    return-void
.end method

.method private f(Landroid/view/View;F)Z
    .locals 2

    .line 1299
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1300
    return v0

    .line 1302
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/A;->E(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 1303
    move p1, v1

    goto :goto_0

    .line 1302
    :cond_1
    nop

    .line 1303
    move p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 1308
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroid/support/v4/widget/y;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 1309
    :cond_3
    return v0
.end method


# virtual methods
.method public final F(I)Z
    .locals 2

    .line 880
    iget v0, p0, Landroid/support/v4/widget/y;->mb:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final G(I)V
    .locals 2

    .line 884
    iget-object v0, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/widget/y;->mk:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 885
    iget v0, p0, Landroid/support/v4/widget/y;->lT:I

    if-eq v0, p1, :cond_0

    .line 886
    iput p1, p0, Landroid/support/v4/widget/y;->lT:I

    .line 887
    iget-object v0, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/A;->B(I)V

    .line 888
    iget p1, p0, Landroid/support/v4/widget/y;->lT:I

    if-nez p1, :cond_0

    .line 889
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    .line 892
    :cond_0
    return-void
.end method

.method final a(IIII)Z
    .locals 10

    .line 593
    iget-object v0, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 594
    iget-object v0, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 595
    sub-int v4, p1, v2

    .line 596
    sub-int v5, p2, v3

    .line 598
    const/4 p1, 0x0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 600
    iget-object p2, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 601
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/y;->G(I)V

    .line 602
    return p1

    .line 605
    :cond_0
    iget-object p2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    iget v0, p0, Landroid/support/v4/widget/y;->md:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/y;->mc:F

    float-to-int v1, v1

    invoke-direct {p0, p3, v0, v1}, Landroid/support/v4/widget/y;->e(III)I

    move-result p3

    iget v0, p0, Landroid/support/v4/widget/y;->md:F

    float-to-int v0, v0

    iget v1, p0, Landroid/support/v4/widget/y;->mc:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Landroid/support/v4/widget/y;->e(III)I

    move-result p4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int v8, v6, v7

    add-int v9, v0, v1

    if-eqz p3, :cond_1

    int-to-float v0, v6

    int-to-float v6, v8

    :goto_0
    div-float/2addr v0, v6

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v6, v9

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_2

    int-to-float v1, v7

    int-to-float v6, v8

    :goto_2
    div-float/2addr v1, v6

    goto :goto_3

    :cond_2
    int-to-float v1, v1

    int-to-float v6, v9

    goto :goto_2

    :goto_3
    iget-object v6, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v6, p2}, Landroid/support/v4/widget/A;->E(Landroid/view/View;)I

    move-result p2

    invoke-direct {p0, v4, p3, p2}, Landroid/support/v4/widget/y;->d(III)I

    move-result p2

    invoke-direct {p0, v5, p4, p1}, Landroid/support/v4/widget/y;->d(III)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int v6, p2

    .line 606
    iget-object v1, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 608
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/y;->G(I)V

    .line 609
    const/4 p1, 0x1

    return p1
.end method

.method public final abort()V
    .locals 3

    .line 521
    invoke-virtual {p0}, Landroid/support/v4/widget/y;->cancel()V

    .line 522
    iget v0, p0, Landroid/support/v4/widget/y;->lT:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 524
    iget-object v0, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 525
    iget-object v0, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 526
    iget-object v0, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 527
    iget-object v1, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 528
    iget-object v1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    iget-object v2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/widget/A;->h(Landroid/view/View;I)V

    .line 530
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/y;->G(I)V

    .line 531
    return-void
.end method

.method public final b(Landroid/view/View;II)Z
    .locals 0

    .line 548
    iput-object p1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    .line 549
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 551
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p1}, Landroid/support/v4/widget/y;->a(IIII)Z

    move-result p1

    .line 552
    if-nez p1, :cond_0

    iget p2, p0, Landroid/support/v4/widget/y;->lT:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 555
    const/4 p2, 0x0

    iput-object p2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    .line 558
    :cond_0
    return p1
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 960
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 962
    if-nez v0, :cond_0

    .line 965
    invoke-virtual {p0}, Landroid/support/v4/widget/y;->cancel()V

    .line 968
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 969
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 971
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 973
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1071
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1072
    invoke-direct {p0, p1}, Landroid/support/v4/widget/y;->E(I)V

    .line 1073
    goto/16 :goto_3

    .line 995
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 996
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 997
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 999
    invoke-direct {p0, v5, p1, v0}, Landroid/support/v4/widget/y;->a(FFI)V

    .line 1002
    iget v1, p0, Landroid/support/v4/widget/y;->lT:I

    if-nez v1, :cond_3

    .line 1003
    iget-object p1, p0, Landroid/support/v4/widget/y;->lY:[I

    aget p1, p1, v0

    .line 1004
    iget v0, p0, Landroid/support/v4/widget/y;->mf:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 1005
    iget-object p1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p1}, Landroid/support/v4/widget/A;->aP()V

    .line 1007
    :cond_2
    goto/16 :goto_3

    :cond_3
    iget v1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne v1, v2, :cond_a

    .line 1009
    float-to-int v1, v5

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object p1

    .line 1010
    iget-object v1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    if-ne p1, v1, :cond_4

    .line 1011
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    .line 1013
    :cond_4
    goto/16 :goto_3

    .line 1018
    :pswitch_3
    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/widget/y;->lV:[F

    if-eqz v0, :cond_a

    .line 1021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1022
    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_8

    .line 1023
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1026
    invoke-direct {p0, v2}, Landroid/support/v4/widget/y;->H(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1028
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1029
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1030
    iget-object v7, p0, Landroid/support/v4/widget/y;->lU:[F

    aget v7, v7, v2

    sub-float v7, v5, v7

    .line 1031
    iget-object v8, p0, Landroid/support/v4/widget/y;->lV:[F

    aget v8, v8, v2

    sub-float v8, v6, v8

    .line 1033
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object v5

    .line 1034
    if-eqz v5, :cond_5

    invoke-direct {p0, v5, v7}, Landroid/support/v4/widget/y;->f(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1035
    move v6, v4

    goto :goto_1

    .line 1034
    :cond_5
    nop

    .line 1035
    move v6, v3

    :goto_1
    if-eqz v6, :cond_6

    .line 1041
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 1042
    float-to-int v10, v7

    add-int/2addr v10, v9

    .line 1043
    iget-object v11, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v11, v5, v10}, Landroid/support/v4/widget/A;->i(Landroid/view/View;I)I

    move-result v10

    .line 1045
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 1046
    iget-object v11, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v11, v5}, Landroid/support/v4/widget/A;->F(Landroid/view/View;)I

    .line 1049
    iget-object v11, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v11, v5}, Landroid/support/v4/widget/A;->E(Landroid/view/View;)I

    move-result v11

    .line 1050
    if-eqz v11, :cond_8

    if-lez v11, :cond_6

    if-ne v10, v9, :cond_6

    goto :goto_2

    .line 1053
    :cond_6
    invoke-direct {p0, v7, v8, v2}, Landroid/support/v4/widget/y;->b(FFI)V

    .line 1057
    iget v7, p0, Landroid/support/v4/widget/y;->lT:I

    if-eq v7, v4, :cond_8

    .line 1059
    if-eqz v6, :cond_7

    invoke-virtual {p0, v5, v2}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1063
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1066
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v4/widget/y;->b(Landroid/view/MotionEvent;)V

    .line 1067
    goto :goto_3

    .line 1078
    :pswitch_4
    invoke-virtual {p0}, Landroid/support/v4/widget/y;->cancel()V

    goto :goto_3

    .line 975
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 977
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 978
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/widget/y;->a(FFI)V

    .line 980
    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object v0

    .line 983
    iget-object v1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    if-ne v0, v1, :cond_9

    iget v1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne v1, v2, :cond_9

    .line 984
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    .line 987
    :cond_9
    iget-object v0, p0, Landroid/support/v4/widget/y;->lY:[I

    aget p1, v0, p1

    .line 988
    iget v0, p0, Landroid/support/v4/widget/y;->mf:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 989
    iget-object p1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p1}, Landroid/support/v4/widget/A;->aP()V

    .line 1083
    :cond_a
    :goto_3
    iget p1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne p1, v4, :cond_b

    return v4

    :cond_b
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Landroid/view/View;II)Z
    .locals 2

    .line 1464
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1465
    return v0

    .line 1467
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1468
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1469
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final cancel()V
    .locals 2

    .line 507
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 508
    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/y;->lU:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->lV:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->lW:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->lX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->lY:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->lZ:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->ma:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Landroid/support/v4/widget/y;->mb:I

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 514
    :cond_1
    return-void
.end method

.method public final d(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1093
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1094
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1096
    if-nez v0, :cond_0

    .line 1099
    invoke-virtual {p0}, Landroid/support/v4/widget/y;->cancel()V

    .line 1102
    :cond_0
    iget-object v2, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1103
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1105
    :cond_1
    iget-object v2, p0, Landroid/support/v4/widget/y;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1107
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1202
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1203
    iget v1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    if-ne v0, v1, :cond_4

    .line 1205
    nop

    .line 1206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1207
    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_3

    .line 1208
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1209
    iget v5, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    if-eq v4, v5, :cond_2

    .line 1211
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1215
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1216
    float-to-int v5, v5

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    .line 1217
    invoke-virtual {p0, v5, v4}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1218
    iget p1, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 1219
    goto :goto_1

    .line 1207
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1223
    :cond_3
    move p1, v3

    :goto_1
    if-ne p1, v3, :cond_4

    .line 1225
    invoke-direct {p0}, Landroid/support/v4/widget/y;->aX()V

    .line 1228
    :cond_4
    invoke-direct {p0, v0}, Landroid/support/v4/widget/y;->E(I)V

    .line 1229
    return-void

    .line 1129
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1130
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1131
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1133
    invoke-direct {p0, v2, p1, v0}, Landroid/support/v4/widget/y;->a(FFI)V

    .line 1136
    iget v1, p0, Landroid/support/v4/widget/y;->lT:I

    if-nez v1, :cond_6

    .line 1139
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object p1

    .line 1140
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    .line 1142
    iget-object p1, p0, Landroid/support/v4/widget/y;->lY:[I

    aget p1, p1, v0

    .line 1143
    iget v0, p0, Landroid/support/v4/widget/y;->mf:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 1144
    iget-object p1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p1}, Landroid/support/v4/widget/A;->aP()V

    .line 1146
    :cond_5
    return-void

    :cond_6
    float-to-int v1, v2

    float-to-int p1, p1

    iget-object v2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {p0, v2, v1, p1}, Landroid/support/v4/widget/y;->c(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1151
    iget-object p1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    return-void

    .line 1241
    :pswitch_3
    iget p1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne p1, v3, :cond_7

    .line 1242
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/y;->f(F)V

    .line 1244
    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/widget/y;->cancel()V

    goto/16 :goto_3

    .line 1157
    :pswitch_4
    iget v0, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne v0, v3, :cond_c

    .line 1159
    iget v0, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/y;->H(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1161
    iget v0, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1162
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1163
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1164
    iget-object v2, p0, Landroid/support/v4/widget/y;->lW:[F

    iget v3, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1165
    iget-object v2, p0, Landroid/support/v4/widget/y;->lX:[F

    iget v3, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1167
    iget-object v2, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    iget-object v3, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v1, :cond_8

    iget-object v5, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    iget-object v6, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/widget/A;->i(Landroid/view/View;I)I

    move-result v2

    iget-object v5, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    sub-int v3, v2, v3

    invoke-static {v5, v3}, Landroid/support/v4/view/s;->f(Landroid/view/View;I)V

    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    iget-object v5, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/A;->F(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    :cond_9
    if-nez v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    iget-object v1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/A;->h(Landroid/view/View;I)V

    .line 1169
    :cond_b
    invoke-direct {p0, p1}, Landroid/support/v4/widget/y;->b(Landroid/view/MotionEvent;)V

    .line 1170
    return-void

    .line 1172
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1173
    :goto_2
    if-ge v2, v0, :cond_e

    .line 1174
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1177
    invoke-direct {p0, v1}, Landroid/support/v4/widget/y;->H(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1179
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1180
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1181
    iget-object v6, p0, Landroid/support/v4/widget/y;->lU:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 1182
    iget-object v7, p0, Landroid/support/v4/widget/y;->lV:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 1184
    invoke-direct {p0, v6, v7, v1}, Landroid/support/v4/widget/y;->b(FFI)V

    .line 1185
    iget v7, p0, Landroid/support/v4/widget/y;->lT:I

    if-eq v7, v3, :cond_e

    .line 1187
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object v4

    .line 1191
    invoke-direct {p0, v4, v6}, Landroid/support/v4/widget/y;->f(Landroid/view/View;F)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1192
    invoke-virtual {p0, v4, v1}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1193
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1196
    :cond_e
    invoke-direct {p0, p1}, Landroid/support/v4/widget/y;->b(Landroid/view/MotionEvent;)V

    .line 1198
    return-void

    .line 1233
    :pswitch_5
    iget p1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne p1, v3, :cond_f

    .line 1234
    invoke-direct {p0}, Landroid/support/v4/widget/y;->aX()V

    .line 1236
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/y;->cancel()V

    .line 1237
    return-void

    .line 1109
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1111
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1112
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/y;->h(II)Landroid/view/View;

    move-result-object v2

    .line 1114
    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/widget/y;->a(FFI)V

    .line 1119
    invoke-virtual {p0, v2, p1}, Landroid/support/v4/widget/y;->k(Landroid/view/View;I)Z

    .line 1121
    iget-object v0, p0, Landroid/support/v4/widget/y;->lY:[I

    aget p1, v0, p1

    .line 1122
    iget v0, p0, Landroid/support/v4/widget/y;->mf:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_10

    .line 1123
    iget-object p1, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p1}, Landroid/support/v4/widget/A;->aP()V

    return-void

    .line 1248
    :cond_10
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final g(Z)Z
    .locals 8

    .line 731
    iget v0, p0, Landroid/support/v4/widget/y;->lT:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    .line 732
    iget-object v0, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 733
    iget-object v3, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    .line 734
    iget-object v4, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    .line 735
    iget-object v5, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v3, v5

    .line 736
    iget-object v6, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v4, v6

    .line 738
    if-eqz v5, :cond_0

    .line 739
    iget-object v7, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-static {v7, v5}, Landroid/support/v4/view/s;->f(Landroid/view/View;I)V

    .line 741
    :cond_0
    if-eqz v6, :cond_1

    .line 742
    iget-object v7, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-static {v7, v6}, Landroid/support/v4/view/s;->e(Landroid/view/View;I)V

    .line 745
    :cond_1
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 746
    :cond_2
    iget-object v5, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    iget-object v6, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Landroid/support/v4/widget/A;->h(Landroid/view/View;I)V

    .line 749
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v4, v3, :cond_4

    .line 752
    iget-object v0, p0, Landroid/support/v4/widget/y;->lc:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 753
    nop

    .line 756
    move v0, v2

    :cond_4
    if-nez v0, :cond_6

    .line 757
    if-eqz p1, :cond_5

    .line 758
    iget-object p1, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v4/widget/y;->mk:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 760
    :cond_5
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/y;->G(I)V

    .line 765
    :cond_6
    :goto_0
    iget p1, p0, Landroid/support/v4/widget/y;->lT:I

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    return v2
.end method

.method public final h(II)Landroid/view/View;
    .locals 3

    .line 1483
    iget-object v0, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1484
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1485
    iget-object v1, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1486
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1487
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1488
    return-object v1

    .line 1484
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1491
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(Landroid/view/View;I)V
    .locals 2

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    .line 469
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/widget/y;->mj:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 473
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    .line 474
    iput p2, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 475
    iget-object p2, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/A;->D(Landroid/view/View;)V

    .line 476
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/y;->G(I)V

    .line 477
    return-void
.end method

.method final k(Landroid/view/View;I)Z
    .locals 2

    .line 904
    iget-object v0, p0, Landroid/support/v4/widget/y;->mh:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    .line 906
    return v1

    .line 908
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/y;->mg:Landroid/support/v4/widget/A;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/A;->C(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 909
    iput p2, p0, Landroid/support/v4/widget/y;->mActivePointerId:I

    .line 910
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/y;->j(Landroid/view/View;I)V

    .line 911
    return v1

    .line 913
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
