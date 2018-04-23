.class public Lcom/android/launcher3/InfoDropTarget;
.super Lcom/android/launcher3/UninstallDropTarget;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method private static performDropAction(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/content/ComponentName;
    .locals 3

    .line 71
    instance-of v0, p1, Lcom/android/launcher3/PromiseAppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/android/launcher3/PromiseAppInfo;

    .line 73
    invoke-virtual {p1, p0}, Lcom/android/launcher3/PromiseAppInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-object v1

    .line 76
    :cond_0
    nop

    .line 77
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_1

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/AppInfo;

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 79
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_3

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto :goto_0

    .line 86
    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 89
    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object v0

    .line 91
    :catch_0
    move-exception p1

    .line 92
    const p2, 0x7f0c0022

    const/4 p3, 0x0

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 93
    const-string p0, "InfoDropTarget"

    const-string p2, "Unable to launch settings"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_5
    return-object v1
.end method

.method public static startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;Landroid/os/Bundle;)Z
    .locals 0

    .line 62
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/InfoDropTarget;->performDropAction(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final getAccessibilityAction()I
    .locals 1

    .line 101
    const v0, 0x7f0e0007

    return v0
.end method

.method protected final performDropAction(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/InfoDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/android/launcher3/InfoDropTarget;->performDropAction(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method protected final setupUi()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010435

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/InfoDropTarget;->mHoverColor:I

    .line 49
    const v0, 0x7f020030

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setDrawable(I)V

    .line 50
    return-void
.end method

.method protected final supportsDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 4

    .line 107
    nop

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    .line 107
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    move v0, v1

    goto :goto_0

    .line 107
    :cond_0
    nop

    .line 110
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 111
    return v2

    .line 113
    :cond_1
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v0, v1, :cond_5

    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 115
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_4

    :cond_3
    instance-of p1, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz p1, :cond_5

    :cond_4
    return v1

    .line 113
    :cond_5
    return v2
.end method
