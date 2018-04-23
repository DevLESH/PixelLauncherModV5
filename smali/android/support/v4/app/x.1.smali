.class final Landroid/support/v4/app/x;
.super Landroid/support/v4/app/w;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field static DEBUG:Z

.field static eh:Ljava/lang/reflect/Field;

.field static final eu:Landroid/view/animation/Interpolator;

.field static final ev:Landroid/view/animation/Interpolator;

.field static final ew:Landroid/view/animation/Interpolator;

.field static final ex:Landroid/view/animation/Interpolator;


# instance fields
.field cJ:Landroid/support/v4/app/v;

.field dS:Ljava/util/ArrayList;

.field dT:Z

.field dU:I

.field final dV:Ljava/util/ArrayList;

.field dW:Landroid/util/SparseArray;

.field dX:Ljava/util/ArrayList;

.field dY:Ljava/util/ArrayList;

.field dZ:Ljava/util/ArrayList;

.field ea:Ljava/util/ArrayList;

.field eb:Ljava/util/ArrayList;

.field private final ec:Ljava/util/concurrent/CopyOnWriteArrayList;

.field ed:I

.field ee:Landroid/support/v4/app/t;

.field ef:Landroid/support/v4/app/Fragment;

.field eg:Landroid/support/v4/app/Fragment;

.field ei:Z

.field ej:Z

.field ek:Ljava/lang/String;

.field el:Z

.field em:Ljava/util/ArrayList;

.field en:Ljava/util/ArrayList;

.field eo:Ljava/util/ArrayList;

.field ep:Landroid/os/Bundle;

.field eq:Landroid/util/SparseArray;

.field er:Ljava/util/ArrayList;

.field es:Landroid/support/v4/app/M;

.field et:Ljava/lang/Runnable;

.field mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 642
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    .line 674
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/x;->eh:Ljava/lang/reflect/Field;

    .line 1093
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->eu:Landroid/view/animation/Interpolator;

    .line 1094
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->ev:Landroid/view/animation/Interpolator;

    .line 1095
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->ew:Landroid/view/animation/Interpolator;

    .line 1096
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/x;->ex:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/w;-><init>()V

    .line 653
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/x;->dU:I

    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    .line 665
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 668
    iput v0, p0, Landroid/support/v4/app/x;->ed:I

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    .line 689
    iput-object v0, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    .line 697
    new-instance v0, Landroid/support/v4/app/y;

    invoke-direct {v0, p0}, Landroid/support/v4/app/y;-><init>(Landroid/support/v4/app/x;)V

    iput-object v0, p0, Landroid/support/v4/app/x;->et:Ljava/lang/Runnable;

    .line 3988
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/c/c;)I
    .locals 8

    .line 2443
    nop

    .line 2444
    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_7

    .line 2445
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/c;

    .line 2446
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2447
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget-object v6, v2, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    iget-object v6, v2, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/d;

    invoke-static {v6}, Landroid/support/v4/app/c;->b(Landroid/support/v4/app/d;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 2448
    invoke-virtual {v2, p1, v5, p4}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    .line 2449
    :cond_2
    move v7, v4

    :goto_3
    if-eqz v7, :cond_6

    .line 2450
    iget-object v5, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 2451
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    .line 2453
    :cond_3
    new-instance v5, Landroid/support/v4/app/L;

    invoke-direct {v5, v2, v3}, Landroid/support/v4/app/L;-><init>(Landroid/support/v4/app/c;Z)V

    .line 2455
    iget-object v6, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2456
    invoke-virtual {v2, v5}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/n;)V

    .line 2459
    if-eqz v3, :cond_4

    .line 2460
    invoke-virtual {v2}, Landroid/support/v4/app/c;->q()V

    goto :goto_4

    .line 2462
    :cond_4
    invoke-virtual {v2, v4}, Landroid/support/v4/app/c;->b(Z)V

    .line 2466
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 2467
    if-eq v0, v1, :cond_5

    .line 2468
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2469
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2473
    :cond_5
    invoke-direct {p0, p5}, Landroid/support/v4/app/x;->b(Landroid/support/v4/c/c;)V

    .line 2444
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2476
    :cond_7
    return v1
.end method

.method static a(FF)Landroid/support/v4/app/G;
    .locals 1

    .line 1116
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1117
    sget-object p0, Landroid/support/v4/app/x;->ev:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1118
    const-wide/16 p0, 0xdc

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1119
    new-instance p0, Landroid/support/v4/app/G;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/G;-><init>(Landroid/view/animation/Animation;B)V

    return-object p0
.end method

