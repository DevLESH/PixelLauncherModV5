.class public Lcom/android/launcher3/views/DoubleShadowBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"


# instance fields
.field private final mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    .line 49
    iget-object p1, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p1, p1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object p2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p2}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->setShadowLayer(FFFI)V

    .line 50
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->skipDoubleShadow(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object v3, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    .line 63
    invoke-static {v3, v0}, Landroid/support/v4/b/a;->d(II)I

    move-result v3

    .line 62
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawWithoutBadge(Landroid/graphics/Canvas;)V

    .line 66
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollX()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v7, v1

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v8, v1

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v9, v1

    sget-object v10, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 67
    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object v3, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v3, v3, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    iget-object v5, p0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v5, v5, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    .line 72
    invoke-static {v5, v0}, Landroid/support/v4/b/a;->d(II)I

    move-result v0

    .line 71
    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawWithoutBadge(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method
