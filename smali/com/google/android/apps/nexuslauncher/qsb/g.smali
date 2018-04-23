.class Lcom/google/android/apps/nexuslauncher/qsb/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/g;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    .line 54
    return-void
.end method
