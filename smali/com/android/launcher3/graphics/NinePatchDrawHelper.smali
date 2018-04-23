.class public Lcom/android/launcher3/graphics/NinePatchDrawHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDst:Landroid/graphics/RectF;

.field public final mSrc:Landroid/graphics/Rect;

.field public final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput p4, p3, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput p5, p3, Landroid/graphics/RectF;->left:F

    .line 95
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput p6, p3, Landroid/graphics/RectF;->right:F

    .line 96
    iget-object p3, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V
    .locals 3

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 46
    iget-object v1, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mSrc:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 47
    iget-object v1, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    iput p4, v1, Landroid/graphics/RectF;->top:F

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->mDst:Landroid/graphics/RectF;

    int-to-float v0, v0

    add-float/2addr p4, v0

    iput p4, v1, Landroid/graphics/RectF;->bottom:F

    .line 49
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw3Patch(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FF)V

    .line 50
    return-void
.end method

.method public final draw3Patch(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FF)V
    .locals 14

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 75
    div-int/lit8 v12, v4, 0x2

    .line 78
    int-to-float v0, v12

    add-float v13, p3, v0

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move v9, v12

    move/from16 v10, p3

    move v11, v13

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 81
    sub-float v11, p4, v0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move v5, v11

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 84
    add-int/lit8 v8, v12, -0x5

    add-int/lit8 v9, v12, 0x5

    move-object v5, p0

    move-object v6, p1

    move v10, v13

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->drawRegion(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 87
    return-void
.end method
