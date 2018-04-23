.class public Lcom/google/research/reflection/predictor/c;
.super Lcom/google/research/reflection/predictor/f;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/b/m;


# instance fields
.field protected Yr:Lcom/google/research/reflection/b/m;

.field protected aal:Lcom/google/research/reflection/layers/r;

.field protected aam:Lcom/google/research/reflection/b/g;

.field protected aan:Lcom/google/research/reflection/layers/m;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 52
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/f;-><init>()V

    .line 53
    new-instance v0, Lcom/google/research/reflection/b/f;

    invoke-direct {v0}, Lcom/google/research/reflection/b/f;-><init>()V

    new-instance v1, Lcom/google/research/reflection/b/a;

    invoke-direct {v1}, Lcom/google/research/reflection/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/i;

    invoke-direct {v1}, Lcom/google/research/reflection/b/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/d;

    invoke-direct {v1}, Lcom/google/research/reflection/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/k;

    invoke-direct {v1}, Lcom/google/research/reflection/b/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/j;

    invoke-direct {v1}, Lcom/google/research/reflection/b/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/h;

    invoke-direct {v1}, Lcom/google/research/reflection/b/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    new-instance v1, Lcom/google/research/reflection/b/b;

    invoke-direct {v1}, Lcom/google/research/reflection/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/google/research/reflection/layers/v;->aaa:Z

    new-instance v1, Lcom/google/research/reflection/layers/m;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v1, p0, Lcom/google/research/reflection/predictor/c;->aan:Lcom/google/research/reflection/layers/m;

    iput-object v0, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    iput-object p0, v0, Lcom/google/research/reflection/b/g;->Yr:Lcom/google/research/reflection/b/m;

    new-instance v1, Lcom/google/research/reflection/layers/r;

    invoke-direct {v1, v2}, Lcom/google/research/reflection/layers/r;-><init>(I)V

    iput-object v1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    new-instance v1, Lcom/google/research/reflection/layers/f;

    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->hu()I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x64

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/google/research/reflection/layers/f;-><init>(ZIIIIIIIZZF)V

    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/layers/r;->b(Lcom/google/research/reflection/layers/e;)V

    new-instance v0, Lcom/google/research/reflection/layers/s;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v7, 0x64

    const/16 v8, 0x64

    const/4 v9, -0x1

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/research/reflection/layers/s;-><init>(IIIIIIIIZ)V

    iget-object v1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/layers/r;->b(Lcom/google/research/reflection/layers/e;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ".*"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/g;->q(Ljava/util/List;)V

    .line 212
    return-void
.end method

.method public final a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget-object v1, v1, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaz:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v1}, Lcom/google/research/reflection/predictor/b;->hM()Lcom/google/research/reflection/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;

    move-result-object p2

    .line 137
    iget-object v0, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, v2

    goto :goto_2

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 140
    nop

    .line 142
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v3, v2, v0, p2, v1}, Lcom/google/research/reflection/layers/r;->a(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/research/reflection/layers/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    move-object v0, v1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/InvalidValueException;->printStackTrace()V

    .line 146
    :goto_0
    move v1, v2

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 147
    invoke-virtual {v0, v2, v2, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p1, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_1
    :goto_2
    new-instance v0, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 151
    iget-object p2, p2, Lcom/google/research/reflection/layers/m;->ZI:[D

    iput-object p2, v0, Lcom/google/research/reflection/predictor/l;->aaJ:[D

    .line 152
    iput-object p1, v0, Lcom/google/research/reflection/predictor/l;->aaK:[F

    .line 153
    return-object v0
.end method

.method public final a(Lcom/google/research/reflection/b/g;I)V
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->Yr:Lcom/google/research/reflection/b/m;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->Yr:Lcom/google/research/reflection/b/m;

    invoke-interface {v0, p1, p2}, Lcom/google/research/reflection/b/m;->a(Lcom/google/research/reflection/b/g;I)V

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    iget-object p1, p1, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/layers/f;

    .line 88
    iget-object v1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p1, v1}, Lcom/google/research/reflection/layers/f;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->G(Z)I

    move-result v1

    .line 90
    move v8, v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/research/reflection/layers/m;->H(Z)I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 91
    const-wide/16 v2, 0x0

    .line 92
    move-wide v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 93
    invoke-virtual {p1, v0, v2, v8}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    :cond_1
    int-to-double v5, v1

    div-double v6, v3, v5

    .line 96
    const/4 v3, 0x0

    move-object v2, p1

    move v4, p2

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 98
    :cond_2
    return-void
.end method

.method public final a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 3

    .line 189
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {p2}, Lcom/google/research/reflection/b/g;->I(Ljava/lang/String;)Lcom/google/research/reflection/b/g;

    move-result-object v0

    .line 191
    if-nez v0, :cond_1

    .line 192
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot find extractor with "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 194
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/g;->a(Ljava/io/DataInputStream;)V

    .line 195
    iput-object p0, v0, Lcom/google/research/reflection/b/g;->Yr:Lcom/google/research/reflection/b/m;

    .line 197
    new-instance p2, Lcom/google/research/reflection/layers/r;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lcom/google/research/reflection/layers/r;-><init>(I)V

    iput-object p2, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    .line 198
    iget-object p2, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p2, p1}, Lcom/google/research/reflection/layers/r;->b(Ljava/io/DataInputStream;)V

    .line 199
    iget-object p1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p1}, Lcom/google/research/reflection/layers/r;->hI()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->hu()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 200
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    .line 201
    invoke-virtual {p2}, Lcom/google/research/reflection/layers/r;->hI()I

    move-result p2

    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->hu()I

    move-result v0

    const/16 v1, 0x4c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Model to be loaded has an inconsistent input size:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p1}, Lcom/google/research/reflection/layers/r;->hJ()Lcom/google/research/reflection/layers/e;

    move-result-object p1

    iget p1, p1, Lcom/google/research/reflection/layers/e;->Zn:I

    iget-object p2, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget p2, p2, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaA:I

    if-eq p1, p2, :cond_3

    .line 204
    new-instance p1, Ljava/io/IOException;

    iget-object p2, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    .line 205
    invoke-virtual {p2}, Lcom/google/research/reflection/layers/r;->hJ()Lcom/google/research/reflection/layers/e;

    move-result-object p2

    iget p2, p2, Lcom/google/research/reflection/layers/e;->Zn:I

    iget-object v0, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget v0, v0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaA:I

    const/16 v1, 0x39

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent model output size..."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "!="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 12

    .line 217
    iget-object p3, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p3}, Lcom/google/research/reflection/layers/r;->hJ()Lcom/google/research/reflection/layers/e;

    move-result-object p3

    check-cast p3, Lcom/google/research/reflection/layers/s;

    .line 218
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {p3, v0}, Lcom/google/research/reflection/layers/s;->a(Lcom/google/research/reflection/layers/r;)Lcom/google/research/reflection/layers/m;

    move-result-object v0

    .line 219
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/google/research/reflection/layers/m;->H(Z)I

    move-result v8

    .line 220
    move v9, v7

    :goto_0
    invoke-virtual {v0, v7}, Lcom/google/research/reflection/layers/m;->G(Z)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ge v9, v1, :cond_2

    .line 221
    nop

    .line 222
    move v1, v7

    :goto_1
    if-ge v1, v8, :cond_0

    .line 223
    invoke-virtual {v0, v7, v9, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_0
    int-to-double v4, v8

    div-double v10, v2, v4

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v7, v9, v1}, Lcom/google/research/reflection/layers/m;->b(ZII)D

    move-result-wide v5

    move-object v1, v0

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 229
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, v0

    move v3, v9

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 220
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 231
    :cond_2
    iget-object p3, p3, Lcom/google/research/reflection/layers/f;->Zv:Lcom/google/research/reflection/layers/m;

    .line 232
    nop

    .line 233
    :goto_2
    if-ge v7, v8, :cond_3

    .line 234
    iget-object v0, p3, Lcom/google/research/reflection/layers/m;->ZI:[D

    aget-wide v4, v0, v7

    add-double/2addr v2, v4

    .line 233
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 236
    :cond_3
    int-to-double v0, v8

    div-double/2addr v2, v0

    .line 237
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p3, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p3, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-wide v4, v1, v4

    aput-wide v4, v0, p1

    .line 240
    :cond_4
    iget-object p1, p3, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput-wide v2, p1, p2

    .line 241
    return-void
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    invoke-static {v0}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/b/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/b/g;->a(Ljava/io/DataOutputStream;)V

    .line 184
    iget-object v0, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    iget-object v1, v0, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/layers/e;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/google/research/reflection/layers/e;->b(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    const-string v0, "NeuralNet"

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 2

    .line 34
    new-instance v0, Lcom/google/research/reflection/predictor/c;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/c;-><init>()V

    iget-object v1, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/predictor/c;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;)V

    iget-object v1, p0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/r;->hH()Lcom/google/research/reflection/layers/r;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/c;->aan:Lcom/google/research/reflection/layers/m;

    invoke-virtual {v1}, Lcom/google/research/reflection/layers/m;->hG()Lcom/google/research/reflection/layers/m;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/c;->aan:Lcom/google/research/reflection/layers/m;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    invoke-virtual {v1}, Lcom/google/research/reflection/b/g;->hv()Lcom/google/research/reflection/b/g;

    move-result-object v1

    iput-object v1, v0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    return-object v0
.end method

.method public final f(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 21

    move-object/from16 v0, p0

    .line 158
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    invoke-virtual {v2, v1}, Lcom/google/research/reflection/predictor/PredictorWrapper;->g(Lcom/google/research/reflection/signal/ReflectionEvent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 159
    new-instance v3, Lcom/google/research/reflection/predictor/l;

    invoke-direct {v3}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 161
    :try_start_0
    iget-object v4, v0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    iget-object v5, v0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget-object v5, v5, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaz:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v5}, Lcom/google/research/reflection/predictor/b;->hM()Lcom/google/research/reflection/a/a;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;

    move-result-object v1

    .line 162
    iget-object v4, v0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    iget-object v5, v4, Lcom/google/research/reflection/layers/r;->ZQ:Lcom/google/research/reflection/a/a;

    invoke-virtual {v5}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v5, v4, Lcom/google/research/reflection/layers/r;->ZR:Lcom/google/research/reflection/a/a;

    invoke-virtual {v5}, Lcom/google/research/reflection/a/a;->clear()V

    iget-object v4, v4, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/research/reflection/layers/e;

    invoke-virtual {v5}, Lcom/google/research/reflection/layers/e;->hC()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v4, v0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5, v1, v6}, Lcom/google/research/reflection/layers/r;->a(Z[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;Z)Lcom/google/research/reflection/layers/m;

    .line 164
    iget-object v4, v0, Lcom/google/research/reflection/predictor/c;->aan:Lcom/google/research/reflection/layers/m;

    iget-object v4, v4, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v7, 0x0

    invoke-static {v4, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    .line 165
    iget-object v9, v0, Lcom/google/research/reflection/predictor/c;->aan:Lcom/google/research/reflection/layers/m;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v9 .. v14}, Lcom/google/research/reflection/layers/m;->b(ZIID)V

    .line 166
    iget-object v2, v0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    iget-object v4, v0, Lcom/google/research/reflection/predictor/c;->aan:Lcom/google/research/reflection/layers/m;

    iget-object v7, v2, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    iget-object v8, v2, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/google/research/reflection/layers/s;

    if-nez v7, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Lacks outputlayer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v0

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Lcom/google/research/reflection/layers/m;

    invoke-virtual {v2}, Lcom/google/research/reflection/layers/r;->hJ()Lcom/google/research/reflection/layers/e;

    move-result-object v5

    iget v5, v5, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-direct {v4, v6, v5}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    new-instance v5, Lcom/google/research/reflection/layers/m;

    invoke-virtual {v2}, Lcom/google/research/reflection/layers/r;->hJ()Lcom/google/research/reflection/layers/e;

    move-result-object v7

    iget v7, v7, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-direct {v5, v6, v7}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iget-object v6, v2, Lcom/google/research/reflection/layers/r;->ZQ:Lcom/google/research/reflection/a/a;

    invoke-virtual {v6, v4}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/research/reflection/layers/r;->ZR:Lcom/google/research/reflection/a/a;

    invoke-virtual {v2, v5}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2
    iget-object v7, v2, Lcom/google/research/reflection/layers/r;->ZQ:Lcom/google/research/reflection/a/a;

    invoke-virtual {v7, v4}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/research/reflection/layers/r;->ZR:Lcom/google/research/reflection/a/a;

    invoke-virtual {v4, v5}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/research/reflection/layers/r;->ZQ:Lcom/google/research/reflection/a/a;

    iget v4, v4, Lcom/google/research/reflection/a/a;->Yh:I

    invoke-virtual {v2}, Lcom/google/research/reflection/layers/r;->hB()V

    iget-object v5, v2, Lcom/google/research/reflection/layers/r;->ZQ:Lcom/google/research/reflection/a/a;

    iget v5, v5, Lcom/google/research/reflection/a/a;->Ye:I

    iget-object v7, v2, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    move v8, v7

    :goto_2
    if-ltz v8, :cond_5

    iget-object v9, v2, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/layers/e;

    iget-boolean v10, v9, Lcom/google/research/reflection/layers/e;->Zm:Z

    if-eqz v10, :cond_3

    iget-object v9, v9, Lcom/google/research/reflection/layers/e;->Zi:Lcom/google/research/reflection/a/a;

    iget v9, v9, Lcom/google/research/reflection/a/a;->Yh:I

    if-eq v9, v4, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "backward: sparse input vector has a different frame index from the target frame index"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v10, v9, Lcom/google/research/reflection/layers/e;->Zh:Lcom/google/research/reflection/a/a;

    iget v10, v10, Lcom/google/research/reflection/a/a;->Yh:I

    if-eq v10, v4, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, v9, Lcom/google/research/reflection/layers/e;->Zh:Lcom/google/research/reflection/a/a;

    iget v1, v1, Lcom/google/research/reflection/a/a;->Yh:I

    const/16 v2, 0x6e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "backward: dense input vector has a different frame index from the target frame index: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_5
    sub-int/2addr v5, v6

    move v4, v5

    :goto_3
    if-ltz v4, :cond_7

    sub-int v6, v5, v4

    if-gtz v6, :cond_7

    iget-object v6, v2, Lcom/google/research/reflection/layers/r;->ZQ:Lcom/google/research/reflection/a/a;

    invoke-virtual {v6, v4}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/reflection/layers/m;

    iget-object v8, v2, Lcom/google/research/reflection/layers/r;->ZR:Lcom/google/research/reflection/a/a;

    invoke-virtual {v8, v4}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/research/reflection/layers/m;

    move-object/from16 v18, v6

    move v6, v7

    :goto_4
    if-ltz v6, :cond_6

    iget-object v9, v2, Lcom/google/research/reflection/layers/r;->ZS:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/research/reflection/layers/e;

    iget-object v10, v9, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    move-object v15, v9

    move-object/from16 v16, v2

    move/from16 v17, v4

    move-object/from16 v19, v10

    move-object/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Lcom/google/research/reflection/layers/e;->a(Lcom/google/research/reflection/layers/r;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V

    iget-object v9, v9, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v18, v9

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 167
    :cond_7
    :goto_5
    iget-object v0, v0, Lcom/google/research/reflection/predictor/c;->aal:Lcom/google/research/reflection/layers/r;

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/r;->update()V

    .line 168
    iget-object v0, v1, Lcom/google/research/reflection/layers/m;->ZI:[D

    iput-object v0, v3, Lcom/google/research/reflection/predictor/l;->aaJ:[D
    :try_end_0
    .catch Lcom/google/research/reflection/layers/InvalidValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_6

    .line 169
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/research/reflection/layers/InvalidValueException;->printStackTrace()V

    .line 172
    :goto_6
    return-object v3
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "neural_predictor"

    return-object v0
.end method

.method public final hz()Ljava/util/Map;
    .locals 2

    .line 245
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/c;->aam:Lcom/google/research/reflection/b/g;

    invoke-virtual {v1}, Lcom/google/research/reflection/b/g;->hz()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
