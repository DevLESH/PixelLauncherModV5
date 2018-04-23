.class Lcom/google/android/apps/nexuslauncher/a/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic rZ:Lcom/google/android/apps/nexuslauncher/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/a/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/e;->rZ:Lcom/google/android/apps/nexuslauncher/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 92
    const-string p1, "time-zone"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/a/e;->rZ:Lcom/google/android/apps/nexuslauncher/a/c;

    invoke-static {p2, p1}, Lcom/google/android/apps/nexuslauncher/a/c;->a(Lcom/google/android/apps/nexuslauncher/a/c;Ljava/lang/String;)V

    .line 95
    return-void
.end method
