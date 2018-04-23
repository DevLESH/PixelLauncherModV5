.class public Lcom/google/research/reflection/layers/f;
.super Lcom/google/research/reflection/layers/e;
.source "SourceFile"


# instance fields
.field Zp:I

.field private Zq:Z

.field private Zr:Lcom/google/research/reflection/layers/m;

.field private Zs:Lcom/google/research/reflection/layers/m;

.field private Zt:Lcom/google/research/reflection/layers/m;

.field private Zu:Lcom/google/research/reflection/layers/m;

.field public Zv:Lcom/google/research/reflection/layers/m;

.field private Zw:Lcom/google/research/reflection/layers/m;

.field Zx:I

.field private Zy:I

.field private Zz:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/research/reflection/layers/e;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZZF)V
    .locals 11

    move-object v6, p0

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    .line 50
    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/e;-><init>(ZIIII)V

    .line 51
    iput v9, v6, Lcom/google/research/reflection/layers/f;->Zx:I

    .line 52
    move/from16 v0, p11

    iput v0, v6, Lcom/google/research/reflection/layers/f;->Zz:F

    .line 53
    new-instance v0, Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    .line 54
    move v0, p3

    iput v0, v6, Lcom/google/research/reflection/layers/f;->Zp:I

    .line 55
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v7, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    .line 56
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v8, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    .line 57
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v1, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    .line 58
    move/from16 v0, p9

    iput-boolean v0, v6, Lcom/google/research/reflection/layers/f;->Zq:Z

    .line 59
    if-gez v9, :cond_0

    .line 60
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v7, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    .line 61
    iget-object v0, v6, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    invoke-static {v0, v10}, Lcom/google/research/reflection/layers/x;->a(Lcom/google/research/reflection/layers/m;Z)V

    .line 62
    iget-object v0, v6, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 64
    :cond_0
    move/from16 v0, p8

    iput v0, v6, Lcom/google/research/reflection/layers/f;->Zy:I

    .line 65
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0, v8, v8}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, v6, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    .line 66
    iget-object v0, v6, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    invoke-static {v0, v10}, Lcom/google/research/reflection/layers/x;->a(Lcom/google/research/reflection/layers/m;Z)V

    .line 67
    return-void
.end method

