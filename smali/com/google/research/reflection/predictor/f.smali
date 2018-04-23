.class public abstract Lcom/google/research/reflection/predictor/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aas:Lcom/google/research/reflection/predictor/PredictorWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static K(Ljava/lang/String;)Lcom/google/research/reflection/predictor/f;
    .locals 1

    .line 17
    const-string v0, "neural_predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance p0, Lcom/google/research/reflection/predictor/c;

    invoke-direct {p0}, Lcom/google/research/reflection/predictor/c;-><init>()V

    return-object p0

    .line 19
    :cond_0
    const-string v0, "recency_event_predictor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 20
    new-instance p0, Lcom/google/research/reflection/predictor/g;

    invoke-direct {p0}, Lcom/google/research/reflection/predictor/g;-><init>()V

    return-object p0

    .line 22
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public J(Ljava/lang/String;)V
    .locals 0

    .line 47
    return-void
.end method

.method public abstract a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
.end method

.method public a(Lcom/google/research/reflection/predictor/PredictorWrapper;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    .line 27
    return-void
.end method

.method public abstract a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V
.end method

.method public abstract a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/io/DataOutputStream;)V
.end method

.method public abstract f(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public hz()Ljava/util/Map;
    .locals 1

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
