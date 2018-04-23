.class public final Lcom/google/research/reflection/predictor/k;
.super Lcom/google/research/reflection/predictor/n;
.source "SourceFile"


# instance fields
.field private final aaH:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/research/reflection/a/c;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/n;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/k;->aaH:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lcom/google/research/reflection/predictor/k;->aaH:Ljava/util/List;

    new-instance v1, Lcom/google/research/reflection/predictor/a;

    invoke-direct {v1, p1}, Lcom/google/research/reflection/predictor/a;-><init>(Lcom/google/research/reflection/a/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method


# virtual methods
.method public final a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/google/research/reflection/predictor/k;->aaH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/f;

    .line 29
    invoke-virtual {v1, p1, p2}, Lcom/google/research/reflection/predictor/f;->a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object v1

    .line 30
    iget-object v2, v1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V

    return-object p1
.end method

.method public final a(Lcom/google/research/reflection/predictor/PredictorWrapper;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/research/reflection/predictor/k;->aaH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/f;

    .line 22
    invoke-virtual {v1, p1}, Lcom/google/research/reflection/predictor/f;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "Rule_Based_Predictor"

    return-object v0
.end method
