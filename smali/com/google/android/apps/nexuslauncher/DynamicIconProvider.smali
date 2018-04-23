.class public Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;
.super Lcom/android/launcher3/IconProvider;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final qD:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/IconProvider;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/a;-><init>(Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->qD:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->qD:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 74
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    return-void
.end method

.method private a(Landroid/os/Bundle;Landroid/content/res/Resources;)I
    .locals 2

    .line 128
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 129
    return v0

    .line 132
    :cond_0
    const-string v1, "com.google.android.calendar.dynamic_icons_nexus_round"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 133
    if-nez p1, :cond_1

    .line 134
    return v0

    .line 138
    :cond_1
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->getDay()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 139
    :catch_0
    move-exception p1

    .line 142
    return v0
.end method

.method private getDay()I
    .locals 2

    .line 150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public final getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 80
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 81
    nop

    .line 82
    const-string v1, "com.google.android.calendar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x2080

    .line 84
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 88
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->a(Landroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    move-object v2, v0

    :cond_0
    :goto_0
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0

    .line 99
    :cond_1
    if-nez p3, :cond_2

    sget-object v0, Lcom/google/android/apps/nexuslauncher/a/c;->rW:Landroid/content/ComponentName;

    .line 100
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/apps/nexuslauncher/a/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 106
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isForceRoundIcon(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :get_round_icon

    :go_back

    if-nez v2, :cond_3

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/IconProvider;->getIcon(Landroid/content/pm/LauncherActivityInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2

    :get_round_icon

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->getRoundIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :go_back
.end method

.method public final getIconSystemState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "com.google.android.calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mSystemState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->getDay()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mSystemState:Ljava/lang/String;

    return-object p1
.end method

.method private getRoundIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconDpi"    # I

    .prologue
    const/4 v8, 0x1

    .line 75
    :try_start_0
    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/DynamicIconProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 76
    .local v5, "resourcesForApplication":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 77
    .local v0, "assets":Landroid/content/res/AssetManager;
    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 79
    .local v4, "parseXml":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextToken()I

    move-result v1

    .local v1, "eventType":I
    if-eq v1, v8, :cond_2

    .line 80
    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "application"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 82
    invoke-interface {v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "roundIcon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-interface {v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 89
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "eventType":I
    .end local v3    # "i":I
    .end local v4    # "parseXml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "resourcesForApplication":Landroid/content/res/Resources;
    :goto_1
    return-object v6

    .line 81
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    .restart local v1    # "eventType":I
    .restart local v3    # "i":I
    .restart local v4    # "parseXml":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "resourcesForApplication":Landroid/content/res/Resources;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v1    # "eventType":I
    .end local v4    # "parseXml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "resourcesForApplication":Landroid/content/res/Resources;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "getRoundIcon"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
