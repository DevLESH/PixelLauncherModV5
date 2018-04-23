.class public Lcom/android/launcher3/uioverrides/AllAppsState;
.super Lcom/android/launcher3/LauncherState;
.source "SourceFile"


# static fields
.field private static final PAGE_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/launcher3/uioverrides/AllAppsState$1;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/android/launcher3/uioverrides/AllAppsState$1;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/android/launcher3/uioverrides/AllAppsState;->PAGE_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 46
    const/4 v0, 0x4

    const/16 v1, 0x140

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/launcher3/LauncherState;-><init>(IIII)V

    .line 47
    return-void
.end method


# virtual methods
.method public final getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1

    .line 61
    const v0, 0x7f0c0036

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getFinalFocus(Lcom/android/launcher3/Launcher;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    return-object p1
.end method

.method public final getHoseatAlpha$53ed9b2a()F
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final getVerticalProgress$53ed9b2a()F
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;
    .locals 0

    .line 83
    sget-object p1, Lcom/android/launcher3/uioverrides/AllAppsState;->PAGE_ALPHA_PROVIDER:Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    return-object p1
.end method

.method public final getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F
    .locals 3

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 77
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget p1, p1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float p1, p1

    const/high16 v1, 0x3e000000    # 0.125f

    mul-float/2addr p1, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 76
    return-object v0
.end method

.method public final onStateEnabled(Lcom/android/launcher3/Launcher;)V
    .locals 3

    .line 51
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "launcher.apps_view_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.apps_view_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 56
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/AllAppsState;->dispatchWindowStateChanged(Lcom/android/launcher3/Launcher;)V

    .line 57
    return-void
.end method
