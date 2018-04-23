.class Lcom/google/android/apps/nexuslauncher/allapps/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic rr:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;Landroid/os/Handler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/b;->rr:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/b;->rr:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->a(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)V

    .line 114
    return-void
.end method
