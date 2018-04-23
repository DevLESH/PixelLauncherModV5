.class public Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;
.super Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;
.source "SourceFile"


# instance fields
.field private mRegistered:Z

.field private sp:Landroid/icu/text/DateFormat;

.field private final sq:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Lcom/google/android/apps/nexuslauncher/graphics/a;

    invoke-direct {p1, p0}, Lcom/google/android/apps/nexuslauncher/graphics/a;-><init>(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sq:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->m(Z)V

    return-void
.end method

.method private m(Z)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sp:Landroid/icu/text/DateFormat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 69
    :cond_0
    nop

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c00a7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sp:Landroid/icu/text/DateFormat;

    .line 72
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sp:Landroid/icu/text/DateFormat;

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sp:Landroid/icu/text/DateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onVisibilityAggregated(Z)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->onVisibilityAggregated(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->m(Z)V

    return-void

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->sq:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->mRegistered:Z

    .line 53
    :cond_1
    return-void
.end method
