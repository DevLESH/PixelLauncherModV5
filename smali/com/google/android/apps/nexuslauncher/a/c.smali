.class public Lcom/google/android/apps/nexuslauncher/a/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final rW:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field public final rX:Ljava/util/Set;

.field public rY:Lcom/google/android/apps/nexuslauncher/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.deskclock"

    const-string v2, "com.android.deskclock.DeskClock"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/a/c;->rW:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 72
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->rX:Ljava/util/Set;

    .line 70
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->rY:Lcom/google/android/apps/nexuslauncher/a/a;

    .line 73
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    const-string v1, "com.google.android.deskclock"

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/c/c;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    new-instance v1, Lcom/google/android/apps/nexuslauncher/a/d;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/a/d;-><init>(Lcom/google/android/apps/nexuslauncher/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/e;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/a/e;-><init>(Lcom/google/android/apps/nexuslauncher/a/c;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Handler;

    .line 97
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/a/c;->a(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/a;->cg()Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object p0

    .line 143
    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/a;->ci()Z

    .line 145
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 147
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/a/a;
    .locals 7

    .line 153
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/a/a;-><init>()V

    .line 156
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 157
    const-string v3, "com.google.android.deskclock"

    const/16 v4, 0x2080

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 159
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 160
    if-nez v4, :cond_0

    .line 161
    return-object v0

    .line 163
    :cond_0
    const-string v5, "com.google.android.apps.nexuslauncher.LEVEL_PER_TICK_ICON_ROUND"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 164
    if-nez v5, :cond_1

    .line 165
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    .line 171
    const-string p1, "com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX"

    .line 172
    const/4 v2, -0x1

    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    .line 173
    const-string p1, "com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX"

    .line 174
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    .line 175
    const-string p1, "com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX"

    .line 176
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    .line 178
    const-string p1, "com.google.android.apps.nexuslauncher.DEFAULT_HOUR"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rQ:I

    .line 179
    const-string p1, "com.google.android.apps.nexuslauncher.DEFAULT_MINUTE"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rR:I

    .line 180
    const-string p1, "com.google.android.apps.nexuslauncher.DEFAULT_SECOND"

    invoke-virtual {v4, p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rS:I

    .line 182
    if-eqz p2, :cond_2

    .line 183
    invoke-static {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object p1

    iget-object p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, v1, v1, v1}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->scale:F

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 188
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/a;->ch()Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p1

    .line 190
    iget p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    if-ltz p2, :cond_3

    iget p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    if-lt p2, p1, :cond_4

    .line 191
    :cond_3
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    .line 193
    :cond_4
    iget p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    if-ltz p2, :cond_5

    iget p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    if-lt p2, p1, :cond_6

    .line 194
    :cond_5
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    .line 196
    :cond_6
    iget p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    if-ltz p2, :cond_8

    iget p2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    if-lt p2, p1, :cond_7

    goto :goto_0

    .line 199
    :cond_7
    iget p1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 200
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    .line 204
    goto :goto_1

    .line 197
    :cond_8
    :goto_0
    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception p0

    .line 203
    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    .line 205
    :goto_1
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/a/c;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/a/c;->ck()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/a/c;Lcom/google/android/apps/nexuslauncher/a/a;)V
    .locals 3

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->rY:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->rX:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/a/b;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->rY:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/a/a;->cg()Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/b;->invalidateSelf()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/a/c;Ljava/lang/String;)V
    .locals 2

    .line 37
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->rX:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/a/b;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/b;->invalidateSelf()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private ck()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/c;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 116
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/a/c;->a(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object v0

    .line 118
    new-instance v1, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v1}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/a/f;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/nexuslauncher/a/f;-><init>(Lcom/google/android/apps/nexuslauncher/a/c;Lcom/google/android/apps/nexuslauncher/a/a;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/a/c;->ck()V

    .line 103
    return-void
.end method
