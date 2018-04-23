.class public Lcom/android/launcher3/model/LoaderTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private final mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mIconCache:Lcom/android/launcher3/IconCache;

.field private final mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

.field private final mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

.field private final mResults:Lcom/android/launcher3/model/LoaderResults;

.field private final mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

.field private mStopped:Z

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/LoaderResults;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 112
    iput-object p2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 113
    iput-object p3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 114
    iput-object p4, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 118
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 119
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/PackageInstallerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    .line 120
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 121
    iget-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object p1, p1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 122
    return-void
.end method

.method public static isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    .line 846
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 847
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 846
    return p0
.end method

.method private loadAllApps()V
    .locals 10

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    iget-object v2, v1, Lcom/android/launcher3/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lcom/android/launcher3/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v1, Lcom/android/launcher3/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 800
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 802
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 805
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 808
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    .line 810
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 811
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    .line 813
    iget-object v7, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v8, Lcom/android/launcher3/AppInfo;

    invoke-direct {v8, v6, v1, v4}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/AllAppsList;->add(Lcom/android/launcher3/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    .line 810
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 816
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v4, v4, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    invoke-direct {v5, v4, v1, v3}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/launcher3/model/BgDataModel;)V

    iget-boolean v1, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->addIconToFolderTime:J

    cmp-long v3, v6, v8

    if-gez v3, :cond_3

    invoke-static {v2, v4}, Lcom/android/launcher3/InstallShortcutReceiver;->queueActivityInfo(Landroid/content/pm/LauncherActivityInfo;Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;

    invoke-direct {v2, v4}, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    :cond_5
    goto/16 :goto_0

    .line 806
    :cond_6
    :goto_3
    return-void

    .line 828
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgAllAppsList:Lcom/android/launcher3/AllAppsList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/launcher3/AllAppsList;->added:Ljava/util/ArrayList;

    .line 829
    return-void
.end method

.method private loadDeepShortcuts()V
    .locals 5

    .line 832
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiHashMap;->clear()V

    .line 833
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->hasHostPermission()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/model/BgDataModel;->hasShortcutHostPermission:Z

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-boolean v0, v0, Lcom/android/launcher3/model/BgDataModel;->hasShortcutHostPermission:Z

    if-eqz v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 836
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 838
    invoke-virtual {v2, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForAllShortcuts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 839
    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->updateDeepShortcutMap(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V

    .line 841
    :cond_0
    goto :goto_0

    .line 843
    :cond_1
    return-void
.end method

.method private loadWorkspace()V
    .locals 46

    .line 225
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 226
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 227
    new-instance v10, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v10, v2}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 228
    iget-object v0, v10, Lcom/android/launcher3/util/PackageManagerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v11

    .line 229
    invoke-static {}, Lcom/android/launcher3/Utilities;->isBootCompleted()Z

    move-result v12

    .line 230
    new-instance v13, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v13}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    .line 232
    nop

    .line 234
    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "data_import_src_pkg"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "data_import_src_authority"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "data_import_src_pkg"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "data_import_src_authority"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "get_empty_db_flag"

    invoke-static {v0, v5}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "value"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v14, v5, v8}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ProviderInfo;

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v15

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_5

    :cond_1
    new-instance v0, Lcom/android/launcher3/provider/ImportDataTask;

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/provider/ImportDataTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    iget-object v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherScreensUri:Landroid/net/Uri;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "screenRank"

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/provider/LauncherDbUtils;->getScreenIdsFromCursor(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "ImportDataTask"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Importing DB from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/launcher3/provider/ImportDataTask;->mOtherFavoritesUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "ImportDataTask"

    const-string v3, "No data found to import"

    invoke-static {v0, v3}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_2
    :goto_1
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v13

    goto/16 :goto_4

    .line 234
    :cond_3
    iput v8, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeY:I

    iput v8, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeX:I

    iput v8, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    move v7, v8

    :goto_2
    if-ge v7, v5, :cond_4

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "_id"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "screenRank"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v15, v8, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v23, v13

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v24, v10

    move/from16 v25, v11

    int-to-long v10, v7

    :try_start_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v13, v14, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    sget-object v8, Lcom/android/launcher3/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_2

    .line 235
    :catch_0
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v13

    goto :goto_3

    .line 234
    :cond_4
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v13

    iget-object v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/launcher3/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/launcher3/provider/ImportDataTask;->importWorkspaceItems(JLandroid/util/LongSparseArray;)V

    iget-object v3, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeX:I

    iget v5, v0, Lcom/android/launcher3/provider/ImportDataTask;->mMaxGridSizeY:I

    iget v6, v0, Lcom/android/launcher3/provider/ImportDataTask;->mHotseatSize:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher3/model/GridSizeMigrationTask;->markForMigration(Landroid/content/Context;III)V

    iget-object v0, v0, Lcom/android/launcher3/provider/ImportDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "clear_empty_db_flag"

    invoke-static {v0, v3}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 235
    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_3
    const/4 v8, 0x0

    goto :goto_5

    .line 234
    :cond_5
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 238
    :cond_6
    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v13

    .line 240
    :goto_4
    move v15, v8

    goto :goto_6

    .line 235
    :catch_4
    move-exception v0

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v23, v13

    .line 237
    :goto_5
    nop

    .line 240
    const/4 v15, 0x1

    :goto_6
    if-nez v15, :cond_7

    sget-boolean v0, Lcom/android/launcher3/model/GridSizeMigrationTask;->ENABLED:Z

    if-eqz v0, :cond_7

    .line 241
    invoke-static {v2}, Lcom/android/launcher3/model/GridSizeMigrationTask;->migrateGridIfNeeded(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    nop

    .line 246
    const/4 v15, 0x1

    :cond_7
    if-eqz v15, :cond_8

    .line 247
    const-string v0, "LoaderTask"

    const-string v3, "loadWorkspace: resetting launcher database"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v0, "create_empty_db"

    invoke-static {v9, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 252
    :cond_8
    const-string v0, "LoaderTask"

    const-string v3, "loadWorkspace: loading default favorites"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "load_default_favorites"

    invoke-static {v9, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 256
    iget-object v10, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v10

    .line 257
    :try_start_5
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 259
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mPackageInstaller:Lcom/android/launcher3/compat/PackageInstallerCompat;

    .line 260
    invoke-virtual {v0}, Lcom/android/launcher3/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v11

    .line 261
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/launcher3/LauncherModel;->loadWorkspaceScreensDb(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 263
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 264
    new-instance v14, Lcom/android/launcher3/model/LoaderCursor;

    sget-object v4, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object v3, v9

    move v15, v8

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {v14, v0, v3}, Lcom/android/launcher3/model/LoaderCursor;-><init>(Landroid/database/Cursor;Lcom/android/launcher3/LauncherAppState;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 267
    nop

    .line 270
    :try_start_6
    const-string v0, "appWidgetId"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 272
    const-string v0, "appWidgetProvider"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 274
    const-string v0, "spanX"

    .line 275
    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 276
    const-string v0, "spanY"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 278
    const-string v0, "rank"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 280
    const-string v0, "options"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 283
    iget-object v0, v14, Lcom/android/launcher3/model/LoaderCursor;->allUsers:Landroid/util/LongSparseArray;

    .line 284
    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    .line 285
    move-object/from16 v26, v9

    new-instance v9, Landroid/util/LongSparseArray;

    invoke-direct {v9}, Landroid/util/LongSparseArray;-><init>()V

    .line 286
    move-object/from16 v27, v2

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v28, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/os/UserHandle;

    .line 287
    move/from16 v29, v7

    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    move/from16 v30, v8

    invoke-virtual {v7, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    .line 288
    invoke-virtual {v0, v7, v8, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 289
    move-object/from16 v31, v0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v7, v8, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 291
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    .line 294
    if-eqz v0, :cond_a

    .line 295
    move/from16 v32, v0

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    .line 296
    move/from16 v33, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v2}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 297
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    iget-boolean v2, v2, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    if-eqz v2, :cond_9

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 299
    invoke-static {v2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromInfo(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v12

    invoke-interface {v13, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    goto :goto_8

    .line 306
    :cond_9
    nop

    .line 309
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    move/from16 v32, v0

    move/from16 v33, v12

    :cond_b
    move/from16 v0, v32

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v7, v8, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 310
    nop

    .line 286
    move-object/from16 v2, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move-object/from16 v0, v31

    move/from16 v12, v33

    goto :goto_7

    .line 317
    :cond_c
    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v33, v12

    new-instance v2, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 318
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v2, v0}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 319
    const/4 v7, 0x0

    :goto_a
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v0, :cond_3c

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_3c

    .line 321
    :try_start_7
    iget-object v0, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_28
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_d

    .line 323
    :try_start_8
    const-string v0, "User has been deleted"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 324
    nop

    .line 319
    move-object/from16 v45, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v36, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v10

    move-object v5, v13

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    :goto_b
    const/16 v22, 0x1

    goto/16 :goto_33

    .line 681
    :catch_5
    move-exception v0

    move-object/from16 v45, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v42, v5

    move/from16 v43, v6

    goto/16 :goto_39

    .line 327
    :cond_d
    nop

    .line 328
    :try_start_9
    iget v0, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_28
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    packed-switch v0, :pswitch_data_0

    .line 683
    :pswitch_0
    move-object/from16 v45, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v36, v7

    move-object/from16 v44, v9

    move-object/from16 v40, v10

    move-object v5, v13

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    :goto_c
    const/16 v22, 0x1

    goto/16 :goto_38

    .line 566
    :pswitch_1
    :try_start_a
    iget v0, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v12, 0x5

    if-ne v0, v12, :cond_e

    .line 569
    const/4 v0, 0x1

    goto :goto_d

    .line 566
    :cond_e
    nop

    .line 569
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v14, v3}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v12

    .line 570
    invoke-virtual {v14, v4}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 572
    nop

    .line 573
    move/from16 v34, v3

    :try_start_b
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 575
    move/from16 v35, v4

    const/4 v4, 0x1

    :try_start_c
    invoke-virtual {v14, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v16
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 577
    xor-int/lit8 v16, v16, 0x1

    const/4 v4, 0x2

    :try_start_d
    invoke-virtual {v14, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 580
    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    if-nez v7, :cond_f

    .line 581
    move-object/from16 v36, v7

    :try_start_e
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {v7}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getAllProvidersMap()Ljava/util/HashMap;

    move-result-object v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_f

    .line 681
    :catch_6
    move-exception v0

    move-object/from16 v45, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v44, v9

    move-object/from16 v40, v10

    move-object v5, v13

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    :goto_e
    move-object/from16 v7, v36

    goto/16 :goto_3b

    .line 583
    :cond_f
    move-object/from16 v36, v7

    :goto_f
    move-object/from16 v37, v13

    :try_start_f
    new-instance v13, Lcom/android/launcher3/util/ComponentKey;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 585
    move-object/from16 v38, v9

    :try_start_10
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-object/from16 v39, v2

    :try_start_11
    iget-object v2, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-direct {v13, v9, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 583
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 588
    invoke-static {v2}, Lcom/android/launcher3/model/LoaderTask;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v9
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 589
    if-nez v25, :cond_10

    if-nez v0, :cond_10

    if-eqz v4, :cond_10

    if-nez v9, :cond_10

    .line 591
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Deleting widget that isn\'t installed anymore: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 319
    move-object/from16 v40, v10

    goto/16 :goto_13

    .line 595
    :cond_10
    if-eqz v9, :cond_12

    .line 596
    new-instance v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v3, v12, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 602
    iget v2, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    and-int/lit8 v2, v2, -0x9

    and-int/lit8 v2, v2, -0x3

    .line 605
    if-nez v4, :cond_11

    .line 610
    if-eqz v16, :cond_11

    .line 611
    or-int/lit8 v2, v2, 0x4

    .line 614
    :cond_11
    iput v2, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 615
    nop

    .line 638
    move-object v2, v3

    move-object/from16 v40, v10

    goto/16 :goto_12

    .line 681
    :catch_7
    move-exception v0

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v40, v10

    goto/16 :goto_15

    .line 616
    :cond_12
    :try_start_13
    const-string v2, "LoaderTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Widget restore pending id="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object/from16 v40, v10

    :try_start_14
    iget-wide v9, v14, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " appWidgetId="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " status ="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v2, v12, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 621
    iget v4, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    iput v4, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 622
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 624
    const/16 v9, 0x8

    invoke-virtual {v14, v9}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-nez v10, :cond_14

    .line 626
    if-eqz v4, :cond_13

    .line 628
    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v3, v9

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_10

    .line 630
    :cond_13
    if-nez v25, :cond_14

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrestored widget removed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 632
    goto :goto_13

    .line 635
    :cond_14
    :goto_10
    nop

    .line 636
    if-nez v4, :cond_15

    const/4 v3, 0x0

    goto :goto_11

    :cond_15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_11
    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 638
    :goto_12
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 640
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 643
    :cond_16
    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 644
    invoke-virtual {v14, v5}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 645
    invoke-virtual {v14, v6}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 646
    iget-object v3, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    iput-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 648
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v3

    if-nez v3, :cond_17

    .line 649
    const-string v0, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 651
    nop

    .line 319
    :goto_13
    move/from16 v3, v34

    move/from16 v4, v35

    move-object/from16 v13, v37

    move-object/from16 v9, v38

    move-object/from16 v2, v39

    move-object/from16 v10, v40

    goto/16 :goto_a

    .line 654
    :cond_17
    if-nez v0, :cond_19

    .line 655
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 656
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 657
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    iget v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    iget v4, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eq v3, v4, :cond_19

    .line 659
    :cond_18
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v3

    const-string v4, "appWidgetProvider"

    .line 660
    invoke-virtual {v3, v4, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    const-string v3, "restored"

    iget v4, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 663
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 662
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 668
    :cond_19
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_1a

    .line 670
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 671
    new-instance v3, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-direct {v3, v0}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    .line 672
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iput-object v3, v0, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 673
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    iget-object v3, v2, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Lcom/android/launcher3/model/PackageItemInfo;Z)V

    .line 677
    :cond_1a
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v14, v2, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 683
    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    goto/16 :goto_c

    .line 681
    :catch_8
    move-exception v0

    goto :goto_14

    :catch_9
    move-exception v0

    move-object/from16 v40, v10

    :goto_14
    move/from16 v42, v5

    move/from16 v43, v6

    :goto_15
    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    move-object/from16 v40, v10

    move-object/from16 v45, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    :goto_16
    move-object/from16 v5, v37

    move-object/from16 v44, v38

    goto/16 :goto_3b

    :catch_b
    move-exception v0

    move-object/from16 v40, v10

    move-object/from16 v45, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v44, v9

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    move-object/from16 v5, v37

    goto/16 :goto_3b

    :catch_c
    move-exception v0

    goto :goto_18

    :catch_d
    move-exception v0

    move-object/from16 v36, v7

    move-object/from16 v40, v10

    move-object/from16 v45, v2

    move/from16 v22, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v44, v9

    move-object v5, v13

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    goto/16 :goto_3c

    :catch_e
    move-exception v0

    goto :goto_17

    :catch_f
    move-exception v0

    move/from16 v34, v3

    :goto_17
    move/from16 v35, v4

    :goto_18
    move-object/from16 v36, v7

    move-object/from16 v40, v10

    move-object/from16 v45, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v44, v9

    goto/16 :goto_3a

    .line 543
    :pswitch_2
    move-object/from16 v39, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v38, v9

    move-object/from16 v40, v10

    move-object/from16 v37, v13

    :try_start_15
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-wide v2, v14, Lcom/android/launcher3/model/LoaderCursor;->id:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/model/BgDataModel;->findOrMakeFolder(J)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    .line 544
    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 547
    iget v2, v14, Lcom/android/launcher3/model/LoaderCursor;->titleIndex:I

    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 548
    const/4 v2, 0x1

    :try_start_16
    iput v2, v0, Lcom/android/launcher3/FolderInfo;->spanX:I

    .line 549
    iput v2, v0, Lcom/android/launcher3/FolderInfo;->spanY:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 550
    move/from16 v2, v30

    :try_start_17
    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 553
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V

    .line 555
    iget-object v3, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v14, v0, v3}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 556
    goto :goto_1b

    .line 681
    :catch_10
    move-exception v0

    move/from16 v22, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    move-object/from16 v7, v36

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    goto/16 :goto_3c

    :catch_11
    move-exception v0

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    :goto_19
    move-object/from16 v7, v36

    :goto_1a
    move-object/from16 v5, v37

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    goto/16 :goto_3b

    .line 332
    :pswitch_3
    move-object/from16 v39, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move-object/from16 v36, v7

    move-object/from16 v38, v9

    move-object/from16 v40, v10

    move-object/from16 v37, v13

    move/from16 v2, v30

    :try_start_18
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->parseIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_27
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 333
    if-nez v0, :cond_1b

    .line 334
    :try_start_19
    const-string v0, "Invalid or null intent"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 335
    nop

    .line 319
    :goto_1b
    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    :goto_1c
    move-object/from16 v6, v27

    move/from16 v8, v29

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    goto/16 :goto_b

    .line 681
    :catch_12
    move-exception v0

    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    :goto_1d
    move-object/from16 v6, v27

    move/from16 v8, v29

    goto :goto_19

    .line 338
    :cond_1b
    :try_start_1a
    iget-wide v3, v14, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J

    invoke-virtual {v15, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 339
    nop

    .line 340
    const/16 v3, 0x8

    goto :goto_1e

    .line 339
    :cond_1c
    nop

    .line 340
    const/4 v3, 0x0

    :goto_1e
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_27
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 341
    if-nez v4, :cond_1d

    :try_start_1b
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_12
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_1f

    :cond_1d
    :try_start_1c
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 343
    :goto_1f
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v9, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_27
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-nez v8, :cond_1f

    .line 344
    :try_start_1d
    iget v8, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    .line 345
    const-string v0, "Legacy shortcuts are only allowed for default user"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 346
    goto :goto_1b

    .line 347
    :cond_1e
    iget v8, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v8, :cond_1f

    .line 349
    const-string v0, "Restore from managed profile not supported"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_12
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 350
    goto :goto_1b

    .line 353
    :cond_1f
    :try_start_1e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_27
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    if-eqz v8, :cond_20

    :try_start_1f
    iget v8, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_20

    .line 355
    const-string v0, "Only legacy shortcuts can have null package"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 356
    goto :goto_1b

    .line 361
    :cond_20
    :try_start_20
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_27
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-nez v8, :cond_22

    :try_start_21
    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object v9, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 362
    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v8
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_12
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-eqz v8, :cond_21

    goto :goto_20

    .line 364
    :cond_21
    const/4 v8, 0x0

    goto :goto_21

    .line 362
    :cond_22
    :goto_20
    nop

    .line 364
    const/4 v8, 0x1

    :goto_21
    if-eqz v4, :cond_26

    if-eqz v8, :cond_26

    .line 369
    :try_start_22
    iget-object v9, v1, Lcom/android/launcher3/model/LoaderTask;->mLauncherApps:Lcom/android/launcher3/compat/LauncherAppsCompat;

    iget-object v10, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v10}, Lcom/android/launcher3/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v9
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_13
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    if-eqz v9, :cond_23

    .line 371
    :try_start_23
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_12
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    goto :goto_24

    .line 373
    :cond_23
    const/4 v0, 0x2

    :try_start_24
    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 376
    iget-object v0, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    move-object/from16 v9, v24

    :try_start_25
    invoke-virtual {v9, v7, v0}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_24

    .line 378
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 379
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v10

    const-string v12, "intent"

    .line 381
    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v13

    .line 379
    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    .line 381
    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    .line 382
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    goto :goto_25

    .line 384
    :cond_24
    const-string v0, "Unable to find a launch target"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 385
    nop

    .line 319
    :goto_22
    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    goto/16 :goto_1c

    .line 390
    :cond_25
    move-object/from16 v9, v24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid component removed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_14
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 391
    goto :goto_22

    .line 681
    :catch_13
    move-exception v0

    move-object/from16 v9, v24

    :goto_23
    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    goto/16 :goto_1d

    .line 398
    :cond_26
    :goto_24
    move-object/from16 v9, v24

    :goto_25
    :try_start_26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-nez v4, :cond_2b

    if-nez v8, :cond_2b

    .line 402
    :try_start_27
    iget v4, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_15
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    if-eqz v4, :cond_28

    .line 405
    :try_start_28
    const-string v4, "LoaderTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "package not yet restored: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Lcom/android/launcher3/model/LoaderCursor;->hasRestoreFlag(I)Z

    move-result v10

    if-nez v10, :cond_2b

    .line 409
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 411
    iget v4, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    const/16 v10, 0x8

    or-int/2addr v4, v10

    iput v4, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    .line 412
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->updater()Lcom/android/launcher3/util/ContentWriter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/ContentWriter;->commit()I

    goto/16 :goto_28

    .line 414
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unrestored app removed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 415
    goto :goto_22

    .line 681
    :catch_14
    move-exception v0

    goto :goto_23

    .line 417
    :cond_28
    :try_start_29
    iget-object v4, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-virtual {v9, v7, v4}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppOnSdcard(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 419
    or-int/lit8 v3, v3, 0x2

    .line 421
    nop

    .line 436
    move v4, v3

    move-object/from16 v10, v23

    :goto_26
    const/4 v3, 0x1

    goto :goto_29

    .line 422
    :cond_29
    if-nez v33, :cond_2a

    .line 425
    const-string v4, "LoaderTask"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Missing pkg, will check later: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v4, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_15
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    move-object/from16 v10, v23

    :try_start_2a
    invoke-virtual {v10, v4, v7}, Lcom/android/launcher3/util/MultiHashMap;->addToList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    nop

    .line 436
    move v4, v3

    goto :goto_26

    .line 431
    :cond_2a
    move-object/from16 v10, v23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid package removed: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_16
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 432
    nop

    .line 319
    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    goto/16 :goto_1c

    .line 681
    :catch_15
    move-exception v0

    move-object/from16 v10, v23

    :goto_27
    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    goto/16 :goto_1d

    .line 436
    :cond_2b
    :goto_28
    move-object/from16 v10, v23

    move v4, v3

    const/4 v3, 0x0

    :goto_29
    :try_start_2b
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_25
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_2c

    .line 437
    nop

    .line 440
    const/4 v8, 0x0

    :cond_2c
    if-eqz v8, :cond_2d

    .line 443
    :try_start_2c
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->markRestored()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_16
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto :goto_2a

    .line 681
    :catch_16
    move-exception v0

    goto :goto_27

    .line 446
    :cond_2d
    :goto_2a
    :try_start_2d
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->isOnWorkspaceOrHotseat()Z

    move-result v8
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_25
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    if-nez v8, :cond_2e

    .line 447
    move/from16 v8, v29

    :try_start_2e
    invoke-virtual {v14, v8}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v12
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_18
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    move/from16 v41, v2

    move-object/from16 v13, v39

    const/4 v2, 0x0

    :try_start_2f
    invoke-virtual {v13, v2, v12}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v12
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_17
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    if-nez v12, :cond_2f

    .line 449
    const/4 v2, 0x1

    goto :goto_2b

    .line 681
    :catch_17
    move-exception v0

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v7, v36

    goto/16 :goto_16

    :catch_18
    move-exception v0

    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v6, v27

    goto/16 :goto_19

    .line 447
    :cond_2e
    move/from16 v41, v2

    move/from16 v8, v29

    move-object/from16 v13, v39

    .line 449
    :cond_2f
    const/4 v2, 0x0

    :goto_2b
    :try_start_30
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_24
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    if-eqz v12, :cond_30

    .line 451
    :try_start_31
    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->getRestoredItemInfo(Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_17
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    .line 515
    :goto_2c
    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    goto/16 :goto_30

    .line 452
    :cond_30
    :try_start_32
    iget v12, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_24
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    if-nez v12, :cond_31

    .line 454
    :try_start_33
    invoke-virtual {v14, v0, v3, v2}, Lcom/android/launcher3/model/LoaderCursor;->getAppShortcutInfo(Landroid/content/Intent;ZZ)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_17
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    goto :goto_2c

    .line 456
    :cond_31
    :try_start_34
    iget v2, v14, Lcom/android/launcher3/model/LoaderCursor;->itemType:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_24
    .catchall {:try_start_34 .. :try_end_34} :catchall_0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_35

    .line 459
    :try_start_35
    iget-object v2, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    invoke-static {v0, v2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v2
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1f
    .catchall {:try_start_35 .. :try_end_35} :catchall_0

    .line 460
    move/from16 v42, v5

    move/from16 v43, v6

    :try_start_36
    iget-wide v5, v14, Lcom/android/launcher3/model/LoaderCursor;->serialNumber:J
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_1e
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    move-object/from16 v3, v38

    :try_start_37
    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1d
    .catchall {:try_start_37 .. :try_end_37} :catchall_0

    if-eqz v5, :cond_34

    .line 461
    nop

    .line 462
    move-object/from16 v5, v37

    :try_start_38
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 463
    if-nez v0, :cond_32

    .line 465
    const-string v0, "Pinned shortcut not found"

    invoke-virtual {v14, v0}, Lcom/android/launcher3/model/LoaderCursor;->markDeleted(Ljava/lang/String;)V

    .line 466
    nop

    .line 319
    move-object/from16 v44, v3

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    goto/16 :goto_b

    .line 468
    :cond_32
    new-instance v2, Lcom/android/launcher3/ShortcutInfo;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1c
    .catchall {:try_start_38 .. :try_end_38} :catchall_0

    move-object/from16 v6, v27

    :try_start_39
    invoke-direct {v2, v0, v6}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 469
    nop

    .line 470
    new-instance v12, Lcom/android/launcher3/model/LoaderTask$1;

    invoke-direct {v12, v1, v14, v2}, Lcom/android/launcher3/model/LoaderTask$1;-><init>(Lcom/android/launcher3/model/LoaderTask;Lcom/android/launcher3/model/LoaderCursor;Lcom/android/launcher3/ShortcutInfo;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1b
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    .line 479
    move-object/from16 v44, v3

    :try_start_3a
    invoke-static {v6}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_1a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_0

    .line 480
    move-object/from16 v45, v13

    const/4 v13, 0x1

    :try_start_3b
    invoke-virtual {v3, v0, v13, v12}, Lcom/android/launcher3/graphics/LauncherIcons;->createShortcutIcon(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;ZLcom/android/launcher3/util/Provider;)Lcom/android/launcher3/graphics/BitmapInfo;

    move-result-object v12
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_19
    .catchall {:try_start_3b .. :try_end_3b} :catchall_0

    .line 481
    :try_start_3c
    invoke-virtual {v12, v2}, Lcom/android/launcher3/graphics/BitmapInfo;->applyTo(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 482
    invoke-virtual {v3}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 483
    nop

    .line 484
    iget-object v0, v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    .line 483
    invoke-virtual {v9, v0, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 485
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    const/4 v3, 0x4

    or-int/2addr v0, v3

    iput v0, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 487
    :cond_33
    iget-object v0, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 488
    goto/16 :goto_30

    .line 681
    :catch_19
    move-exception v0

    move/from16 v22, v13

    goto/16 :goto_37

    :catch_1a
    move-exception v0

    goto :goto_2d

    :catch_1b
    move-exception v0

    move-object/from16 v44, v3

    :goto_2d
    move-object/from16 v45, v13

    goto/16 :goto_e

    :catch_1c
    move-exception v0

    move-object/from16 v44, v3

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    goto/16 :goto_e

    .line 490
    :cond_34
    move-object/from16 v44, v3

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v5, v37

    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v2

    .line 491
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    const/16 v12, 0x20

    or-int/2addr v3, v12

    iput v3, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_20
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    .line 493
    goto/16 :goto_30

    .line 681
    :catch_1d
    move-exception v0

    move-object/from16 v44, v3

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v5, v37

    goto/16 :goto_e

    :catch_1e
    move-exception v0

    goto :goto_2e

    :catch_1f
    move-exception v0

    move/from16 v42, v5

    move/from16 v43, v6

    :goto_2e
    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    goto/16 :goto_e

    .line 494
    :cond_35
    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    :try_start_3d
    invoke-virtual {v14}, Lcom/android/launcher3/model/LoaderCursor;->loadSimpleShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v2

    .line 497
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_22
    .catchall {:try_start_3d .. :try_end_3d} :catchall_0

    if-nez v3, :cond_36

    :try_start_3e
    iget-object v3, v14, Lcom/android/launcher3/model/LoaderCursor;->user:Landroid/os/UserHandle;

    .line 498
    invoke-virtual {v9, v7, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_20
    .catchall {:try_start_3e .. :try_end_3e} :catchall_0

    if-eqz v3, :cond_36

    .line 499
    or-int/lit8 v3, v4, 0x4

    .line 505
    move v4, v3

    goto :goto_2f

    .line 681
    :catch_20
    move-exception v0

    goto/16 :goto_e

    .line 505
    :cond_36
    :goto_2f
    :try_start_3f
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_22
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    if-eqz v3, :cond_37

    .line 506
    :try_start_40
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 507
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 508
    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 509
    const/high16 v3, 0x10200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_20
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    .line 515
    :cond_37
    :goto_30
    if-eqz v2, :cond_3b

    .line 516
    :try_start_41
    invoke-virtual {v14, v2}, Lcom/android/launcher3/model/LoaderCursor;->applyCommonProperties(Lcom/android/launcher3/ItemInfo;)V

    .line 518
    iput-object v0, v2, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 519
    invoke-virtual {v14, v8}, Lcom/android/launcher3/model/LoaderCursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/ShortcutInfo;->rank:I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_22
    .catchall {:try_start_41 .. :try_end_41} :catchall_0

    .line 520
    const/4 v3, 0x1

    :try_start_42
    iput v3, v2, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 521
    iput v3, v2, Lcom/android/launcher3/ShortcutInfo;->spanY:I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_21
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    .line 522
    :try_start_43
    iget v3, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    .line 523
    if-eqz v25, :cond_38

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 524
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_22
    .catchall {:try_start_43 .. :try_end_43} :catchall_0

    const/16 v22, 0x1

    or-int/lit8 v0, v0, 0x1

    :try_start_44
    iput v0, v2, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    goto :goto_31

    .line 527
    :cond_38
    const/16 v22, 0x1

    :goto_31
    iget v0, v14, Lcom/android/launcher3/model/LoaderCursor;->restoreFlag:I

    if-eqz v0, :cond_3a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 528
    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 529
    if-eqz v0, :cond_39

    .line 530
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/ShortcutInfo;->setInstallProgress(I)V

    goto :goto_32

    .line 532
    :cond_39
    iget v0, v2, Lcom/android/launcher3/ShortcutInfo;->status:I

    and-int/lit8 v0, v0, -0x5

    iput v0, v2, Lcom/android/launcher3/ShortcutInfo;->status:I

    .line 536
    :cond_3a
    :goto_32
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v14, v2, v0}, Lcom/android/launcher3/model/LoaderCursor;->checkAndAddItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/model/BgDataModel;)V

    .line 319
    :goto_33
    move-object v13, v5

    move-object/from16 v27, v6

    move/from16 v29, v8

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    move/from16 v3, v34

    move/from16 v4, v35

    move-object/from16 v7, v36

    :goto_34
    move-object/from16 v10, v40

    move/from16 v30, v41

    move/from16 v5, v42

    move/from16 v6, v43

    move-object/from16 v9, v44

    move-object/from16 v2, v45

    goto/16 :goto_a

    .line 681
    :catch_21
    move-exception v0

    move/from16 v22, v3

    goto :goto_37

    :catch_22
    move-exception v0

    goto :goto_36

    .line 538
    :cond_3b
    const/16 v22, 0x1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected null ShortcutInfo"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_23
    .catchall {:try_start_44 .. :try_end_44} :catchall_0

    .line 681
    :catch_23
    move-exception v0

    goto :goto_37

    :catch_24
    move-exception v0

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v45, v13

    move-object/from16 v6, v27

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    goto :goto_36

    :catch_25
    move-exception v0

    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    goto :goto_35

    :catch_26
    move-exception v0

    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    goto :goto_35

    :catch_27
    move-exception v0

    move/from16 v41, v2

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    :goto_35
    move-object/from16 v6, v27

    move/from16 v8, v29

    move-object/from16 v5, v37

    move-object/from16 v44, v38

    move-object/from16 v45, v39

    :goto_36
    const/16 v22, 0x1

    :goto_37
    move-object/from16 v7, v36

    goto :goto_3c

    .line 683
    :goto_38
    nop

    .line 319
    move-object v13, v5

    move-object/from16 v27, v6

    move/from16 v29, v8

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    move/from16 v3, v34

    move/from16 v4, v35

    goto :goto_34

    .line 681
    :catch_28
    move-exception v0

    move-object/from16 v45, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move-object/from16 v36, v7

    :goto_39
    move-object/from16 v44, v9

    move-object/from16 v40, v10

    :goto_3a
    move-object v5, v13

    move-object/from16 v10, v23

    move-object/from16 v9, v24

    move-object/from16 v6, v27

    move/from16 v8, v29

    move/from16 v41, v30

    :goto_3b
    const/16 v22, 0x1

    .line 682
    :goto_3c
    :try_start_45
    const-string v2, "LoaderTask"

    const-string v3, "Desktop items loading interrupted"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    goto :goto_38

    .line 686
    :catchall_0
    move-exception v0

    goto/16 :goto_43

    :cond_3c
    move-object/from16 v40, v10

    move-object v5, v13

    move-object/from16 v10, v23

    move-object/from16 v6, v27

    const/16 v22, 0x1

    :try_start_46
    invoke-static {v14}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    .line 687
    nop

    .line 690
    iget-boolean v0, v1, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3d

    .line 691
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    invoke-virtual {v0}, Lcom/android/launcher3/model/BgDataModel;->clear()V

    .line 692
    monitor-exit v40

    return-void

    .line 696
    :cond_3d
    iget-object v0, v14, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    iget-object v0, v14, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    iget-object v4, v14, Lcom/android/launcher3/model/LoaderCursor;->itemsToRemove:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3d

    :cond_3e
    const/16 v22, 0x0

    :goto_3d
    if-eqz v22, :cond_40

    .line 698
    const-string v0, "delete_empty_folders"

    .line 699
    move-object/from16 v2, v26

    invoke-static {v2, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "value"

    .line 701
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 702
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 703
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v8, v8, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 704
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 705
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v7, v7, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v3, v4}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 706
    goto :goto_3e

    .line 709
    :cond_3f
    const-string v0, "remove_ghost_widgets"

    invoke-static {v2, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    .line 714
    :cond_40
    nop

    .line 715
    invoke-static {v6}, Lcom/android/launcher3/InstallShortcutReceiver;->getPendingShortcuts(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 716
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 717
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->pinnedShortcutCounts:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/MutableInt;

    .line 718
    if-eqz v4, :cond_41

    iget v4, v4, Landroid/util/MutableInt;->value:I

    if-nez v4, :cond_42

    .line 719
    :cond_41
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 721
    iget-object v4, v1, Lcom/android/launcher3/model/LoaderTask;->mShortcutManager:Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->unpinShortcut(Lcom/android/launcher3/shortcuts/ShortcutKey;)V

    .line 723
    :cond_42
    goto :goto_3f

    .line 725
    :cond_43
    new-instance v0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 726
    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v2}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 728
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/FolderInfo;

    .line 729
    iget-object v4, v3, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 730
    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/android/launcher3/FolderInfo;)V

    .line 732
    nop

    .line 733
    iget-object v3, v3, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ShortcutInfo;

    .line 734
    iget-boolean v7, v5, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v7, :cond_45

    iget v7, v5, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v7, :cond_45

    iget v7, v5, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 736
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 737
    iget-object v7, v1, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v7, v5, v8}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    .line 738
    add-int/lit8 v4, v4, 0x1

    .line 741
    :cond_45
    const/4 v5, 0x4

    if-lt v4, v5, :cond_44

    goto :goto_41

    .line 742
    :cond_46
    const/4 v5, 0x4

    :goto_41
    goto :goto_40

    .line 747
    :cond_47
    iget-object v0, v14, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_48

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "restored"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v14, Lcom/android/launcher3/model/LoaderCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    iget-object v5, v14, Lcom/android/launcher3/model/LoaderCursor;->restoredRows:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    :cond_48
    if-nez v33, :cond_49

    invoke-virtual {v10}, Lcom/android/launcher3/util/MultiHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 749
    new-instance v0, Lcom/android/launcher3/model/SdCardAvailableReceiver;

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {v0, v2, v10}, Lcom/android/launcher3/model/SdCardAvailableReceiver;-><init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/MultiHashMap;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Handler;

    .line 753
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 749
    const/4 v4, 0x0

    invoke-virtual {v6, v0, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 757
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 758
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 759
    iget-wide v4, v3, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 760
    iget-wide v7, v3, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v3, v7, v9

    if-nez v3, :cond_4a

    .line 761
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 762
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 764
    :cond_4a
    goto :goto_42

    .line 767
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_4c

    .line 768
    iget-object v2, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 769
    iget-object v0, v1, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->workspaceScreens:Ljava/util/ArrayList;

    invoke-static {v6, v0}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 771
    :cond_4c
    monitor-exit v40

    return-void

    .line 686
    :catchall_1
    move-exception v0

    move-object/from16 v40, v10

    :goto_43
    invoke-static {v14}, Lcom/android/launcher3/Utilities;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 771
    :catchall_2
    move-exception v0

    move-object/from16 v40, v10

    :goto_44
    monitor-exit v40
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_44

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateIconCache()V
    .locals 5

    .line 776
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 777
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    .line 778
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 779
    instance-of v4, v3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v4, :cond_1

    .line 780
    check-cast v3, Lcom/android/launcher3/ShortcutInfo;

    .line 781
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 782
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_0
    goto :goto_0

    :cond_1
    instance-of v4, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 785
    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 786
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 787
    iget-object v3, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_2
    goto :goto_0

    .line 791
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    iget-object v1, p0, Lcom/android/launcher3/model/LoaderTask;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/IconCache;->updateDbIcons(Ljava/util/Set;)V

    .line 793
    return-void

    .line 791
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized verifyNotStopped()V
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Loader stopped"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 141
    monitor-enter p0

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-eqz v0, :cond_0

    .line 144
    monitor-exit p0

    return-void

    .line 146
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/LauncherModel$LoaderTransaction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/LoaderTask;B)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    const/4 v0, 0x0

    :try_start_2
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, v2, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/graphics/LauncherIcons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->getNormalizer()Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v4, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4, v0, v0, v0}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v3

    invoke-static {v3}, Lcom/android/launcher3/ClickShadowView;->setAdaptiveIconScaleFactor(F)V

    invoke-virtual {v2}, Lcom/android/launcher3/graphics/LauncherIcons;->recycle()V

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadWorkspace()V

    .line 155
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 156
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderResults;->bindWorkspace()V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 162
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 165
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadAllApps()V

    .line 168
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 170
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderResults;->bindAllApps()V

    .line 172
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 173
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->updateIconCache()V

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 182
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->loadDeepShortcuts()V

    .line 185
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 186
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderResults;->bindDeepShortcuts()V

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/model/LoaderTask;->waitForIdle()V

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 195
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v3, p0, Lcom/android/launcher3/model/LoaderTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)V

    .line 198
    invoke-direct {p0}, Lcom/android/launcher3/model/LoaderTask;->verifyNotStopped()V

    .line 199
    iget-object v2, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    invoke-virtual {v2}, Lcom/android/launcher3/model/LoaderResults;->bindWidgets()V

    .line 202
    iget-object v2, v1, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher3/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, v1, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->this$0:Lcom/android/launcher3/LauncherModel;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/launcher3/LauncherModel;->access$002(Lcom/android/launcher3/LauncherModel;Z)Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    :try_start_4
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    .line 202
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 203
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 203
    :goto_0
    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel$LoaderTransaction;->close()V

    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 206
    :catch_2
    move-exception v0

    .line 205
    return-void

    .line 146
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method

.method public final declared-synchronized stopLocked()V
    .locals 1

    monitor-enter p0

    .line 211
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized waitForIdle()V
    .locals 4

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/LoaderTask;->mResults:Lcom/android/launcher3/model/LoaderResults;

    new-instance v1, Lcom/android/launcher3/util/LooperIdleLock;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/util/LooperIdleLock;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    iget-object v0, v0, Lcom/android/launcher3/model/LoaderResults;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperIdleLock;->queueIdle()Z

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/model/LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LooperIdleLock;->awaitLocked(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 132
    :cond_1
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
