.class Lcom/google/android/apps/nexuslauncher/qsb/c;
.super Landroid/support/a/A;
.source "SourceFile"


# instance fields
.field final synthetic tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/c;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-direct {p0, p2}, Landroid/support/a/A;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    .line 70
    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getTranslationY()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/c;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->a(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;)F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 70
    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/c;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->a(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;)F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setTranslationY(F)V

    return-void
.end method
