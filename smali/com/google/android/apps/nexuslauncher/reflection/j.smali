.class public Lcom/google/android/apps/nexuslauncher/reflection/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final tZ:Ljava/util/LinkedHashMap;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final ua:Lcom/google/research/reflection/c/b;

.field final ub:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

.field uc:Ljava/util/HashMap;

.field private ud:Lcom/google/research/reflection/predictor/PredictorWrapper;

.field private final ue:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

.field private final uf:Ljava/lang/Runnable;

.field private final ug:Landroid/content/SharedPreferences;

.field private final uh:Ljava/lang/String;

.field private ui:Ljava/io/File;

.field private final uj:Lcom/google/research/reflection/predictor/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/ReflectionEngine$1;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/ReflectionEngine$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/j;->tZ:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/d/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;

    .line 109
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ue:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    .line 111
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    .line 112
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uh:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uf:Ljava/lang/Runnable;

    .line 115
    new-instance p1, Lcom/google/research/reflection/predictor/b;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    .line 116
    new-instance p1, Lcom/google/research/reflection/c/b;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    invoke-direct {p1, p2}, Lcom/google/research/reflection/c/b;-><init>(Lcom/google/research/reflection/predictor/b;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ua:Lcom/google/research/reflection/c/b;

    .line 117
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ue:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-direct {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/c;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ub:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    .line 119
    new-instance p1, Lcom/google/research/reflection/predictor/PredictorWrapper;

    new-instance p2, Lcom/google/research/reflection/predictor/k;

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ue:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-direct {p2, p3}, Lcom/google/research/reflection/predictor/k;-><init>(Lcom/google/research/reflection/a/c;)V

    invoke-direct {p1, p2}, Lcom/google/research/reflection/predictor/PredictorWrapper;-><init>(Lcom/google/research/reflection/predictor/f;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ud:Lcom/google/research/reflection/predictor/PredictorWrapper;

    .line 120
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ud:Lcom/google/research/reflection/predictor/PredictorWrapper;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    iput-object p2, p1, Lcom/google/research/reflection/predictor/PredictorWrapper;->aaz:Lcom/google/research/reflection/predictor/b;

    .line 121
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/apps/nexuslauncher/reflection/j;)V
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 134
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/io/File;)V
    .locals 0

    monitor-enter p0

    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V
    .locals 2

    monitor-enter p0

    .line 265
    :try_start_0
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/j;->b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 269
    :cond_0
    iget-object p1, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->xd:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->ra:Ljava/lang/String;

    const-string v0, "/deleted_app/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    if-eqz p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ua:Lcom/google/research/reflection/c/b;

    invoke-virtual {p1, p2}, Lcom/google/research/reflection/c/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 271
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ub:Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ue:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V
    .locals 7

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->xd:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->ra:Ljava/lang/String;

    .line 290
    const-string v1, "/deleted_app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 291
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    :try_start_1
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dk()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "GEL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_8

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dk()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dh()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v2

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaT:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    if-eq v2, v3, :cond_5

    invoke-interface {p2}, Lcom/google/research/reflection/signal/ReflectionEvent;->dh()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v2

    sget-object v3, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aaU:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_6

    :cond_5
    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    goto :goto_4

    :cond_8
    :goto_3
    move v1, v0

    :goto_4
    if-nez v1, :cond_9

    .line 294
    monitor-exit p0

    return-void

    .line 299
    :cond_9
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/predictor/i;

    .line 300
    if-nez v1, :cond_b

    .line 301
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    new-instance v2, Lcom/google/research/reflection/predictor/i;

    invoke-direct {v2}, Lcom/google/research/reflection/predictor/i;-><init>()V

    sget-object v3, Lcom/google/android/apps/nexuslauncher/reflection/j;->tZ:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/research/reflection/predictor/f;->K(Ljava/lang/String;)Lcom/google/research/reflection/predictor/f;

    move-result-object v5

    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/h/a;

    invoke-direct {v6, v5}, Lcom/google/android/apps/nexuslauncher/reflection/h/a;-><init>(Lcom/google/research/reflection/predictor/f;)V

    sget-object v5, Lcom/google/android/apps/nexuslauncher/reflection/j;->tZ:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Lcom/google/research/reflection/predictor/i;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v1}, Lcom/google/research/reflection/predictor/i;->b(Lcom/google/research/reflection/predictor/b;)V

    .line 302
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    move-object v1, v2

    :cond_b
    iget-object p1, v1, Lcom/google/research/reflection/predictor/i;->aaF:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/predictor/PredictorWrapper;

    invoke-virtual {v2, p2}, Lcom/google/research/reflection/predictor/PredictorWrapper;->f(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    goto :goto_6

    :cond_c
    iget p1, v1, Lcom/google/research/reflection/predictor/i;->aaE:I

    add-int/2addr p1, v0

    iput p1, v1, Lcom/google/research/reflection/predictor/i;->aaE:I

    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 369
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/deleted_app/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 371
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/predictor/i;

    .line 372
    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/research/reflection/predictor/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/j;->cP()Z

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ue:Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 368
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)Lcom/google/research/reflection/predictor/l;
    .locals 5

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/predictor/i;

    .line 328
    if-nez p1, :cond_0

    .line 332
    new-instance p1, Lcom/google/research/reflection/predictor/l;

    invoke-direct {p1}, Lcom/google/research/reflection/predictor/l;-><init>()V

    .line 333
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/google/research/reflection/predictor/l;->aaM:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return-object p1

    .line 338
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/google/research/reflection/predictor/i;->i(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object p1

    .line 357
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sl:Lcom/google/android/gms/phenotype/h;

    iget-object v1, v0, Lcom/google/android/gms/phenotype/h;->Wt:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/phenotype/h;->Wt:Ljava/lang/Object;

    :goto_0
    move-object v1, v0

    goto/16 :goto_3

    :cond_1
    sget-boolean v1, Lcom/google/android/gms/phenotype/h;->Wm:Z

    if-eqz v1, :cond_3

    const-string v1, "PhenotypeFlag"

    const-string v2, "Ignoring GService & Phenotype values, using default for flag: "

    iget-object v3, v0, Lcom/google/android/gms/phenotype/h;->Wp:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    if-nez v1, :cond_4

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must call PhenotypeFlag.init() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object v1, Lcom/google/android/gms/phenotype/h;->Wn:Lcom/google/android/gms/internal/cw;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/phenotype/h;->Wr:Landroid/net/Uri;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/phenotype/h;->Wr:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/phenotype/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/phenotype/a;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/phenotype/o;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/phenotype/o;-><init>(Lcom/google/android/gms/phenotype/h;Lcom/google/android/gms/phenotype/a;)V

    invoke-static {v2}, Lcom/google/android/gms/phenotype/h;->a(Lcom/google/android/gms/common/a/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/h;->E(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/phenotype/h;->Wq:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/android/gms/phenotype/h;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/phenotype/h;->Wq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/phenotype/h;->Wp:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/h;->b(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/phenotype/h;->Wo:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Lcom/google/android/gms/phenotype/p;

    invoke-direct {v1, v0}, Lcom/google/android/gms/phenotype/p;-><init>(Lcom/google/android/gms/phenotype/h;)V

    invoke-static {v1}, Lcom/google/android/gms/phenotype/h;->a(Lcom/google/android/gms/common/a/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/h;->E(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, v0, Lcom/google/android/gms/phenotype/h;->Ws:Ljava/lang/Object;

    goto/16 :goto_0

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 358
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ud:Lcom/google/research/reflection/predictor/PredictorWrapper;

    invoke-virtual {v0, p2}, Lcom/google/research/reflection/predictor/PredictorWrapper;->h(Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/l;

    move-result-object p2

    .line 359
    invoke-virtual {p2, p1}, Lcom/google/research/reflection/predictor/l;->a(Lcom/google/research/reflection/predictor/l;)Lcom/google/research/reflection/predictor/l;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 361
    :cond_8
    monitor-exit p0

    return-object p1

    .line 326
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized cO()Z
    .locals 14

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uh:Ljava/lang/String;

    .line 147
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    new-instance v4, Lcom/google/research/reflection/predictor/b;

    invoke-direct {v4}, Lcom/google/research/reflection/predictor/b;-><init>()V

    if-eqz v0, :cond_0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/research/reflection/predictor/b;->a([BLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/b;

    move-result-object v4

    .line 151
    :cond_0
    invoke-virtual {v4}, Lcom/google/research/reflection/predictor/b;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v4}, Lcom/google/research/reflection/predictor/b;->hM()Lcom/google/research/reflection/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-interface {v0}, Lcom/google/research/reflection/signal/ReflectionEvent;->di()Lcom/google/research/reflection/signal/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uh:Ljava/lang/String;

    .line 155
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/a;->k(Ljava/lang/String;)Lcom/google/research/reflection/predictor/b;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 161
    :try_start_2
    new-instance v4, Lcom/google/research/reflection/predictor/b;

    invoke-direct {v4}, Lcom/google/research/reflection/predictor/b;-><init>()V

    .line 165
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 166
    :try_start_3
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v3}, Lcom/google/research/reflection/predictor/b;->clear()V

    .line 167
    move v3, v2

    :goto_1
    invoke-virtual {v4}, Lcom/google/research/reflection/predictor/b;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 168
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    invoke-virtual {v4}, Lcom/google/research/reflection/predictor/b;->hM()Lcom/google/research/reflection/a/a;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-virtual {v5, v6}, Lcom/google/research/reflection/predictor/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    :cond_3
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 175
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v0, :cond_5

    .line 179
    monitor-exit p0

    return v2

    .line 181
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_6

    .line 186
    monitor-exit p0

    return v2

    .line 188
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->b([B)Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    move-result-object v0

    .line 192
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v5, v5

    if-nez v5, :cond_7

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v5, v0

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_a

    aget-object v7, v0, v6

    new-instance v8, Lcom/google/research/reflection/predictor/i;

    invoke-direct {v8}, Lcom/google/research/reflection/predictor/i;-><init>()V

    const-string v9, "recency_event_predictor"

    invoke-static {v9}, Lcom/google/research/reflection/predictor/f;->K(Ljava/lang/String;)Lcom/google/research/reflection/predictor/f;

    move-result-object v9

    new-instance v10, Lcom/google/android/apps/nexuslauncher/reflection/h/a;

    invoke-direct {v10, v9}, Lcom/google/android/apps/nexuslauncher/reflection/h/a;-><init>(Lcom/google/research/reflection/predictor/f;)V

    sget-object v9, Lcom/google/android/apps/nexuslauncher/reflection/j;->tZ:Ljava/util/LinkedHashMap;

    iget-object v11, v10, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v11}, Lcom/google/research/reflection/predictor/f;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v10, v9}, Lcom/google/research/reflection/predictor/i;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;I)V

    invoke-static {v7}, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/r;)Lcom/google/android/apps/nexuslauncher/reflection/h/a;

    move-result-object v9

    sget-object v10, Lcom/google/android/apps/nexuslauncher/reflection/j;->tZ:Ljava/util/LinkedHashMap;

    iget-object v11, v9, Lcom/google/research/reflection/predictor/PredictorWrapper;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v11}, Lcom/google/research/reflection/predictor/f;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/research/reflection/predictor/i;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;I)V

    invoke-virtual {v8, v4}, Lcom/google/research/reflection/predictor/i;->b(Lcom/google/research/reflection/predictor/b;)V

    iget-object v7, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->uW:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wf:[Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    array-length v5, v5

    if-nez v5, :cond_9

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    array-length v5, v0

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_a

    aget-object v7, v0, v6

    new-instance v8, Lcom/google/research/reflection/predictor/i;

    invoke-direct {v8}, Lcom/google/research/reflection/predictor/i;-><init>()V

    iget-object v9, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->wr:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    array-length v10, v9

    move v11, v2

    :goto_5
    if-ge v11, v10, :cond_8

    aget-object v12, v9, v11

    iget-object v13, v12, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-static {v13}, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/r;)Lcom/google/android/apps/nexuslauncher/reflection/h/a;

    move-result-object v13

    iget v12, v12, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    invoke-virtual {v8, v13, v12}, Lcom/google/research/reflection/predictor/i;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v8, v4}, Lcom/google/research/reflection/predictor/i;->b(Lcom/google/research/reflection/predictor/b;)V

    iget-object v7, v7, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->uW:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    const-string v0, "Reflection.NanoWrapper"

    const-string v3, "Error in loadFromProto: input proto has both rankers and learners."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 202
    :cond_a
    :try_start_7
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 203
    nop

    .line 204
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 202
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 198
    :catch_1
    move-exception v0

    .line 199
    :try_start_8
    const-string v3, "Reflection.Engine"

    const-string v4, "Failed to load models, starting a fresh model."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 200
    :try_start_9
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit p0

    return v2

    .line 202
    :goto_6
    :try_start_a
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 142
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized cP()Z
    .locals 8

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uj:Lcom/google/research/reflection/predictor/b;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/research/reflection/predictor/b;->a(Lcom/google/research/reflection/predictor/b;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 216
    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    const-string v3, "reflection_most_recent_usage_buffer"

    const-wide/16 v4, 0x0

    .line 217
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ug:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uh:Ljava/lang/String;

    .line 220
    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "reflection_most_recent_usage"

    .line 221
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 232
    monitor-exit p0

    return v2

    .line 234
    :cond_2
    nop

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    .line 237
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->c(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    move-result-object v0

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    .line 239
    const/16 v3, 0x19

    iput v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    .line 240
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "LatLong=%b "

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Privateplace=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Publicplace=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Install=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "Headset=%b "

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    .line 241
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->ui:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    :try_start_2
    invoke-static {v0}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uf:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uf:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    :cond_3
    :try_start_3
    invoke-static {v3}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 252
    nop

    .line 253
    monitor-exit p0

    return v5

    .line 251
    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_2

    .line 247
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    .line 251
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 247
    :catch_1
    move-exception v0

    .line 248
    :goto_1
    :try_start_4
    const-string v3, "Reflection.Engine"

    const-string v4, "Failed to save models"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    :try_start_5
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return v2

    .line 251
    :goto_2
    :try_start_6
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 212
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/j;->uc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