.method static a(FFFF)Landroid/support/v4/app/G;
    .locals 12

    .line 1102
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1103
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1105
    sget-object p0, Landroid/support/v4/app/x;->eu:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1106
    const-wide/16 p0, 0xdc

    invoke-virtual {v11, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1107
    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1109
    sget-object p2, Landroid/support/v4/app/x;->ev:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1110
    invoke-virtual {v2, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1111
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1112
    new-instance p0, Landroid/support/v4/app/G;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/G;-><init>(Landroid/view/animation/Animation;B)V

    return-object p0
.end method

.method private static a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 2

    .line 1262
    nop

    .line 1264
    :try_start_0
    sget-object v0, Landroid/support/v4/app/x;->eh:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 1265
    const-class v0, Landroid/view/animation/Animation;

    const-string v1, "mListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1266
    sput-object v0, Landroid/support/v4/app/x;->eh:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1268
    :cond_0
    sget-object v0, Landroid/support/v4/app/x;->eh:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_1

    .line 1271
    :catch_0
    move-exception p0

    .line 1272
    const-string v0, "FragmentManager"

    const-string v1, "Cannot access Animation\'s mListener field"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1269
    :catch_1
    move-exception p0

    .line 1270
    const-string v0, "FragmentManager"

    const-string v1, "No field with the name mListener is found in Animation class"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1273
    nop

    .line 1274
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static a(Landroid/support/v4/app/M;)V
    .locals 3

    .line 2788
    if-nez p0, :cond_0

    .line 2789
    return-void

    .line 2791
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/M;->eN:Ljava/util/List;

    .line 2792
    if-eqz v0, :cond_1

    .line 2793
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2794
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->cT:Z

    .line 2795
    goto :goto_0

    .line 2797
    :cond_1
    iget-object p0, p0, Landroid/support/v4/app/M;->eO:Ljava/util/List;

    .line 2798
    if-eqz p0, :cond_2

    .line 2799
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/M;

    .line 2800
    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/M;)V

    .line 2801
    goto :goto_1

    .line 2803
    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/x;Landroid/support/v4/app/c;ZZZ)V
    .locals 7

    .line 641
    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Landroid/support/v4/app/c;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/c;->q()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Landroid/support/v4/app/x;->ed:I

    invoke-virtual {p0, p2, v6}, Landroid/support/v4/app/x;->b(IZ)V

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->de:Z

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/Fragment;->cO:I

    invoke-virtual {p1, v2}, Landroid/support/v4/app/c;->j(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/Fragment;->dg:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v4, v1, Landroid/support/v4/app/Fragment;->dg:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    iput v3, v1, Landroid/support/v4/app/Fragment;->dg:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/support/v4/app/Fragment;->dg:F

    iput-boolean p3, v1, Landroid/support/v4/app/Fragment;->de:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private a(Landroid/support/v4/c/c;)V
    .locals 5

    .line 2417
    invoke-virtual {p1}, Landroid/support/v4/c/c;->size()I

    move-result v0

    .line 2418
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2419
    iget-object v2, p1, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2420
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cC:Z

    if-nez v3, :cond_0

    .line 2421
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 2422
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroid/support/v4/app/Fragment;->dg:F

    .line 2423
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2418
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2426
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/support/v4/app/G;)V
    .locals 5

    .line 1240
    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1243
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/s;->o(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_2

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, p1, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    iget-object v2, p1, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    invoke-static {v2}, Landroid/support/v4/app/x;->b(Landroid/animation/Animator;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    move v0, v1

    nop

    :cond_6
    :goto_3
    if-eqz v0, :cond_8

    .line 1244
    iget-object v0, p1, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    .line 1245
    iget-object p1, p1, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    new-instance v0, Landroid/support/v4/app/H;

    invoke-direct {v0, p0}, Landroid/support/v4/app/H;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 1247
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/x;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1251
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1252
    iget-object p1, p1, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/app/D;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/D;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1256
    :cond_8
    return-void

    .line 1241
    :cond_9
    :goto_4
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    .line 754
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v0, Landroid/support/v4/c/g;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/g;-><init>(Ljava/lang/String;)V

    .line 757
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 758
    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    const-string v4, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/support/v4/app/v;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    :catch_0
    move-exception v0

    .line 762
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 763
    :goto_0
    goto :goto_1

    .line 766
    :cond_0
    :try_start_1
    const-string v0, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/support/v4/app/x;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    goto :goto_1

    .line 767
    :catch_1
    move-exception v0

    .line 768
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 771
    :goto_1
    throw p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 2352
    move/from16 v10, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    iget-boolean v11, v1, Landroid/support/v4/app/c;->bX:Z

    .line 2353
    nop

    .line 2354
    iget-object v1, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    goto :goto_0

    .line 2357
    :cond_0
    iget-object v1, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2359
    :goto_0
    iget-object v1, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    iget-object v2, v7, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2360
    iget-object v1, v7, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    .line 2361
    const/4 v2, 0x0

    move-object v3, v1

    move v12, v2

    move v1, v9

    :goto_1
    const/4 v13, 0x1

    if-ge v1, v10, :cond_4

    .line 2362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c;

    .line 2363
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2364
    if-nez v5, :cond_1

    .line 2365
    iget-object v5, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    goto :goto_2

    .line 2367
    :cond_1
    iget-object v5, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/c;->b(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 2369
    :goto_2
    if-nez v12, :cond_3

    iget-boolean v4, v4, Landroid/support/v4/app/c;->bN:Z

    if-eqz v4, :cond_2

    goto :goto_3

    .line 2361
    :cond_2
    move v12, v2

    goto :goto_4

    .line 2369
    :cond_3
    :goto_3
    nop

    .line 2361
    move v12, v13

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2371
    :cond_4
    iget-object v1, v7, Landroid/support/v4/app/x;->eo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2373
    if-nez v11, :cond_5

    .line 2374
    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2377
    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/support/v4/app/x;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2379
    nop

    .line 2380
    if-eqz v11, :cond_6

    .line 2381
    new-instance v14, Landroid/support/v4/c/c;

    invoke-direct {v14}, Landroid/support/v4/c/c;-><init>()V

    .line 2382
    invoke-direct {v7, v14}, Landroid/support/v4/app/x;->b(Landroid/support/v4/c/c;)V

    .line 2383
    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    move v5, v10

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/app/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/c/c;)I

    move-result v1

    .line 2385
    invoke-direct {v7, v14}, Landroid/support/v4/app/x;->a(Landroid/support/v4/c/c;)V

    .line 2388
    move v5, v1

    goto :goto_5

    :cond_6
    move v5, v10

    :goto_5
    if-eq v5, v9, :cond_7

    if-eqz v11, :cond_7

    .line 2390
    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2392
    iget v1, v7, Landroid/support/v4/app/x;->ed:I

    invoke-virtual {v7, v1, v13}, Landroid/support/v4/app/x;->b(IZ)V

    .line 2395
    :cond_7
    :goto_6
    if-ge v9, v10, :cond_b

    .line 2396
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 2397
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2398
    if-eqz v2, :cond_a

    iget v2, v1, Landroid/support/v4/app/c;->bQ:I

    if-ltz v2, :cond_a

    .line 2399
    iget v2, v1, Landroid/support/v4/app/c;->bQ:I

    monitor-enter p0

    :try_start_0
    iget-object v3, v7, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    :cond_8
    sget-boolean v3, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Freeing back stack index "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, v7, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/c;->bQ:I

    goto :goto_7

    .line 2399
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2402
    :cond_a
    :goto_7
    invoke-virtual {v1}, Landroid/support/v4/app/c;->p()V

    .line 2395
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2404
    :cond_b
    if-eqz v12, :cond_c

    .line 2405
    invoke-virtual {v7}, Landroid/support/v4/app/x;->af()V

    .line 2407
    :cond_c
    return-void
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 8

    .line 834
    invoke-virtual {p0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 835
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->e(Z)V

    .line 837
    iget-object v1, p0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 840
    iget-object v1, p0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 841
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/w;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    return v0

    .line 847
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/x;->en:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    .line 848
    if-eqz p1, :cond_1

    .line 849
    iput-boolean v0, p0, Landroid/support/v4/app/x;->dT:Z

    .line 851
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/support/v4/app/x;->en:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/x;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    invoke-direct {p0}, Landroid/support/v4/app/x;->ac()V

    .line 854
    goto :goto_0

    .line 853
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroid/support/v4/app/x;->ac()V

    throw p1

    .line 857
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/x;->ae()V

    .line 858
    invoke-direct {p0}, Landroid/support/v4/app/x;->ah()V

    .line 859
    return p1
.end method

.method private aa()V
    .locals 3

    .line 2053
    iget-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    if-eqz v0, :cond_0

    .line 2054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2057
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2058
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2061
    :cond_1
    return-void
.end method

.method private ab()V
    .locals 4

    .line 2102
    monitor-enter p0

    .line 2103
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    .line 2104
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2105
    move v0, v2

    goto :goto_0

    .line 2104
    :cond_0
    nop

    .line 2105
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2106
    move v1, v2

    goto :goto_1

    .line 2105
    :cond_1
    nop

    .line 2106
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 2107
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/x;->et:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2108
    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/x;->et:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2110
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ac()V
    .locals 1

    .line 2224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->dT:Z

    .line 2225
    iget-object v0, p0, Landroid/support/v4/app/x;->en:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2226
    iget-object v0, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2227
    return-void
.end method

.method private ad()V
    .locals 2

    .line 2624
    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2625
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2626
    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/L;

    invoke-virtual {v0}, Landroid/support/v4/app/L;->ai()V

    goto :goto_0

    .line 2629
    :cond_0
    return-void
.end method

.method private ah()V
    .locals 3

    .line 3145
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 3146
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3147
    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3148
    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3146
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3152
    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/support/v4/app/x;)V
    .locals 0

    .line 641
    invoke-direct {p0}, Landroid/support/v4/app/x;->ab()V

    return-void
.end method

.method private b(Landroid/support/v4/c/c;)V
    .locals 10

    .line 2602
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    if-gtz v0, :cond_0

    .line 2603
    return-void

    .line 2606
    :cond_0
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2607
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2608
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_2

    .line 2609
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 2610
    iget v2, v9, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    .line 2611
    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->I()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->J()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2613
    iget-object v2, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->de:Z

    if-eqz v2, :cond_1

    .line 2614
    invoke-virtual {p1, v9}, Landroid/support/v4/c/c;->add(Ljava/lang/Object;)Z

    .line 2608
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2618
    :cond_2
    return-void
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 2258
    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2259
    move v0, v1

    goto :goto_0

    .line 2258
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2259
    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_6

    .line 2260
    iget-object v3, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/L;

    .line 2261
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Landroid/support/v4/app/L;->eK:Z

    if-nez v6, :cond_1

    .line 2262
    iget-object v6, v3, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 2263
    if-eq v6, v5, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2264
    invoke-virtual {v3}, Landroid/support/v4/app/L;->aj()V

    .line 2265
    goto :goto_3

    .line 2268
    :cond_1
    iget v6, v3, Landroid/support/v4/app/L;->eM:I

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 2269
    iget-object v6, v3, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2270
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/x;->er:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2271
    add-int/lit8 v0, v0, -0x1

    .line 2272
    add-int/lit8 v2, v2, -0x1

    .line 2274
    if-eqz p1, :cond_4

    iget-boolean v6, v3, Landroid/support/v4/app/L;->eK:Z

    if-nez v6, :cond_4

    .line 2275
    iget-object v6, v3, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 2276
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2278
    invoke-virtual {v3}, Landroid/support/v4/app/L;->aj()V

    goto :goto_3

    .line 2280
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/L;->ai()V

    .line 2259
    :cond_5
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    .line 2284
    :cond_6
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3

    .line 2579
    :goto_0
    if-ge p2, p3, :cond_2

    .line 2580
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2581
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2582
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2583
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->i(I)V

    .line 2586
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2587
    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->b(Z)V

    .line 2588
    goto :goto_2

    .line 2589
    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->i(I)V

    .line 2590
    invoke-virtual {v0}, Landroid/support/v4/app/c;->q()V

    .line 2579
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2593
    :cond_2
    return-void
.end method

.method static b(Landroid/animation/Animator;)Z
    .locals 5

    .line 721
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 722
    return v0

    .line 724
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 725
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 726
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 727
    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 728
    const-string v3, "alpha"

    aget-object v4, p0, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    return v2

    .line 727
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 733
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    .line 734
    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 735
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/support/v4/app/x;->b(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 736
    return v2

    .line 734
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 740
    :cond_5
    :goto_2
    return v0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 2302
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2306
    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 2311
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/x;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2313
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2314
    nop

    .line 2315
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_5

    .line 2316
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    iget-boolean v3, v3, Landroid/support/v4/app/c;->bX:Z

    .line 2317
    if-nez v3, :cond_4

    .line 2319
    if-eq v2, v1, :cond_2

    .line 2320
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/support/v4/app/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2324
    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 2325
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2326
    :goto_1
    if-ge v2, v0, :cond_3

    .line 2327
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2328
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    iget-boolean v3, v3, Landroid/support/v4/app/c;->bX:Z

    if-nez v3, :cond_3

    .line 2329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2332
    :cond_3
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2333
    nop

    .line 2334
    add-int/lit8 v1, v2, -0x1

    .line 2315
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2337
    :cond_5
    if-eq v2, v0, :cond_6

    .line 2338
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2340
    :cond_6
    return-void

    .line 2307
    :cond_7
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2303
    :cond_8
    :goto_3
    return-void
.end method

.method private d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    .line 2672
    nop

    .line 2673
    monitor-enter p0

    .line 2674
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2678
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2679
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2680
    iget-object v3, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/J;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/J;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 2679
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2682
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2683
    iget-object p1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/app/x;->et:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2684
    monitor-exit p0

    .line 2685
    return v2

    .line 2675
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    .line 2684
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private e(Z)V
    .locals 2

    .line 2176
    iget-boolean v0, p0, Landroid/support/v4/app/x;->dT:Z

    if-eqz v0, :cond_0

    .line 2177
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2180
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2181
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2184
    :cond_1
    if-nez p1, :cond_2

    .line 2185
    invoke-direct {p0}, Landroid/support/v4/app/x;->aa()V

    .line 2188
    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 2189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    .line 2190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/x;->en:Ljava/util/ArrayList;

    .line 2192
    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/x;->dT:Z

    .line 2194
    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/x;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    iput-boolean p1, p0, Landroid/support/v4/app/x;->dT:Z

    .line 2197
    return-void

    .line 2196
    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroid/support/v4/app/x;->dT:Z

    throw v0
.end method

.method public static p(I)I
    .locals 3

    .line 3608
    nop

    .line 3609
    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 3620
    const/4 v0, 0x0

    goto :goto_0

    .line 3614
    :cond_0
    nop

    .line 3615
    nop

    .line 3620
    move v0, v2

    goto :goto_0

    .line 3617
    :cond_1
    nop

    .line 3620
    move v0, v1

    goto :goto_0

    .line 3611
    :cond_2
    nop

    .line 3612
    nop

    .line 3620
    :goto_0
    return v0
.end method


# virtual methods
.method public final Y()Landroid/support/v4/app/R;
    .locals 1

    .line 776
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p0}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/x;)V

    return-object v0
.end method

.method final Z()V
    .locals 9

    .line 1850
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1852
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1853
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1854
    if-eqz v4, :cond_2

    .line 1855
    iget-boolean v2, v4, Landroid/support/v4/app/Fragment;->cY:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/app/x;->dT:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/x;->el:Z

    goto :goto_1

    :cond_1
    iput-boolean v0, v4, Landroid/support/v4/app/Fragment;->cY:Z

    iget v5, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1852
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1858
    :cond_3
    return-void
.end method

.method public final a(Landroid/support/v4/app/c;)I
    .locals 4

    .line 2114
    monitor-enter p0

    .line 2115
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2125
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2126
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2128
    monitor-exit p0

    return v0

    .line 2116
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    .line 2119
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2120
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    monitor-exit p0

    return v0

    .line 2130
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 2041
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2042
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 2043
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2044
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/x;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 2045
    return-object v2

    .line 2042
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2049
    :cond_3
    return-object v1
.end method

.method final a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/G;
    .locals 5

    .line 1124
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->I()I

    move-result p1

    .line 1125
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1136
    iget-object v1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1137
    const-string v2, "anim"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1138
    nop

    .line 1139
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1142
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v3, v3, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1143
    if-eqz v3, :cond_0

    .line 1144
    new-instance v4, Landroid/support/v4/app/G;

    invoke-direct {v4, v3, v2}, Landroid/support/v4/app/G;-><init>(Landroid/view/animation/Animation;B)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1147
    :cond_0
    nop

    .line 1152
    nop

    .line 1154
    move v3, v0

    goto :goto_1

    .line 1150
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1148
    :catch_1
    move-exception p1

    throw p1

    .line 1154
    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    .line 1157
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v3, v3, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 1158
    if-eqz v3, :cond_2

    .line 1159
    new-instance v4, Landroid/support/v4/app/G;

    invoke-direct {v4, v3, v2}, Landroid/support/v4/app/G;-><init>(Landroid/animation/Animator;B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    .line 1171
    :cond_2
    goto :goto_2

    .line 1161
    :catch_2
    move-exception v3

    .line 1162
    if-eqz v1, :cond_3

    .line 1164
    throw v3

    .line 1167
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 1168
    if-eqz p1, :cond_4

    .line 1169
    new-instance p2, Landroid/support/v4/app/G;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/G;-><init>(Landroid/view/animation/Animation;B)V

    return-object p2

    .line 1175
    :cond_4
    :goto_2
    const/4 p1, 0x0

    if-nez p2, :cond_5

    .line 1176
    return-object p1

    .line 1179
    :cond_5
    const/4 v1, -0x1

    const/16 v2, 0x1001

    if-eq p2, v2, :cond_a

    const/16 v0, 0x1003

    if-eq p2, v0, :cond_8

    const/16 v0, 0x2002

    if-eq p2, v0, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p3, :cond_7

    const/4 p2, 0x3

    .line 1180
    :goto_3
    move v1, p2

    goto :goto_5

    .line 1179
    :cond_7
    const/4 p2, 0x4

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    const/4 p2, 0x5

    goto :goto_3

    :cond_9
    const/4 p2, 0x6

    goto :goto_3

    :cond_a
    if-eqz p3, :cond_b

    .line 1180
    :goto_4
    move v1, v0

    goto :goto_5

    .line 1179
    :cond_b
    const/4 v0, 0x2

    goto :goto_4

    .line 1180
    :goto_5
    if-gez v1, :cond_c

    .line 1181
    return-object p1

    .line 1184
    :cond_c
    const p2, 0x3f79999a    # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_0

    .line 1200
    if-nez p4, :cond_d

    iget-object p2, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p2}, Landroid/support/v4/app/v;->onHasWindowAnimations()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1201
    iget-object p2, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p2}, Landroid/support/v4/app/v;->onGetWindowAnimations()I

    move-result p4

    goto :goto_6

    .line 1196
    :pswitch_0
    invoke-static {v0, p3}, Landroid/support/v4/app/x;->a(FF)Landroid/support/v4/app/G;

    move-result-object p1

    return-object p1

    .line 1194
    :pswitch_1
    invoke-static {p3, v0}, Landroid/support/v4/app/x;->a(FF)Landroid/support/v4/app/G;

    move-result-object p1

    return-object p1

    .line 1192
    :pswitch_2
    const p1, 0x3f89999a    # 1.075f

    invoke-static {v0, p1, v0, p3}, Landroid/support/v4/app/x;->a(FFFF)Landroid/support/v4/app/G;

    move-result-object p1

    return-object p1

    .line 1190
    :pswitch_3
    invoke-static {p2, v0, p3, v0}, Landroid/support/v4/app/x;->a(FFFF)Landroid/support/v4/app/G;

    move-result-object p1

    return-object p1

    .line 1188
    :pswitch_4
    invoke-static {v0, p2, v0, p3}, Landroid/support/v4/app/x;->a(FFFF)Landroid/support/v4/app/G;

    move-result-object p1

    return-object p1

    .line 1186
    :pswitch_5
    const/high16 p1, 0x3f900000    # 1.125f

    invoke-static {p1, v0, p3, v0}, Landroid/support/v4/app/x;->a(FFFF)Landroid/support/v4/app/G;

    move-result-object p1

    return-object p1

    .line 1203
    :cond_d
    :goto_6
    if-nez p4, :cond_e

    .line 1204
    return-object p1

    .line 1217
    :cond_e
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILandroid/support/v4/app/c;)V
    .locals 4

    .line 2134
    monitor-enter p0

    .line 2135
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    .line 2138
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2139
    if-ge p1, v0, :cond_2

    .line 2140
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2143
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 2144
    iget-object v1, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    iget-object v1, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    .line 2148
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2152
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_6
    iget-object p1, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2155
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Landroid/os/Parcelable;Landroid/support/v4/app/M;)V
    .locals 13

    .line 3016
    if-nez p1, :cond_0

    return-void

    .line 3017
    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 3018
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    .line 3020
    :cond_1
    nop

    .line 3024
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    .line 3025
    iget-object v2, p2, Landroid/support/v4/app/M;->eN:Ljava/util/List;

    .line 3026
    iget-object v3, p2, Landroid/support/v4/app/M;->eO:Ljava/util/List;

    .line 3027
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    .line 3028
    :cond_2
    move v4, v1

    :goto_0
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_8

    .line 3029
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 3030
    sget-boolean v7, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "restoreAllState: re-attaching retained "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    :cond_3
    nop

    .line 3032
    move v7, v1

    :goto_2
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    if-ge v7, v8, :cond_4

    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    aget-object v8, v8, v7

    iget v8, v8, Landroid/support/v4/app/FragmentState;->bQ:I

    iget v9, v6, Landroid/support/v4/app/Fragment;->bQ:I

    if-eq v8, v9, :cond_4

    .line 3033
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3035
    :cond_4
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    if-ne v7, v8, :cond_5

    .line 3036
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not find active fragment with index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v6, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 3039
    :cond_5
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    aget-object v7, v8, v7

    .line 3040
    iput-object v6, v7, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    .line 3041
    iput-object v0, v6, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    .line 3042
    iput v1, v6, Landroid/support/v4/app/Fragment;->cH:I

    .line 3043
    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3044
    iput-boolean v1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    .line 3045
    iput-object v0, v6, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    .line 3046
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    if-eqz v8, :cond_6

    .line 3047
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    iget-object v9, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v9, v9, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3048
    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    const-string v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v6, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    .line 3050
    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    .line 3028
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 3057
    :cond_7
    move-object v3, v0

    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    array-length v4, v4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    .line 3058
    move v2, v1

    :goto_3
    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_10

    .line 3059
    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    aget-object v4, v4, v2

    .line 3060
    if-eqz v4, :cond_f

    .line 3061
    nop

    .line 3062
    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 3063
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/M;

    goto :goto_4

    .line 3065
    :cond_9
    move-object v6, v0

    :goto_4
    iget-object v7, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v8, p0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    iget-object v9, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v10, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    if-nez v10, :cond_d

    iget-object v10, v7, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    iget-object v11, v4, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    if-eqz v11, :cond_a

    iget-object v11, v4, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_a
    if-eqz v8, :cond_b

    iget-object v11, v4, Landroid/support/v4/app/FragmentState;->eT:Ljava/lang/String;

    iget-object v12, v4, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    invoke-virtual {v8, v10, v11, v12}, Landroid/support/v4/app/t;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    :goto_5
    iput-object v8, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    goto :goto_6

    :cond_b
    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->eT:Ljava/lang/String;

    iget-object v11, v4, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    invoke-static {v10, v8, v11}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    goto :goto_5

    :goto_6
    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    if-eqz v8, :cond_c

    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-object v10, v4, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    iput-object v10, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    :cond_c
    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget v10, v4, Landroid/support/v4/app/FragmentState;->bQ:I

    invoke-virtual {v8, v10, v9}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-boolean v9, v4, Landroid/support/v4/app/FragmentState;->cE:Z

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->cE:Z

    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iput-boolean v5, v8, Landroid/support/v4/app/Fragment;->cF:Z

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget v8, v4, Landroid/support/v4/app/FragmentState;->cN:I

    iput v8, v5, Landroid/support/v4/app/Fragment;->cN:I

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget v8, v4, Landroid/support/v4/app/FragmentState;->cO:I

    iput v8, v5, Landroid/support/v4/app/Fragment;->cO:I

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->cP:Ljava/lang/String;

    iput-object v8, v5, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-boolean v8, v4, Landroid/support/v4/app/FragmentState;->cS:Z

    iput-boolean v8, v5, Landroid/support/v4/app/Fragment;->cS:Z

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-boolean v8, v4, Landroid/support/v4/app/FragmentState;->cR:Z

    iput-boolean v8, v5, Landroid/support/v4/app/Fragment;->cR:Z

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-boolean v8, v4, Landroid/support/v4/app/FragmentState;->cQ:Z

    iput-boolean v8, v5, Landroid/support/v4/app/Fragment;->cQ:Z

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iget-object v7, v7, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iput-object v7, v5, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    sget-boolean v5, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v5, :cond_d

    const-string v5, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Instantiated fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->cL:Landroid/support/v4/app/M;

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    .line 3066
    sget-boolean v6, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "restoreAllState: active #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_e
    iget-object v6, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget v7, v5, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3071
    iput-object v0, v4, Landroid/support/v4/app/FragmentState;->eU:Landroid/support/v4/app/Fragment;

    .line 3058
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 3076
    :cond_10
    if-eqz p2, :cond_13

    .line 3077
    iget-object p2, p2, Landroid/support/v4/app/M;->eN:Ljava/util/List;

    .line 3078
    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_7

    .line 3079
    :cond_11
    move v2, v1

    :goto_7
    move v3, v1

    :goto_8
    if-ge v3, v2, :cond_13

    .line 3080
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3081
    iget v6, v4, Landroid/support/v4/app/Fragment;->cA:I

    if-ltz v6, :cond_12

    .line 3082
    iget-object v6, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget v7, v4, Landroid/support/v4/app/Fragment;->cA:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iput-object v6, v4, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    .line 3083
    iget-object v6, v4, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_12

    .line 3084
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Re-attaching retained fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " target no longer exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/support/v4/app/Fragment;->cA:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3092
    :cond_13
    iget-object p2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 3093
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->eQ:[I

    if-eqz p2, :cond_17

    .line 3094
    move p2, v1

    :goto_9
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->eQ:[I

    array-length v2, v2

    if-ge p2, v2, :cond_17

    .line 3095
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->eQ:[I

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3096
    if-nez v2, :cond_14

    .line 3097
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "No instantiated fragment for index #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Landroid/support/v4/app/FragmentManagerState;->eQ:[I

    aget v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 3100
    :cond_14
    iput-boolean v5, v2, Landroid/support/v4/app/Fragment;->cC:Z

    .line 3101
    sget-boolean v3, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v3, :cond_15

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: added #"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_15
    iget-object v3, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3103
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3105
    :cond_16
    iget-object v3, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3106
    :try_start_0
    iget-object v4, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3107
    monitor-exit v3

    .line 3094
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 3107
    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3112
    :cond_17
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->eR:[Landroid/support/v4/app/BackStackState;

    if-eqz p2, :cond_1a

    .line 3113
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->eR:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    .line 3114
    move p2, v1

    :goto_a
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->eR:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    if-ge p2, v0, :cond_1b

    .line 3115
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->eR:[Landroid/support/v4/app/BackStackState;

    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/x;)Landroid/support/v4/app/c;

    move-result-object v0

    .line 3116
    sget-boolean v2, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v2, :cond_18

    .line 3117
    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "restoreAllState: back stack #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/support/v4/app/c;->bQ:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    new-instance v2, Landroid/support/v4/c/g;

    const-string v3, "FragmentManager"

    invoke-direct {v2, v3}, Landroid/support/v4/c/g;-><init>(Ljava/lang/String;)V

    .line 3120
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3121
    const-string v2, "  "

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3122
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 3124
    :cond_18
    iget-object v2, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3125
    iget v2, v0, Landroid/support/v4/app/c;->bQ:I

    if-ltz v2, :cond_19

    .line 3126
    iget v2, v0, Landroid/support/v4/app/c;->bQ:I

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/x;->a(ILandroid/support/v4/app/c;)V

    .line 3114
    :cond_19
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 3130
    :cond_1a
    iput-object v0, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    .line 3133
    :cond_1b
    iget p2, p1, Landroid/support/v4/app/FragmentManagerState;->eS:I

    if-ltz p2, :cond_1c

    .line 3134
    iget-object p2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget v0, p1, Landroid/support/v4/app/FragmentManagerState;->eS:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    .line 3136
    :cond_1c
    iget p1, p1, Landroid/support/v4/app/FragmentManagerState;->dU:I

    iput p1, p0, Landroid/support/v4/app/x;->dU:I

    .line 3137
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1285
    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cC:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cR:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1288
    :cond_0
    move/from16 v0, p2

    goto :goto_1

    .line 1285
    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v9, :cond_2

    .line 1286
    nop

    .line 1288
    move v0, v9

    :cond_2
    :goto_1
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cD:Z

    if-eqz v1, :cond_4

    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, v1, :cond_4

    .line 1289
    iget v0, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1291
    nop

    .line 1299
    move v0, v9

    goto :goto_2

    .line 1294
    :cond_3
    iget v0, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1299
    :cond_4
    :goto_2
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cY:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_5

    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v1, v10, :cond_5

    if-le v0, v11, :cond_5

    .line 1300
    nop

    .line 1302
    move v0, v11

    :cond_5
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v12, 0x2

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-gt v1, v0, :cond_28

    .line 1306
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cE:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_6

    .line 1307
    return-void

    .line 1309
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1314
    :cond_7
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    .line 1315
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1316
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->P()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1318
    :cond_8
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_10

    .line 1320
    :pswitch_0
    if-lez v0, :cond_12

    .line 1321
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_9
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    if-eqz v1, :cond_b

    .line 1323
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    iget-object v2, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v2, v2, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    .line 1324
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1323
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1325
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    .line 1327
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroid/support/v4/app/x;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    .line 1329
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_a

    .line 1330
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroid/support/v4/app/Fragment;->cB:I

    .line 1333
    :cond_a
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroid/support/v4/app/Fragment;->cZ:Z

    .line 1335
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cZ:Z

    if-nez v1, :cond_b

    .line 1336
    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->cY:Z

    .line 1337
    if-le v0, v11, :cond_b

    .line 1338
    nop

    .line 1343
    move v0, v11

    :cond_b
    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    .line 1344
    iget-object v1, v7, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->cM:Landroid/support/v4/app/Fragment;

    .line 1345
    iget-object v1, v7, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_c

    iget-object v1, v7, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    goto :goto_3

    :cond_c
    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    .line 1346
    iget-object v1, v1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    :goto_3
    iput-object v1, v8, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 1350
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_e

    .line 1351
    iget-object v1, v7, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-eq v1, v2, :cond_d

    .line 1352
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_d
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v1, :cond_e

    .line 1357
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1361
    :cond_e
    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1362
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1363
    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1364
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_f

    .line 1365
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_f
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cM:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_10

    .line 1369
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cM:Landroid/support/v4/app/Fragment;

    .line 1373
    :cond_10
    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 1375
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dh:Z

    if-nez v1, :cond_11

    .line 1376
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1377
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 1378
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v15}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_4

    .line 1380
    :cond_11
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 1381
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1383
    :goto_4
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cT:Z

    .line 1390
    :cond_12
    :pswitch_1
    move v1, v0

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cE:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_15

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cG:Z

    if-nez v0, :cond_15

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->D()Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v15}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz v0, :cond_13

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v3, v15}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_5

    :cond_14
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    .line 1392
    :cond_15
    :goto_5
    if-le v1, v9, :cond_23

    .line 1393
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_16
    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cE:Z

    if-nez v0, :cond_20

    .line 1395
    nop

    .line 1396
    iget v0, v8, Landroid/support/v4/app/Fragment;->cO:I

    if-eqz v0, :cond_1a

    .line 1397
    iget v0, v8, Landroid/support/v4/app/Fragment;->cO:I

    if-ne v0, v13, :cond_17

    .line 1398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot create fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 1403
    :cond_17
    iget-object v0, v7, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    iget v3, v8, Landroid/support/v4/app/Fragment;->cO:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/t;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 1404
    if-nez v3, :cond_1b

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cF:Z

    if-nez v0, :cond_1b

    .line 1407
    :try_start_0
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_18

    move-object v0, v14

    goto :goto_6

    :cond_18
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    :goto_6
    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not attached to a context."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, v8, Landroid/support/v4/app/Fragment;->cO:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    goto :goto_7

    .line 1408
    :catch_0
    move-exception v0

    .line 1409
    const-string v0, "unknown"

    .line 1411
    :goto_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No view found for id 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v8, Landroid/support/v4/app/Fragment;->cO:I

    .line 1413
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1411
    invoke-direct {v7, v4}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    goto :goto_8

    .line 1418
    :cond_1a
    move-object v3, v14

    :cond_1b
    :goto_8
    iput-object v3, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    .line 1419
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->D()Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1421
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1422
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    .line 1423
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v15}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1424
    if-eqz v3, :cond_1c

    .line 1425
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1427
    :cond_1c
    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz v0, :cond_1d

    .line 1428
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    :cond_1d
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    .line 1431
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v2, v15}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 1435
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    move v0, v9

    goto :goto_9

    :cond_1e
    move v0, v15

    :goto_9
    iput-boolean v0, v8, Landroid/support/v4/app/Fragment;->de:Z

    goto :goto_a

    .line 1438
    :cond_1f
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    .line 1442
    :cond_20
    :goto_a
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 1443
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v15}, Landroid/support/v4/app/x;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 1444
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 1445
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    if-eqz v0, :cond_21

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    :cond_21
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_22

    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_22
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    .line 1451
    :cond_23
    move v0, v1

    :pswitch_2
    if-le v0, v12, :cond_24

    .line 1452
    iput v11, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1456
    :cond_24
    :pswitch_3
    if-le v0, v11, :cond_26

    .line 1457
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_25

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveto STARTED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->E()V

    .line 1459
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/Fragment;Z)V

    .line 1463
    :cond_26
    :pswitch_4
    if-le v0, v10, :cond_4a

    .line 1464
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_27

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->F()V

    .line 1466
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->c(Landroid/support/v4/app/Fragment;Z)V

    .line 1467
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    .line 1468
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    goto/16 :goto_10

    .line 1471
    :cond_28
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-le v1, v0, :cond_4a

    .line 1472
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_10

    .line 1474
    :pswitch_5
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2c

    .line 1475
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_29

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom RESUMED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_29
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->t:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v1, :cond_2a

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1, v10}, Landroid/support/v4/app/x;->o(I)V

    :cond_2a
    iput v10, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_2b

    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1477
    :cond_2b
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->d(Landroid/support/v4/app/Fragment;Z)V

    .line 1481
    :cond_2c
    :pswitch_6
    if-ge v0, v10, :cond_30

    .line 1482
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom STARTED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_2d
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->u:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v1, :cond_2e

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->dispatchStop()V

    :cond_2e
    iput v11, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_2f

    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1484
    :cond_2f
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->e(Landroid/support/v4/app/Fragment;Z)V

    .line 1488
    :cond_30
    :pswitch_7
    if-ge v0, v11, :cond_32

    .line 1489
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom STOPPED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->G()V

    .line 1494
    :cond_32
    :pswitch_8
    if-ge v0, v12, :cond_3c

    .line 1495
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_33
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_34

    .line 1499
    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->W()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    if-nez v1, :cond_34

    .line 1500
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/x;->m(Landroid/support/v4/app/Fragment;)V

    .line 1503
    :cond_34
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v1, :cond_35

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1, v9}, Landroid/support/v4/app/x;->o(I)V

    :cond_35
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_36

    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v1, :cond_37

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v1}, Landroid/support/v4/app/aj;->aq()V

    :cond_37
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cG:Z

    .line 1504
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->f(Landroid/support/v4/app/Fragment;Z)V

    .line 1505
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3b

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3b

    .line 1507
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1508
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1509
    nop

    .line 1510
    iget v1, v7, Landroid/support/v4/app/x;->ed:I

    const/4 v2, 0x0

    if-lez v1, :cond_38

    iget-boolean v1, v7, Landroid/support/v4/app/x;->mDestroyed:Z

    if-nez v1, :cond_38

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1511
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_38

    iget v1, v8, Landroid/support/v4/app/Fragment;->dg:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_38

    .line 1513
    move/from16 v1, p3

    move/from16 v3, p4

    invoke-virtual {v7, v8, v1, v15, v3}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/G;

    move-result-object v1

    .line 1516
    move-object v10, v1

    goto :goto_b

    :cond_38
    move-object v10, v14

    :goto_b
    iput v2, v8, Landroid/support/v4/app/Fragment;->dg:F

    .line 1517
    if-eqz v10, :cond_3a

    .line 1518
    iget-object v11, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->m(I)V

    iget-object v1, v10, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    if-eqz v1, :cond_39

    iget-object v12, v10, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    invoke-static {v12}, Landroid/support/v4/app/x;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    new-instance v6, Landroid/support/v4/app/z;

    move-object v1, v6

    move-object v2, v7

    move-object v5, v11

    move-object v9, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/app/z;-><init>(Landroid/support/v4/app/x;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v12, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v11, v10}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/support/v4/app/G;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    :cond_39
    iget-object v1, v10, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    iget-object v2, v10, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    invoke-virtual {v8, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    new-instance v2, Landroid/support/v4/app/B;

    invoke-direct {v2, v7, v4, v11, v8}, Landroid/support/v4/app/B;-><init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2, v10}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/support/v4/app/G;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 1520
    :cond_3a
    :goto_c
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1522
    :cond_3b
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    .line 1523
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1524
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    .line 1525
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1529
    :cond_3c
    :pswitch_9
    if-gtz v0, :cond_4a

    .line 1530
    iget-boolean v1, v7, Landroid/support/v4/app/x;->mDestroyed:Z

    if-eqz v1, :cond_3e

    .line 1537
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 1538
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v1

    .line 1539
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    .line 1540
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1541
    goto :goto_d

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 1542
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object v1

    .line 1543
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1544
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1547
    :cond_3e
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_49

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_3f

    goto/16 :goto_f

    .line 1555
    :cond_3f
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_40

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom CREATED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_40
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cT:Z

    if-nez v1, :cond_43

    .line 1557
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->v:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v1, :cond_41

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->dispatchDestroy()V

    :cond_41
    iput v15, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dh:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_42

    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 1558
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->g(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_e

    .line 1560
    :cond_43
    iput v15, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1563
    :goto_e
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_44

    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v1, :cond_46

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cT:Z

    if-nez v1, :cond_45

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child FragmentManager of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->dispatchDestroy()V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 1564
    :cond_46
    invoke-virtual {v7, v8, v15}, Landroid/support/v4/app/x;->h(Landroid/support/v4/app/Fragment;Z)V

    .line 1565
    if-nez p5, :cond_4a

    .line 1566
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->cT:Z

    if-nez v1, :cond_48

    .line 1567
    iget v1, v8, Landroid/support/v4/app/Fragment;->bQ:I

    if-ltz v1, :cond_4a

    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Freeing fragment index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, v7, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget v2, v8, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/v;->b(Ljava/lang/String;)V

    iput v13, v8, Landroid/support/v4/app/Fragment;->bQ:I

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cC:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cD:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cE:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mInLayout:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cF:Z

    iput v15, v8, Landroid/support/v4/app/Fragment;->cH:I

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iput v15, v8, Landroid/support/v4/app/Fragment;->cN:I

    iput v15, v8, Landroid/support/v4/app/Fragment;->cO:I

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cQ:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cR:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->cT:Z

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->db:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dc:Z

    goto :goto_10

    .line 1569
    :cond_48
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    .line 1570
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cM:Landroid/support/v4/app/Fragment;

    .line 1571
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    goto :goto_10

    .line 1552
    :cond_49
    :goto_f
    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->m(I)V

    .line 1553
    nop

    .line 1579
    const/4 v9, 0x1

    goto :goto_11

    :cond_4a
    :goto_10
    move v9, v0

    :goto_11
    iget v0, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v0, v9, :cond_4b

    .line 1580
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveToState: Fragment state for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1584
    :cond_4b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 3395
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3396
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3397
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3398
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3399
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3402
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3403
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3404
    :cond_1
    goto :goto_0

    .line 3407
    :cond_2
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 3426
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3427
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3428
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3429
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3430
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3433
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3434
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3435
    :cond_1
    goto :goto_0

    .line 3438
    :cond_2
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 3473
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3474
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3475
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3476
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3477
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 3480
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3481
    if-eqz p4, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3482
    :cond_1
    goto :goto_0

    .line 3485
    :cond_2
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 3

    .line 1888
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->g(Landroid/support/v4/app/Fragment;)V

    .line 1890
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cR:Z

    if-nez v0, :cond_4

    .line 1891
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment already added: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1894
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1895
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cC:Z

    .line 1898
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->cD:Z

    .line 1899
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 1900
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->df:Z

    .line 1902
    :cond_2
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz v1, :cond_3

    .line 1903
    iput-boolean v0, p0, Landroid/support/v4/app/x;->ei:Z

    .line 1905
    :cond_3
    if-eqz p2, :cond_4

    .line 1906
    invoke-virtual {p0, p1}, Landroid/support/v4/app/x;->e(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1896
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1909
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Landroid/support/v4/app/J;Z)V
    .locals 1

    .line 2076
    if-nez p2, :cond_0

    .line 2077
    invoke-direct {p0}, Landroid/support/v4/app/x;->aa()V

    .line 2079
    :cond_0
    monitor-enter p0

    .line 2080
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/x;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2087
    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 2088
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    .line 2090
    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    invoke-direct {p0}, Landroid/support/v4/app/x;->ab()V

    .line 2092
    monitor-exit p0

    return-void

    .line 2081
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 2083
    monitor-exit p0

    return-void

    .line 2085
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2092
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/app/v;Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 3156
    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3157
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    .line 3158
    iput-object p2, p0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    .line 3159
    iput-object p3, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    .line 3160
    return-void
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5

    .line 2722
    iget-object v0, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2723
    return v1

    .line 2725
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    .line 2726
    iget-object p3, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    .line 2727
    if-gez p3, :cond_1

    .line 2728
    return v1

    .line 2730
    :cond_1
    iget-object p4, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2731
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2732
    goto/16 :goto_5

    .line 2733
    :cond_2
    nop

    .line 2734
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    .line 2765
    :cond_3
    const/4 p3, -0x1

    move v2, p3

    goto :goto_3

    .line 2737
    :cond_4
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2738
    :goto_1
    if-ltz v2, :cond_7

    .line 2739
    iget-object v3, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    .line 2740
    if-eqz p3, :cond_5

    iget-object v4, v3, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2741
    :cond_5
    if-ltz p4, :cond_6

    iget v3, v3, Landroid/support/v4/app/c;->bQ:I

    if-eq p4, v3, :cond_7

    .line 2744
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 2747
    goto :goto_1

    .line 2748
    :cond_7
    if-gez v2, :cond_8

    .line 2749
    return v1

    .line 2751
    :cond_8
    and-int/2addr p5, v0

    if-eqz p5, :cond_b

    .line 2752
    add-int/lit8 v2, v2, -0x1

    .line 2754
    :goto_2
    if-ltz v2, :cond_b

    .line 2755
    iget-object p5, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/c;

    .line 2756
    if-eqz p3, :cond_9

    iget-object v3, p5, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget p5, p5, Landroid/support/v4/app/c;->bQ:I

    if-ne p4, p5, :cond_b

    .line 2758
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 2759
    goto :goto_2

    .line 2765
    :cond_b
    :goto_3
    iget-object p3, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_c

    .line 2766
    return v1

    .line 2768
    :cond_c
    iget-object p3, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_4
    if-le p3, v2, :cond_d

    .line 2769
    iget-object p4, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2768
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    .line 2773
    :cond_d
    :goto_5
    return v0
.end method

.method final ae()V
    .locals 5

    .line 2689
    iget-boolean v0, p0, Landroid/support/v4/app/x;->el:Z

    if-eqz v0, :cond_2

    .line 2690
    nop

    .line 2691
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2692
    iget-object v3, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 2693
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v4, :cond_0

    .line 2694
    iget-object v3, v3, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v3}, Landroid/support/v4/app/aj;->al()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2691
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2697
    :cond_1
    if-nez v2, :cond_2

    .line 2698
    iput-boolean v0, p0, Landroid/support/v4/app/x;->el:Z

    .line 2699
    invoke-virtual {p0}, Landroid/support/v4/app/x;->Z()V

    .line 2702
    :cond_2
    return-void
