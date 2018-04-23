.class Lcom/google/android/apps/nexuslauncher/qsb/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->c(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 295
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/i;->ty:Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 297
    :cond_0
    return-void
.end method
