.class Landroid/support/v4/app/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fd:[I

.field private static final fe:Landroid/support/v4/app/ad;

.field private static final ff:Landroid/support/v4/app/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/app/S;->fd:[I

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/Y;

    invoke-direct {v0}, Landroid/support/v4/app/Y;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroid/support/v4/app/S;->fe:Landroid/support/v4/app/ad;

    .line 59
    invoke-static {}, Landroid/support/v4/app/S;->ak()Landroid/support/v4/app/ad;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/S;->ff:Landroid/support/v4/app/ad;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
    .end array-data
.end method

.method private static a(Landroid/support/v4/app/X;Landroid/util/SparseArray;I)Landroid/support/v4/app/X;
    .locals 0

    .line 1212
    if-nez p0, :cond_0

    .line 1213
    new-instance p0, Landroid/support/v4/app/X;

    invoke-direct {p0}, Landroid/support/v4/app/X;-><init>()V

    .line 1214
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1216
    :cond_0
    return-object p0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;
    .locals 2

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    if-eqz p0, :cond_2

    .line 423
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->x()Ljava/lang/Object;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->w()Ljava/lang/Object;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->A()Ljava/lang/Object;

    move-result-object p0

    .line 432
    if-eqz p0, :cond_2

    .line 433
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    if-eqz p1, :cond_5

    .line 437
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->v()Ljava/lang/Object;

    move-result-object p0

    .line 438
    if-eqz p0, :cond_3

    .line 439
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Ljava/lang/Object;

    move-result-object p0

    .line 442
    if-eqz p0, :cond_4

    .line 443
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->z()Ljava/lang/Object;

    move-result-object p0

    .line 446
    if-eqz p0, :cond_5

    .line 447
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    .line 451
    return-object p1

    .line 454
    :cond_6
    sget-object p0, Landroid/support/v4/app/S;->fe:Landroid/support/v4/app/ad;

    if-eqz p0, :cond_7

    sget-object p0, Landroid/support/v4/app/S;->fe:Landroid/support/v4/app/ad;

    invoke-static {p0, v0}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 455
    sget-object p0, Landroid/support/v4/app/S;->fe:Landroid/support/v4/app/ad;

    return-object p0

    .line 457
    :cond_7
    sget-object p0, Landroid/support/v4/app/S;->ff:Landroid/support/v4/app/ad;

    if-eqz p0, :cond_8

    sget-object p0, Landroid/support/v4/app/S;->ff:Landroid/support/v4/app/ad;

    invoke-static {p0, v0}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 458
    sget-object p0, Landroid/support/v4/app/S;->ff:Landroid/support/v4/app/ad;

    return-object p0

    .line 460
    :cond_8
    sget-object p0, Landroid/support/v4/app/S;->fe:Landroid/support/v4/app/ad;

    if-nez p0, :cond_a

    sget-object p0, Landroid/support/v4/app/S;->ff:Landroid/support/v4/app/ad;

    if-eqz p0, :cond_9

    goto :goto_0

    .line 463
    :cond_9
    return-object p1

    .line 461
    :cond_a
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/c/a;
    .locals 9

    .line 159
    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    .line 160
    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-lt p4, p3, :cond_3

    .line 161
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 162
    invoke-virtual {v1, p0}, Landroid/support/v4/app/c;->j(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 166
    iget-object v3, v1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 167
    iget-object v3, v1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 170
    if-eqz v2, :cond_0

    .line 171
    iget-object v2, v1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 172
    iget-object v1, v1, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    goto :goto_1

    .line 174
    :cond_0
    iget-object v2, v1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 175
    iget-object v1, v1, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    .line 177
    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 178
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 180
    invoke-virtual {v0, v6}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    if-eqz v7, :cond_1

    .line 182
    invoke-virtual {v0, v5, v7}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 184
    :cond_1
    invoke-virtual {v0, v5, v6}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 160
    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 189
    :cond_3
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;
    .locals 3

    .line 780
    invoke-virtual {p1}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 784
    :cond_0
    iget-object p2, p3, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    .line 785
    new-instance v0, Landroid/support/v4/c/a;

    invoke-direct {v0}, Landroid/support/v4/c/a;-><init>()V

    .line 786
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ad;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 790
    iget-object p0, p3, Landroid/support/v4/app/X;->fD:Landroid/support/v4/app/c;

    .line 791
    iget-boolean p3, p3, Landroid/support/v4/app/X;->fC:Z

    if-eqz p3, :cond_1

    .line 792
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->L()Landroid/support/v4/app/ax;

    move-result-object p2

    .line 793
    iget-object p0, p0, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->M()Landroid/support/v4/app/ax;

    move-result-object p2

    .line 796
    iget-object p0, p0, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 799
    :goto_0
    invoke-static {v0, p0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 800
    if-eqz p2, :cond_4

    .line 801
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 803
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 804
    invoke-virtual {v0, p3}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 805
    if-nez v1, :cond_2

    .line 806
    invoke-virtual {p1, p3}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 807
    :cond_2
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 808
    invoke-virtual {p1, p3}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 809
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    :cond_3
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 813
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 815
    :cond_5
    return-object v0

    .line 781
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/support/v4/c/a;->clear()V

    .line 782
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/c/a;Landroid/support/v4/app/X;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 906
    iget-object p1, p1, Landroid/support/v4/app/X;->fA:Landroid/support/v4/app/c;

    .line 907
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 909
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 910
    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 911
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    .line 912
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 913
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    .line 915
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 489
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 492
    :cond_0
    if-eqz p3, :cond_1

    .line 493
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->A()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->z()Ljava/lang/Object;

    move-result-object p1

    .line 492
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 495
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ad;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 490
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 503
    if-nez p1, :cond_0

    .line 504
    const/4 p0, 0x0

    return-object p0

    .line 506
    :cond_0
    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->y()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->v()Ljava/lang/Object;

    move-result-object p1

    .line 506
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ad;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    .line 1032
    nop

    .line 1033
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    .line 1034
    if-eqz p5, :cond_2

    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-eqz p5, :cond_1

    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object p5, p5, Landroid/support/v4/app/m;->dw:Ljava/lang/Boolean;

    if-nez p5, :cond_0

    goto :goto_1

    :cond_0
    iget-object p4, p4, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object p4, p4, Landroid/support/v4/app/m;->dw:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    .line 1043
    :goto_0
    move v0, p4

    goto :goto_2

    .line 1034
    :cond_1
    :goto_1
    goto :goto_2

    .line 1035
    :cond_2
    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-eqz p5, :cond_4

    iget-object p5, p4, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object p5, p5, Landroid/support/v4/app/m;->dx:Ljava/lang/Boolean;

    if-nez p5, :cond_3

    goto :goto_2

    :cond_3
    iget-object p4, p4, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object p4, p4, Landroid/support/v4/app/m;->dx:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    goto :goto_0

    .line 1043
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 1045
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    .line 1050
    :cond_5
    invoke-virtual {p0, p2, p1, p3}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1053
    :goto_3
    return-object p0
.end method

.method private static a(Landroid/support/v4/c/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 885
    invoke-virtual {p0}, Landroid/support/v4/c/a;->size()I

    move-result v0

    .line 886
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 887
    invoke-virtual {p0, v1}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    invoke-virtual {p0, v1}, Landroid/support/v4/c/a;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 886
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1

    .line 994
    nop

    .line 995
    if-eqz p1, :cond_2

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 997
    iget-object p2, p2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 998
    if-eqz p2, :cond_0

    .line 999
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/app/ad;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1001
    :cond_0
    if-eqz p3, :cond_1

    .line 1002
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1004
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1005
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1009
    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V
    .locals 2

    .line 972
    if-eqz p2, :cond_0

    .line 973
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->L()Landroid/support/v4/app/ax;

    move-result-object p0

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->L()Landroid/support/v4/app/ax;

    move-result-object p0

    .line 975
    :goto_0
    if-eqz p0, :cond_2

    .line 976
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 977
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 978
    const/4 p2, 0x0

    if-nez p3, :cond_1

    .line 979
    move v0, p2

    goto :goto_1

    .line 978
    :cond_1
    invoke-virtual {p3}, Landroid/support/v4/c/a;->size()I

    move-result v0

    .line 979
    :goto_1
    if-ge p2, v0, :cond_2

    .line 980
    invoke-virtual {p3, p2}, Landroid/support/v4/c/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-virtual {p3, p2}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 983
    :cond_2
    return-void
.end method

.method private static a(Landroid/support/v4/app/ad;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/c/a;ZLandroid/support/v4/app/c;)V
    .locals 1

    .line 930
    iget-object v0, p5, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 931
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    .line 933
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 935
    :goto_0
    invoke-virtual {p3, p4}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 936
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 938
    if-eqz p2, :cond_1

    .line 939
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 942
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/v4/app/c;Landroid/support/v4/app/d;Landroid/util/SparseArray;ZZ)V
    .locals 11

    .line 1115
    iget-object v6, p1, Landroid/support/v4/app/d;->ca:Landroid/support/v4/app/Fragment;

    .line 1116
    if-nez v6, :cond_0

    .line 1117
    return-void

    .line 1119
    :cond_0
    iget v7, v6, Landroid/support/v4/app/Fragment;->cO:I

    .line 1120
    if-nez v7, :cond_1

    .line 1121
    return-void

    .line 1123
    :cond_1
    if-eqz p3, :cond_2

    sget-object v0, Landroid/support/v4/app/S;->fd:[I

    iget p1, p1, Landroid/support/v4/app/d;->bZ:I

    aget p1, v0, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/support/v4/app/d;->bZ:I

    .line 1124
    :goto_0
    nop

    .line 1125
    nop

    .line 1126
    nop

    .line 1127
    nop

    .line 1128
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    packed-switch p1, :pswitch_data_0

    .line 1166
    move p1, v0

    move v1, p1

    move v8, v1

    goto/16 :goto_b

    .line 1130
    :pswitch_0
    if-eqz p4, :cond_4

    .line 1131
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->df:Z

    if-eqz p1, :cond_3

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez p1, :cond_3

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz p1, :cond_3

    .line 1135
    move p1, v1

    goto :goto_1

    .line 1131
    :cond_3
    nop

    .line 1135
    move p1, v0

    goto :goto_1

    .line 1133
    :cond_4
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cQ:Z

    .line 1135
    :goto_1
    nop

    .line 1136
    goto/16 :goto_a

    .line 1147
    :pswitch_1
    if-eqz p4, :cond_6

    .line 1148
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->df:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz p1, :cond_5

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz p1, :cond_5

    .line 1152
    :goto_2
    move p1, v1

    goto :goto_4

    .line 1148
    :cond_5
    nop

    .line 1152
    :goto_3
    move p1, v0

    goto :goto_4

    .line 1150
    :cond_6
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz p1, :cond_7

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    goto :goto_3

    .line 1152
    :goto_4
    nop

    .line 1153
    goto :goto_8

    .line 1156
    :pswitch_2
    if-eqz p4, :cond_9

    .line 1157
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    if-nez p1, :cond_8

    iget-object p1, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object p1, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v6, Landroid/support/v4/app/Fragment;->dg:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_8

    .line 1163
    :goto_5
    move p1, v1

    goto :goto_7

    .line 1158
    :cond_8
    nop

    .line 1163
    :goto_6
    move p1, v0

    goto :goto_7

    .line 1161
    :cond_9
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    goto :goto_6

    .line 1163
    :goto_7
    nop

    .line 1166
    :goto_8
    move v8, p1

    move p1, v1

    move v1, v0

    goto :goto_b

    .line 1139
    :cond_b
    :pswitch_3
    if-eqz p4, :cond_c

    .line 1140
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->de:Z

    goto :goto_9

    .line 1142
    :cond_c
    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cC:Z

    if-nez p1, :cond_d

    iget-boolean p1, v6, Landroid/support/v4/app/Fragment;->cQ:Z

    if-nez p1, :cond_d

    .line 1144
    move p1, v1

    goto :goto_9

    .line 1142
    :cond_d
    nop

    .line 1144
    move p1, v0

    .line 1145
    :goto_9
    nop

    .line 1166
    :goto_a
    move v8, v0

    move v0, p1

    move p1, v8

    :goto_b
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/X;

    .line 1167
    if-eqz v0, :cond_e

    .line 1168
    nop

    .line 1169
    invoke-static {v2, p2, v7}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/X;Landroid/util/SparseArray;I)Landroid/support/v4/app/X;

    move-result-object v2

    .line 1170
    iput-object v6, v2, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    .line 1171
    iput-boolean p3, v2, Landroid/support/v4/app/X;->fz:Z

    .line 1172
    iput-object p0, v2, Landroid/support/v4/app/X;->fA:Landroid/support/v4/app/c;

    .line 1174
    :cond_e
    move-object v9, v2

    const/4 v10, 0x0

    if-nez p4, :cond_10

    if-eqz v1, :cond_10

    .line 1175
    if-eqz v9, :cond_f

    iget-object v0, v9, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    if-ne v0, v6, :cond_f

    .line 1176
    iput-object v10, v9, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    .line 1183
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/c;->bF:Landroid/support/v4/app/x;

    .line 1184
    iget v1, v6, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v1, :cond_10

    iget v1, v0, Landroid/support/v4/app/x;->ed:I

    if-lez v1, :cond_10

    iget-boolean v1, p0, Landroid/support/v4/app/c;->bX:Z

    if-nez v1, :cond_10

    .line 1186
    invoke-virtual {v0, v6}, Landroid/support/v4/app/x;->g(Landroid/support/v4/app/Fragment;)V

    .line 1187
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1190
    :cond_10
    if-eqz v8, :cond_12

    if-eqz v9, :cond_11

    iget-object v0, v9, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_12

    .line 1191
    :cond_11
    nop

    .line 1192
    invoke-static {v9, p2, v7}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/X;Landroid/util/SparseArray;I)Landroid/support/v4/app/X;

    move-result-object v9

    .line 1193
    iput-object v6, v9, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    .line 1194
    iput-boolean p3, v9, Landroid/support/v4/app/X;->fC:Z

    .line 1195
    iput-object p0, v9, Landroid/support/v4/app/X;->fD:Landroid/support/v4/app/c;

    .line 1198
    :cond_12
    if-nez p4, :cond_13

    if-eqz p1, :cond_13

    if-eqz v9, :cond_13

    iget-object p0, v9, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    if-ne p0, v6, :cond_13

    .line 1200
    iput-object v10, v9, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    .line 1202
    :cond_13
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 4

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1068
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1069
    iget-object v3, p0, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    .line 1070
    invoke-static {p0, v3, p1, v1, p2}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/d;Landroid/util/SparseArray;ZZ)V

    .line 1068
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    return-void
.end method

.method static a(Landroid/support/v4/app/x;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 103
    move/from16 v4, p5

    iget v5, v0, Landroid/support/v4/app/x;->ed:I

    if-gtz v5, :cond_0

    .line 104
    return-void

    .line 107
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 109
    move/from16 v6, p3

    :goto_0
    if-ge v6, v3, :cond_2

    .line 110
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/c;

    .line 111
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 112
    if-eqz v8, :cond_1

    .line 113
    invoke-static {v7, v5, v4}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-static {v7, v5, v4}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V

    .line 109
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_20

    .line 120
    new-instance v6, Landroid/view/View;

    iget-object v7, v0, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v7, v7, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 122
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_20

    .line 123
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 124
    move/from16 v12, p3

    invoke-static {v7, v1, v2, v12, v3}, Landroid/support/v4/app/S;->a(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/c/a;

    move-result-object v11

    .line 127
    nop

    .line 128
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroid/support/v4/app/X;

    .line 130
    const/16 v20, 0x0

    if-eqz v4, :cond_12

    .line 131
    iget-object v8, v0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {v8}, Landroid/support/v4/app/t;->onHasView()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {v8, v7}, Landroid/support/v4/app/t;->onFindViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_3
    move-object/from16 v7, v20

    :goto_3
    if-eqz v7, :cond_10

    iget-object v8, v10, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    iget-object v9, v10, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    invoke-static {v9, v8}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;

    move-result-object v14

    if-eqz v14, :cond_10

    iget-boolean v1, v10, Landroid/support/v4/app/X;->fz:Z

    iget-boolean v2, v10, Landroid/support/v4/app/X;->fC:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v29, v5

    invoke-static {v14, v8, v1}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v9, v2}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    iget-object v12, v10, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    move/from16 v30, v13

    iget-object v13, v10, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    if-eqz v12, :cond_4

    move/from16 v31, v15

    iget-object v15, v12, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_4
    move/from16 v31, v15

    :goto_4
    if-eqz v12, :cond_d

    if-nez v13, :cond_5

    goto/16 :goto_8

    :cond_5
    iget-boolean v0, v10, Landroid/support/v4/app/X;->fz:Z

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v15, v20

    goto :goto_5

    :cond_6
    invoke-static {v14, v12, v13, v0}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    :goto_5
    move/from16 v32, v1

    invoke-static {v14, v11, v15, v10}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;

    move-result-object v1

    move-object/from16 v33, v8

    invoke-static {v14, v11, v15, v10}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;

    move-result-object v8

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/support/v4/c/a;->clear()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Landroid/support/v4/c/a;->clear()V

    :cond_8
    move-object/from16 v15, v20

    goto :goto_6

    :cond_9
    move-object/from16 v34, v15

    invoke-virtual {v11}, Landroid/support/v4/c/a;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-static {v4, v1, v15}, Landroid/support/v4/app/S;->a(Ljava/util/ArrayList;Landroid/support/v4/c/a;Ljava/util/Collection;)V

    invoke-virtual {v11}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-static {v3, v8, v15}, Landroid/support/v4/app/S;->a(Ljava/util/ArrayList;Landroid/support/v4/c/a;Ljava/util/Collection;)V

    move-object/from16 v15, v34

    :goto_6
    if-nez v5, :cond_a

    if-nez v2, :cond_a

    if-nez v15, :cond_a

    move-object/from16 v36, v3

    move-object/from16 v35, v11

    goto :goto_9

    :cond_a
    invoke-static {v12, v13, v0, v1}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    if-eqz v15, :cond_c

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v15, v6, v4}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v35, v11

    iget-boolean v11, v10, Landroid/support/v4/app/X;->fC:Z

    move-object/from16 v36, v3

    iget-object v3, v10, Landroid/support/v4/app/X;->fD:Landroid/support/v4/app/c;

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    move/from16 v25, v11

    move-object/from16 v26, v3

    invoke-static/range {v21 .. v26}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/c/a;ZLandroid/support/v4/app/c;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v8, v10, v5, v0}, Landroid/support/v4/app/S;->a(Landroid/support/v4/c/a;Landroid/support/v4/app/X;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual {v14, v5, v1}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_b
    move-object/from16 v28, v1

    move-object/from16 v26, v20

    goto :goto_7

    :cond_c
    move-object/from16 v36, v3

    move-object/from16 v35, v11

    move-object/from16 v26, v20

    move-object/from16 v28, v26

    :goto_7
    new-instance v1, Landroid/support/v4/app/V;

    move-object/from16 v21, v1

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v24, v0

    move-object/from16 v25, v8

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v28}, Landroid/support/v4/app/V;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;Landroid/view/View;Landroid/support/v4/app/ad;Landroid/graphics/Rect;)V

    invoke-static {v7, v1}, Landroid/support/v4/app/at;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/at;

    goto :goto_a

    :cond_d
    :goto_8
    move/from16 v32, v1

    move-object/from16 v36, v3

    move-object/from16 v33, v8

    move-object/from16 v35, v11

    :goto_9
    move-object/from16 v15, v20

    :goto_a
    if-nez v5, :cond_e

    if-nez v15, :cond_e

    if-eqz v2, :cond_11

    :cond_e
    invoke-static {v14, v2, v9, v4, v6}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v33

    move-object/from16 v3, v36

    invoke-static {v14, v5, v1, v3, v6}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v8, v10}, Landroid/support/v4/app/S;->a(Ljava/util/ArrayList;I)V

    move-object/from16 v21, v14

    move-object/from16 v22, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v15

    move-object/from16 v25, v1

    move/from16 v26, v32

    invoke-static/range {v21 .. v26}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    if-eqz v9, :cond_f

    if-eqz v2, :cond_f

    iget-boolean v10, v9, Landroid/support/v4/app/Fragment;->cC:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v9, Landroid/support/v4/app/Fragment;->cQ:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v9, Landroid/support/v4/app/Fragment;->df:Z

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/Fragment;->c(Z)V

    iget-object v10, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v2, v10, v0}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v9, v9, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    new-instance v10, Landroid/support/v4/app/T;

    invoke-direct {v10, v0}, Landroid/support/v4/app/T;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v9, v10}, Landroid/support/v4/app/at;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/at;

    :cond_f
    invoke-virtual {v14, v3}, Landroid/support/v4/app/ad;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v21, v14

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v2

    move-object/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, v3

    invoke-virtual/range {v21 .. v28}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v7, v1}, Landroid/support/v4/app/ad;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v16, v14

    move-object/from16 v17, v7

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move-object/from16 v21, v35

    invoke-virtual/range {v16 .. v21}, Landroid/support/v4/app/ad;->a(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-static {v8, v0}, Landroid/support/v4/app/S;->a(Ljava/util/ArrayList;I)V

    invoke-virtual {v14, v15, v4, v3}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_11

    .line 122
    :cond_10
    move-object/from16 v29, v5

    move/from16 v30, v13

    move/from16 v31, v15

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 134
    :cond_12
    move-object/from16 v29, v5

    move-object/from16 v35, v11

    move/from16 v30, v13

    move/from16 v31, v15

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {v2}, Landroid/support/v4/app/t;->onHasView()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {v2, v7}, Landroid/support/v4/app/t;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_b

    :cond_13
    move-object/from16 v2, v20

    :goto_b
    if-eqz v2, :cond_1e

    iget-object v3, v10, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    iget-object v4, v10, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    invoke-static {v4, v3}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ad;

    move-result-object v5

    if-eqz v5, :cond_1e

    iget-boolean v7, v10, Landroid/support/v4/app/X;->fz:Z

    iget-boolean v8, v10, Landroid/support/v4/app/X;->fC:Z

    invoke-static {v5, v3, v7}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v4, v8}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v10, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    iget-object v13, v10, Landroid/support/v4/app/X;->fB:Landroid/support/v4/app/Fragment;

    if-eqz v14, :cond_1a

    if-nez v13, :cond_14

    goto/16 :goto_f

    :cond_14
    iget-boolean v12, v10, Landroid/support/v4/app/X;->fz:Z

    move-object/from16 v11, v35

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_15

    move-object/from16 v0, v20

    goto :goto_c

    :cond_15
    invoke-static {v5, v14, v13, v12}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    :goto_c
    invoke-static {v5, v11, v0, v10}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;

    move-result-object v1

    invoke-virtual {v11}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_16

    move-object/from16 v0, v20

    goto :goto_d

    :cond_16
    move-object/from16 v37, v0

    invoke-virtual {v1}, Landroid/support/v4/c/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v37

    :goto_d
    if-nez v9, :cond_17

    if-nez v8, :cond_17

    if-nez v0, :cond_17

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v45, v7

    move-object v1, v8

    move-object/from16 v43, v9

    move-object v0, v10

    move-object/from16 v42, v11

    move-object/from16 v44, v15

    move-object/from16 v17, v20

    move/from16 v22, v30

    move/from16 v21, v31

    const/16 v23, 0x0

    goto/16 :goto_10

    :cond_17
    invoke-static {v14, v13, v12, v1}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    if-eqz v0, :cond_18

    move-object/from16 v38, v3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v39, v7

    iget-boolean v7, v10, Landroid/support/v4/app/X;->fC:Z

    move-object/from16 v40, v4

    iget-object v4, v10, Landroid/support/v4/app/X;->fD:Landroid/support/v4/app/c;

    move-object/from16 v17, v11

    move-object v11, v5

    move/from16 v18, v12

    move-object v12, v0

    move-object/from16 v19, v13

    move-object v13, v8

    move-object/from16 v21, v14

    move-object v14, v1

    move-object v1, v15

    move v15, v7

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/c/a;ZLandroid/support/v4/app/c;)V

    if-eqz v9, :cond_19

    invoke-virtual {v5, v9, v3}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_e

    :cond_18
    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v39, v7

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v21, v14

    move-object v1, v15

    move-object/from16 v3, v20

    :cond_19
    :goto_e
    new-instance v4, Landroid/support/v4/app/W;

    move-object/from16 v15, v39

    move-object v7, v4

    move-object v14, v8

    move-object v8, v5

    move-object v13, v9

    move-object/from16 v9, v17

    move-object v12, v10

    move-object v10, v0

    move-object/from16 v41, v0

    move-object/from16 v0, v17

    move-object v11, v12

    move-object/from16 v42, v0

    move-object v0, v12

    move-object v12, v1

    move-object/from16 v43, v13

    move/from16 v22, v30

    move-object v13, v6

    move-object/from16 v44, v1

    move-object v1, v14

    const/16 v23, 0x0

    move-object/from16 v14, v21

    move-object/from16 v45, v15

    move/from16 v21, v31

    move-object/from16 v15, v19

    move/from16 v16, v18

    move-object/from16 v17, v45

    move-object/from16 v18, v43

    move-object/from16 v19, v3

    invoke-direct/range {v7 .. v19}, Landroid/support/v4/app/W;-><init>(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v2, v4}, Landroid/support/v4/app/at;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/at;

    move-object/from16 v17, v41

    goto :goto_10

    :cond_1a
    :goto_f
    move/from16 v23, v0

    move-object/from16 v38, v3

    move-object/from16 v40, v4

    move-object/from16 v45, v7

    move-object v1, v8

    move-object/from16 v43, v9

    move-object v0, v10

    move-object/from16 v44, v15

    move/from16 v22, v30

    move/from16 v21, v31

    move-object/from16 v42, v35

    move-object/from16 v17, v20

    :goto_10
    move-object/from16 v3, v43

    if-nez v3, :cond_1b

    if-nez v17, :cond_1b

    if-eqz v1, :cond_1f

    :cond_1b
    move-object/from16 v4, v40

    move-object/from16 v7, v45

    invoke-static {v5, v1, v4, v7, v6}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1d

    :cond_1c
    move-object/from16 v1, v20

    :cond_1d
    invoke-virtual {v5, v3, v6}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;Landroid/view/View;)V

    iget-boolean v0, v0, Landroid/support/v4/app/X;->fz:Z

    move-object v11, v5

    move-object v12, v3

    move-object v13, v1

    move-object/from16 v14, v17

    move-object/from16 v15, v38

    move/from16 v16, v0

    invoke-static/range {v11 .. v16}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    move-object v12, v0

    move-object v13, v3

    move-object v14, v10

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v18, v44

    invoke-virtual/range {v11 .. v18}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    new-instance v15, Landroid/support/v4/app/U;

    move-object v7, v15

    move-object v8, v3

    move-object v9, v5

    move-object v3, v10

    move-object v10, v6

    move-object/from16 v11, v38

    move-object/from16 v12, v44

    move-object v13, v3

    move-object v14, v4

    move-object v3, v15

    move-object v15, v1

    invoke-direct/range {v7 .. v15}, Landroid/support/v4/app/U;-><init>(Ljava/lang/Object;Landroid/support/v4/app/ad;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Landroid/support/v4/app/at;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/at;

    new-instance v1, Landroid/support/v4/app/af;

    move-object/from16 v3, v42

    move-object/from16 v4, v44

    invoke-direct {v1, v5, v4, v3}, Landroid/support/v4/app/af;-><init>(Landroid/support/v4/app/ad;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v1}, Landroid/support/v4/app/at;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/at;

    invoke-virtual {v5, v2, v0}, Landroid/support/v4/app/ad;->a(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    new-instance v0, Landroid/support/v4/app/ag;

    invoke-direct {v0, v5, v4, v3}, Landroid/support/v4/app/ag;-><init>(Landroid/support/v4/app/ad;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v0}, Landroid/support/v4/app/at;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/at;

    goto :goto_12

    .line 122
    :cond_1e
    :goto_11
    move/from16 v23, v0

    move/from16 v22, v30

    move/from16 v21, v31

    :cond_1f
    :goto_12
    add-int/lit8 v13, v22, 0x1

    move/from16 v15, v21

    move-object/from16 v5, v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    goto/16 :goto_2

    .line 139
    :cond_20
    return-void
.end method

.method private static a(Ljava/util/ArrayList;I)V
    .locals 2

    .line 1016
    if-nez p0, :cond_0

    .line 1017
    return-void

    .line 1019
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1020
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1021
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1023
    :cond_1
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/support/v4/c/a;Ljava/util/Collection;)V
    .locals 3

    .line 644
    invoke-virtual {p1}, Landroid/support/v4/c/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 645
    invoke-virtual {p1, v0}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 646
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 650
    :cond_1
    return-void
.end method

.method private static a(Landroid/support/v4/app/ad;Ljava/util/List;)Z
    .locals 4

    .line 467
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 468
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/app/ad;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    return v1

    .line 467
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static ak()Landroid/support/v4/app/ad;
    .locals 3

    .line 64
    :try_start_0
    const-string v0, "android.support.transition.FragmentTransitionSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;
    .locals 3

    .line 835
    iget-object v0, p3, Landroid/support/v4/app/X;->fy:Landroid/support/v4/app/Fragment;

    .line 836
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 837
    invoke-virtual {p1}, Landroid/support/v4/c/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz p2, :cond_9

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 841
    :cond_0
    new-instance p2, Landroid/support/v4/c/a;

    invoke-direct {p2}, Landroid/support/v4/c/a;-><init>()V

    .line 842
    invoke-virtual {p0, p2, v1}, Landroid/support/v4/app/ad;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 846
    iget-object p0, p3, Landroid/support/v4/app/X;->fA:Landroid/support/v4/app/c;

    .line 847
    iget-boolean p3, p3, Landroid/support/v4/app/X;->fz:Z

    if-eqz p3, :cond_1

    .line 848
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->M()Landroid/support/v4/app/ax;

    move-result-object p3

    .line 849
    iget-object p0, p0, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    goto :goto_0

    .line 851
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->L()Landroid/support/v4/app/ax;

    move-result-object p3

    .line 852
    iget-object p0, p0, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    .line 855
    :goto_0
    if-eqz p0, :cond_2

    .line 856
    invoke-static {p2, p0}, Landroid/support/v4/c/j;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 858
    :cond_2
    if-eqz p3, :cond_6

    .line 859
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_8

    .line 861
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 862
    invoke-virtual {p2, v0}, Landroid/support/v4/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 863
    if-nez v1, :cond_4

    .line 864
    invoke-static {p1, v0}, Landroid/support/v4/app/S;->a(Landroid/support/v4/c/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_3

    .line 866
    invoke-virtual {p1, v0}, Landroid/support/v4/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    :cond_3
    goto :goto_2

    :cond_4
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 869
    invoke-static {p1, v0}, Landroid/support/v4/app/S;->a(Landroid/support/v4/c/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_5

    .line 871
    invoke-static {v1}, Landroid/support/v4/view/s;->l(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_5
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 876
    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/c/a;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_3
    if-ltz p0, :cond_8

    invoke-virtual {p1, p0}, Landroid/support/v4/c/a;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/support/v4/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1, p0}, Landroid/support/v4/c/a;->removeAt(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    .line 878
    :cond_8
    return-object p2

    .line 838
    :cond_9
    :goto_4
    invoke-virtual {p1}, Landroid/support/v4/c/a;->clear()V

    .line 839
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/c/a;Landroid/support/v4/app/X;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0

    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/S;->a(Landroid/support/v4/c/a;Landroid/support/v4/app/X;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/support/v4/app/ad;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    .line 516
    if-nez p1, :cond_0

    .line 517
    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_0
    if-eqz p2, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->w()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->x()Ljava/lang/Object;

    move-result-object p1

    .line 519
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ad;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/ad;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V
    .locals 0

    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/c/a;)V

    return-void
.end method

.method public static b(Landroid/support/v4/app/c;Landroid/util/SparseArray;Z)V
    .locals 3

    .line 1084
    iget-object v0, p0, Landroid/support/v4/app/c;->bF:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->ee:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->onHasView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1088
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1089
    iget-object v2, p0, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/d;

    .line 1090
    invoke-static {p0, v2, p1, v1, p2}, Landroid/support/v4/app/S;->a(Landroid/support/v4/app/c;Landroid/support/v4/app/d;Landroid/util/SparseArray;ZZ)V

    .line 1088
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1092
    :cond_1
    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;I)V
    .locals 0

    .line 37
    invoke-static {p0, p1}, Landroid/support/v4/app/S;->a(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic c(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;
    .locals 0

    .line 37
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/S;->b(Landroid/support/v4/app/ad;Landroid/support/v4/c/a;Ljava/lang/Object;Landroid/support/v4/app/X;)Landroid/support/v4/c/a;

    move-result-object p0

    return-object p0
.end method
