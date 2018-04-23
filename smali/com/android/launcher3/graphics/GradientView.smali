.class public Lcom/android/launcher3/graphics/GradientView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field private final mAccelerator:Landroid/view/animation/Interpolator;

.field private final mAlphaColors:I

.field private final mAlphaGradientMask:Landroid/graphics/Bitmap;

.field private final mAlphaMaskRect:Landroid/graphics/RectF;

.field private final mAlphaStart:F

.field private mColor1:I

.field private mColor2:I

.field private final mDebugPaint:Landroid/graphics/Paint;

.field private final mFinalMaskRect:Landroid/graphics/RectF;

.field private mHeight:I

.field private final mMaskHeight:I

.field private final mMaskWidth:I

.field private final mPaintNoScrim:Landroid/graphics/Paint;

.field private final mPaintWithScrim:Landroid/graphics/Paint;

.field private mProgress:F

.field private final mScrimColor:I

.field private mShowScrim:Z

.field private final mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 18

    move-object/from16 v0, p0

    .line 73
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/graphics/GradientView;->mShowScrim:Z

    .line 55
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    .line 56
    iput v2, v0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    .line 59
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mAlphaMaskRect:Landroid/graphics/RectF;

    .line 60
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mFinalMaskRect:Landroid/graphics/RectF;

    .line 61
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mPaintWithScrim:Landroid/graphics/Paint;

    .line 62
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mPaintNoScrim:Landroid/graphics/Paint;

    .line 66
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mDebugPaint:Landroid/graphics/Paint;

    .line 67
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mAccelerator:Landroid/view/animation/Interpolator;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/graphics/GradientView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 75
    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-static {v4, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    .line 76
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4, v3}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskWidth:I

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    .line 78
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/launcher3/graphics/GradientView;->mAlphaStart:F

    .line 79
    const v4, 0x7f010026

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/graphics/GradientView;->mScrimColor:I

    .line 80
    invoke-static {v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/graphics/GradientView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/launcher3/graphics/GradientView;->mAlphaColors:I

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/graphics/GradientView;->updateColors()V

    .line 83
    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskWidth:I

    iget v4, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/Paint;

    const/4 v5, 0x4

    invoke-direct {v9, v5}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v14, v6

    const/4 v6, 0x3

    new-array v15, v6, [I

    const/4 v7, 0x0

    const v8, 0xffffff

    aput v8, v15, v7

    const/16 v7, 0xf2

    invoke-static {v2, v7}, Landroid/support/v4/b/a;->d(II)I

    move-result v7

    aput v7, v15, v1

    const/4 v1, 0x2

    aput v2, v15, v1

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v5

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v1, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskWidth:I

    int-to-float v7, v1

    iget v1, v0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iput-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mAlphaGradientMask:Landroid/graphics/Bitmap;

    .line 84
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createRadialShader()V
    .locals 19

    .line 126
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    iget v2, v0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f866666    # 1.05f

    mul-float/2addr v1, v2

    .line 128
    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    div-float v10, v3, v1

    .line 130
    new-instance v11, Landroid/graphics/RadialGradient;

    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v3, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v4, v3, v12

    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v3, v3

    mul-float v5, v3, v2

    const/4 v13, 0x3

    new-array v7, v13, [I

    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    const/4 v14, 0x0

    aput v3, v7, v14

    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    const/4 v15, 0x1

    aput v3, v7, v15

    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    const/16 v16, 0x2

    aput v3, v7, v16

    new-array v8, v13, [F

    const/16 v17, 0x0

    aput v17, v8, v14

    aput v10, v8, v15

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v8, v16

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    move v6, v1

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 137
    iget-object v3, v0, Lcom/android/launcher3/graphics/GradientView;->mPaintNoScrim:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    iget v3, v0, Lcom/android/launcher3/graphics/GradientView;->mScrimColor:I

    iget v4, v0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    invoke-static {v3, v4}, Landroid/support/v4/b/a;->b(II)I

    move-result v3

    .line 140
    iget v4, v0, Lcom/android/launcher3/graphics/GradientView;->mScrimColor:I

    iget v5, v0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    invoke-static {v4, v5}, Landroid/support/v4/b/a;->b(II)I

    move-result v4

    .line 141
    new-instance v11, Landroid/graphics/RadialGradient;

    iget v5, v0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    iget v6, v0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v6, v6

    mul-float/2addr v2, v6

    new-array v7, v13, [I

    aput v3, v7, v14

    aput v3, v7, v15

    aput v4, v7, v16

    new-array v8, v13, [F

    aput v17, v8, v14

    aput v10, v8, v15

    aput v18, v8, v16

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v11

    move v4, v5

    move v5, v2

    move v6, v1

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 148
    iget-object v0, v0, Lcom/android/launcher3/graphics/GradientView;->mPaintWithScrim:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 149
    return-void
.end method

.method private updateColors()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    iget v0, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaColors:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->d(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mColor1:I

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    iget v0, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaColors:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->d(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/graphics/GradientView;->mColor2:I

    .line 109
    iget v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->createRadialShader()V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 90
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 96
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 163
    iget-boolean v0, p0, Lcom/android/launcher3/graphics/GradientView;->mShowScrim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintWithScrim:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/graphics/GradientView;->mPaintNoScrim:Landroid/graphics/Paint;

    .line 165
    :goto_0
    const v1, 0x3e947ae1    # 0.29f

    iget v2, p0, Lcom/android/launcher3/graphics/GradientView;->mProgress:F

    const v3, 0x3f35c290    # 0.71000004f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 167
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 168
    const/high16 v1, 0x437f0000    # 255.0f

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaStart:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAccelerator:Landroid/view/animation/Interpolator;

    iget v4, p0, Lcom/android/launcher3/graphics/GradientView;->mProgress:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 169
    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaStart:F

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    iget v1, p0, Lcom/android/launcher3/graphics/GradientView;->mMaskHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 171
    iget-object v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaMaskRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    iget-object v2, p0, Lcom/android/launcher3/graphics/GradientView;->mFinalMaskRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaGradientMask:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/graphics/GradientView;->mAlphaMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/graphics/GradientView;->mFinalMaskRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public final onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->updateColors()V

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->invalidate()V

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    .line 119
    iget p1, p0, Lcom/android/launcher3/graphics/GradientView;->mWidth:I

    iget p2, p0, Lcom/android/launcher3/graphics/GradientView;->mHeight:I

    add-int/2addr p1, p2

    if-lez p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/graphics/GradientView;->createRadialShader()V

    .line 122
    :cond_0
    return-void
.end method

.method public final setProgress(FZ)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/android/launcher3/graphics/GradientView;->mProgress:F

    .line 157
    iput-boolean p2, p0, Lcom/android/launcher3/graphics/GradientView;->mShowScrim:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/graphics/GradientView;->invalidate()V

    .line 159
    return-void
.end method
