.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/a;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final ct:Landroid/support/v4/c/u;

.field static final cu:Ljava/lang/Object;


# instance fields
.field bQ:I

.field cA:I

.field cB:I

.field cC:Z

.field public cD:Z

.field cE:Z

.field cF:Z

.field cG:Z

.field cH:I

.field cI:Landroid/support/v4/app/x;

.field cJ:Landroid/support/v4/app/v;

.field cK:Landroid/support/v4/app/x;

.field cL:Landroid/support/v4/app/M;

.field cM:Landroid/support/v4/app/Fragment;

.field cN:I

.field cO:I

.field cP:Ljava/lang/String;

.field cQ:Z

.field cR:Z

.field cS:Z

.field cT:Z

.field cU:Z

.field cV:Z

.field cW:Landroid/view/ViewGroup;

.field cX:Landroid/view/View;

.field cY:Z

.field cZ:Z

.field cv:Landroid/os/Bundle;

.field cw:Landroid/util/SparseArray;

.field cx:Ljava/lang/String;

.field cy:Landroid/os/Bundle;

.field cz:Landroid/support/v4/app/Fragment;

.field da:Landroid/support/v4/app/aj;

.field db:Z

.field dc:Z

.field dd:Landroid/support/v4/app/m;

.field de:Z

.field df:Z

.field dg:F

.field dh:Z

.field di:Landroid/arch/lifecycle/b;

.field mCalled:Z

.field mInLayout:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mState:I

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/support/v4/c/u;

    invoke-direct {v0}, Landroid/support/v4/c/u;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->ct:Landroid/support/v4/c/u;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->cu:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->bQ:I

    .line 109
    iput v0, p0, Landroid/support/v4/app/Fragment;->cA:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->cV:Z

    .line 204
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->cZ:Z

    .line 237
    new-instance v0, Landroid/arch/lifecycle/b;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/b;-><init>(Landroid/arch/lifecycle/a;)V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    .line 313
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 339
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->ct:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 340
    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 343
    sget-object p0, Landroid/support/v4/app/Fragment;->ct:Landroid/support/v4/c/u;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_0
    const/4 p0, 0x0

    new-array v1, p0, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, p0, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 346
    if-eqz p2, :cond_3

    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 348
    iget v1, v0, Landroid/support/v4/app/Fragment;->bQ:I

    if-ltz v1, :cond_2

    iget-object v1, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    iget-boolean p0, p0, Landroid/support/v4/app/x;->ej:Z

    :goto_0
    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Fragment already active and state has been saved"

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->cy:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_3
    return-object v0

    .line 366
    :catch_0
    move-exception p0

    .line 367
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 363
    :catch_1
    move-exception p0

    .line 364
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 359
    :catch_2
    move-exception p0

    .line 360
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 355
    :catch_3
    move-exception p0

    .line 356
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 351
    :catch_4
    move-exception p0

    .line 352
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to instantiate fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 382
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->ct:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 383
    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 386
    sget-object p0, Landroid/support/v4/app/Fragment;->ct:Landroid/support/v4/c/u;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_0
    const-class p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 389
    :catch_0
    move-exception p0

    .line 390
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->B()V

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Object;
    .locals 2

    .line 2070
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2071
    const/4 v0, 0x0

    return-object v0

    .line 2073
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dv:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->cu:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2074
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    .line 2075
    iget-object v0, v0, Landroid/support/v4/app/m;->dv:Ljava/lang/Object;

    return-object v0
.end method

.method final B()V
    .locals 3

    .line 2192
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2193
    nop

    .line 2199
    move-object v0, v1

    goto :goto_0

    .line 2195
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/m;->dA:Z

    .line 2196
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dB:Landroid/support/v4/app/n;

    .line 2197
    iget-object v2, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iput-object v1, v2, Landroid/support/v4/app/m;->dB:Landroid/support/v4/app/n;

    .line 2199
    :goto_0
    if-eqz v0, :cond_1

    .line 2200
    invoke-interface {v0}, Landroid/support/v4/app/n;->S()V

    .line 2202
    :cond_1
    return-void
.end method

