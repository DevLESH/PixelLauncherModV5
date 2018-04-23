.class Lcom/google/android/libraries/gsa/launcherclient/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xy:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->Xy:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/e;->Xy:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V

    .line 442
    return-void
.end method
