.class public Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private final mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->applyCustomFont(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    .line 27
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p1, p1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget p2, p2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p3, p2}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->setShadowLayer(FFFI)V

    .line 30
    return-void
.end method

.method private applyCustomFont(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    const/16 v5, 0x56

    :try_start_0
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 31
    .local v0, "TextView":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 32
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    const/4 v5, 0x0

    invoke-virtual {v3, p2, v0, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 34
    .local v1, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x4b

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "fontFamily":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".ttf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 39
    .local v4, "typeFace":Landroid/graphics/Typeface;
    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "TextView":[I
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "fontFamily":Ljava/lang/String;
    .end local v3    # "theme":Landroid/content/res/Resources$Theme;
    .end local v4    # "typeFace":Landroid/graphics/Typeface;
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v5

    goto :goto_0

    .line 30
    :array_0
    .array-data 4
        0x101000e
        0x1010034
        0x1010095
        0x1010096
        0x1010097
        0x1010098
        0x1010099
        0x101009a
        0x101009b
        0x10100ab
        0x10100af
        0x10100b0
        0x10100b1
        0x101011f
        0x1010120
        0x101013f
        0x1010140
        0x101014e
        0x101014f
        0x1010150
        0x1010151
        0x1010152
        0x1010153
        0x1010154
        0x1010155
        0x1010156
        0x1010157
        0x1010158
        0x1010159
        0x101015a
        0x101015b
        0x101015c
        0x101015d
        0x101015e
        0x101015f
        0x1010160
        0x1010161
        0x1010162
        0x1010163
        0x1010164
        0x1010165
        0x1010166
        0x1010167
        0x1010168
        0x1010169
        0x101016a
        0x101016b
        0x101016c
        0x101016d
        0x101016e
        0x101016f
        0x1010170
        0x1010171
        0x1010217
        0x1010218
        0x101021d
        0x1010220
        0x1010223
        0x1010224
        0x1010264
        0x1010265
        0x1010266
        0x10102c5
        0x10102c6
        0x10102c7
        0x1010314
        0x1010315
        0x1010316
        0x101035e
        0x101035f
        0x1010362
        0x1010374
        0x101038c
        0x1010392
        0x1010393
        0x10103ac
        0x101045d
        0x10104b6
        0x10104b7
        0x10104d6
        0x10104d7
        0x10104dd
        0x10104de
        0x10104df
        0x1160027
        0x1160028
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->skipDoubleShadow(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v1, v1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowBlur:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->ambientShadowColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 41
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v1, v1, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowBlur:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v2, v2, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowOffset:F

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/graphics/DoubleShadowTextView;->mShadowInfo:Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;

    iget v4, v4, Lcom/android/launcher3/views/DoubleShadowBubbleTextView$ShadowInfo;->keyShadowColor:I

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 44
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method