.end method

.method final af()V
    .locals 2

    .line 2705
    iget-object v0, p0, Landroid/support/v4/app/x;->eb:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2706
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/x;->eb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2707
    iget-object v1, p0, Landroid/support/v4/app/x;->eb:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2710
    :cond_0
    return-void
.end method

.method final ag()V
    .locals 9

    .line 2806
    nop

    .line 2807
    nop

    .line 2808
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2809
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 2810
    iget-object v5, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    .line 2811
    if-eqz v5, :cond_5

    .line 2812
    iget-boolean v6, v5, Landroid/support/v4/app/Fragment;->cS:Z

    if-eqz v6, :cond_2

    .line 2813
    if-nez v3, :cond_0

    .line 2814
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2817
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->bQ:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    iput v6, v5, Landroid/support/v4/app/Fragment;->cA:I

    .line 2818
    sget-boolean v6, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "retainNonConfig: keeping retained "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_2
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v6, :cond_3

    .line 2822
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v6}, Landroid/support/v4/app/x;->ag()V

    .line 2823
    iget-object v5, v5, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    iget-object v5, v5, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    goto :goto_2

    .line 2827
    :cond_3
    iget-object v5, v5, Landroid/support/v4/app/Fragment;->cL:Landroid/support/v4/app/M;

    .line 2830
    :goto_2
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 2831
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2832
    move v6, v0

    :goto_3
    if-ge v6, v2, :cond_4

    .line 2833
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2837
    :cond_4
    if-eqz v4, :cond_5

    .line 2838
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2843
    :cond_6
    move-object v3, v1

    move-object v4, v3

    :cond_7
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    .line 2844
    iput-object v1, p0, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    return-void

    .line 2846
    :cond_8
    new-instance v0, Landroid/support/v4/app/M;

    invoke-direct {v0, v3, v4}, Landroid/support/v4/app/M;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    .line 2848
    return-void
