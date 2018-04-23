.class public Lcom/google/android/apps/nexuslauncher/qsb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final tA:Landroid/net/Uri;

.field private static tB:Lcom/google/android/apps/nexuslauncher/qsb/k;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerHandler:Landroid/os/Handler;

.field private final rm:Landroid/content/SharedPreferences;

.field private final tC:Landroid/database/ContentObserver;

.field private final tD:Landroid/util/ArrayMap;

.field private final tE:Landroid/content/BroadcastReceiver;

.field private final tF:Landroid/content/BroadcastReceiver;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 192
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "content://com.google.android.googlequicksearchbox.GsaPublicContentProvider/publicvalue"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tA:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    .line 90
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/l;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/l;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tE:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/m;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/m;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tF:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    .line 108
    const-string v0, "dynamic_qsb_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "qsb-experiments"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    .line 115
    const-string v0, "pixel_2017_qsb_background_color"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$mvWufLhFbPNO4vRpkLpL4hjf2Ac;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$mvWufLhFbPNO4vRpkLpL4hjf2Ac;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 116
    const-string v0, "pixel_2017_qsb_hint_text"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$tT-L66lw03IFX9kSIqdALWvilt0;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 117
    const-string v0, "pixel_2017_qsb_use_colored_g"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$XLu335UmXKFCsOfYC_Gn-ABmEck;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$XLu335UmXKFCsOfYC_Gn-ABmEck;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 118
    const-string v0, "pixel_2018_qsb_use_two_bubbles"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$VbiabZwY_jVjIevVaMNcSHTQh0g;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$VbiabZwY_jVjIevVaMNcSHTQh0g;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 119
    const-string v0, "pixel_2018_qsb_mic_stroke_width_dp"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$yN3FywF18FiTQwXyChSHpe0xQgY;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$yN3FywF18FiTQwXyChSHpe0xQgY;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 120
    const-string v0, "pixel_2018_qsb_mic_opacity"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$FhZIQ67En18oInfzwDPmZ-SgXxE;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$FhZIQ67En18oInfzwDPmZ-SgXxE;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 121
    const-string v0, "qsb.superg.animation"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$y_mDVLz-vYLWQ2pj-TCvy5dcsII;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/-$$Lambda$k$y_mDVLz-vYLWQ2pj-TCvy5dcsII;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 123
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/n;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/n;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tC:Landroid/database/ContentObserver;

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tE:Landroid/content/BroadcastReceiver;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/c/c;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tF:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 137
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mWorkerHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 138
    return-void
.end method

