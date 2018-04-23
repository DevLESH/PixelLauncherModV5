.class public Lcom/google/android/apps/nexuslauncher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Launcher$LauncherOverlay;
.implements Lcom/google/android/libraries/gsa/launcherclient/h;


# instance fields
.field mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field private qT:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

.field public qU:Z

.field private qV:I

.field qW:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qU:Z

    .line 39
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 40
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "pref_persistent_flags"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/e;->qV:I

    .line 41
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qW:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final ap(I)V
    .locals 2

    .line 85
    and-int/lit8 p1, p1, 0x18

    .line 86
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qV:I

    if-eq p1, v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qW:Z

    .line 88
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/e;->qV:I

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_persistent_flags"

    .line 90
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qU:Z

    if-eq p1, v0, :cond_2

    .line 51
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/e;->qU:Z

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacksImpl;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-interface {p1, v1}, Lcom/android/launcher3/Launcher$LauncherOverlay;->setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object p1, v0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 54
    :cond_2
    return-void
.end method

.method public final onOverlayScrollChanged(F)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qT:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->qT:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    invoke-interface {v0, p1}, Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;->onScrollChanged(F)V

    .line 61
    :cond_0
    return-void
.end method

.method public final onScrollChange$254d549(F)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->h(F)V

    .line 76
    return-void
.end method

.method public final onScrollInteractionBegin()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->gX()V

    .line 66
    return-void
.end method

.method public final onScrollInteractionEnd()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->gY()V

    .line 71
    return-void
.end method

.method public final setOverlayCallbacks(Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e;->qT:Lcom/android/launcher3/Launcher$LauncherOverlayCallbacks;

    .line 81
    return-void
.end method