.end method

.method public final b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 898
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 899
    if-ne p1, v0, :cond_0

    .line 900
    const/4 p1, 0x0

    return-object p1

    .line 902
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 903
    if-nez v0, :cond_1

    .line 904
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 907
    :cond_1
    return-object v0
.end method

.method final b(IZ)V
    .locals 4

    .line 1802
    iget-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1803
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1806
    :cond_0
    if-nez p2, :cond_1

    iget p2, p0, Landroid/support/v4/app/x;->ed:I

    if-ne p1, p2, :cond_1

    .line 1807
    return-void

    .line 1810
    :cond_1
    iput p1, p0, Landroid/support/v4/app/x;->ed:I

    .line 1812
    iget-object p1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-eqz p1, :cond_8

    .line 1813
    nop

    .line 1816
    iget-object p1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1817
    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 1818
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 1819
    invoke-virtual {p0, v2}, Landroid/support/v4/app/x;->f(Landroid/support/v4/app/Fragment;)V

    .line 1820
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v3, :cond_2

    .line 1821
    iget-object v2, v2, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v2}, Landroid/support/v4/app/aj;->al()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1817
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1827
    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1828
    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_6

    .line 1829
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 1830
    if-eqz v2, :cond_5

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cD:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cR:Z

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->de:Z

    if-nez v3, :cond_5

    .line 1831
    invoke-virtual {p0, v2}, Landroid/support/v4/app/x;->f(Landroid/support/v4/app/Fragment;)V

    .line 1832
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v3, :cond_5

    .line 1833
    iget-object v2, v2, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v2}, Landroid/support/v4/app/aj;->al()Z

    move-result v2

    or-int/2addr v1, v2

    .line 1828
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1838
    :cond_6
    if-nez v1, :cond_7

    .line 1839
    invoke-virtual {p0}, Landroid/support/v4/app/x;->Z()V

    .line 1842
    :cond_7
    iget-boolean p1, p0, Landroid/support/v4/app/x;->ei:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    if-eqz p1, :cond_8

    iget p1, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    .line 1843
    iget-object p1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p1}, Landroid/support/v4/app/v;->X()V

    .line 1844
    iput-boolean p2, p0, Landroid/support/v4/app/x;->ei:Z

    .line 1847
    :cond_8
    return-void
