.class public Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;
.super Lcom/android/launcher3/allapps/FloatingHeaderView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field private mIsVerticalLayout:Z

.field private final rI:[I

.field public rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

.field private rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

.field private rL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const v1, 0x10103ab

    aput v1, p1, v0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rI:[I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const v0, 0x10103ab

    aput v0, p1, p2

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rI:[I

    .line 34
    return-void
.end method

.method private ce()V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rL:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->ca()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rH:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setPadding(IIII)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getExpectedHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    .line 59
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->ca()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getLineHeight()I

    move-result v1

    add-int/2addr v3, v1

    iget v1, v2, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getPaddingTop()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getPaddingBottom()I

    move-result v1

    add-int v2, v3, v1

    nop

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    .line 60
    return-void
.end method


# virtual methods
.method protected final applyScroll(II)V
    .locals 1

    .line 111
    if-eq p2, p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setHidden(Z)V

    .line 114
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setHidden(Z)V

    return-void

    .line 116
    :cond_0
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setHidden(Z)V

    .line 117
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setHidden(Z)V

    .line 119
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setTranslationY(F)V

    .line 120
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setTranslationY(F)V

    .line 122
    return-void
.end method

.method public final cf()V
    .locals 2

    .line 101
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->ce()V

    .line 104
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    if-eq v1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setupHeader()V

    .line 107
    :cond_0
    return-void
.end method

.method public final getMaxTranslation()I
    .locals 4

    .line 64
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rI:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x7f040028

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    .line 66
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rL:Z

    if-eqz v0, :cond_2

    .line 67
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 69
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mMaxTranslation:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onFinishInflate()V

    .line 40
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    .line 41
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    .line 42
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 88
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v0, v1

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    .line 92
    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    .line 94
    invoke-virtual {v3}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v3

    .line 90
    invoke-virtual {v1, v0, v2, v0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setPadding(IIII)V

    .line 96
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mIsVerticalLayout:Z

    .line 97
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mIsVerticalLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->k(Z)V

    .line 98
    return-void
.end method

.method public final setup([Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;Z)V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rJ:Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rC:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cb()V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iput-object p0, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->rC:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cb()V

    .line 48
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rL:Z

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rK:Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->mIsVerticalLayout:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->rL:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->k(Z)V

    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->ce()V

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup([Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;Z)V

    .line 54
    return-void
.end method