.method final C()V
    .locals 3

    .line 2303
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    .line 2304
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2306
    :cond_0
    new-instance v0, Landroid/support/v4/app/x;

    invoke-direct {v0}, Landroid/support/v4/app/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 2307
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    new-instance v2, Landroid/support/v4/app/l;

    invoke-direct {v2, p0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V

    .line 2327
    return-void
.end method

.method final D()Landroid/view/View;
    .locals 1

    .line 2346
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2347
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 2349
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->cG:Z

    .line 2350
    const/4 v0, 0x0

    return-object v0
.end method

.method final E()V
    .locals 3

    .line 2370
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 2372
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 2374
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2376
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2377
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2378
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2381
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_2

    .line 2382
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchStart()V

    .line 2384
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v0, :cond_3

    .line 2385
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->ar()V

    .line 2387
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->q:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2388
    return-void
.end method

.method final F()V
    .locals 3

    .line 2391
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 2393
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 2395
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2396
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2397
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2398
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 2399
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2402
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_2

    .line 2403
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchResume()V

    .line 2404
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 2406
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->r:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2407
    return-void
.end method

.method final G()V
    .locals 4

    .line 2560
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x;->o(I)V

    .line 2563
    :cond_0
    iput v1, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2564
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->db:Z

    if-eqz v0, :cond_3

    .line 2565
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->db:Z

    .line 2566
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->dc:Z

    if-nez v1, :cond_1

    .line 2567
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->dc:Z

    .line 2568
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/support/v4/app/Fragment;->db:Z

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/v;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aj;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    .line 2570
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v0, :cond_3

    .line 2571
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-boolean v0, v0, Landroid/support/v4/app/v;->dR:Z

    if-eqz v0, :cond_2

    .line 2572
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->ap()V

    return-void

    .line 2574
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->ao()V

    .line 2578
    :cond_3
    return-void
.end method

.method final H()Landroid/support/v4/app/m;
    .locals 1

    .line 2653
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2654
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    .line 2656
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    return-object v0
.end method

.method final I()I
    .locals 1

    .line 2660
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2661
    const/4 v0, 0x0

    return v0

    .line 2663
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget v0, v0, Landroid/support/v4/app/m;->dn:I

    return v0
.end method

.method final J()I
    .locals 1

    .line 2674
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2675
    const/4 v0, 0x0

    return v0

    .line 2677
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget v0, v0, Landroid/support/v4/app/m;->do:I

    return v0
.end method

.method final K()I
    .locals 1

    .line 2690
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2691
    const/4 v0, 0x0

    return v0

    .line 2693
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget v0, v0, Landroid/support/v4/app/m;->dp:I

    return v0
.end method

.method final L()Landroid/support/v4/app/ax;
    .locals 1

    .line 2697
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2698
    const/4 v0, 0x0

    return-object v0

    .line 2700
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dy:Landroid/support/v4/app/ax;

    return-object v0
.end method

.method final M()Landroid/support/v4/app/ax;
    .locals 1

    .line 2704
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2705
    const/4 v0, 0x0

    return-object v0

    .line 2707
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dz:Landroid/support/v4/app/ax;

    return-object v0
.end method

.method final N()Landroid/view/View;
    .locals 1

    .line 2711
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2712
    const/4 v0, 0x0

    return-object v0

    .line 2714
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dk:Landroid/view/View;

    return-object v0
.end method

.method final O()Landroid/animation/Animator;
    .locals 1

    .line 2726
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2727
    const/4 v0, 0x0

    return-object v0

    .line 2729
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dl:Landroid/animation/Animator;

    return-object v0
.end method

.method final P()I
    .locals 1

    .line 2733
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2734
    const/4 v0, 0x0

    return v0

    .line 2736
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget v0, v0, Landroid/support/v4/app/m;->dm:I

    return v0
.end method

.method final Q()Z
    .locals 1

    .line 2744
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2745
    const/4 v0, 0x0

    return v0

    .line 2747
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-boolean v0, v0, Landroid/support/v4/app/m;->dA:Z

    return v0
.end method

.method final R()Z
    .locals 1

    .line 2751
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2752
    const/4 v0, 0x0

    return v0

    .line 2754
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-boolean v0, v0, Landroid/support/v4/app/m;->dC:Z

    return v0
.end method

.method final a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1212
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1213
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1214
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method final a(II)V
    .locals 1

    .line 2681
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2682
    return-void

    .line 2684
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    .line 2685
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iput p1, v0, Landroid/support/v4/app/m;->do:I

    .line 2686
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iput p2, p1, Landroid/support/v4/app/m;->dp:I

    .line 2687
    return-void
.end method

.method final a(ILandroid/support/v4/app/Fragment;)V
    .locals 0

    .line 408
    iput p1, p0, Landroid/support/v4/app/Fragment;->bQ:I

    .line 409
    if-eqz p2, :cond_0

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    return-void

    .line 412
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "android:fragment:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    .line 414
    return-void
.end method

.method final a(Landroid/animation/Animator;)V
    .locals 1

    .line 2722
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/m;->dl:Landroid/animation/Animator;

    .line 2723
    return-void
.end method

.method public final b()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    return-object v0
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 2

    .line 1421
    if-eqz p1, :cond_1

    .line 1422
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1424
    if-eqz p1, :cond_1

    .line 1425
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-nez v0, :cond_0

    .line 1426
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->C()V

    .line 1428
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cL:Landroid/support/v4/app/M;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/x;->a(Landroid/os/Parcelable;Landroid/support/v4/app/M;)V

    .line 1429
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->cL:Landroid/support/v4/app/M;

    .line 1430
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->dispatchCreate()V

    .line 1433
    :cond_1
    return-void
.end method

.method final b(Landroid/support/v4/app/n;)V
    .locals 2

    .line 2636
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    .line 2637
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dB:Landroid/support/v4/app/n;

    if-ne p1, v0, :cond_0

    .line 2638
    return-void

    .line 2640
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dB:Landroid/support/v4/app/n;

    if-eqz v0, :cond_1

    .line 2641
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2644
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-boolean v0, v0, Landroid/support/v4/app/m;->dA:Z

    if-eqz v0, :cond_2

    .line 2645
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iput-object p1, v0, Landroid/support/v4/app/m;->dB:Landroid/support/v4/app/n;

    .line 2647
    :cond_2
    if-eqz p1, :cond_3

    .line 2648
    invoke-interface {p1}, Landroid/support/v4/app/n;->startListening()V

    .line 2650
    :cond_3
    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    .line 2718
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/m;->dk:Landroid/view/View;

    .line 2719
    return-void
.end method

.method final c(Landroid/os/Bundle;)V
    .locals 2

    .line 2330
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 2333
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2334
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2335
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2336
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dh:Z

    .line 2337
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez p1, :cond_1

    .line 2338
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2341
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->p:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2342
    return-void
.end method

.method final c(Z)V
    .locals 1

    .line 2758
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/m;->dC:Z

    .line 2759
    return-void
.end method

.method final d(Landroid/os/Bundle;)V
    .locals 2

    .line 2354
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 2357
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2358
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2359
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2360
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez p1, :cond_1

    .line 2361
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2364
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz p1, :cond_2

    .line 2365
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->dispatchActivityCreated()V

    .line 2367
    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 2214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2215
    iget v0, p0, Landroid/support/v4/app/Fragment;->cN:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2217
    iget v0, p0, Landroid/support/v4/app/Fragment;->cO:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2220
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2221
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2222
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->cH:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2223
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cC:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2224
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cD:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2225
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cE:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2226
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2227
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cQ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2228
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cR:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2229
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cV:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2230
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cU:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cS:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2232
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cT:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2233
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->cZ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2234
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2236
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2238
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-eqz v0, :cond_1

    .line 2239
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2242
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cM:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_2

    .line 2243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2244
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cM:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2246
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cy:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cy:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2249
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2250
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2251
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cv:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2253
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2254
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cw:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2257
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    .line 2258
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cz:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2259
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    iget v0, p0, Landroid/support/v4/app/Fragment;->cB:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2262
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->I()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->I()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2265
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2266
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cW:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2268
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2269
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2271
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cX:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2274
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2275
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2276
    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2278
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2279
    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->P()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2282
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v0, :cond_c

    .line 2283
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2284
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/aj;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2286
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_d

    .line 2287
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2290
    :cond_d
    return-void
.end method

.method final e(Landroid/os/Bundle;)V
    .locals 2

    .line 2522
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2523
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    .line 2524
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2525
    if-eqz v0, :cond_0

    .line 2526
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2529
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 424
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 431
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final l(I)V
    .locals 1

    .line 2667
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2668
    return-void

    .line 2670
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/m;->dn:I

    .line 2671
    return-void
.end method

.method final m(I)V
    .locals 1

    .line 2740
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/m;->dm:I

    .line 2741
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1499
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1500
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1039
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1322
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1323
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->dO:Landroid/app/Activity;

    .line 1324
    :goto_0
    if-eqz v0, :cond_1

    .line 1325
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1326
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1328
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1593
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1594
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1400
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1401
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 1402
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 1403
    iget p1, p1, Landroid/support/v4/app/x;->ed:I

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1404
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->dispatchCreate()V

    .line 1406
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1786
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->t()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/p;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1787
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1645
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->dc:Z

    if-nez v1, :cond_0

    .line 1646
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dc:Z

    .line 1647
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->db:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/v;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aj;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    .line 1649
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v0, :cond_1

    .line 1650
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->as()V

    .line 1652
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1633
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1634
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1689
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1690
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .line 1181
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p1}, Landroid/support/v4/app/v;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->C()V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchResume()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchStart()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchActivityCreated()V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchCreate()V

    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    invoke-static {p1, v0}, Landroid/support/v4/view/h;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 1619
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1620
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1547
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1569
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1527
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->db:Z

    if-nez v1, :cond_1

    .line 1528
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->db:Z

    .line 1529
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->dc:Z

    if-nez v1, :cond_0

    .line 1530
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->dc:Z

    .line 1531
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->db:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/v;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aj;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    return-void

    .line 1532
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    if-eqz v0, :cond_1

    .line 1533
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->an()V

    .line 1536
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1613
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1614
    return-void
