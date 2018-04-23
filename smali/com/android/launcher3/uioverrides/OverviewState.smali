.class public Lcom/android/launcher3/uioverrides/OverviewState;
.super Lcom/android/launcher3/LauncherState;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 43
    const/4 v0, 0x1

    const/16 v1, 0xfa

    const/16 v2, 0x23

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher3/LauncherState;-><init>(IIII)V

    .line 44
    return-void
.end method


# virtual methods
.method public final getFinalFocus(Lcom/android/launcher3/Launcher;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public final getHoseatAlpha$53ed9b2a()F
    .locals 1

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public final getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F
    .locals 8

    .line 48
    iget-object v0, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 49
    iget-object v1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 50
    iget-object v2, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 52
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/OverviewPanel;->getButtonBarHeight(Lcom/android/launcher3/Launcher;)I

    move-result p1

    .line 53
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getNormalChildHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 54
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    .line 55
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    .line 56
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 57
    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getHeight()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 58
    sub-int/2addr v6, v5

    sub-int/2addr v6, v3

    const/4 p1, 0x2

    div-int/2addr v6, p1

    add-int/2addr v5, v6

    .line 60
    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    div-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 61
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v4, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    neg-int v2, v5

    add-int/2addr v2, v0

    int-to-float v0, v2

    aput v0, v1, p1

    return-object v1
.end method

.method public final onStateDisabled(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 81
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->setPageRearrangeEnabled(Z)V

    .line 82
    return-void
.end method

.method public final onStateEnabled(Lcom/android/launcher3/Launcher;)V
    .locals 2

    .line 71
    iget-object v0, p1, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setPageRearrangeEnabled(Z)V

    .line 73
    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 77
    :cond_0
    return-void
.end method
