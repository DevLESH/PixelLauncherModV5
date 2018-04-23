.class public final Lcom/google/research/reflection/predictor/a;
.super Lcom/google/research/reflection/predictor/n;
.source "SourceFile"


# static fields
.field static final aaf:J


# instance fields
.field private final aag:Lcom/google/research/reflection/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/research/reflection/predictor/a;->aaf:J

    return-void
.end method

.method public constructor <init>(Lcom/google/research/reflection/a/c;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/n;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/research/reflection/predictor/a;->aag:Lcom/google/research/reflection/a/c;

    .line 29
    return-void
.end method


# virtual methods
.method public final a([FLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;
    .locals 9

    .line 33
    iget-object p1, p0, Lcom/google/research/reflection/predictor/f;->aas:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget-object p1, p1, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaz:Lcom/google/research/reflection/predictor/b;

    .line 34
    invoke-virtual {p1}, Lcom/google/research/reflection/predictor/b;->hM()Lcom/google/research/reflection/a/a;

    move-result-object v0

    iget v0, v0, Lcom/google/research/reflection/a/a;->Ye:I

    .line 35
    nop

    .line 36
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    .line 37
    const/4 p2, 0x1

    sub-int/2addr v0, p2

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_4

    .line 38
    invoke-virtual {p1}, Lcom/google/research/reflection/predictor/b;->hM()Lcom/google/research/reflection/a/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 39
    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->dh()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v5

    sget-object v6, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaV:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-ne v5, v6, :cond_3

    .line 40
    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v5

    sub-long v5, v1, v5

    .line 41
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v5

    if-gtz v7, :cond_4

    sget-wide v7, Lcom/google/research/reflection/predictor/a;->aaf:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_4

    .line 42
    const-string v5, "headset_wired_in"

    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "headset_bluetooth_in"

    .line 43
    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    const-string v5, "headset_wired_out"

    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "headset_bluetooth_out"

    .line 48
    invoke-interface {v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 49
    :cond_1
    nop

    .line 51
    goto :goto_2

    .line 44
    :cond_2
    :goto_1
    nop

    .line 46
    nop

    .line 62
    move v3, p2

    goto :goto_2

    .line 37
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 62
    :cond_4
    :goto_2
    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 63
    if-eqz v3, :cond_6

    .line 64
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/google/research/reflection/predictor/a;->aag:Lcom/google/research/reflection/a/c;

    invoke-interface {v0}, Lcom/google/research/reflection/a/c;->cV()Ljava/lang/String;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_5
    iput-object p2, p1, Lcom/google/research/reflection/predictor/l;->aaI:Ljava/util/Map;

    .line 71
    :cond_6
    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 76
    const-string v0, "Bluetooth_Rule_Predictor"

    return-object v0
.end method
