.class public Lcom/android/launcher3/LauncherRootView;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source "SourceFile"


# instance fields
.field private mAlignedView:Landroid/view/View;

.field private mDrawSideInsetBar:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftInsetBarWidth:I

.field private final mOpaquePaint:Landroid/graphics/Paint;

.field private mRightInsetBarWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    .line 37
    iget-object p2, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p2, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/LauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 41
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 107
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 110
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    if-eqz v0, :cond_1

    .line 111
    iget v0, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    if-lez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getWidth()I

    move-result v0

    .line 113
    iget v1, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    const/4 v4, 0x0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    :cond_0
    iget v0, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    if-lez v0, :cond_1

    .line 116
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/LauncherRootView;->mOpaquePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    :cond_1
    return-void
.end method

.method public final dispatchInsets()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-super {p0, v0}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 103
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5

    .line 56
    iget v0, p1, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    .line 59
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    if-eqz v0, :cond_3

    .line 60
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    .line 61
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    move-object p1, v0

    goto :goto_2

    .line 64
    :cond_3
    iput v2, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    iput v2, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    .line 66
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v3, 0x3

    .line 67
    iget-boolean v4, p0, Lcom/android/launcher3/LauncherRootView;->mDrawSideInsetBar:Z

    if-eqz v4, :cond_4

    const/4 v2, 0x2

    nop

    .line 66
    :cond_4
    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    xor-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherRootView;->setInsets(Landroid/graphics/Rect;)V

    .line 74
    iget-object p1, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 76
    iget-object p1, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    if-ne v2, v3, :cond_5

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    if-eq v2, v3, :cond_6

    .line 78
    :cond_5
    iget v2, p0, Lcom/android/launcher3/LauncherRootView;->mLeftInsetBarWidth:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 79
    iget v2, p0, Lcom/android/launcher3/LauncherRootView;->mRightInsetBarWidth:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 80
    iget-object v2, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_6
    if-eqz v0, :cond_7

    .line 84
    iget-object p1, p0, Lcom/android/launcher3/LauncherRootView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherStateManager;->reapplyState()V

    .line 87
    :cond_7
    return v1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherRootView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mAlignedView:Landroid/view/View;

    .line 50
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/InsettableFrameLayout;->onFinishInflate()V

    .line 51
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/LauncherRootView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    .line 97
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherRootView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010031

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method
