.class public Lcom/android/launcher3/ClickShadowView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static sAdaptiveIconScaleFactor:F


# instance fields
.field private mAdaptiveIcon:Landroid/graphics/drawable/Drawable;

.field private mAnim:Landroid/animation/ObjectAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShadowOffset:F

.field private final mShadowPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher3/ClickShadowView;->sAdaptiveIconScaleFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowOffset:F

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/ClickShadowView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/launcher3/ClickShadowView;->mAdaptiveIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private cancelAnim()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 165
    :cond_0
    return-void
.end method

.method public static setAdaptiveIconScaleFactor(F)V
    .locals 0

    .line 73
    sput p0, Lcom/android/launcher3/ClickShadowView;->sAdaptiveIconScaleFactor:F

    .line 74
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->invalidate()V

    .line 144
    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private startAnim(Landroid/view/View;Landroid/util/Property;F)V
    .locals 2

    .line 168
    invoke-direct {p0}, Lcom/android/launcher3/ClickShadowView;->cancelAnim()V

    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    .line 171
    iget-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 p2, 0x7d0

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 172
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    iget-object p1, p0, Lcom/android/launcher3/ClickShadowView;->mAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 174
    return-void
.end method


# virtual methods
.method public final getExtraSize()I
    .locals 2

    .line 80
    iget v0, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowOffset:F

    iget-object v3, p0, Lcom/android/launcher3/ClickShadowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 85
    invoke-direct {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 86
    invoke-direct {p0}, Lcom/android/launcher3/ClickShadowView;->cancelAnim()V

    .line 87
    return-void

    .line 89
    :cond_0
    if-nez p2, :cond_1

    .line 90
    sget-object p2, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->ADAPTIVE_ICON_SHADOW_BITMAP:Landroid/graphics/Bitmap;

    .line 93
    invoke-direct {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 94
    invoke-direct {p0}, Lcom/android/launcher3/ClickShadowView;->cancelAnim()V

    .line 95
    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    .line 96
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 97
    iget-object p2, p0, Lcom/android/launcher3/ClickShadowView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->ADAPTIVE_ICON_SHADOW_BITMAP:Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    if-ne p2, v1, :cond_3

    .line 98
    iget-object p2, p0, Lcom/android/launcher3/ClickShadowView;->mAdaptiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_2

    new-instance p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p2, v0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/android/launcher3/ClickShadowView;->mAdaptiveIcon:Landroid/graphics/drawable/Drawable;

    new-instance p2, Lcom/android/launcher3/ClickShadowView$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/ClickShadowView$1;-><init>(Lcom/android/launcher3/ClickShadowView;)V

    iput-object p2, p0, Lcom/android/launcher3/ClickShadowView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr p2, v0

    div-int/2addr p2, v2

    add-int/2addr v3, p2

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v0

    iput p2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result p2

    iput p2, v1, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    sget p2, Lcom/android/launcher3/ClickShadowView;->sAdaptiveIconScaleFactor:F

    invoke-static {v1, p2}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    iget-object p2, p0, Lcom/android/launcher3/ClickShadowView;->mAdaptiveIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/ClickShadowView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/ClickShadowView;->cancelAnim()V

    .line 100
    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->ELEVATION:Landroid/util/Property;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ClickShadowView;->startAnim(Landroid/view/View;Landroid/util/Property;F)V

    return-void

    .line 103
    :cond_3
    new-array p2, v2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    aget v1, p2, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v1

    const/4 v3, 0x1

    aget v4, p2, v3

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/launcher3/ClickShadowView;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p1, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    aget v2, p2, v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iget v8, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v2, v8

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aget p2, p2, v3

    int-to-float p2, p2

    sub-float/2addr p2, v1

    iget v3, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr p2, v3

    invoke-static {v8, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    new-instance v3, Landroid/graphics/Rect;

    add-int v8, v2, v4

    add-int/2addr v5, p2

    invoke-direct {v3, v2, p2, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/ClickShadowView;->setClipBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v2

    mul-float/2addr p2, v2

    add-float/2addr v0, p2

    int-to-float p2, v6

    sub-float/2addr p2, v7

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v2

    mul-float/2addr p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    add-float/2addr v0, p2

    int-to-float p2, v4

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float/2addr p2, v3

    div-float/2addr p2, v2

    add-float/2addr v0, p2

    iget p2, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ClickShadowView;->setTranslationX(F)V

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result p1

    sub-float p1, v4, p1

    mul-float/2addr p2, p1

    div-float/2addr p2, v2

    add-float/2addr v1, p2

    iget p1, p0, Lcom/android/launcher3/ClickShadowView;->mShadowPadding:F

    sub-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/ClickShadowView;->setTranslationY(F)V

    .line 104
    sget-object p1, Lcom/android/launcher3/ClickShadowView;->ALPHA:Landroid/util/Property;

    invoke-direct {p0, p0, p1, v4}, Lcom/android/launcher3/ClickShadowView;->startAnim(Landroid/view/View;Landroid/util/Property;F)V

    .line 107
    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
