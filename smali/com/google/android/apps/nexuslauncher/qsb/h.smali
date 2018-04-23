.class Lcom/google/android/apps/nexuslauncher/qsb/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/h;->getResultCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    const-string p2, "com.google.android.googlequicksearchbox.TEXT_ASSIST"

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->f(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/h;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->b(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    .line 221
    return-void
.end method
