.class public Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;
.super Lcom/android/launcher3/Launcher;
.source "SourceFile"


# instance fields
.field public final qS:Lcom/google/android/apps/nexuslauncher/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    .line 27
    new-instance v0, Lcom/google/android/apps/nexuslauncher/c;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/nexuslauncher/c;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherExterns;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->qS:Lcom/google/android/apps/nexuslauncher/c;

    .line 28
    return-void
.end method


# virtual methods
.method public overrideTheme(ZZ)V
    .locals 5

    .prologue
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkThemeEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTextThemeEnabled(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    .line 40
    const v2, 0x18

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 42
    const/4 v3, 0x2

    .line 41
    if-ne v1, v3, :cond_2

    .line 43
    const/16 v1, 0x10

    .line 45
    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 46
    :cond_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 47
    const v0, 0x7f130012

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    .line 55
    :goto_1
    return-void

    .line 44
    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    .line 48
    :cond_3
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 49
    const v0, 0x7f130013

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    goto :goto_1

    .line 50
    :cond_4
    if-eqz v0, :cond_5

    .line 51
    const v0, 0x7f130011

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    goto :goto_1

    .line 53
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/Launcher;->overrideTheme(ZZ)V

    goto :goto_1
.end method
