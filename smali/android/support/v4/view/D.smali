.class Landroid/support/v4/view/D;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static jE:Ljava/lang/reflect/Field;

.field private static jF:Z

.field private static jG:Ljava/lang/reflect/Field;

.field private static jH:Z

.field private static jI:Ljava/util/WeakHashMap;

.field private static final jJ:Ljava/util/concurrent/atomic/AtomicInteger;

.field static jL:Ljava/lang/reflect/Field;

.field static jM:Z


# instance fields
.field jK:Ljava/util/WeakHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 447
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/support/v4/view/D;->jJ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 454
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/D;->jM:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/D;->jK:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static u(Landroid/view/View;)V
    .locals 2

    .line 950
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 951
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 952
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 953
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 0

    .line 779
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .line 728
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 519
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    .line 520
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 566
    return-void
.end method

.method public a(Landroid/view/View;Landroid/support/v4/view/q;)V
    .locals 0

    .line 776
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .line 527
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 707
    sget-object v0, Landroid/support/v4/view/D;->jI:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/support/v4/view/D;->jI:Ljava/util/WeakHashMap;

    .line 710
    :cond_0
    sget-object v0, Landroid/support/v4/view/D;->jI:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    return-void
.end method

.method public b(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;
    .locals 0

    .line 783
    return-object p2
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .line 735
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 523
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 524
    return-void
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .line 903
    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 4

    .line 466
    sget-boolean v0, Landroid/support/v4/view/D;->jM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 467
    return v1

    .line 469
    :cond_0
    sget-object v0, Landroid/support/v4/view/D;->jL:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 471
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 472
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 473
    sput-object v0, Landroid/support/v4/view/D;->jL:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_0

    .line 474
    :catch_0
    move-exception p1

    .line 475
    sput-boolean v2, Landroid/support/v4/view/D;->jM:Z

    .line 476
    return v1

    .line 480
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Landroid/support/v4/view/D;->jL:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    .line 481
    :catch_1
    move-exception p1

    .line 482
    sput-boolean v2, Landroid/support/v4/view/D;->jM:Z

    .line 483
    return v1
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    .line 539
    return-void
.end method

.method public d(Landroid/view/View;)Z
    .locals 0

    .line 507
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 516
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 0

    .line 938
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 939
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 940
    invoke-static {p1}, Landroid/support/v4/view/D;->u(Landroid/view/View;)V

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 943
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 944
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/D;->u(Landroid/view/View;)V

    .line 947
    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)I
    .locals 0

    .line 535
    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/view/View;I)V
    .locals 0

    .line 926
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 927
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    .line 928
    invoke-static {p1}, Landroid/support/v4/view/D;->u(Landroid/view/View;)V

    .line 930
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 931
    instance-of p2, p1, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 932
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/D;->u(Landroid/view/View;)V

    .line 935
    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 0

    .line 569
    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroid/view/View;)I
    .locals 3

    .line 649
    sget-boolean v0, Landroid/support/v4/view/D;->jF:Z

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 652
    sput-object v1, Landroid/support/v4/view/D;->jE:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    goto :goto_0

    .line 653
    :catch_0
    move-exception v1

    .line 656
    :goto_0
    sput-boolean v0, Landroid/support/v4/view/D;->jF:Z

    .line 659
    :cond_0
    sget-object v0, Landroid/support/v4/view/D;->jE:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 661
    :try_start_1
    sget-object v0, Landroid/support/v4/view/D;->jE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 662
    :catch_1
    move-exception p1

    .line 668
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public i(Landroid/view/View;)I
    .locals 3

    .line 672
    sget-boolean v0, Landroid/support/v4/view/D;->jH:Z

    if-nez v0, :cond_0

    .line 674
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 675
    sput-object v1, Landroid/support/v4/view/D;->jG:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    goto :goto_0

    .line 676
    :catch_0
    move-exception v1

    .line 679
    :goto_0
    sput-boolean v0, Landroid/support/v4/view/D;->jH:Z

    .line 682
    :cond_0
    sget-object v0, Landroid/support/v4/view/D;->jG:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 684
    :try_start_1
    sget-object v0, Landroid/support/v4/view/D;->jG:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 685
    :catch_1
    move-exception p1

    .line 691
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public j(Landroid/view/View;)F
    .locals 0

    .line 731
    const/4 p1, 0x0

    return p1
.end method

.method public k(Landroid/view/View;)F
    .locals 0

    .line 738
    const/4 p1, 0x0

    return p1
.end method

.method public l(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    .line 714
    sget-object v0, Landroid/support/v4/view/D;->jI:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 715
    const/4 p1, 0x0

    return-object p1

    .line 717
    :cond_0
    sget-object v0, Landroid/support/v4/view/D;->jI:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public m(Landroid/view/View;)V
    .locals 0

    .line 725
    return-void
.end method

.method public n(Landroid/view/View;)Z
    .locals 0

    .line 770
    const/4 p1, 0x0

    return p1
.end method

.method public o(Landroid/view/View;)Z
    .locals 0

    .line 633
    const/4 p1, 0x1

    return p1
.end method

.method public p(Landroid/view/View;)V
    .locals 1

    .line 839
    instance-of v0, p1, Landroid/support/v4/view/k;

    if-eqz v0, :cond_0

    .line 840
    check-cast p1, Landroid/support/v4/view/k;

    invoke-interface {p1}, Landroid/support/v4/view/k;->stopNestedScroll()V

    .line 842
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 546
    const/4 p1, 0x0

    return p1
.end method

.method public q(Landroid/view/View;)Z
    .locals 1

    .line 890
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r(Landroid/view/View;)F
    .locals 1

    .line 898
    invoke-virtual {p0, p1}, Landroid/support/v4/view/D;->k(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/D;->j(Landroid/view/View;)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public s(Landroid/view/View;)Z
    .locals 0

    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    .line 960
    invoke-virtual {p0, p1}, Landroid/support/v4/view/D;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 963
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    return-object p1

    .line 965
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