.method private a(Landroid/database/Cursor;I)I
    .locals 3

    .line 320
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->j(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 322
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v0, "QsbUiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return p2
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/k;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cC()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/net/Uri;)V
    .locals 7

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, p0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_4
    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p0

    const-string p0, "QsbUiManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error fetching update: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/qsb/k;->tA:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private a(Landroid/database/Cursor;)Z
    .locals 2

    .line 213
    const v0, -0x66050506

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Landroid/database/Cursor;I)I

    move-result p1

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->getBackgroundColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2017_qsb_background_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    const/4 p1, 0x1

    return p1

    .line 218
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/k;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/qsb/k;)Landroid/content/SharedPreferences;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private b(Landroid/database/Cursor;)Z
    .locals 0

    .line 229
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->j(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/qsb/k;)Landroid/os/Handler;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/database/Cursor;)Z
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Landroid/database/Cursor;)Z

    move-result p1

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cH()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2017_qsb_use_colored_g"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    const/4 p1, 0x1

    return p1

    .line 279
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private cC()V
    .locals 13

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tC:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 164
    const/16 v1, 0xc9

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_0

    .line 165
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    .line 166
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tC:Landroid/database/ContentObserver;

    .line 165
    invoke-virtual {v0, v5, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 175
    :cond_0
    goto :goto_1

    .line 168
    :catch_0
    move-exception v4

    .line 169
    const-string v4, "QsbUiManager"

    const-string v5, "Unable to register for configuration changes, UI changes will be reset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    return-void

    .line 177
    :cond_1
    :goto_1
    :try_start_1
    sget-object v4, Lcom/google/android/apps/nexuslauncher/qsb/k;->tA:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 179
    :try_start_2
    const-string v1, "QsbUiManager"

    const-string v2, "Unable to get content provider client, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    if-eqz v0, :cond_2

    :try_start_3
    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 180
    :cond_2
    return-void

    .line 192
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 177
    :catch_1
    move-exception v1

    move-object v4, v1

    goto :goto_3

    .line 182
    :cond_3
    nop

    .line 183
    :try_start_4
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v3

    move v11, v2

    move v2, v5

    :goto_2
    if-ltz v2, :cond_5

    .line 184
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/util/function/Predicate;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tD:Landroid/util/ArrayMap;

    .line 185
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 184
    invoke-interface {v12, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 186
    nop

    .line 183
    move v11, v3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 189
    :cond_5
    if-eqz v11, :cond_6

    .line 190
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    :cond_6
    if-eqz v0, :cond_7

    :try_start_5
    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    .line 194
    :cond_7
    return-void

    .line 177
    :goto_3
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    :goto_4
    if-eqz v0, :cond_8

    :try_start_7
    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    .line 193
    const-string v1, "QsbUiManager"

    const-string v2, "Error getting client "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    return-void
.end method

.method private d(Landroid/database/Cursor;)Z
    .locals 2

    .line 283
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Landroid/database/Cursor;)Z

    move-result p1

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cG()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2018_qsb_use_two_bubbles"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 286
    const/4 p1, 0x1

    return p1

    .line 288
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroid/database/Cursor;)Z
    .locals 2

    .line 292
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->g(Landroid/database/Cursor;)F

    move-result p1

    .line 293
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cE()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2018_qsb_mic_stroke_width_dp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 295
    const/4 p1, 0x1

    return p1

    .line 297
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private f(Landroid/database/Cursor;)Z
    .locals 2

    .line 301
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Landroid/database/Cursor;I)I

    move-result p1

    .line 302
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cD()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pixel_2018_qsb_mic_opacity"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    const/4 p1, 0x1

    return p1

    .line 306
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private g(Landroid/database/Cursor;)F
    .locals 3

    .line 310
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->j(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 312
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v0, "QsbUiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid float value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 p1, 0x0

    return p1
.end method

.method public static h(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/k;
    .locals 1

    .line 75
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tB:Lcom/google/android/apps/nexuslauncher/qsb/k;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tB:Lcom/google/android/apps/nexuslauncher/qsb/k;

    .line 79
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->tB:Lcom/google/android/apps/nexuslauncher/qsb/k;

    return-object p0
.end method

.method private h(Landroid/database/Cursor;)Z
    .locals 3

    .line 330
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->j(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 332
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const-string v0, "QsbUiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid boolean value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 p1, 0x0

    return p1
.end method

.method private h(Ljava/lang/String;)Z
    .locals 6

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cF()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pixel_2017_qsb_hint_text"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pixel_2017_qsb_hint_text_value"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 241
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    const-string v4, "string"

    const-string v5, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 243
    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 245
    :goto_0
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pixel_2017_qsb_hint_text"

    .line 246
    invoke-interface {v4, v5, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pixel_2017_qsb_hint_text_value"

    .line 247
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 248
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v3

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v0, "QsbUiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading hint text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v3
.end method

.method private i(Ljava/lang/String;)La/a/a/a/a/a/c;
    .locals 4

    .line 382
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 383
    return-object v0

    .line 386
    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 387
    new-instance v2, La/a/a/a/a/a/c;

    invoke-direct {v2}, La/a/a/a/a/a/c;-><init>()V

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/g;->mergeFrom(Lcom/google/protobuf/nano/g;[B)Lcom/google/protobuf/nano/g;

    move-result-object v1

    check-cast v1, La/a/a/a/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 388
    :catch_0
    move-exception v1

    .line 389
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "qsb.superg.animation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    const-string v1, "QsbUiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Doodle proto: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-object v0
.end method

.method private i(Landroid/database/Cursor;)Z
    .locals 3

    .line 396
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->j(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v1, "qsb.superg.animation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "qsb.superg.animation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 400
    const/4 p1, 0x1

    return p1

    .line 402
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static j(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 406
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 407
    return-object v0

    .line 411
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v1, :cond_1

    .line 412
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 414
    :cond_1
    :try_start_1
    const-string v1, "value"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    if-gez v1, :cond_2

    .line 416
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 418
    :cond_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 419
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 421
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 419
    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static synthetic lambda$FhZIQ67En18oInfzwDPmZ-SgXxE(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->f(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VbiabZwY_jVjIevVaMNcSHTQh0g(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->d(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XLu335UmXKFCsOfYC_Gn-ABmEck(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->c(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mvWufLhFbPNO4vRpkLpL4hjf2Ac(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tT-L66lw03IFX9kSIqdALWvilt0(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->b(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$yN3FywF18FiTQwXyChSHpe0xQgY(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->e(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$y_mDVLz-vYLWQ2pj-TCvy5dcsII(Lcom/google/android/apps/nexuslauncher/qsb/k;Landroid/database/Cursor;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->i(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/qsb/o;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-void
.end method

.method public final b(Lcom/google/android/apps/nexuslauncher/qsb/o;)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public final cD()I
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->getBackgroundColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v2, "pixel_2018_qsb_mic_opacity"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    if-ltz v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final cE()F
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2018_qsb_mic_stroke_width_dp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final cF()Ljava/lang/String;
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2017_qsb_hint_text_value"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final cG()Z
    .locals 3

    .line 343
    # iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;
    #
    # const-string v1, "pixel_2018_qsb_use_two_bubbles"
    #
    # const/4 v2, 0x0
    #
    # invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->twoBubblesQsb(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final cH()Z
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2017_qsb_use_colored_g"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final cI()Landroid/graphics/Bitmap;
    .locals 5

    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cJ()La/a/a/a/a/a/c;

    move-result-object v0

    .line 355
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 356
    return-object v1

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 360
    :try_start_0
    iget-object v0, v0, La/a/a/a/a/a/c;->abu:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 362
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v3, :cond_1

    .line 363
    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 366
    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 368
    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 369
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    nop

    .line 371
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    :cond_2
    return-object v2

    .line 371
    :catchall_0
    move-exception v2

    move-object v3, v1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v3, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 372
    const-string v2, "QsbUiManager"

    const-string v3, "Could not retrieve Doodle spritesheet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    return-object v1
.end method

.method public final cJ()La/a/a/a/a/a/c;
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v1, "qsb.superg.animation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->i(Ljava/lang/String;)La/a/a/a/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundColor()I
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->rm:Landroid/content/SharedPreferences;

    const-string v1, "pixel_2017_qsb_background_color"

    const v2, -0x66050506

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 146
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_0

    .line 157
    const/4 p1, 0x0

    return p1

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/k;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/o;

    .line 153
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/qsb/o;->cs()V

    .line 154
    goto :goto_0

    .line 155
    :cond_1
    return v1

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cC()V

    .line 149
    return v1
.end method
