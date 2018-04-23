.class public Lcom/google/research/reflection/predictor/PredictorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Yj:Ljava/util/HashMap;

.field public aaA:I

.field public aat:Ljava/util/HashMap;

.field public aau:Ljava/util/HashMap;

.field public aav:Lcom/google/research/reflection/predictor/f;

.field public aaw:I

.field public aax:Ljava/util/HashMap;

.field private aay:[F

.field public aaz:Lcom/google/research/reflection/predictor/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aax:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaA:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/google/research/reflection/predictor/f;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aax:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaA:I

    .line 80
    iput-object p1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    .line 81
    invoke-virtual {p1, p0}, Lcom/google/research/reflection/predictor/f;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final f(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 10

    .line 109
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaA:I

    if-ne v0, v1, :cond_a

    .line 111
    const-wide v0, 0x7fffffffffffffffL

    iget-object v2, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-wide v8, v4

    move-object v4, v0

    move-wide v0, v8

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_3
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_a

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Lcom/google/research/reflection/predictor/PredictorWrapper$PredictorInvalidException;

    const-string v1, "Predictor becomes invalid"

    invoke-direct {v0, v1}, Lcom/google/research/reflection/predictor/PredictorWrapper$PredictorInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaw:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaw:I

    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aax:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_7

    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_5

    invoke-interface {v4, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aax:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aax:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1, v0}, Lcom/google/research/reflection/predictor/f;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v1, v3, v3, v0}, Lcom/google/research/reflection/predictor/f;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/research/reflection/predictor/PredictorWrapper$PredictorInvalidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_9
    goto :goto_2

    .line 115
    :catch_0
    move-exception v0

    .line 123
    :cond_a
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/predictor/PredictorWrapper;->g(Lcom/google/research/reflection/signal/ReflectionEvent;)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v1, p1}, Lcom/google/research/reflection/predictor/f;->f(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 126
    if-nez v2, :cond_b

    .line 127
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 129
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aat:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget v2, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaw:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaw:I

    .line 132
    iget-object v2, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->Yj:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v1
.end method

.method public final g(Lcom/google/research/reflection/signal/ReflectionEvent;)I
    .locals 4

    .line 85
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    .line 87
    iget-object p1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 90
    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aax:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final h(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 9

    .line 162
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    array-length v0, v0

    if-lez v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aay:[F

    invoke-virtual {v0, v1, p1}, Lcom/google/research/reflection/predictor/f;->a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object p1

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 171
    iget-object v2, p1, Lcom/google/research/reflection/predictor/l;->aaK:[F

    .line 173
    if-eqz v2, :cond_4

    .line 174
    iget-object v3, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aau:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 175
    new-instance v5, Lcom/google/research/reflection/predictor/m;

    .line 176
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget v7, v2, v7

    iget-object v8, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v8}, Lcom/google/research/reflection/predictor/f;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    .line 175
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v4, v2, v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    goto :goto_0

    .line 179
    :cond_3
    iput-object v1, p1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    goto :goto_2

    .line 180
    :cond_4
    iget-object v1, p1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 181
    iget-object v1, p1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 182
    new-instance v3, Lcom/google/research/reflection/predictor/m;

    .line 183
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    iget-object v5, p0, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v5}, Lcom/google/research/reflection/predictor/f;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/google/research/reflection/predictor/m;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    .line 182
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    goto :goto_1

    .line 186
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    iput-object v0, p1, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;

    .line 188
    return-object p1
.end method
