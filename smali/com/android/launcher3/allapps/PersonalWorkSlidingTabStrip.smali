.class public Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final mDividerPaint:Landroid/graphics/Paint;

.field private mIndicatorLeft:I

.field private mIndicatorOffset:F

.field mIndicatorPosition:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    .line 49
    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    .line 50
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    .line 52
    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedPosition:I

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->setOrientation(I)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->setWillNotDraw(Z)V

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b003e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 63
    iget-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 64
    const v0, 0x1010435

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 63
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 67
    iget-object p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0043

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    return-void
.end method

.method static synthetic lambda$highlightWorkTab$0(Landroid/view/View;)V
    .locals 1

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 154
    return-void
.end method


# virtual methods
.method final highlightWorkTab()V
    .locals 2

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;

    invoke-direct {v1, v0}, Lcom/android/launcher3/allapps/-$$Lambda$PersonalWorkSlidingTabStrip$J-TkCQjnY8hDIMkKUDDYAg9supI;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v6, v0, v1

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v7, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getWidth()I

    .line 134
    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    int-to-float v4, v0

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    .line 134
    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 91
    iget p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    .line 92
    iget p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    iget p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateIndicatorPosition(IF)V

    .line 93
    return-void
.end method

.method public final updateIndicatorPosition(IF)V
    .locals 4

    .line 75
    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    .line 76
    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    .line 77
    iget p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    int-to-float p2, p2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int p2, v1

    iget v1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorOffset:F

    sub-float/2addr v3, v0

    int-to-float p1, p1

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    float-to-int p1, v1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    move p1, p2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    if-eq p1, v0, :cond_3

    :cond_2
    iput p2, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->invalidate()V

    .line 78
    :cond_3
    return-void
.end method

.method public final updateTabTextColor(I)V
    .locals 4

    .line 81
    iput p1, p0, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->mSelectedPosition:I

    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 84
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method
