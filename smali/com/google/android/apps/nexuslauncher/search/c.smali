.class Lcom/google/android/apps/nexuslauncher/search/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic xk:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

.field final xl:Lcom/android/launcher3/util/ComponentKey;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;Lcom/android/launcher3/util/ComponentKey;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/c;->xk:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/c;->xl:Lcom/android/launcher3/util/ComponentKey;

    .line 261
    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/c;->xk:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/c;->xl:Lcom/android/launcher3/util/ComponentKey;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/search/g;->a(Landroid/content/Context;Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/search/c;->xk:Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ItemInfoWithIcon;Z)V

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
