.class public Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final rh:Landroid/net/Uri;

.field private static final ri:Landroid/net/Uri;

.field private static final rj:Landroid/net/Uri;

.field private static final rk:[Ljava/lang/String;

.field private static rl:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;


# instance fields
.field private final gg:Ljava/util/ArrayList;

.field private final mAppContext:Landroid/content/Context;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorker:Landroid/os/Handler;

.field private final rm:Landroid/content/SharedPreferences;

.field private final rn:Landroid/database/ContentObserver;

.field private final ro:Ljava/util/Comparator;

.field final rp:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger;

.field private rq:Lcom/google/android/apps/nexuslauncher/allapps/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 64
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.miphone.aiai.allapps.actionsuggestprovider"

    .line 65
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rh:Landroid/net/Uri;

    .line 68
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 69
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.miphone.aiai.allapps.actionloggingprovider"

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->ri:Landroid/net/Uri;

    .line 73
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 74
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.apps.miphone.aiai.allapps.actionsettingprovider"

    .line 75
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rj:Landroid/net/Uri;

    .line 78
    const-string v0, "action_id"

    const-string v1, "shortcut_id"

    const-string v2, "expiration_time_millis"

    const-string v3, "publisher_package"

    const-string v4, "badge_package"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rk:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mUiHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->gg:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/b;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/b;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rn:Landroid/database/ContentObserver;

    .line 116
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;->INSTANCE:Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->ro:Ljava/util/Comparator;

    .line 119
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rp:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mWorker:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    .line 126
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rm:Landroid/content/SharedPreferences;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 128
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bW()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bX()V

    .line 130
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/c;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/c;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V

    const-string v1, "com.google.android.apps.miphone.aiai"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/c/c;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method private static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->re:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p0, p0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/a;->re:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object p1, p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;
    .locals 1

    .line 95
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rl:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rl:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    .line 99
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rl:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    return-object p0
.end method

.method private a(Ljava/util/List;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/google/android/apps/nexuslauncher/allapps/d;
    .locals 3

    .line 338
    if-eqz p2, :cond_1

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/d;

    .line 340
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/d;->shortcutId:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    return-object v0

    .line 343
    :cond_0
    goto :goto_0

    .line 345
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bY()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bX()V

    return-void
.end method

.method private bV()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rm:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_suggested_actions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private bW()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mWorker:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bV()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 149
    return-void
.end method

.method private bX()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rn:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rh:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rn:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bY()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "ActionsController"

    const-string v2, "content provider not found"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    return-void
.end method

.method private bY()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mWorker:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 176
    return-void
.end method

.method private bZ()Ljava/util/ArrayList;
    .locals 21

    .line 215
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bV()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    return-object v1

    .line 220
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rh:Landroid/net/Uri;

    sget-object v7, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rk:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    if-nez v4, :cond_2

    .line 224
    :try_start_2
    const-string v0, "ActionsController"

    const-string v4, "no cursor"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    nop

    .line 267
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 225
    :cond_1
    return-object v1

    .line 227
    :cond_2
    :try_start_4
    new-instance v5, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v5}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 228
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 229
    :try_start_5
    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/d;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/google/android/apps/nexuslauncher/allapps/d;-><init>(B)V

    .line 230
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->ra:Ljava/lang/String;

    .line 231
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->shortcutId:Ljava/lang/String;

    .line 232
    const/4 v7, 0x3

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->rs:Ljava/lang/String;

    .line 233
    const/4 v7, 0x4

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->rt:Ljava/lang/String;

    .line 234
    const/4 v7, 0x2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->ru:J

    .line 235
    iget-wide v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->ru:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    iget-wide v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->ru:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 236
    const-string v7, "ActionsController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "shortcut expired id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->shortcutId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->ru:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    iget-object v7, v6, Lcom/google/android/apps/nexuslauncher/allapps/d;->rs:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    goto :goto_0

    .line 241
    :cond_4
    :try_start_6
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v4

    .line 242
    invoke-virtual {v5}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 244
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 245
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v11, :cond_5

    :try_start_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/nexuslauncher/allapps/d;

    .line 247
    iget-object v11, v11, Lcom/google/android/apps/nexuslauncher/allapps/d;->shortcutId:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 248
    goto :goto_2

    .line 249
    :cond_5
    nop

    .line 250
    :try_start_8
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 249
    invoke-virtual {v4, v8, v9, v10}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForFullDetails(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    .line 251
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 252
    invoke-direct {v0, v6, v9}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->a(Ljava/util/List;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/google/android/apps/nexuslauncher/allapps/d;

    move-result-object v10

    .line 253
    if-eqz v10, :cond_6

    .line 254
    new-instance v15, Lcom/android/launcher3/ShortcutInfo;

    iget-object v11, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-direct {v15, v9, v11}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 255
    invoke-virtual {v2, v9, v7, v3}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v11

    invoke-virtual {v11, v15}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 256
    new-instance v13, Lcom/google/android/apps/nexuslauncher/allapps/a;

    iget-object v11, v10, Lcom/google/android/apps/nexuslauncher/allapps/d;->ra:Ljava/lang/String;

    iget-object v12, v10, Lcom/google/android/apps/nexuslauncher/allapps/d;->shortcutId:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-wide v3, v10, Lcom/google/android/apps/nexuslauncher/allapps/d;->ru:J

    iget-object v14, v10, Lcom/google/android/apps/nexuslauncher/allapps/d;->rs:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/apps/nexuslauncher/allapps/d;->rt:Ljava/lang/String;

    move-object/from16 v16, v10

    move-object v10, v13

    move-object v7, v13

    move-object/from16 v17, v14

    move-wide v13, v3

    move-object v3, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    invoke-direct/range {v10 .. v18}, Lcom/google/android/apps/nexuslauncher/allapps/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/ShortcutInfo;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    goto :goto_4

    .line 259
    :cond_6
    move-object/from16 v19, v4

    const-string v3, "ActionsController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "shortcut details not found: shortcut="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    nop

    .line 251
    :goto_4
    move-object/from16 v4, v19

    const/4 v3, 0x0

    const/4 v7, 0x1

    goto :goto_3

    .line 262
    :cond_7
    move-object/from16 v19, v4

    .line 242
    const/4 v3, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 266
    :cond_8
    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->c(Ljava/util/ArrayList;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 267
    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    .line 269
    :cond_9
    goto :goto_7

    .line 267
    :catchall_0
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    goto :goto_5

    .line 220
    :catch_0
    move-exception v0

    move-object v3, v0

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 267
    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    :goto_5
    if-eqz v2, :cond_b

    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->close()V

    :cond_b
    :goto_6
    throw v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    .line 268
    const-string v2, "ActionsController"

    const-string v3, "error loading actions"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :goto_7
    return-object v1
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 3

    .line 310
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/a;

    .line 313
    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/a;->re:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/a;->rf:Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_1

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 316
    :cond_1
    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->ro:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    return-void
.end method

.method public static synthetic lambda$JIuyXgegkIleLcolakqthXdg-Jg(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->a(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->gg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->gg:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rq:Lcom/google/android/apps/nexuslauncher/allapps/f;

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rq:Lcom/google/android/apps/nexuslauncher/allapps/f;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->gg:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/f;->d(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 202
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "enable_action_suggest"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rj:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ActionsController"

    const-string v1, "write setting failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bZ()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1, v0, v1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 184
    goto :goto_0

    .line 198
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/e;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "timestamp"

    iget-wide v3, p1, Lcom/google/android/apps/nexuslauncher/allapps/e;->ts:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "event_type"

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/allapps/e;->rw:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "clicked_type"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "clicked_id"

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/e;->rx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "clicked_position"

    iget v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/e;->ry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "top_suggestions"

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/e;->rz:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->ri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "ActionsController"

    const-string v1, "write log failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    nop

    .line 206
    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 153
    const-string p1, "pref_show_suggested_actions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bW()V

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->bY()V

    .line 157
    :cond_0
    return-void
.end method
