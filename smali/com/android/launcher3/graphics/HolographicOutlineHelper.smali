.class public Lcom/android/launcher3/graphics/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADAPTIVE_ICON_SHADOW_BITMAP:Landroid/graphics/Bitmap;

.field private static sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;


# instance fields
.field public final mBitmapCache:Landroid/util/SparseArray;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mShadowBitmapShift:F

.field private final mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 48
    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->ADAPTIVE_ICON_SHADOW_BITMAP:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    .line 64
    new-instance p1, Landroid/graphics/BlurMaskFilter;

    iget v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p1, v0, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 65
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 66
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    .line 72
    :cond_0
    sget-object p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->sInstance:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    return-object p0
.end method


# virtual methods
.method public final createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;
    .locals 10

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 79
    sget-object p1, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->ADAPTIVE_ICON_SHADOW_BITMAP:Landroid/graphics/Bitmap;

    return-object p1

    .line 81
    :cond_0
    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 83
    return-object v1

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v2

    .line 87
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getScaleY()F

    move-result p1

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 91
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 92
    if-lez v5, :cond_5

    if-gtz v4, :cond_2

    goto/16 :goto_2

    .line 96
    :cond_2
    shl-int/lit8 v6, v4, 0x10

    or-int/2addr v6, v5

    .line 97
    iget-object v7, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 98
    const/high16 v8, -0x1000000

    if-nez v7, :cond_3

    .line 99
    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 100
    iget-object v9, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    iget-object v9, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v6, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 108
    iget-object v9, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9, v2, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 109
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v2, v3, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 116
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 120
    const/high16 p1, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 122
    add-int/2addr v4, p1

    .line 123
    add-int/2addr v5, p1

    .line 124
    shl-int/lit8 p1, v4, 0x10

    or-int/2addr p1, v5

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 126
    if-nez v0, :cond_4

    .line 127
    sget-object p1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v8, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    iget v3, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mShadowBitmapShift:F

    iget-object v4, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object p1, p0, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    return-object v0

    .line 93
    :cond_5
    :goto_2
    return-object v1
.end method
