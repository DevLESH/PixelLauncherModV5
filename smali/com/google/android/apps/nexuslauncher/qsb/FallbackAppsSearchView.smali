.class public Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;
.super Lcom/android/launcher3/ExtendedEditText;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;


# instance fields
.field mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field final mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

.field tq:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    .line 40
    return-void
.end method

.method private notifyResultChanged()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->tq:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->av(I)V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->onSearchResultsChanged()V

    .line 89
    return-void
.end method


# virtual methods
.method public final clearSearchResult()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->notifyResultChanged()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method public final onAppsUpdated()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    .line 84
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->onAttachedToWindow()V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 46
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->onDetachedFromWindow()V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 52
    return-void
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .line 64
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 66
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->notifyResultChanged()V

    .line 67
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
