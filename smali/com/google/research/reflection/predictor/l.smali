.class public Lcom/google/research/reflection/predictor/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aaI:Ljava/util/Map;

.field public aaJ:[D

.field aaK:[F

.field private aaL:F

.field public aaM:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->aaJ:[D

    .line 17
    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->aaK:[F

    .line 18
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/research/reflection/predictor/l;->aaL:F

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/predictor/l;)Lcom/google/research/reflection/predictor/l;
    .locals 5

    .line 30
    iget-object v0, p1, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    return-object p0

    .line 35
    :cond_0
    iget-object p1, p1, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/m;

    .line 36
    iget-object v1, p0, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    iget v0, v0, Lcom/google/research/reflection/predictor/m;->vK:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    goto :goto_0

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    :goto_1
    if-ltz p1, :cond_4

    .line 43
    iget-object v0, p0, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/m;

    .line 44
    iget-object v1, p0, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/m;

    .line 45
    iget v2, v0, Lcom/google/research/reflection/predictor/m;->vK:F

    iget v3, v1, Lcom/google/research/reflection/predictor/m;->vK:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 48
    iget v1, v1, Lcom/google/research/reflection/predictor/m;->vK:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/google/research/reflection/predictor/m;->vK:F

    .line 49
    iget-object v1, p0, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    iget v0, v0, Lcom/google/research/reflection/predictor/m;->vK:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 52
    :cond_4
    return-object p0
.end method
