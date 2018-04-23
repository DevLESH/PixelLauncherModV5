.class public Lcom/google/android/apps/nexuslauncher/search/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/launcher3/allapps/search/SearchAlgorithm;


# static fields
.field private static xn:Landroid/os/HandlerThread;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field private final xo:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/e;->mContext:Landroid/content/Context;

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/e;->mUiHandler:Landroid/os/Handler;

    .line 38
    sget-object p1, Lcom/google/android/apps/nexuslauncher/search/e;->xn:Landroid/os/HandlerThread;

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "search-thread"

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 40
    sput-object p1, Lcom/google/android/apps/nexuslauncher/search/e;->xn:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 43
    :cond_0
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/search/e;->xn:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/e;->xo:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->xo:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/e;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public final doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->xo:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->xo:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/search/f;

    invoke-direct {v2, p1, p2}, Lcom/google/android/apps/nexuslauncher/search/f;-><init>(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 50
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/16 v3, 0xc8

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    .line 72
    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/search/f;

    .line 68
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/search/f;->xr:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/search/f;->xq:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/search/f;->xp:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69
    return v2

    .line 64
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/search/f;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.nexuslauncher.appssearch"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/search/f;->xq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "suggest_intent_data"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/google/android/apps/nexuslauncher/search/f;->xp:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/nexuslauncher/search/e;->mContext:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 65
    return v2

    .line 64
    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p1
.end method
