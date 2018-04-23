.class Lcom/google/android/apps/nexuslauncher/graphics/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic sr:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/a;->sr:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 29
    const-string p1, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 30
    xor-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/a;->sr:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-static {p2, p1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->a(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;Z)V

    .line 31
    return-void
.end method
