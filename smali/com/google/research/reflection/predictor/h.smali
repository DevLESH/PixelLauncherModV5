.class Lcom/google/research/reflection/predictor/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aaD:Lcom/google/research/reflection/predictor/g;


# direct methods
.method constructor <init>(Lcom/google/research/reflection/predictor/g;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/research/reflection/predictor/h;->aaD:Lcom/google/research/reflection/predictor/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 54
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/research/reflection/predictor/h;->aaD:Lcom/google/research/reflection/predictor/g;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/research/reflection/predictor/h;->aaD:Lcom/google/research/reflection/predictor/g;

    iget-object p1, p1, Lcom/google/research/reflection/predictor/g;->aaB:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-interface {p1}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
