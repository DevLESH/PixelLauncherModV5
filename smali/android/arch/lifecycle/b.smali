.class public Landroid/arch/lifecycle/b;
.super Landroid/arch/lifecycle/Lifecycle;
.source "SourceFile"


# instance fields
.field private G:Landroid/arch/a/a/a;

.field private H:Landroid/arch/lifecycle/Lifecycle$State;

.field private final I:Ljava/lang/ref/WeakReference;

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/a;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    .line 59
    new-instance v0, Landroid/arch/a/a/a;

    invoke-direct {v0}, Landroid/arch/a/a/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/b;->J:I

    .line 76
    iput-boolean v0, p0, Landroid/arch/lifecycle/b;->K:Z

    .line 77
    iput-boolean v0, p0, Landroid/arch/lifecycle/b;->L:Z

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->M:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/b;->I:Ljava/lang/ref/WeakReference;

    .line 99
    sget-object p1, Landroid/arch/lifecycle/Lifecycle$State;->B:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    .line 100
    return-void
.end method

.method static b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;
    .locals 3

    .line 235
    sget-object v0, Landroid/arch/lifecycle/c;->N:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->A:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 243
    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->E:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 241
    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->D:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    .line 238
    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/Lifecycle$State;->C:Landroid/arch/lifecycle/Lifecycle$State;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/arch/lifecycle/b;->M:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method private c()V
    .locals 2

    .line 194
    iget-object v0, p0, Landroid/arch/lifecycle/b;->M:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/arch/lifecycle/b;->M:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method private d()V
    .locals 6

    .line 284
    iget-object v0, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    .line 285
    new-instance v1, Landroid/arch/a/a/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/arch/a/a/f;-><init>(Landroid/arch/a/a/b;B)V

    iget-object v0, v0, Landroid/arch/a/a/b;->e:Ljava/util/WeakHashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/arch/lifecycle/b;->L:Z

    if-nez v0, :cond_1

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 288
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/d;

    .line 289
    :goto_1
    iget-object v3, v2, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v4, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/b;->L:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/a/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, v2, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 292
    iget-object v3, v2, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v4, Landroid/arch/lifecycle/c;->O:[I

    invoke-virtual {v3}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->r:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_2

    :pswitch_2
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->q:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_2

    :pswitch_3
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->p:Landroid/arch/lifecycle/Lifecycle$Event;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/d;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 293
    invoke-direct {p0}, Landroid/arch/lifecycle/b;->c()V

    goto :goto_1

    .line 295
    :cond_0
    goto :goto_0

    .line 296
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final a()Landroid/arch/lifecycle/Lifecycle$State;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public final a(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 122
    invoke-static {p1}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 124
    return-void
.end method

.method public final a(Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 7

    .line 127
    iget-object v0, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, p1, :cond_0

    .line 128
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    .line 131
    iget-boolean p1, p0, Landroid/arch/lifecycle/b;->K:Z

    const/4 v0, 0x1

    if-nez p1, :cond_8

    iget p1, p0, Landroid/arch/lifecycle/b;->J:I

    if-eqz p1, :cond_1

    goto/16 :goto_6

    .line 136
    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/b;->K:Z

    .line 137
    iget-object p1, p0, Landroid/arch/lifecycle/b;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/a;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    const-string p1, "LifecycleRegistry"

    const-string v0, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    iget p1, p1, Landroid/arch/a/a/b;->mSize:I

    if-nez p1, :cond_3

    :goto_1
    move p1, v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    iget-object p1, p1, Landroid/arch/a/a/b;->c:Landroid/arch/a/a/e;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/d;

    iget-object p1, p1, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    iget-object v2, v2, Landroid/arch/a/a/b;->d:Landroid/arch/a/a/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/d;

    iget-object v2, v2, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_2
    if-nez p1, :cond_7

    iput-boolean v1, p0, Landroid/arch/lifecycle/b;->L:Z

    iget-object p1, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    iget-object v2, v2, Landroid/arch/a/a/b;->c:Landroid/arch/a/a/e;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/d;

    iget-object v2, v2, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gez p1, :cond_6

    iget-object p1, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    new-instance v2, Landroid/arch/a/a/d;

    iget-object v3, p1, Landroid/arch/a/a/b;->d:Landroid/arch/a/a/e;

    iget-object v4, p1, Landroid/arch/a/a/b;->c:Landroid/arch/a/a/e;

    invoke-direct {v2, v3, v4}, Landroid/arch/a/a/d;-><init>(Landroid/arch/a/a/e;Landroid/arch/a/a/e;)V

    iget-object p1, p1, Landroid/arch/a/a/b;->e:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Landroid/arch/lifecycle/b;->L:Z

    if-nez p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/lifecycle/d;

    :goto_3
    iget-object v4, v3, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v5, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_5

    iget-boolean v4, p0, Landroid/arch/lifecycle/b;->L:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/arch/a/a/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v5, Landroid/arch/lifecycle/c;->O:[I

    invoke-virtual {v4}, Landroid/arch/lifecycle/Lifecycle$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected state value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_1
    sget-object v4, Landroid/arch/lifecycle/Lifecycle$Event;->t:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_4

    :pswitch_2
    sget-object v4, Landroid/arch/lifecycle/Lifecycle$Event;->u:Landroid/arch/lifecycle/Lifecycle$Event;

    goto :goto_4

    :pswitch_3
    sget-object v4, Landroid/arch/lifecycle/Lifecycle$Event;->v:Landroid/arch/lifecycle/Lifecycle$Event;

    :goto_4
    invoke-static {v4}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/d;->c(Landroid/arch/lifecycle/Lifecycle$Event;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/b;->c()V

    goto :goto_3

    :pswitch_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    iget-object p1, p0, Landroid/arch/lifecycle/b;->G:Landroid/arch/a/a/a;

    iget-object p1, p1, Landroid/arch/a/a/b;->d:Landroid/arch/a/a/e;

    iget-boolean v2, p0, Landroid/arch/lifecycle/b;->L:Z

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Landroid/arch/lifecycle/b;->H:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/d;

    iget-object p1, p1, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v2, p1}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_2

    invoke-direct {p0}, Landroid/arch/lifecycle/b;->d()V

    goto/16 :goto_0

    :cond_7
    iput-boolean v1, p0, Landroid/arch/lifecycle/b;->L:Z

    .line 138
    :goto_5
    iput-boolean v1, p0, Landroid/arch/lifecycle/b;->K:Z

    .line 139
    return-void

    .line 132
    :cond_8
    :goto_6
    iput-boolean v0, p0, Landroid/arch/lifecycle/b;->L:Z

    .line 134
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
