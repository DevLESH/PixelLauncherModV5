.class public Lcom/google/research/reflection/predictor/g;
.super Lcom/google/research/reflection/predictor/f;
.source "SourceFile"


# instance fields
.field aaB:Ljava/util/Map;

.field private aaC:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/f;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    return-void
.end method

.method private hW()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    new-instance v1, Lcom/google/research/reflection/predictor/h;

    invoke-direct {v1, p0}, Lcom/google/research/reflection/predictor/h;-><init>(Lcom/google/research/reflection/predictor/g;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/String;)V
    .locals 1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/google/research/reflection/predictor/g;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 11

    .line 65
    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x1499700

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-static {v0, p2}, Lcom/google/research/reflection/a/e;->a(Lcom/google/research/reflection/signal/ReflectionEvent;Lcom/google/research/reflection/signal/ReflectionEvent;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 67
    return-object p1

    .line 69
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    nop

    .line 71
    iget-object v5, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 73
    iget-object v7, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-static {v7, p2}, Lcom/google/research/reflection/a/e;->a(Lcom/google/research/reflection/signal/ReflectionEvent;Lcom/google/research/reflection/signal/ReflectionEvent;)J

    move-result-wide v7

    .line 74
    cmp-long v7, v7, v2

    if-gtz v7, :cond_4

    .line 75
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-int/2addr v4, v1

    int-to-double v9, v4

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    nop

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iput-object v0, p1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    .line 82
    return-object p1
.end method

.method public final a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 7

    .line 146
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const-class v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/google/research/reflection/a/f;->a(Ljava/io/DataInputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v6, v5, [B

    invoke-virtual {p1, v6, v2, v5}, Ljava/io/DataInputStream;->read([BII)I

    invoke-interface {p2, v6, v5}, Lcom/google/research/reflection/signal/ReflectionEvent;->a([BI)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    .line 147
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/g;->hW()V

    .line 148
    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p1, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public final b(Ljava/io/DataOutputStream;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/research/reflection/a/f;->a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionEvent;->dl()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public final f(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/google/research/reflection/predictor/g;->aaC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    .line 92
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-static {v2, p1}, Lcom/google/research/reflection/a/e;->a(Lcom/google/research/reflection/signal/ReflectionEvent;Lcom/google/research/reflection/signal/ReflectionEvent;)J

    move-result-wide v2

    .line 93
    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/g;->hW()V

    .line 103
    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "recency_event_predictor"

    return-object v0
.end method
