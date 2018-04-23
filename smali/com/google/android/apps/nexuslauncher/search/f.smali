.class Lcom/google/android/apps/nexuslauncher/search/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final xp:Ljava/util/ArrayList;

.field final xq:Ljava/lang/String;

.field final xr:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/f;->xp:Ljava/util/ArrayList;

    .line 98
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/f;->xq:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/f;->xr:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 100
    return-void
.end method
