.class public Lcom/google/android/apps/nexuslauncher/reflection/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mContext:Landroid/content/Context;

.field final tT:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

.field final uk:Ljava/util/ArrayList;

.field final ul:Lcom/google/android/apps/nexuslauncher/reflection/j;

.field final um:Lcom/google/research/reflection/c/d;

.field final un:Lcom/google/android/apps/nexuslauncher/reflection/b/e;

.field final uo:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

.field final up:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

.field final uq:Lcom/google/android/apps/nexuslauncher/reflection/b/f;

.field final ur:Lcom/google/android/apps/nexuslauncher/reflection/b/g;

.field final us:Lcom/google/android/apps/nexuslauncher/reflection/f;

.field private final ut:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

.field final uu:Lcom/google/android/apps/nexuslauncher/reflection/c;

.field private final uv:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

.field final uw:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

.field private final ux:Lcom/google/android/apps/nexuslauncher/reflection/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/j;Lcom/google/android/apps/nexuslauncher/reflection/p;Lcom/google/research/reflection/c/d;Lcom/google/android/apps/nexuslauncher/reflection/b/b;Lcom/google/android/apps/nexuslauncher/reflection/b/e;Lcom/google/android/apps/nexuslauncher/reflection/b/c;Lcom/google/android/apps/nexuslauncher/reflection/f;Lcom/google/android/apps/nexuslauncher/reflection/d/f;Lcom/google/android/apps/nexuslauncher/reflection/d/e;Lcom/google/android/apps/nexuslauncher/reflection/c;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uk:Ljava/util/ArrayList;

    .line 97
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ul:Lcom/google/android/apps/nexuslauncher/reflection/j;

    .line 99
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ux:Lcom/google/android/apps/nexuslauncher/reflection/p;

    .line 100
    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->um:Lcom/google/research/reflection/c/d;

    .line 101
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->tT:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 102
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->un:Lcom/google/android/apps/nexuslauncher/reflection/b/e;

    .line 103
    iput-object p7, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->up:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    .line 104
    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/b/g;

    invoke-direct {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/g;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ur:Lcom/google/android/apps/nexuslauncher/reflection/b/g;

    .line 105
    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    invoke-direct {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uo:Lcom/google/android/apps/nexuslauncher/reflection/b/a;

    .line 106
    iput-object p8, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->us:Lcom/google/android/apps/nexuslauncher/reflection/f;

    .line 107
    iput-object p9, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ut:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    .line 108
    iput-object p10, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uw:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    .line 109
    iput-object p11, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uu:Lcom/google/android/apps/nexuslauncher/reflection/c;

    .line 110
    new-instance p2, Lcom/google/android/apps/nexuslauncher/reflection/b/f;

    invoke-direct {p2}, Lcom/google/android/apps/nexuslauncher/reflection/b/f;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uq:Lcom/google/android/apps/nexuslauncher/reflection/b/f;

    .line 111
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->l(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uv:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    .line 112
    return-void
.end method

.method static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    .line 399
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/research/reflection/predictor/m;

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/predictor/m;

    .line 403
    iget-object v3, v2, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    iget-object v3, v2, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 405
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 406
    aput-object v2, v0, v3

    goto :goto_0

    .line 416
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    goto :goto_0

    .line 419
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    goto :goto_0

    .line 423
    :cond_2
    nop

    .line 424
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 425
    const/4 p0, 0x0

    move p1, p0

    :goto_1
    array-length v2, v0

    if-ge p0, v2, :cond_4

    .line 426
    aget-object v2, v0, p0

    if-nez v2, :cond_3

    .line 427
    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/research/reflection/predictor/m;

    aput-object p1, v0, p0

    .line 425
    move p1, v2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 430
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uv:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    if-eqz v0, :cond_1

    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uv:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->b(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 208
    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uv:Lcom/google/android/apps/nexuslauncher/reflection/f/k;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->di()Lcom/google/research/reflection/signal/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/k;->g(J)V

    .line 210
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ul:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/j;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 161
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ul:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->cP()Z

    .line 164
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->up:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->uR:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;

    iget v3, v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->uU:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->uU:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->cT()V

    .line 167
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uw:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    if-eqz p1, :cond_3

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 169
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/c;-><init>()V

    .line 170
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->dh()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->vh:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->timestamp:J

    .line 172
    iget-object p1, p2, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->xd:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->ra:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->packageName:Ljava/lang/String;

    .line 173
    if-eqz p3, :cond_2

    .line 174
    new-instance p1, Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    invoke-direct {p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/b;-><init>()V

    .line 175
    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length p2, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iget p2, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    if-eqz p2, :cond_1

    .line 180
    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p2, p2, v2

    iget p2, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/b;->vC:Ljava/lang/String;

    .line 183
    iget-object p2, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    iget p2, p2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/b;->vD:Ljava/lang/String;

    .line 185
    :cond_1
    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/c;->vG:Lcom/google/android/apps/nexuslauncher/reflection/e/b;

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uw:Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;->a(Lcom/google/android/apps/nexuslauncher/reflection/e/c;)V

    .line 189
    :cond_3
    return-void
.end method

.method final i(Ljava/util/List;)[Lcom/google/android/apps/nexuslauncher/reflection/e/d;
    .locals 4

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    .line 358
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 359
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/reflection/e/d;-><init>()V

    .line 360
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/predictor/m;

    iget-object v3, v3, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->vJ:Ljava/lang/String;

    .line 361
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/predictor/m;

    iget v3, v3, Lcom/google/research/reflection/predictor/m;->vK:F

    iput v3, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/d;->vK:F

    .line 362
    aput-object v2, v0, v1

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-object v0
.end method

.method public final declared-synchronized p(Z)V
    .locals 1

    monitor-enter p0

    .line 368
    if-eqz p1, :cond_0

    .line 370
    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ut:Lcom/google/android/apps/nexuslauncher/reflection/d/f;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/f;->cX()V

    .line 371
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->ul:Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/j;->reset()V

    goto :goto_0

    .line 367
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 373
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/k;->uk:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/l;

    .line 374
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/l;->cM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    goto :goto_1

    .line 376
    :cond_1
    monitor-exit p0

    return-void

    .line 367
    :goto_2
    monitor-exit p0

    throw p1
.end method
