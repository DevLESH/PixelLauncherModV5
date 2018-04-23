.class public Lcom/android/launcher3/popup/SystemShortcut$Install;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 96
    const v0, 0x7f020031

    const v1, 0x7f0c003b

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 97
    return-void
.end method

.method static synthetic lambda$createOnClickListener$0(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 2

    .line 118
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 121
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 122
    return-void
.end method


# virtual methods
.method public final getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 5

    .line 102
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    const/16 v3, 0x10

    .line 103
    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    move v0, v1

    goto :goto_0

    .line 103
    :cond_0
    nop

    .line 104
    move v0, v2

    .line 105
    :goto_0
    instance-of v3, p2, Lcom/android/launcher3/AppInfo;

    if-eqz v3, :cond_1

    .line 106
    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/AppInfo;

    .line 107
    invoke-static {p1}, Lcom/android/launcher3/util/InstantAppResolver;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/InstantAppResolver;->isInstantApp(Lcom/android/launcher3/AppInfo;)Z

    move-result v3

    goto :goto_1

    .line 109
    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    move v1, v2

    goto :goto_3

    .line 109
    :cond_3
    :goto_2
    nop

    .line 110
    :goto_3
    if-nez v1, :cond_4

    .line 111
    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_4
    new-instance v0, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;

    invoke-direct {v0, p2, p1}, Lcom/android/launcher3/popup/-$$Lambda$SystemShortcut$Install$tN7OZPjUGcRskhEf0uU2OTZ90CU;-><init>(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;)V

    return-object v0
.end method
