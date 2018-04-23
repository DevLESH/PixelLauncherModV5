.class public Lcom/google/android/apps/nexuslauncher/instantapps/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static su:Lcom/google/android/apps/nexuslauncher/instantapps/b;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

.field public final mWorker:Landroid/os/Handler;

.field public final sv:Lcom/google/android/apps/nexuslauncher/instantapps/c;

.field public sw:Lcom/google/android/apps/nexuslauncher/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mWorker:Landroid/os/Handler;

    .line 48
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance p1, Lcom/google/android/apps/nexuslauncher/instantapps/c;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-direct {p1, v0}, Lcom/google/android/apps/nexuslauncher/instantapps/c;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sv:Lcom/google/android/apps/nexuslauncher/instantapps/c;

    .line 51
    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/instantapps/b;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->su:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/google/android/apps/nexuslauncher/instantapps/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/instantapps/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->su:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    .line 60
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->su:Lcom/google/android/apps/nexuslauncher/instantapps/b;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/instantapps/a;
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mInstantAppResolver:Lcom/android/launcher3/util/InstantAppResolver;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 127
    return-object v2

    .line 131
    :cond_0
    nop

    .line 133
    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/instantapps/InstantAppResolverImpl;->a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-nez v0, :cond_1

    .line 135
    const-string v0, "InstantApps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "no default-url available for pkg "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-object v2

    .line 139
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.BROWSABLE"

    .line 140
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 141
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    new-instance v3, Lcom/google/android/apps/nexuslauncher/instantapps/a;

    invoke-direct {v3, v0, p1}, Lcom/google/android/apps/nexuslauncher/instantapps/a;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 144
    invoke-virtual {p1, v3, v1}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 145
    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/instantapps/a;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/instantapps/a;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v3, Lcom/google/android/apps/nexuslauncher/instantapps/a;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 148
    :cond_2
    return-object v3

    .line 146
    :cond_3
    :goto_0
    return-object v2

    .line 129
    :catch_0
    move-exception p1

    .line 130
    return-object v2
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 17

    .line 105
    nop

    .line 106
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/InstantAppResolver;->getInstantApps()Ljava/util/List;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/google/android/apps/nexuslauncher/instantapps/d;->sA:Lcom/google/android/apps/nexuslauncher/instantapps/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/instantapps/d;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/instantapps/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/instantapps/d;->sA:Lcom/google/android/apps/nexuslauncher/instantapps/d;

    :cond_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/instantapps/d;->sA:Lcom/google/android/apps/nexuslauncher/instantapps/d;

    .line 109
    const/4 v2, 0x0

    const-wide/16 v3, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    sub-long v9, v7, v9

    iget-object v11, v1, Lcom/google/android/apps/nexuslauncher/instantapps/d;->sB:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v11, v9, v10, v7, v8}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v6

    move-object v10, v9

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    if-eqz v12, :cond_2

    if-nez v10, :cond_3

    :goto_1
    move v13, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v13

    invoke-virtual {v10}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    goto :goto_1

    :cond_4
    move v13, v2

    :goto_2
    if-eqz v13, :cond_2

    iget-object v9, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v10, v12

    goto :goto_0

    .line 110
    :cond_5
    :goto_3
    move-object v9, v6

    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 111
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v7, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x2

    invoke-virtual {v3, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long v3, v7, v3

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/instantapps/d;->sB:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v1, v3, v4, v7, v8}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v6

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    if-eqz v7, :cond_8

    if-nez v3, :cond_9

    :goto_5
    move v8, v5

    goto :goto_6

    :cond_9
    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v8

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    goto :goto_5

    :cond_a
    move v8, v2

    :goto_6
    if-eqz v8, :cond_8

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v6, v3

    move-object v3, v7

    goto :goto_4

    .line 118
    :cond_b
    :goto_7
    move-object v9, v6

    goto :goto_8

    .line 113
    :cond_c
    nop

    .line 118
    :goto_8
    return-object v9
.end method


# virtual methods
.method public final d(Ljava/lang/String;)Lcom/android/launcher3/AppInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sv:Lcom/google/android/apps/nexuslauncher/instantapps/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sx:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/AppInfo;

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 85
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->e(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/instantapps/a;

    move-result-object p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 91
    :cond_0
    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sv:Lcom/google/android/apps/nexuslauncher/instantapps/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/instantapps/a;

    invoke-virtual {p1}, Lcom/android/launcher3/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sx:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sy:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sx:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sy:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sy:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    iget v1, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sz:I

    if-le p1, v1, :cond_3

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sy:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sx:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sw:Lcom/google/android/apps/nexuslauncher/g;

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/b;->sw:Lcom/google/android/apps/nexuslauncher/g;

    invoke-interface {p1}, Lcom/google/android/apps/nexuslauncher/g;->bU()V

    .line 101
    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