.end method

.method final s()Z
    .locals 1

    .line 417
    iget v0, p0, Landroid/support/v4/app/Fragment;->cH:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 996
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fragment "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not attached to Activity"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 997
    return-void
.end method

.method public final t()Landroid/support/v4/app/p;
    .locals 1

    .line 609
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->dO:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/p;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    invoke-static {p0, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 438
    iget v1, p0, Landroid/support/v4/app/Fragment;->bQ:I

    if-ltz v1, :cond_0

    .line 439
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, Landroid/support/v4/app/Fragment;->bQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    :cond_0
    iget v1, p0, Landroid/support/v4/app/Fragment;->cN:I

    if-eqz v1, :cond_1

    .line 443
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    iget v1, p0, Landroid/support/v4/app/Fragment;->cN:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 447
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 2

    .line 1284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1285
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->dO:Landroid/app/Activity;

    .line 1286
    :goto_0
    if-eqz v1, :cond_1

    .line 1287
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1288
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1290
    :cond_1
    return-void
.end method

.method public final v()Ljava/lang/Object;
    .locals 1

    .line 1882
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 1883
    const/4 v0, 0x0

    return-object v0

    .line 1885
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dq:Ljava/lang/Object;

    return-object v0
.end method

.method public final w()Ljava/lang/Object;
    .locals 2

    .line 1921
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 1922
    const/4 v0, 0x0

    return-object v0

    .line 1924
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dr:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->cu:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->v()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    .line 1925
    iget-object v0, v0, Landroid/support/v4/app/m;->dr:Ljava/lang/Object;

    return-object v0
.end method

.method public final x()Ljava/lang/Object;
    .locals 1

    .line 1961
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 1962
    const/4 v0, 0x0

    return-object v0

    .line 1964
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->ds:Ljava/lang/Object;

    return-object v0
.end method

.method public final y()Ljava/lang/Object;
    .locals 2

    .line 1999
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2000
    const/4 v0, 0x0

    return-object v0

    .line 2002
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->dt:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/Fragment;->cu:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    .line 2003
    iget-object v0, v0, Landroid/support/v4/app/m;->dt:Ljava/lang/Object;

    return-object v0
.end method

.method public final z()Ljava/lang/Object;
    .locals 1

    .line 2032
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    .line 2033
    const/4 v0, 0x0

    return-object v0

    .line 2035
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->dd:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->du:Ljava/lang/Object;

    return-object v0
.end method
