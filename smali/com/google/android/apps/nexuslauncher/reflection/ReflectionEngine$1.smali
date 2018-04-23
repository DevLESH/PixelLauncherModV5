.class Lcom/google/android/apps/nexuslauncher/reflection/ReflectionEngine$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    const-string v0, "recency_event_predictor"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/ReflectionEngine$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "neural_predictor"

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/ReflectionEngine$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method