.method static synthetic b(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic c(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic d(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic e(Lcom/google/research/reflection/layers/f;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/google/research/reflection/layers/f;->Zq:Z

    return p0
.end method

.method static synthetic f(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic g(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method

.method static synthetic h(Lcom/google/research/reflection/layers/f;)Lcom/google/research/reflection/layers/m;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;
    .locals 1

    .line 78
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    if-ltz v0, :cond_0

    .line 79
    iget-object p1, p1, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/f;

    iget-object p1, p1, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    return-object p1

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    return-object p1
.end method

.method public final a(ZLcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;
    .locals 14

    move-object v7, p0

    move-object/from16 v3, p3

    .line 236
    move-object/from16 v4, p4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    .line 237
    iput-boolean v8, v7, Lcom/google/research/reflection/layers/f;->Zm:Z

    .line 238
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->Zi:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0, v3}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_0
    iput-boolean v9, v7, Lcom/google/research/reflection/layers/f;->Zm:Z

    .line 241
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->Zh:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0, v4}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v4, v9}, Lcom/google/research/reflection/layers/m;->H(Z)I

    move-result v0

    iget v1, v7, Lcom/google/research/reflection/layers/e;->Yy:I

    if-ne v0, v1, :cond_9

    .line 243
    invoke-virtual {v4, v9}, Lcom/google/research/reflection/layers/m;->G(Z)I

    move-result v0

    iget v1, v7, Lcom/google/research/reflection/layers/e;->Yw:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_7

    .line 249
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->Zg:Lcom/google/research/reflection/a/a;

    iget-object v0, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, v8, :cond_2

    .line 250
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->Zg:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/m;

    .line 254
    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 252
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 254
    :goto_2
    new-instance v10, Lcom/google/research/reflection/layers/m;

    iget v0, v7, Lcom/google/research/reflection/layers/f;->Yw:I

    iget v1, v7, Lcom/google/research/reflection/layers/f;->Zn:I

    invoke-direct {v10, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 255
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object v11

    iget v0, v7, Lcom/google/research/reflection/layers/f;->Yw:I

    iget v1, v7, Lcom/google/research/reflection/layers/f;->Zn:I

    mul-int v12, v0, v1

    new-instance v13, Lcom/google/research/reflection/layers/j;

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/research/reflection/layers/j;-><init>(Lcom/google/research/reflection/layers/f;Lcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v11, v12, v13}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 284
    iget-object v0, v7, Lcom/google/research/reflection/layers/f;->Zg:Lcom/google/research/reflection/a/a;

    new-instance v1, Lcom/google/research/reflection/layers/m;

    iget v2, v7, Lcom/google/research/reflection/layers/f;->Yw:I

    iget v3, v7, Lcom/google/research/reflection/layers/f;->Zn:I

    invoke-direct {v1, v2, v3}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/layers/m;

    .line 285
    iget v1, v7, Lcom/google/research/reflection/layers/f;->Zp:I

    if-eq v1, v8, :cond_5

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object v1

    invoke-virtual {v10, v9}, Lcom/google/research/reflection/layers/m;->G(Z)I

    move-result v2

    new-instance v3, Lcom/google/research/reflection/layers/l;

    invoke-direct {v3, v10, v0}, Lcom/google/research/reflection/layers/l;-><init>(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v2, 0x2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported activation function: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object v2

    iget-object v3, v10, Lcom/google/research/reflection/layers/m;->ZI:[D

    array-length v3, v3

    new-instance v4, Lcom/google/research/reflection/layers/k;

    invoke-direct {v4, v1, v0, v10}, Lcom/google/research/reflection/layers/k;-><init>(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 286
    :goto_4
    iget v1, v7, Lcom/google/research/reflection/layers/f;->Zz:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 287
    if-eqz p1, :cond_7

    .line 288
    :goto_5
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    array-length v1, v1

    if-ge v9, v1, :cond_8

    .line 289
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget v3, v7, Lcom/google/research/reflection/layers/f;->Zz:F

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    .line 290
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v9

    .line 288
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 294
    :cond_7
    :goto_6
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    array-length v1, v1

    if-ge v9, v1, :cond_8

    .line 295
    iget-object v1, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    aget-wide v2, v1, v9

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v7, Lcom/google/research/reflection/layers/f;->Zz:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v9

    .line 294
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 299
    :cond_8
    return-object v0

    .line 244
    :cond_9
    :goto_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Inconsistent input matrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 2

    .line 171
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object p4

    iget-object v0, p2, Lcom/google/research/reflection/layers/m;->ZI:[D

    array-length v0, v0

    new-instance v1, Lcom/google/research/reflection/layers/h;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/research/reflection/layers/h;-><init>(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {p4, v0, v1}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 187
    return-void
.end method

.method public final a(Lcom/google/research/reflection/layers/f;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/e;->a(Lcom/google/research/reflection/layers/e;)V

    .line 108
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/f;->Zq:Z

    iput-boolean v0, p1, Lcom/google/research/reflection/layers/f;->Zq:Z

    .line 109
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zp:I

    iput v0, p1, Lcom/google/research/reflection/layers/f;->Zp:I

    .line 110
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    .line 111
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    .line 112
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    .line 113
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    .line 114
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    .line 115
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    iput-object v0, p1, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    .line 116
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    iput v0, p1, Lcom/google/research/reflection/layers/f;->Zx:I

    .line 117
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zy:I

    iput v0, p1, Lcom/google/research/reflection/layers/f;->Zy:I

    .line 118
    return-void
.end method

.method public final a(Lcom/google/research/reflection/layers/r;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zj:Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 126
    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->Zg:Lcom/google/research/reflection/a/a;

    invoke-virtual {p3, p2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/research/reflection/layers/m;

    .line 127
    iget p4, p0, Lcom/google/research/reflection/layers/f;->Zp:I

    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zj:Lcom/google/research/reflection/layers/m;

    invoke-virtual {p0, p4, v0, p3, p5}, Lcom/google/research/reflection/layers/f;->a(ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    .line 129
    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->Zj:Lcom/google/research/reflection/layers/m;

    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/f;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object p1

    iget-boolean p4, p0, Lcom/google/research/reflection/layers/f;->Zq:Z

    const/4 p5, 0x1

    xor-int/2addr p4, p5

    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zk:Lcom/google/research/reflection/layers/m;

    invoke-static {p3, p1, p4, v0, v1}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 130
    iget-boolean p1, p0, Lcom/google/research/reflection/layers/f;->Zo:Z

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/google/research/reflection/layers/f;->Zj:Lcom/google/research/reflection/layers/m;

    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    iget-object p4, p0, Lcom/google/research/reflection/layers/f;->Zl:Lcom/google/research/reflection/layers/m;

    invoke-static {p1, p3, p5, p4, v1}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;ZLcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/layers/f;->Zh:Lcom/google/research/reflection/a/a;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/m;

    .line 135
    iget-object p3, p0, Lcom/google/research/reflection/layers/f;->Zi:Lcom/google/research/reflection/a/a;

    invoke-virtual {p3, p2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/util/ArrayList;

    .line 136
    iget-object p4, p0, Lcom/google/research/reflection/layers/f;->Zg:Lcom/google/research/reflection/a/a;

    sub-int/2addr p2, p5

    invoke-virtual {p4, p2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/research/reflection/layers/m;

    .line 137
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object p4

    iget p5, p0, Lcom/google/research/reflection/layers/f;->Yw:I

    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zn:I

    mul-int/2addr p5, v0

    new-instance v0, Lcom/google/research/reflection/layers/g;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/google/research/reflection/layers/g;-><init>(Lcom/google/research/reflection/layers/f;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {p4, p5, v0}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 166
    return-void
.end method

.method public b(Ljava/io/DataInputStream;)V
    .locals 3

    .line 355
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/e;->b(Ljava/io/DataInputStream;)V

    .line 356
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/f;->Zp:I

    .line 357
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/research/reflection/layers/f;->Zq:Z

    .line 358
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    .line 359
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataInputStream;)V

    .line 360
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    .line 361
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataInputStream;)V

    .line 362
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    .line 363
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    if-gez v0, :cond_0

    .line 364
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    .line 365
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataInputStream;)V

    .line 367
    :cond_0
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/f;->Yy:I

    iget v2, p0, Lcom/google/research/reflection/layers/f;->Zn:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    .line 368
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/f;->Zn:I

    iget v2, p0, Lcom/google/research/reflection/layers/f;->Zn:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    .line 369
    new-instance v0, Lcom/google/research/reflection/layers/m;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/research/reflection/layers/f;->Zn:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    .line 370
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/f;->Zy:I

    .line 371
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/f;->c(Ljava/io/DataInputStream;)V

    .line 372
    return-void
.end method

.method public b(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 335
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/e;->b(Ljava/io/DataOutputStream;)V

    .line 336
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zp:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/f;->Zq:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 338
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataOutputStream;)V

    .line 339
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataOutputStream;)V

    .line 340
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 341
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    if-gez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/layers/m;->b(Ljava/io/DataOutputStream;)V

    .line 344
    :cond_0
    iget v0, p0, Lcom/google/research/reflection/layers/f;->Zy:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/f;->c(Ljava/io/DataOutputStream;)V

    .line 346
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/f;->hF()Lcom/google/research/reflection/layers/f;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 350
    const-string v0, "LinearLayer"

    return-object v0
.end method

.method public synthetic hA()Lcom/google/research/reflection/layers/e;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/f;->hF()Lcom/google/research/reflection/layers/f;

    move-result-object v0

    return-object v0
.end method

.method final hB()V
    .locals 3

    .line 71
    invoke-super {p0}, Lcom/google/research/reflection/layers/e;->hB()V

    .line 72
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 73
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 74
    iget-object v0, p0, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 75
    return-void
.end method

.method public hF()Lcom/google/research/reflection/layers/f;
    .locals 2

    .line 91
    new-instance v0, Lcom/google/research/reflection/layers/f;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/f;-><init>()V

    .line 92
    invoke-super {p0, v0}, Lcom/google/research/reflection/layers/e;->a(Lcom/google/research/reflection/layers/e;)V

    .line 93
    iget-boolean v1, p0, Lcom/google/research/reflection/layers/f;->Zq:Z

    iput-boolean v1, v0, Lcom/google/research/reflection/layers/f;->Zq:Z

    .line 94
    iget v1, p0, Lcom/google/research/reflection/layers/f;->Zp:I

    iput v1, v0, Lcom/google/research/reflection/layers/f;->Zp:I

    .line 95
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->Zr:Lcom/google/research/reflection/layers/m;

    .line 96
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->Zt:Lcom/google/research/reflection/layers/m;

    .line 97
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->Zs:Lcom/google/research/reflection/layers/m;

    .line 98
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->Zu:Lcom/google/research/reflection/layers/m;

    .line 99
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    .line 100
    iget-object v1, p0, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/layers/f;->Zw:Lcom/google/research/reflection/layers/m;

    .line 101
    iget v1, p0, Lcom/google/research/reflection/layers/f;->Zx:I

    iput v1, v0, Lcom/google/research/reflection/layers/f;->Zx:I

    .line 102
    iget v1, p0, Lcom/google/research/reflection/layers/f;->Zy:I

    iput v1, v0, Lcom/google/research/reflection/layers/f;->Zy:I

    .line 103
    return-object v0
.end method

.method public final update()V
    .locals 3

    .line 191
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    iget v1, p0, Lcom/google/research/reflection/layers/f;->Zn:I

    new-instance v2, Lcom/google/research/reflection/layers/i;

    invoke-direct {v2, p0}, Lcom/google/research/reflection/layers/i;-><init>(Lcom/google/research/reflection/layers/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 214
    return-void
.end method
