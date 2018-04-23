.class public abstract Lcom/android/launcher3/states/InternalStateHandler;
.super Landroid/os/Binder;
.source "SourceFile"


# static fields
.field private static sPendingHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/states/InternalStateHandler;->sPendingHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static handleCreate(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/launcher3/states/InternalStateHandler;->handleIntent(Lcom/android/launcher3/Launcher;Landroid/content/Intent;ZZ)Z

    move-result p0

    return p0
.end method

.method private static handleIntent(Lcom/android/launcher3/Launcher;Landroid/content/Intent;ZZ)Z
    .locals 3

    .line 92
    nop

    .line 93
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "launcher.state_handler"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 95
    instance-of v2, v1, Lcom/android/launcher3/states/InternalStateHandler;

    if-eqz v2, :cond_1

    .line 96
    check-cast v1, Lcom/android/launcher3/states/InternalStateHandler;

    .line 97
    invoke-virtual {v1, p0, p2}, Lcom/android/launcher3/states/InternalStateHandler;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "launcher.state_handler"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 100
    :cond_0
    nop

    .line 103
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    if-nez p3, :cond_3

    .line 104
    sget-object p3, Lcom/android/launcher3/states/InternalStateHandler;->sPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/states/InternalStateHandler;

    .line 105
    if-eqz p3, :cond_3

    .line 106
    invoke-virtual {p3, p0, p2}, Lcom/android/launcher3/states/InternalStateHandler;->init(Lcom/android/launcher3/Launcher;Z)Z

    move-result p0

    if-nez p0, :cond_2

    .line 107
    sget-object p0, Lcom/android/launcher3/states/InternalStateHandler;->sPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 109
    :cond_2
    nop

    .line 112
    move p1, v0

    :cond_3
    return p1
.end method

.method public static handleNewIntent(Lcom/android/launcher3/Launcher;Landroid/content/Intent;Z)Z
    .locals 1

    .line 87
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/states/InternalStateHandler;->handleIntent(Lcom/android/launcher3/Launcher;Landroid/content/Intent;ZZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract init(Lcom/android/launcher3/Launcher;Z)Z
.end method
