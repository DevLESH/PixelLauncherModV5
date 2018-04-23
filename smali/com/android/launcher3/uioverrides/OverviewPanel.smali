.class public Lcom/android/launcher3/uioverrides/OverviewPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/LauncherStateManager$StateHandler;


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 64
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/OverviewPanel;->setAlpha(F)V

    .line 65
    return-void
.end method

.method private attachListeners(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 101
    return-void
.end method

.method public static getButtonBarHeight(Lcom/android/launcher3/Launcher;)I
    .locals 3

    .line 181
    nop

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    int-to-float v0, v0

    const v1, 0x3e6147ae    # 0.22f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 184
    nop

    .line 185
    const v1, 0x7f0b0015

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 186
    nop

    .line 187
    const v2, 0x7f0b0016

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 188
    invoke-static {v0, v1, p0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p0

    return p0
.end method

.method private handleViewClick(Landroid/view/View;I)Z
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    return v1

    .line 124
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0e0056

    if-ne v0, v2, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->onClickWallpaperPicker(Landroid/view/View;)V

    .line 126
    const/4 p1, 0x3

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0e0057

    if-ne v0, v2, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->onClickAddWidgetButton()V

    .line 129
    const/4 p1, 0x2

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0e0058

    if-ne v0, v2, :cond_3

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/OverviewPanel;->onClickSettingsButton(Landroid/view/View;)V

    .line 132
    const/4 p1, 0x4

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    .line 138
    const/4 p1, 0x1

    return p1

    .line 134
    :cond_3
    return v1
.end method

.method private setState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V
    .locals 1

    .line 177

    instance-of v0, p1, Lcom/android/launcher3/uioverrides/AllAppsState;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getHoseatAlpha$53ed9b2a()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    :cond_0

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 178
    return-void

    :cond_1

    const/high16 v0, 0x0

    goto :cond_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->handleViewClick(Landroid/view/View;I)Z

    .line 111
    return-void
.end method

.method public final onClickAddWidgetButton()V
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0c0025

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/WidgetsFullSheet;

    .line 151
    return-void
.end method

.method public final onClickSettingsButton(Landroid/view/View;)V
    .locals 4

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 161
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    nop

    .line 73
    const v0, 0x7f0e0056

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->attachListeners(Landroid/view/View;)V

    .line 74
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->attachListeners(Landroid/view/View;)V

    .line 76
    const v0, 0x7f0e0058

    invoke-virtual {p0, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v1, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->hasSettings()Z

    move-result v1

    goto :goto_1

    :cond_0
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->attachListeners(Landroid/view/View;)V

    .line 85
    const/4 v0, 0x3

    goto :goto_2

    .line 80
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const/4 v0, 0x2

    .line 85
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    const v2, 0x7f0b0017

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 88
    const v4, 0x7f0b0018

    .line 89
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 91
    mul-int/2addr v2, v0

    .line 92
    sub-int/2addr v0, v3

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getButtonBarHeight(Lcom/android/launcher3/Launcher;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 96
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->handleViewClick(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 106
    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 1

    .line 167
    sget-object v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->setState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V

    .line 168
    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V
    .locals 3

    .line 173
    new-instance v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;

    iget-wide v1, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;-><init>(JLcom/android/launcher3/anim/AnimatorSetBuilder;)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/uioverrides/OverviewPanel;->setState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V

    .line 174
    return-void
.end method
