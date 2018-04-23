.class public Lcom/android/launcher3/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final BRIGHTNESS:Landroid/util/Property;

.field public static final CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final sCachedFilter:Landroid/util/SparseArray;

.field private static final sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempFilterMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mBrightnessAnimator:Landroid/animation/ObjectAnimator;

.field private mDesaturation:I

.field public final mIconColor:I

.field private mIsDisabled:Z

.field private mIsPressed:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field private mPrevUpdateKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    sget-object v0, Lcom/android/launcher3/-$$Lambda$FastBitmapDrawable$BpVMch2TkMpn8u0bSZha6VSpxv8;->INSTANCE:Lcom/android/launcher3/-$$Lambda$FastBitmapDrawable$BpVMch2TkMpn8u0bSZha6VSpxv8;

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    .line 58
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    .line 67
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "brightness"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/FastBitmapDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/FastBitmapDrawable;->BRIGHTNESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 92
    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    .line 83
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 84
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 85
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 104
    iput p2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIconColor:I

    .line 105
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 1

    .line 99
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/graphics/BitmapInfo;)V
    .locals 1

    .line 95
    iget-object v0, p1, Lcom/android/launcher3/graphics/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget p1, p1, Lcom/android/launcher3/graphics/BitmapInfo;->color:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/FastBitmapDrawable;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBrightness()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/FastBitmapDrawable;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    return-void
.end method

.method private getBrightness()F
    .locals 2

    .line 248
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getExpectedBrightness()F
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eqz v0, :cond_1

    const v0, 0x3ec8c8c9

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 210
    return v0
.end method

.method static synthetic lambda$static$0(F)F
    .locals 2

    .line 44
    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr p0, v0

    return p0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    return v1

    :cond_1
    sub-float/2addr v1, p0

    const p0, 0x3f333333    # 0.7f

    div-float/2addr v1, p0

    return v1
.end method

.method private setBrightness(F)V
    .locals 2

    .line 240
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 241
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-eq v0, p1, :cond_0

    .line 242
    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    .line 243
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    .line 245
    :cond_0
    return-void
.end method

.method private updateFilter()V
    .locals 7

    .line 255
    nop

    .line 256
    nop

    .line 257
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 258
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    shl-int/lit8 v0, v0, 0x10

    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v3

    .line 269
    :goto_0
    move v3, v2

    goto :goto_1

    .line 259
    :cond_0
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v0, :cond_1

    .line 261
    const/high16 v0, 0x10000

    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    or-int/2addr v0, v3

    .line 265
    const/4 v3, 0x1

    goto :goto_1

    .line 269
    :cond_1
    move v0, v1

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    if-ne v0, v4, :cond_2

    .line 270
    return-void

    .line 272
    :cond_2
    iput v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPrevUpdateKey:I

    .line 274
    if-eq v0, v1, :cond_6

    .line 275
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    .line 276
    if-nez v1, :cond_5

    .line 277
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBrightness()F

    move-result v1

    .line 278
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 279
    if-eqz v3, :cond_3

    .line 280
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/16 v2, 0xff

    invoke-static {v4, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getDesaturation()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    .line 284
    sget-object v6, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v6, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 285
    iget v3, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightness:I

    if-lez v3, :cond_4

    .line 287
    sub-float/2addr v5, v1

    .line 288
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    .line 289
    aput v5, v1, v2

    .line 290
    const/4 v2, 0x6

    aput v5, v1, v2

    .line 291
    const/16 v2, 0xc

    aput v5, v1, v2

    .line 292
    const/4 v2, 0x4

    int-to-float v3, v4

    aput v3, v1, v2

    .line 293
    const/16 v2, 0x9

    aput v3, v1, v2

    .line 294
    const/16 v2, 0xe

    aput v3, v1, v2

    .line 295
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempBrightnessMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 297
    :cond_4
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sTempFilterMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 299
    :goto_2
    sget-object v2, Lcom/android/launcher3/FastBitmapDrawable;->sCachedFilter:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 302
    goto :goto_3

    .line 303
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 305
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->invalidateSelf()V

    .line 306
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getDesaturation()F
    .locals 2

    .line 233
    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    int-to-float v0, v0

    const/high16 v1, 0x42400000    # 48.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 120
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    .line 175
    nop

    .line 176
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    .line 177
    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    .line 178
    nop

    .line 179
    nop

    .line 182
    move p1, v3

    goto :goto_1

    .line 176
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    move p1, v1

    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eq v0, p1, :cond_4

    .line 183
    iput-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    .line 185
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 189
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsPressed:Z

    if-eqz p1, :cond_3

    .line 191
    sget-object p1, Lcom/android/launcher3/FastBitmapDrawable;->BRIGHTNESS:Landroid/util/Property;

    new-array v0, v3, [F

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getExpectedBrightness()F

    move-result v2

    aput v2, v0, v1

    .line 191
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    .line 193
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 194
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable;->CLICK_FEEDBACK_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    iget-object p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mBrightnessAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 197
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getExpectedBrightness()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    .line 199
    :goto_2
    return v3

    .line 201
    :cond_4
    return v1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 125
    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mAlpha:I

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 116
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    return-void
.end method

.method public final setIsDisabled(Z)V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eq v0, p1, :cond_2

    .line 216
    iput-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    .line 217
    iget-boolean p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mIsDisabled:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iget v0, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/launcher3/FastBitmapDrawable;->mDesaturation:I

    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->updateFilter()V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/FastBitmapDrawable;->getExpectedBrightness()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    .line 219
    :cond_2
    return-void
.end method
