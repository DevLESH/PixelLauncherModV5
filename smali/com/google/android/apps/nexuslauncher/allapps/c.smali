.class Lcom/google/android/apps/nexuslauncher/allapps/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic rr:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->rr:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c;->rr:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->b(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V

    .line 134
    return-void
.end method