.end method

.method final b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 3410
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3411
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3412
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3413
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3414
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V

    .line 3417
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3418
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3419
    :cond_1
    goto :goto_0

    .line 3422
    :cond_2
    return-void
.end method

.method final b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 3441
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3442
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3443
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3444
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3445
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3448
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3449
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3450
    :cond_1
    goto :goto_0

    .line 3453
    :cond_2
    return-void
.end method

.method final b(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3488
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3489
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3490
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3491
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3492
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/Fragment;Z)V

    .line 3495
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3496
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3497
    :cond_1
    goto :goto_0

    .line 3500
    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 2019
    if-eqz p1, :cond_1

    .line 2021
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2022
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2023
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2024
    return-object v1

    .line 2021
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2028
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2030
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2031
    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2032
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2033
    return-object v1

    .line 2030
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2037
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 3457
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3458
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3459
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3460
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3461
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3464
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3465
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3466
    :cond_1
    goto :goto_0

    .line 3469
    :cond_2
    return-void
.end method

.method final c(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3503
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3504
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3505
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3506
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3507
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->c(Landroid/support/v4/app/Fragment;Z)V

    .line 3510
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3511
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3512
    :cond_1
    goto :goto_0

    .line 3515
    :cond_2
    return-void
.end method

.method final d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 3548
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3549
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3550
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3551
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3552
    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/x;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3555
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/c/p;

    .line 3556
    if-eqz p3, :cond_1

    iget-object p2, p2, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3557
    :cond_1
    goto :goto_0

    .line 3560
    :cond_2
    return-void
.end method

.method final d(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3518
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3519
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3520
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3521
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3522
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->d(Landroid/support/v4/app/Fragment;Z)V

    .line 3525
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3526
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3527
    :cond_1
    goto :goto_0

    .line 3530
    :cond_2
    return-void
.end method

.method public final dispatchActivityCreated()V
    .locals 1

    .line 3180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 3181
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x;->o(I)V

    .line 3182
    return-void
.end method

.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 3253
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3254
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3255
    if-eqz v1, :cond_0

    .line 3256
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/x;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3259
    :cond_1
    return-void
.end method

.method public final dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 3335
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3336
    return v1

    .line 3338
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3339
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3340
    if-eqz v2, :cond_2

    .line 3341
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cQ:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/x;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 3342
    return v4

    .line 3338
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3346
    :cond_3
    return v1
.end method

.method public final dispatchCreate()V
    .locals 1

    .line 3175
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 3176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x;->o(I)V

    .line 3177
    return-void
.end method

.method public final dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .line 3271
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3272
    return v1

    .line 3274
    :cond_0
    nop

    .line 3275
    const/4 v0, 0x0

    .line 3276
    move-object v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 3277
    iget-object v4, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3278
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 3279
    iget-boolean v6, v4, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez v6, :cond_2

    iget-boolean v6, v4, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    iget-object v7, v4, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v7, :cond_3

    iget-object v7, v4, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v7, p1, p2}, Landroid/support/v4/app/x;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_2

    :cond_2
    move v6, v1

    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    .line 3280
    nop

    .line 3281
    if-nez v2, :cond_4

    .line 3282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3284
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3276
    move v3, v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3289
    :cond_6
    iget-object p1, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 3290
    :goto_3
    iget-object p1, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 3291
    iget-object p1, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 3292
    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 3293
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3298
    :cond_8
    iput-object v2, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    .line 3300
    return v3
.end method

.method public final dispatchDestroy()V
    .locals 1

    .line 3216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->mDestroyed:Z

    .line 3217
    invoke-virtual {p0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 3218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x;->o(I)V

    .line 3219
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    .line 3220
    iput-object v0, p0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    .line 3221
    iput-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    .line 3222
    return-void
.end method

.method public final dispatchLowMemory()V
    .locals 3

    .line 3262
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3263
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3264
    if-eqz v1, :cond_0

    .line 3265
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->dispatchLowMemory()V

    .line 3262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3268
    :cond_1
    return-void
.end method

.method public final dispatchMultiWindowModeChanged(Z)V
    .locals 3

    .line 3235
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3236
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3237
    if-eqz v1, :cond_0

    .line 3238
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/x;->dispatchMultiWindowModeChanged(Z)V

    .line 3235
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3241
    :cond_1
    return-void
.end method

.method public final dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 3320
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3321
    return v1

    .line 3323
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3324
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3325
    if-eqz v2, :cond_3

    .line 3326
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cQ:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->cV:Z

    :cond_1
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/x;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 3327
    return v4

    .line 3323
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3331
    :cond_4
    return v1
.end method

.method public final dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    .line 3350
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    if-gtz v0, :cond_0

    .line 3351
    return-void

    .line 3353
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3354
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3355
    if-eqz v1, :cond_1

    .line 3356
    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/x;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3353
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3359
    :cond_2
    return-void
.end method

.method public final dispatchPictureInPictureModeChanged(Z)V
    .locals 3

    .line 3244
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3245
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3246
    if-eqz v1, :cond_0

    .line 3247
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/x;->dispatchPictureInPictureModeChanged(Z)V

    .line 3244
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3250
    :cond_1
    return-void
.end method

.method public final dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 3304
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3305
    return v1

    .line 3307
    :cond_0
    nop

    .line 3308
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3309
    iget-object v3, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3310
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3311
    iget-boolean v5, v3, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez v5, :cond_3

    iget-boolean v5, v3, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v3, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget-object v6, v3, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v6, :cond_2

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v3, p1}, Landroid/support/v4/app/x;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v3, v5

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 3312
    nop

    .line 3308
    move v2, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3316
    :cond_5
    return v2
.end method

.method public final dispatchResume()V
    .locals 1

    .line 3190
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 3191
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x;->o(I)V

    .line 3192
    return-void
.end method

.method public final dispatchStart()V
    .locals 1

    .line 3185
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 3186
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x;->o(I)V

    .line 3187
    return-void
.end method

.method public final dispatchStop()V
    .locals 1

    .line 3202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 3204
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/v4/app/x;->o(I)V

    .line 3205
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 990
    if-lez v1, :cond_1

    .line 991
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 993
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 995
    iget-object v4, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 996
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 997
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 998
    if-eqz v4, :cond_0

    .line 999
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 994
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1006
    if-lez p2, :cond_2

    .line 1007
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    move p4, v2

    :goto_1
    if-ge p4, p2, :cond_2

    .line 1009
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1010
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1013
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 1018
    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 1019
    iget-object p2, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1020
    if-lez p2, :cond_3

    .line 1021
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    move p4, v2

    :goto_2
    if-ge p4, p2, :cond_3

    .line 1023
    iget-object v1, p0, Landroid/support/v4/app/x;->dY:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1024
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1025
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1030
    :cond_3
    iget-object p2, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 1031
    iget-object p2, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1032
    if-lez p2, :cond_4

    .line 1033
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    move p4, v2

    :goto_3
    if-ge p4, p2, :cond_4

    .line 1035
    iget-object v1, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 1036
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1037
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v1, v0, p3}, Landroid/support/v4/app/c;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1034
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 1043
    :cond_4
    monitor-enter p0

    .line 1044
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 1045
    iget-object p2, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1046
    if-lez p2, :cond_5

    .line 1047
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    move p4, v2

    :goto_4
    if-ge p4, p2, :cond_5

    .line 1049
    iget-object v0, p0, Landroid/support/v4/app/x;->dZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 1050
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1051
    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1048
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 1056
    :cond_5
    iget-object p2, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 1057
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-object p2, p0, Landroid/support/v4/app/x;->ea:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    iget-object p2, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 1063
    iget-object p2, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1064
    if-lez p2, :cond_7

    .line 1065
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1066
    :goto_5
    if-ge v2, p2, :cond_7

    .line 1067
    iget-object p4, p0, Landroid/support/v4/app/x;->dS:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/J;

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1069
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1074
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1076
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1077
    iget-object p2, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_8

    .line 1078
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1080
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/x;->ed:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/x;->ej:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1082
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/x;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1083
    iget-boolean p2, p0, Landroid/support/v4/app/x;->ei:Z

    if-eqz p2, :cond_9

    .line 1084
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget-boolean p2, p0, Landroid/support/v4/app/x;->ei:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1087
    :cond_9
    iget-object p2, p0, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    :cond_a
    return-void

    .line 1060
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final e(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .line 1650
    iget v2, p0, Landroid/support/v4/app/x;->ed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1651
    return-void
.end method

.method final e(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3533
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3534
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3535
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3536
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3537
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->e(Landroid/support/v4/app/Fragment;Z)V

    .line 3540
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3541
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3542
    :cond_1
    goto :goto_0

    .line 3545
    :cond_2
    return-void
.end method

.method public final execPendingActions()Z
    .locals 4

    .line 2233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->e(Z)V

    .line 2235
    nop

    .line 2236
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/x;->en:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/x;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2237
    iput-boolean v0, p0, Landroid/support/v4/app/x;->dT:Z

    .line 2239
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/x;->em:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/x;->en:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/x;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    invoke-direct {p0}, Landroid/support/v4/app/x;->ac()V

    .line 2242
    nop

    .line 2243
    nop

    .line 2236
    move v1, v0

    goto :goto_0

    .line 2241
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/x;->ac()V

    throw v0

    .line 2246
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/x;->ae()V

    .line 2247
    invoke-direct {p0}, Landroid/support/v4/app/x;->ah()V

    .line 2249
    return v1
.end method

.method public final executePendingTransactions()Z
    .locals 1

    .line 781
    invoke-virtual {p0}, Landroid/support/v4/app/x;->execPendingActions()Z

    move-result v0

    .line 782
    invoke-direct {p0}, Landroid/support/v4/app/x;->ad()V

    .line 783
    return v0
.end method

.method final f(Landroid/support/v4/app/Fragment;)V
    .locals 10

    .line 1739
    if-nez p1, :cond_0

    .line 1740
    return-void

    .line 1742
    :cond_0
    iget v0, p0, Landroid/support/v4/app/x;->ed:I

    .line 1743
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cD:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1744
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1745
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1747
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1750
    :cond_2
    :goto_0
    move v6, v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1752
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1754
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_5

    iget-object v5, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_4

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1755
    move-object v4, v5

    goto :goto_2

    .line 1754
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1755
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 1756
    iget-object v0, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1758
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    .line 1759
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1760
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1761
    if-ge v4, v0, :cond_6

    .line 1762
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1763
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1766
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->de:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1768
    iget v0, p1, Landroid/support/v4/app/Fragment;->dg:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1769
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v4, p1, Landroid/support/v4/app/Fragment;->dg:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1771
    :cond_7
    iput v1, p1, Landroid/support/v4/app/Fragment;->dg:F

    .line 1772
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->de:Z

    .line 1774
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J()I

    move-result v0

    .line 1775
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()I

    move-result v1

    .line 1774
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/G;

    move-result-object v0

    .line 1776
    if-eqz v0, :cond_9

    .line 1777
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/support/v4/app/G;)V

    .line 1778
    iget-object v1, v0, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 1779
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1781
    :cond_8
    iget-object v1, v0, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1782
    iget-object v0, v0, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1787
    :cond_9
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->df:Z

    if-eqz v0, :cond_11

    .line 1788
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->J()I

    move-result v0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->K()I

    move-result v4

    invoke-virtual {p0, p1, v0, v1, v4}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/G;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->c(Z)V

    goto :goto_4

    :cond_a
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/C;

    invoke-direct {v6, p0, v1, v4, p1}, Landroid/support/v4/app/C;-><init>(Landroid/support/v4/app/x;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    :cond_b
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/support/v4/app/G;)V

    iget-object v0, v0, Landroid/support/v4/app/G;->eH:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/support/v4/app/G;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroid/support/v4/app/G;->eG:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x8

    goto :goto_5

    :cond_e
    move v0, v3

    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->c(Z)V

    :cond_f
    :goto_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz v0, :cond_10

    iput-boolean v2, p0, Landroid/support/v4/app/x;->ei:Z

    :cond_10
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->df:Z

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    .line 1790
    :cond_11
    return-void
.end method

.method final f(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3563
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3564
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3565
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3566
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3567
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->f(Landroid/support/v4/app/Fragment;Z)V

    .line 3570
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3571
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3572
    :cond_1
    goto :goto_0

    .line 3575
    :cond_2
    return-void
.end method

.method final g(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1861
    iget v0, p1, Landroid/support/v4/app/Fragment;->bQ:I

    if-ltz v0, :cond_0

    .line 1862
    return-void

    .line 1865
    :cond_0
    iget v0, p0, Landroid/support/v4/app/x;->dU:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/x;->dU:I

    iget-object v1, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    .line 1866
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1867
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    .line 1869
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1870
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_2
    return-void
.end method

.method final g(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3578
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3579
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3580
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3581
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3582
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->g(Landroid/support/v4/app/Fragment;Z)V

    .line 3585
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3586
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3587
    :cond_1
    goto :goto_0

    .line 3590
    :cond_2
    return-void
.end method

.method public final getFragments()Ljava/util/List;
    .locals 2

    .line 912
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 915
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    monitor-enter v0

    .line 916
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 917
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1912
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/support/v4/app/Fragment;->cH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->s()Z

    move-result v0

    .line 1914
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->cR:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1915
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1916
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1917
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1918
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz v0, :cond_2

    .line 1919
    iput-boolean v1, p0, Landroid/support/v4/app/x;->ei:Z

    .line 1921
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cC:Z

    .line 1922
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->cD:Z

    .line 1924
    :cond_3
    return-void

    .line 1917
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final h(Landroid/support/v4/app/Fragment;Z)V
    .locals 2

    .line 3593
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3594
    iget-object v0, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3595
    instance-of v1, v0, Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    .line 3596
    check-cast v0, Landroid/support/v4/app/x;

    const/4 v1, 0x1

    .line 3597
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->h(Landroid/support/v4/app/Fragment;Z)V

    .line 3600
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/x;->ec:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/p;

    .line 3601
    if-eqz p2, :cond_1

    iget-object v0, v0, Landroid/support/v4/c/p;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 3602
    :cond_1
    goto :goto_0

    .line 3605
    :cond_2
    return-void
.end method

.method public final i(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1933
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez v0, :cond_1

    .line 1935
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    .line 1938
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->df:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->df:Z

    .line 1940
    :cond_1
    return-void
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 2065
    iget-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    return v0
.end method

.method public final j(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1949
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz v0, :cond_1

    .line 1951
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    .line 1954
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->df:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->df:Z

    .line 1956
    :cond_1
    return-void
.end method

.method public final k(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .line 1959
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cR:Z

    if-nez v0, :cond_3

    .line 1961
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cR:Z

    .line 1962
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz v1, :cond_3

    .line 1964
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1966
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1967
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz v1, :cond_2

    .line 1969
    iput-boolean v0, p0, Landroid/support/v4/app/x;->ei:Z

    .line 1971
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cC:Z

    goto :goto_0

    .line 1967
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1974
    :cond_3
    :goto_0
    return-void
.end method

.method public final l(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1977
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cR:Z

    if-eqz v0, :cond_3

    .line 1979
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cR:Z

    .line 1980
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cC:Z

    if-nez v0, :cond_3

    .line 1981
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1982
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1984
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1986
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1988
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->cC:Z

    .line 1989
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->cU:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->cV:Z

    if-eqz p1, :cond_3

    .line 1990
    iput-boolean v0, p0, Landroid/support/v4/app/x;->ei:Z

    goto :goto_0

    .line 1987
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1994
    :cond_3
    :goto_0
    return-void
.end method

.method final m(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 2851
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2852
    return-void

    .line 2854
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2855
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    goto :goto_0

    .line 2857
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2859
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2860
    iget-object v0, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2861
    iget-object v0, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    .line 2862
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/x;->eq:Landroid/util/SparseArray;

    .line 2864
    :cond_2
    return-void
.end method

.method public final n(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 1999
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2000
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2001
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/Fragment;->cN:I

    if-ne v2, p1, :cond_0

    .line 2002
    return-object v1

    .line 1999
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2005
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 2007
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2008
    iget-object v1, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2009
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/support/v4/app/Fragment;->cN:I

    if-ne v2, p1, :cond_2

    .line 2010
    return-object v1

    .line 2007
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2014
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 3363
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-eqz v0, :cond_1

    .line 3364
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    if-eq v0, p0, :cond_1

    .line 3365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3368
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    .line 3369
    return-void
.end method

.method public final noteStateNotSaved()V
    .locals 4

    .line 3163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    .line 3164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 3165
    iget-object v1, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3166
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3167
    iget-object v2, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3168
    if-eqz v2, :cond_0

    .line 3169
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v2}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 3166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3172
    :cond_1
    return-void
.end method

.method final o(I)V
    .locals 2

    .line 3226
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/x;->dT:Z

    .line 3227
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/x;->b(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3229
    iput-boolean v1, p0, Landroid/support/v4/app/x;->dT:Z

    .line 3230
    nop

    .line 3231
    invoke-virtual {p0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 3232
    return-void

    .line 3229
    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/x;->dT:Z

    throw p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 3649
    move-object/from16 v2, p4

    const-string v3, "fragment"

    move-object v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3650
    return-object v4

    .line 3653
    :cond_0
    const-string v3, "class"

    invoke-interface {v2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3654
    sget-object v5, Landroid/support/v4/app/I;->eI:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3655
    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 3656
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3658
    :cond_1
    move-object v7, v3

    const/4 v3, -0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3659
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3660
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3662
    iget-object v5, v0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v5, v5, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3665
    return-object v4

    .line 3668
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    nop

    .line 3669
    :cond_3
    if-ne v6, v3, :cond_4

    if-ne v9, v3, :cond_4

    if-nez v10, :cond_4

    .line 3670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3677
    :cond_4
    if-eq v9, v3, :cond_5

    invoke-virtual {v0, v9}, Landroid/support/v4/app/x;->n(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    goto :goto_0

    .line 3678
    :cond_5
    move-object v5, v4

    :goto_0
    if-nez v5, :cond_6

    if-eqz v10, :cond_6

    .line 3679
    invoke-virtual {v0, v10}, Landroid/support/v4/app/x;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 3681
    :cond_6
    if-nez v5, :cond_7

    if-eq v6, v3, :cond_7

    .line 3682
    invoke-virtual {v0, v6}, Landroid/support/v4/app/x;->n(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 3685
    :cond_7
    sget-boolean v3, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onCreateView: id=0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3686
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " fname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " existing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3685
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    :cond_8
    if-nez v5, :cond_a

    .line 3689
    iget-object v2, v0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {v2, v1, v7, v4}, Landroid/support/v4/app/t;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3690
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->cE:Z

    .line 3691
    if-eqz v9, :cond_9

    move v2, v9

    goto :goto_1

    :cond_9
    move v2, v6

    :goto_1
    iput v2, v1, Landroid/support/v4/app/Fragment;->cN:I

    .line 3692
    iput v6, v1, Landroid/support/v4/app/Fragment;->cO:I

    .line 3693
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    .line 3694
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3695
    iput-object v0, v1, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    .line 3696
    iget-object v2, v0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    .line 3697
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->u()V

    .line 3698
    invoke-virtual {v0, v1, v8}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 3724
    move-object v6, v1

    goto :goto_2

    .line 3700
    :cond_a
    iget-boolean v1, v5, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_b

    .line 3703
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3705
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3710
    :cond_b
    iput-boolean v8, v5, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 3711
    iget-object v1, v0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iput-object v1, v5, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    .line 3715
    iget-boolean v1, v5, Landroid/support/v4/app/Fragment;->cT:Z

    if-nez v1, :cond_c

    .line 3716
    iget-object v1, v5, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->u()V

    .line 3724
    :cond_c
    move-object v6, v5

    :goto_2
    iget v1, v0, Landroid/support/v4/app/x;->ed:I

    if-gtz v1, :cond_d

    iget-boolean v1, v6, Landroid/support/v4/app/Fragment;->cE:Z

    if-eqz v1, :cond_d

    .line 3725
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_3

    .line 3727
    :cond_d
    invoke-virtual {v0, v6}, Landroid/support/v4/app/x;->e(Landroid/support/v4/app/Fragment;)V

    .line 3730
    :goto_3
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_e

    .line 3731
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3734
    :cond_e
    if-eqz v9, :cond_f

    .line 3735
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3737
    :cond_f
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    .line 3738
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3740
    :cond_10
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 3745
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final popBackStack(II)V
    .locals 2

    .line 810
    if-gez p1, :cond_0

    .line 811
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 813
    :cond_0
    new-instance v0, Landroid/support/v4/app/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/K;-><init>(Landroid/support/v4/app/x;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/J;Z)V

    .line 814
    return-void
.end method

.method public final popBackStackImmediate()Z
    .locals 3

    .line 793
    invoke-direct {p0}, Landroid/support/v4/app/x;->aa()V

    .line 794
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/x;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method final saveAllState()Landroid/os/Parcelable;
    .locals 14

    .line 2903
    invoke-direct {p0}, Landroid/support/v4/app/x;->ad()V

    .line 2904
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->P()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    :cond_1
    invoke-virtual {v6, v3}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->O()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2905
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 2907
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->ej:Z

    .line 2908
    iput-object v3, p0, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    .line 2910
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    goto/16 :goto_8

    .line 2915
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2916
    new-array v4, v2, [Landroid/support/v4/app/FragmentState;

    .line 2917
    nop

    .line 2918
    move v5, v1

    move v6, v5

    :goto_3
    if-ge v5, v2, :cond_15

    .line 2919
    iget-object v7, p0, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 2920
    if-eqz v7, :cond_14

    .line 2921
    iget v6, v7, Landroid/support/v4/app/Fragment;->bQ:I

    if-gez v6, :cond_6

    .line 2922
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 2927
    :cond_6
    nop

    .line 2929
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v7}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 2930
    aput-object v6, v4, v5

    .line 2932
    iget v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_11

    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    if-nez v8, :cond_11

    .line 2933
    iget-object v8, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    if-nez v8, :cond_7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    :cond_7
    iget-object v8, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    iget-object v8, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v1}, Landroid/support/v4/app/x;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v8, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    iput-object v3, p0, Landroid/support/v4/app/x;->ep:Landroid/os/Bundle;

    goto :goto_4

    :cond_8
    move-object v8, v3

    :goto_4
    iget-object v9, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_9

    invoke-virtual {p0, v7}, Landroid/support/v4/app/x;->m(Landroid/support/v4/app/Fragment;)V

    :cond_9
    iget-object v9, v7, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const-string v9, "android:view_state"

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_b
    iget-boolean v9, v7, Landroid/support/v4/app/Fragment;->cZ:Z

    if-nez v9, :cond_d

    if-nez v8, :cond_c

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_c
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v7, Landroid/support/v4/app/Fragment;->cZ:Z

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_d
    iput-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    .line 2935
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_12

    .line 2936
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->bQ:I

    if-gez v8, :cond_e

    .line 2937
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 2941
    :cond_e
    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    if-nez v8, :cond_f

    .line 2942
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    .line 2944
    :cond_f
    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    iget v11, v10, Landroid/support/v4/app/Fragment;->bQ:I

    if-gez v11, :cond_10

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    :cond_10
    iget v10, v10, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2946
    iget v8, v7, Landroid/support/v4/app/Fragment;->cB:I

    if-eqz v8, :cond_12

    .line 2947
    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v7, Landroid/support/v4/app/Fragment;->cB:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 2954
    :cond_11
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    iput-object v8, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    .line 2957
    :cond_12
    :goto_5
    sget-boolean v8, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v8, :cond_13

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Saved state of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :cond_13
    move v6, v0

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 2962
    :cond_15
    if-nez v6, :cond_17

    .line 2963
    sget-boolean v0, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_16
    return-object v3

    .line 2967
    :cond_17
    nop

    .line 2968
    nop

    .line 2971
    iget-object v0, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2972
    if-lez v0, :cond_1a

    .line 2973
    new-array v2, v0, [I

    .line 2974
    move v5, v1

    :goto_6
    if-ge v5, v0, :cond_1b

    .line 2975
    iget-object v6, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->bQ:I

    aput v6, v2, v5

    .line 2976
    aget v6, v2, v5

    if-gez v6, :cond_18

    .line 2977
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    .line 2978
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has cleared index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2977
    invoke-direct {p0, v6}, Landroid/support/v4/app/x;->a(Ljava/lang/RuntimeException;)V

    .line 2981
    :cond_18
    sget-boolean v6, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v6, :cond_19

    .line 2982
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveAllState: adding fragment #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    .line 2983
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2982
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2989
    :cond_1a
    move-object v2, v3

    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 2990
    iget-object v0, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2991
    if-lez v0, :cond_1d

    .line 2992
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 2993
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 2994
    new-instance v5, Landroid/support/v4/app/BackStackState;

    iget-object v6, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/c;

    invoke-direct {v5, v6}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/c;)V

    aput-object v5, v3, v1

    .line 2995
    sget-boolean v5, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v5, :cond_1c

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding back stack #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/v4/app/x;->dX:Ljava/util/ArrayList;

    .line 2996
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2995
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3001
    :cond_1d
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 3002
    iput-object v4, v0, Landroid/support/v4/app/FragmentManagerState;->eP:[Landroid/support/v4/app/FragmentState;

    .line 3003
    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->eQ:[I

    .line 3004
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->eR:[Landroid/support/v4/app/BackStackState;

    .line 3005
    iget-object v1, p0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1e

    .line 3006
    iget-object v1, p0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->bQ:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->eS:I

    .line 3008
    :cond_1e
    iget v1, p0, Landroid/support/v4/app/x;->dU:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->dU:I

    .line 3009
    invoke-virtual {p0}, Landroid/support/v4/app/x;->ag()V

    .line 3010
    return-object v0

    .line 2911
    :cond_1f
    :goto_8
    return-object v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 971
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    iget-object v1, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 975
    iget-object v1, p0, Landroid/support/v4/app/x;->ef:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 979
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
