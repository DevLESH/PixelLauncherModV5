.class public Lcom/android/launcher3/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/LauncherStateManager$StateHandler;
.implements Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/Property;


# instance fields
.field private mAllAppsScrim:Lcom/android/launcher3/views/AllAppsScrim;

.field public mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field public mHotseat:Lcom/android/launcher3/Hotseat;

.field private final mIsDarkTheme:Z

.field private mIsVerticalLayout:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field public mProgress:F

.field public mShiftRange:F

.field public mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "allAppsProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsTransitionController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 83
    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 84
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 86
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v0, 0x7f01002b

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsDarkTheme:Z

    .line 87
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 88
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsTransitionController;)F
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    return-void
.end method

.method private onProgressAnimationEnd()V
    .locals 4

    .line 223
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0e002f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    iget-object v1, v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "showed_peek_work_tab"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->highlightWorkTab()V

    iget-object v0, v0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showed_peek_work_tab"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Hotseat;->setVisibility(I)V

    .line 235
    return-void
.end method


# virtual methods
.method public final getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 191
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;-><init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    return-object v0
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    .line 105
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setAlpha(F)V

    .line 107
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 108
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setTranslationY(F)V

    .line 109
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 111
    :cond_0
    return-void
.end method

.method public final onScrollRangeChanged(I)V
    .locals 0

    .line 214
    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    .line 215
    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 216
    return-void
.end method

.method public final setProgress(F)V
    .locals 7

    .line 123
    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    .line 124
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    mul-float/2addr v0, p1

    .line 126
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 127
    sub-float/2addr v1, p1

    .line 129
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setTranslationY(F)V

    .line 130
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsScrim:Lcom/android/launcher3/views/AllAppsScrim;

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f0e0049

    invoke-virtual {p1, v3}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/AllAppsScrim;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsScrim:Lcom/android/launcher3/views/AllAppsScrim;

    .line 133
    :cond_0
    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    neg-float p1, p1

    add-float/2addr p1, v0

    .line 134
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAllAppsScrim:Lcom/android/launcher3/views/AllAppsScrim;

    iget v4, v3, Lcom/android/launcher3/views/AllAppsScrim;->mAlphaRange:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    iget v5, v3, Lcom/android/launcher3/views/AllAppsScrim;->mMinAlpha:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, v3, Lcom/android/launcher3/views/AllAppsScrim;->mFillAlpha:I

    if-ne v4, v6, :cond_1

    iget v6, v3, Lcom/android/launcher3/views/AllAppsScrim;->mDrawOffsetY:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/views/AllAppsScrim;->invalidateDrawRect()V

    iput v4, v3, Lcom/android/launcher3/views/AllAppsScrim;->mFillAlpha:I

    iget-object v4, v3, Lcom/android/launcher3/views/AllAppsScrim;->mFillPaint:Landroid/graphics/Paint;

    iget v6, v3, Lcom/android/launcher3/views/AllAppsScrim;->mFillAlpha:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    iput v5, v3, Lcom/android/launcher3/views/AllAppsScrim;->mDrawOffsetY:F

    invoke-virtual {v3}, Lcom/android/launcher3/views/AllAppsScrim;->invalidateDrawRect()V

    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/launcher3/views/AllAppsScrim;->setTranslationY(F)V

    .line 136
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsVerticalLayout:Z

    if-nez v2, :cond_5

    .line 137
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setAlpha(F)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Hotseat;->setTranslationY(F)V

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageIndicator()Lcom/android/launcher3/pageindicators/PageIndicator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setTranslationY(F)V

    .line 143
    iget p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mShiftRange:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p1, v1

    cmpg-float p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_3

    .line 144
    move p1, v1

    goto :goto_0

    .line 143
    :cond_3
    nop

    .line 144
    move p1, v0

    :goto_0
    if-eqz p1, :cond_4

    .line 145
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mIsDarkTheme:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    return-void

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 150
    :cond_5
    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 0

    .line 162
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress$53ed9b2a()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->setProgress(F)V

    .line 163
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    .line 164
    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V
    .locals 5

    .line 173
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getVerticalProgress$53ed9b2a()F

    move-result p1

    .line 174
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->onProgressAnimationEnd()V

    .line 177
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 181
    :goto_0
    sget-object v1, Lcom/android/launcher3/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mProgress:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 182
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 183
    iget-wide v1, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 184
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 187
    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 188
    return-void
.end method
