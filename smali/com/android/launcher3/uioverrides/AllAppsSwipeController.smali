.class public Lcom/android/launcher3/uioverrides/AllAppsSwipeController;
.super Lcom/android/launcher3/util/VerticalSwipeController;
.source "SourceFile"


# instance fields
.field private mStartContainerType:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/VerticalSwipeController;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherState;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected final getSwipeDirection(Landroid/view/MotionEvent;)I
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 58
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mStartContainerType:I

    .line 59
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 62
    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mStartContainerType:I

    const/4 v0, 0x3

    .line 63
    return v0
.end method

.method protected final onTransitionComplete(ZZ)V
    .locals 3

    .line 69
    if-eqz p2, :cond_2

    .line 71
    iget-object p2, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p2

    .line 72
    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    :goto_1
    iget v1, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mStartContainerType:I

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 75
    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v2

    .line 71
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 77
    :cond_2
    return-void
.end method

.method protected final shouldInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    return v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/AllAppsSwipeController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v3, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v4, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v3, v4, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    move p1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_1
    if-nez p1, :cond_4

    .line 50
    return v1

    .line 52
    :cond_4
    return v2
.end method
