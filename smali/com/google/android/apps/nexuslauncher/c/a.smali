.class public Lcom/google/android/apps/nexuslauncher/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected final zj:Lcom/android/launcher3/util/ComponentKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/c/a;->zj:Lcom/android/launcher3/util/ComponentKey;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/AppInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->zj:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;

    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    return-object p1

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->d(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/instantapps/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->zj:Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 40
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->d(Ljava/lang/String;)Lcom/android/launcher3/AppInfo;

    move-result-object p1

    return-object p1
.end method

.method public final dO()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->zj:Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->zj:Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/a;->zj:Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ComponentKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
