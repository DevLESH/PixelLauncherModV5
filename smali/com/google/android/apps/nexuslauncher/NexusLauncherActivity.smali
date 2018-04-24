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
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :lightTheme

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :darkTheme

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :darkTextTheme

    :resume

    .line 45
    :goto_0

    .line 46
    if-eqz p1, :cond_3

    .line 47
    const v0, 0x7f130012

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    .line 55
    :goto_1
    return-void

    .line 48
    :cond_3
    if-eqz p2, :cond_4

    .line 49
    const v0, 0x7f130013

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    goto :goto_1

    .line 50
    :cond_4
    .line 51
    const v0, 0x7f130011

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->setTheme(I)V

    goto :goto_1

    :lightTheme

    const p1, 0x0

    const p2, 0x0

    goto :resume

    :darkTheme

    const p1, 0x1

    const p2, 0x0

    goto :resume

    :darkTextTheme

    const p1, 0x0

    const p2, 0x1

    goto :resume
.end method
