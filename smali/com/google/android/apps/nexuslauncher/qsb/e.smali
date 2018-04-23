.class Lcom/google/android/apps/nexuslauncher/qsb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

.field private final th:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->th:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    .line 298
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 303
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->th:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    invoke-interface {p1, p5}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 305
    return-void

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Lcom/android/launcher3/Launcher;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 309
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    .line 310
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->tg:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    .line 311
    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00ae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 312
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->th:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    sub-int/2addr p5, p1

    invoke-interface {p2, p5}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 313
    return-void
.end method
