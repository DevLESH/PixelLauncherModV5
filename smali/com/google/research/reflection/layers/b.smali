.class public Lcom/google/research/reflection/layers/b;
.super Lcom/google/research/reflection/layers/e;
.source "SourceFile"


# instance fields
.field YX:[Lcom/google/research/reflection/layers/a;

.field YY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/research/reflection/layers/e;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(ZLcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;
    .locals 8

    .line 89
    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 90
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/b;->Zm:Z

    .line 91
    iget-object p2, p0, Lcom/google/research/reflection/layers/b;->Zi:Lcom/google/research/reflection/a/a;

    invoke-virtual {p2, p3}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/research/reflection/layers/b;->Zm:Z

    .line 94
    iget-object p2, p0, Lcom/google/research/reflection/layers/b;->Zh:Lcom/google/research/reflection/a/a;

    invoke-virtual {p2, p4}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    iget-object p2, p0, Lcom/google/research/reflection/layers/b;->Zg:Lcom/google/research/reflection/a/a;

    iget-object p2, p2, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    array-length p2, p2

    if-le p2, p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zg:Lcom/google/research/reflection/a/a;

    invoke-virtual {p1}, Lcom/google/research/reflection/a/a;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/m;

    .line 102
    :goto_1
    move-object v4, p1

    goto :goto_2

    .line 100
    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 102
    :goto_2
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zg:Lcom/google/research/reflection/a/a;

    invoke-virtual {p1}, Lcom/google/research/reflection/a/a;->hr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/m;

    .line 103
    if-nez p1, :cond_2

    .line 104
    new-instance p1, Lcom/google/research/reflection/layers/m;

    iget p2, p0, Lcom/google/research/reflection/layers/b;->Yw:I

    iget v0, p0, Lcom/google/research/reflection/layers/b;->Zn:I

    invoke-direct {p1, p2, v0}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 106
    :cond_2
    iget-object p2, p0, Lcom/google/research/reflection/layers/b;->Zg:Lcom/google/research/reflection/a/a;

    invoke-virtual {p2, p1}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/m;

    .line 107
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object p2

    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length v6, v0

    new-instance v7, Lcom/google/research/reflection/layers/d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/d;-><init>(Lcom/google/research/reflection/layers/b;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {p2, v6, v7}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 121
    return-object p1
.end method

.method public final a(Lcom/google/research/reflection/layers/r;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
    .locals 6

    .line 39
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zj:Lcom/google/research/reflection/layers/m;

    const/4 p5, 0x0

    invoke-static {p3, p4, p1, p5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 41
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zh:Lcom/google/research/reflection/a/a;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/research/reflection/layers/m;

    .line 42
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zi:Lcom/google/research/reflection/a/a;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/util/ArrayList;

    .line 43
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zg:Lcom/google/research/reflection/a/a;

    add-int/lit8 p3, p2, -0x1

    invoke-virtual {p1, p3}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/research/reflection/layers/m;

    .line 44
    invoke-static {}, Lcom/google/research/reflection/layers/v;->hL()Lcom/google/research/reflection/layers/v;

    move-result-object p1

    iget-object p3, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length p3, p3

    new-instance p4, Lcom/google/research/reflection/layers/c;

    move-object v0, p4

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/c;-><init>(Lcom/google/research/reflection/layers/b;I[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/research/reflection/layers/v;->a(ILcom/google/research/reflection/layers/u;)V

    .line 59
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zk:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 60
    move p1, p5

    :goto_0
    iget-object p4, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length p4, p4

    if-ge p1, p4, :cond_0

    .line 61
    iget-object p4, p0, Lcom/google/research/reflection/layers/b;->Zk:Lcom/google/research/reflection/layers/m;

    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/research/reflection/layers/a;->YV:Lcom/google/research/reflection/layers/m;

    invoke-virtual {p4, v0}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    .line 60
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zl:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 64
    :goto_1
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length p1, p1

    if-ge p5, p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/google/research/reflection/layers/b;->Zl:Lcom/google/research/reflection/layers/m;

    iget-object p2, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    aget-object p2, p2, p5

    iget-object p2, p2, Lcom/google/research/reflection/layers/a;->YW:Lcom/google/research/reflection/layers/m;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    .line 64
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 145
    const-string v0, "LSTMLayer"

    return-object v0
.end method

.method public final hA()Lcom/google/research/reflection/layers/e;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method final hB()V
    .locals 7

    .line 71
    invoke-super {p0}, Lcom/google/research/reflection/layers/e;->hB()V

    .line 72
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 73
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/google/research/reflection/layers/m;

    iput-object v4, v3, Lcom/google/research/reflection/layers/a;->YG:[Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YU:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YS:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YT:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YQ:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YP:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YO:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    iget-object v3, v3, Lcom/google/research/reflection/layers/a;->YR:Lcom/google/research/reflection/layers/m;

    iget-object v3, v3, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->fill([DD)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public final hC()V
    .locals 5

    .line 79
    invoke-super {p0}, Lcom/google/research/reflection/layers/e;->hC()V

    .line 80
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 81
    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YB:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YA:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YC:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YD:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YE:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v3, v3, Lcom/google/research/reflection/layers/a;->YF:Lcom/google/research/reflection/a/a;

    invoke-virtual {v3}, Lcom/google/research/reflection/a/a;->clear()V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public final update()V
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/google/research/reflection/layers/b;->YX:[Lcom/google/research/reflection/layers/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 127
    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YH:Lcom/google/research/reflection/layers/m;

    iget-object v5, v3, Lcom/google/research/reflection/layers/a;->YO:Lcom/google/research/reflection/layers/m;

    sget-wide v6, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YI:Lcom/google/research/reflection/layers/m;

    iget-object v5, v3, Lcom/google/research/reflection/layers/a;->YP:Lcom/google/research/reflection/layers/m;

    sget-wide v6, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YJ:Lcom/google/research/reflection/layers/m;

    iget-object v5, v3, Lcom/google/research/reflection/layers/a;->YQ:Lcom/google/research/reflection/layers/m;

    sget-wide v6, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YK:Lcom/google/research/reflection/layers/m;

    iget-object v5, v3, Lcom/google/research/reflection/layers/a;->YR:Lcom/google/research/reflection/layers/m;

    sget-wide v6, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YL:Lcom/google/research/reflection/layers/m;

    iget-object v5, v3, Lcom/google/research/reflection/layers/a;->YS:Lcom/google/research/reflection/layers/m;

    sget-wide v6, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YM:Lcom/google/research/reflection/layers/m;

    iget-object v5, v3, Lcom/google/research/reflection/layers/a;->YT:Lcom/google/research/reflection/layers/m;

    sget-wide v6, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    iget-object v4, v3, Lcom/google/research/reflection/layers/a;->YN:Lcom/google/research/reflection/layers/m;

    iget-object v3, v3, Lcom/google/research/reflection/layers/a;->YU:Lcom/google/research/reflection/layers/m;

    sget-wide v5, Lcom/google/research/reflection/layers/e;->Zf:D

    neg-double v5, v5

    invoke-virtual {v3, v5, v6}, Lcom/google/research/reflection/layers/m;->b(D)Lcom/google/research/reflection/layers/m;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/research/reflection/layers/m;->a(Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method
