.class Lcom/google/android/apps/nexuslauncher/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic rZ:Lcom/google/android/apps/nexuslauncher/a/c;

.field final synthetic sa:Lcom/google/android/apps/nexuslauncher/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/a/c;Lcom/google/android/apps/nexuslauncher/a/a;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/f;->rZ:Lcom/google/android/apps/nexuslauncher/a/c;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/a/f;->sa:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/f;->rZ:Lcom/google/android/apps/nexuslauncher/a/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/f;->sa:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a/c;->a(Lcom/google/android/apps/nexuslauncher/a/c;Lcom/google/android/apps/nexuslauncher/a/a;)V

    .line 122
    return-void
.end method
