.class public Lcom/android/launcher3/views/AllAppsScrim;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field public mAlphaRange:I

.field private mDrawHeight:F

.field public mDrawOffsetY:F

.field private final mDrawRect:Landroid/graphics/Rect;

.field public mFillAlpha:I

.field public final mFillPaint:Landroid/graphics/Paint;

.field private final mInsets:Landroid/graphics/Rect;

.field public mMinAlpha:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mRadius:F

.field private final mScrimColor:I

.field private final mShadowBitmap:Landroid/graphics/Bitmap;

.field private final mShadowBlur:F

.field private final mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

.field protected final mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/AllAppsScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/AllAppsScrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mFillPaint:Landroid/graphics/Paint;

    .line 50
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    .line 51
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    .line 52
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mInsets:Landroid/graphics/Rect;

    .line 63
    new-instance p2, Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    invoke-direct {p2}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    .line 81
    invoke-static {p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 82
    const p2, 0x7f010026

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mScrimColor:I

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0023

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mRadius:F

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0025

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    .line 86
    invoke-direct {p0}, Lcom/android/launcher3/views/AllAppsScrim;->initDefaults()Lcom/android/launcher3/DeviceProfile;

    .line 87
    iget p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mMinAlpha:I

    iput p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mFillAlpha:I

    .line 88
    iget p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mRadius:F

    iget p2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    add-float/2addr p1, p2

    new-instance p2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    iget p3, p0, Lcom/android/launcher3/views/AllAppsScrim;->mRadius:F

    iput p3, p2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->radius:F

    iget p3, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    iput p3, p2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p3

    const/4 v0, 0x2

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x14

    div-int/lit8 p3, v0, 0x2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 p1, 0x41a00000    # 20.0f

    add-float/2addr v0, p1

    iget p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float/2addr v0, p1

    iget-object p1, p2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    iget v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    iput-object p3, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 90
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/AllAppsScrim;->updateColors(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 91
    return-void
.end method

.method private initDefaults()Lcom/android/launcher3/DeviceProfile;
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 95
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/16 v2, 0xeb

    if-eqz v1, :cond_0

    .line 96
    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    iput v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mMinAlpha:I

    .line 97
    iget v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mMinAlpha:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mAlphaRange:I

    .line 98
    return-object v0
.end method

.method private updateColors(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mScrimColor:I

    iget v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mScrimColor:I

    .line 143
    iget p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    invoke-static {v2, p1}, Landroid/support/v4/b/a;->b(II)I

    move-result p1

    .line 142
    invoke-static {v1, p1}, Landroid/support/v4/b/a;->b(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mFillPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mFillAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->invalidate()V

    .line 146
    return-void
.end method

.method private updateDrawRect(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 225
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 227
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 230
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 232
    return-void
.end method


# virtual methods
.method public final invalidateDrawRect()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawOffsetY:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawHeight:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/AllAppsScrim;->invalidate(Landroid/graphics/Rect;)V

    .line 191
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 127
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 133
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/AllAppsScrim;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawOffsetY:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawHeight:F

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float v5, v1, v2

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/AllAppsScrim;->getWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    .line 153
    iget-object v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_1

    iget-object v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lez v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v7, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    iget-object v8, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float v10, v1, v2

    iget v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float v11, v5, v1

    iget v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    add-float v12, v6, v1

    move-object/from16 v9, p1

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    .line 163
    move-object/from16 v4, p1

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    iget-object v2, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    sub-float v4, v5, v4

    iget v7, v0, Lcom/android/launcher3/views/AllAppsScrim;->mShadowBlur:F

    add-float/2addr v7, v6

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/AllAppsScrim;->getHeight()I

    move-result v8

    int-to-float v8, v8

    .line 154
    move-object v13, v1

    move-object v14, v2

    move-object/from16 v15, p1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, v1, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    add-int/lit8 v11, v9, -0x5

    iput v11, v10, Landroid/graphics/Rect;->top:I

    iget-object v10, v1, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput v9, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v1, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    int-to-float v9, v9

    add-float/2addr v4, v9

    iput v4, v10, Landroid/graphics/RectF;->top:F

    iget-object v4, v1, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput v8, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v4, p1

    invoke-virtual {v1, v2, v4, v3, v7}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw3Patch(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FF)V

    .line 163
    :goto_1
    iget-object v1, v0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/views/AllAppsScrim;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/android/launcher3/views/AllAppsScrim;->mRadius:F

    add-float v7, v2, v3

    iget v8, v0, Lcom/android/launcher3/views/AllAppsScrim;->mRadius:F

    iget v9, v0, Lcom/android/launcher3/views/AllAppsScrim;->mRadius:F

    iget-object v10, v0, Lcom/android/launcher3/views/AllAppsScrim;->mFillPaint:Landroid/graphics/Paint;

    .line 163
    move-object v3, v4

    move v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method public final onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/launcher3/views/AllAppsScrim;->updateColors(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->invalidate()V

    .line 139
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 219
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/AllAppsScrim;->updateDrawRect(Lcom/android/launcher3/DeviceProfile;)V

    .line 221
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/views/AllAppsScrim;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 200
    invoke-direct {p0}, Lcom/android/launcher3/views/AllAppsScrim;->initDefaults()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 204
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 205
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 206
    iget-object p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/views/AllAppsScrim;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 207
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawHeight:F

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 211
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    int-to-float p1, v2

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/views/AllAppsScrim;->mDrawHeight:F

    .line 213
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/views/AllAppsScrim;->updateDrawRect(Lcom/android/launcher3/DeviceProfile;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/views/AllAppsScrim;->invalidate()V

    .line 215
    return-void
.end method
