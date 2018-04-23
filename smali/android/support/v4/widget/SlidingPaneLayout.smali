.class public Landroid/support/v4/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field static final lJ:Landroid/support/v4/widget/u;


# instance fields
.field lA:Landroid/view/View;

.field lB:F

.field private lC:F

.field lD:I

.field private lE:I

.field final lF:Landroid/support/v4/widget/y;

.field lG:Z

.field private final lH:Landroid/graphics/Rect;

.field final lI:Ljava/util/ArrayList;

.field private lu:I

.field private lv:I

.field private lw:Landroid/graphics/drawable/Drawable;

.field private lx:Landroid/graphics/drawable/Drawable;

.field private final ly:I

.field private lz:Z

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 201
    new-instance v0, Landroid/support/v4/widget/x;

    invoke-direct {v0}, Landroid/support/v4/widget/x;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->lJ:Landroid/support/v4/widget/u;

    return-void

    .line 202
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 203
    new-instance v0, Landroid/support/v4/widget/w;

    invoke-direct {v0}, Landroid/support/v4/widget/w;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->lJ:Landroid/support/v4/widget/u;

    return-void

    .line 205
    :cond_1
    new-instance v0, Landroid/support/v4/widget/v;

    invoke-direct {v0}, Landroid/support/v4/widget/v;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->lJ:Landroid/support/v4/widget/u;

    .line 207
    return-void
.end method

.method private a(Landroid/view/View;FI)V
    .locals 3

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 973
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p3, :cond_2

    .line 974
    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    .line 975
    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 976
    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 977
    iget-object p3, v0, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    if-nez p3, :cond_0

    .line 978
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    .line 980
    :cond_0
    iget-object p3, v0, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    .line 982
    iget-object p2, v0, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 984
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->I(Landroid/view/View;)V

    .line 985
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_4

    .line 986
    iget-object p2, v0, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    if-eqz p2, :cond_3

    .line 987
    iget-object p2, v0, Landroid/support/v4/widget/s;->lP:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 989
    :cond_3
    new-instance p2, Landroid/support/v4/widget/r;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/widget/r;-><init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 990
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lI:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    invoke-static {p0, p2}, Landroid/support/v4/view/s;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 993
    :cond_4
    return-void
.end method

.method private aV()Z
    .locals 2

    .line 862
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->e(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 866
    :cond_0
    return v1

    .line 863
    :cond_1
    :goto_0
    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    .line 864
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method final I(Landroid/view/View;)V
    .locals 1

    .line 1020
    sget-object v0, Landroid/support/v4/widget/SlidingPaneLayout;->lJ:Landroid/support/v4/widget/u;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/u;->a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 1021
    return-void
.end method

.method final J(Landroid/view/View;)Z
    .locals 2

    .line 1228
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1229
    return v0

    .line 1231
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/s;

    .line 1232
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Landroid/support/v4/widget/s;->lO:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method final aW()Z
    .locals 2

    .line 1643
    invoke-static {p0}, Landroid/support/v4/view/s;->g(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1249
    instance-of v0, p1, Landroid/support/v4/widget/s;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 2

    .line 1058
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/y;->g(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-nez v0, :cond_0

    .line 1060
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {v0}, Landroid/support/v4/widget/y;->abort()V

    .line 1061
    return-void

    .line 1064
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/s;->e(Landroid/view/View;)V

    .line 1066
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1136
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1137
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v0

    .line 1139
    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lx:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lw:Landroid/graphics/drawable/Drawable;

    .line 1145
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1146
    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 1151
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1152
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1157
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1158
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1159
    add-int/2addr v4, v1

    goto :goto_2

    .line 1161
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1162
    sub-int v4, v1, v4

    .line 1165
    move v6, v4

    move v4, v1

    move v1, v6

    :goto_2
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1166
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1167
    return-void

    .line 1148
    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 997
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/s;

    .line 999
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1001
    iget-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Landroid/support/v4/widget/s;->lN:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1003
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lH:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1004
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lH:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1007
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lH:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lH:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1009
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lH:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1012
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1014
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1016
    return p2
.end method

.method final e(F)Z
    .locals 5

    .line 1030
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1032
    return v1

    .line 1035
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v0

    .line 1036
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/s;

    .line 1039
    if-eqz v0, :cond_1

    .line 1040
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v0

    iget v2, v2, Landroid/support/v4/widget/s;->rightMargin:I

    add-int/2addr v0, v2

    .line 1041
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1042
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v0, v0

    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lD:I

    int-to-float v4, v4

    mul-float/2addr p1, v4

    add-float/2addr v0, p1

    int-to-float p1, v2

    add-float/2addr v0, p1

    sub-float/2addr v3, v0

    float-to-int p1, v3

    .line 1043
    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v0

    iget v2, v2, Landroid/support/v4/widget/s;->leftMargin:I

    add-int/2addr v0, v2

    .line 1045
    int-to-float v0, v0

    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lD:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 1048
    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Landroid/support/v4/widget/y;->b(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1049
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result p1

    move v0, v1

    :goto_1
    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1050
    :cond_3
    invoke-static {p0}, Landroid/support/v4/view/s;->e(Landroid/view/View;)V

    .line 1051
    const/4 p1, 0x1

    return p1

    .line 1053
    :cond_4
    return v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1237
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0}, Landroid/support/v4/widget/s;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1254
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/s;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/s;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 429
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 431
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 435
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 438
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 439
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lI:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/r;

    .line 440
    invoke-virtual {v2}, Landroid/support/v4/widget/r;->run()V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 443
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 766
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 768
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 769
    if-eqz v1, :cond_0

    .line 770
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    .line 771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 770
    invoke-virtual {v3, v1, v4, v5}, Landroid/support/v4/widget/y;->c(Landroid/view/View;II)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    .line 775
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 780
    :cond_1
    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_8

    if-ne v0, v2, :cond_2

    goto :goto_3

    .line 785
    :cond_2
    nop

    .line 787
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 805
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 806
    iget v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 807
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iget v4, v4, Landroid/support/v4/widget/y;->mTouchSlop:I

    .line 808
    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 809
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {p1}, Landroid/support/v4/widget/y;->cancel()V

    .line 810
    iput-boolean v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 811
    return v3

    .line 789
    :cond_4
    iput-boolean v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 790
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 792
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 793
    iput v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 795
    iget-object v4, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iget-object v5, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v4, v5, v0, v1}, Landroid/support/v4/widget/y;->c(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    .line 796
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 797
    nop

    .line 816
    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/y;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 818
    if-nez p1, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v2

    .line 781
    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {p1}, Landroid/support/v4/widget/y;->cancel()V

    .line 782
    return v3

    .line 776
    :cond_9
    :goto_4
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {v0}, Landroid/support/v4/widget/y;->cancel()V

    .line 777
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v1

    .line 660
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 661
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v4/widget/y;->mf:I

    goto :goto_0

    .line 663
    :cond_0
    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iput v2, v3, Landroid/support/v4/widget/y;->mf:I

    .line 665
    :goto_0
    sub-int v3, p4, p2

    .line 666
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 667
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    .line 668
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v6

    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v7

    .line 671
    nop

    .line 672
    nop

    .line 674
    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v8, :cond_4

    .line 675
    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    .line 678
    :cond_4
    move v11, v4

    move v12, v11

    const/4 v4, 0x0

    :goto_4
    const/16 v13, 0x8

    if-ge v4, v7, :cond_b

    .line 679
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 681
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_a

    .line 682
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/s;

    .line 687
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 688
    nop

    .line 690
    iget-boolean v2, v13, Landroid/support/v4/widget/s;->lN:Z

    if-eqz v2, :cond_7

    .line 691
    iget v2, v13, Landroid/support/v4/widget/s;->leftMargin:I

    iget v8, v13, Landroid/support/v4/widget/s;->rightMargin:I

    add-int/2addr v2, v8

    .line 692
    sub-int v8, v3, v5

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->ly:I

    sub-int v9, v8, v9

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v9, v12

    sub-int/2addr v9, v2

    .line 694
    iput v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lD:I

    .line 695
    if-eqz v1, :cond_5

    iget v2, v13, Landroid/support/v4/widget/s;->rightMargin:I

    goto :goto_5

    :cond_5
    iget v2, v13, Landroid/support/v4/widget/s;->leftMargin:I

    .line 696
    :goto_5
    add-int v17, v12, v2

    add-int v17, v17, v9

    div-int/lit8 v18, v15, 0x2

    add-int v10, v17, v18

    if-le v10, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    iput-boolean v8, v13, Landroid/support/v4/widget/s;->lO:Z

    .line 697
    int-to-float v8, v9

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 698
    add-int/2addr v2, v8

    add-int/2addr v2, v12

    .line 699
    int-to-float v8, v8

    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lD:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    .line 700
    nop

    .line 709
    const/4 v8, 0x0

    goto :goto_8

    .line 700
    :cond_7
    iget-boolean v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v2, :cond_8

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lE:I

    if-eqz v2, :cond_8

    .line 701
    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v10, v8, v2

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lE:I

    int-to-float v2, v2

    mul-float/2addr v10, v2

    float-to-int v8, v10

    goto :goto_7

    .line 702
    :cond_8
    const/4 v8, 0x0

    .line 709
    :goto_7
    move v2, v11

    :goto_8
    if-eqz v1, :cond_9

    .line 710
    sub-int v9, v3, v2

    add-int/2addr v9, v8

    .line 711
    sub-int v8, v9, v15

    goto :goto_9

    .line 713
    :cond_9
    sub-int v8, v2, v8

    .line 714
    add-int v9, v8, v15

    .line 717
    :goto_9
    nop

    .line 718
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v6

    .line 719
    invoke-virtual {v14, v8, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 721
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v11, v8

    .line 678
    move v12, v2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto/16 :goto_4

    .line 724
    :cond_b
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1d

    .line 725
    iget-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v1, :cond_12

    .line 726
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lE:I

    if-eqz v1, :cond_11

    .line 727
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v2

    iget-object v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/s;

    iget-boolean v4, v3, Landroid/support/v4/widget/s;->lO:Z

    if-eqz v4, :cond_d

    if-eqz v2, :cond_c

    iget v3, v3, Landroid/support/v4/widget/s;->rightMargin:I

    goto :goto_a

    :cond_c
    iget v3, v3, Landroid/support/v4/widget/s;->leftMargin:I

    :goto_a
    if-gtz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_b

    :cond_d
    const/4 v3, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v4, :cond_11

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    if-eq v6, v7, :cond_10

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lC:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v10, v8, v7

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lE:I

    int-to-float v7, v7

    mul-float/2addr v10, v7

    float-to-int v7, v10

    iput v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lC:F

    sub-float v10, v8, v1

    iget v8, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lE:I

    int-to-float v8, v8

    mul-float/2addr v10, v8

    float-to-int v8, v10

    sub-int/2addr v7, v8

    if-eqz v2, :cond_e

    neg-int v7, v7

    :cond_e
    invoke-virtual {v6, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lC:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    goto :goto_d

    :cond_f
    const/high16 v8, 0x3f800000    # 1.0f

    iget v7, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lC:F

    sub-float v7, v8, v7

    :goto_d
    iget v9, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lv:I

    invoke-direct {v0, v6, v7, v9}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_e

    :cond_10
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 729
    :cond_11
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/s;

    iget-boolean v1, v1, Landroid/support/v4/widget/s;->lO:Z

    if-eqz v1, :cond_13

    .line 730
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    iget v2, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lu:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    goto :goto_10

    .line 734
    :cond_12
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v7, :cond_13

    .line 735
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lu:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 738
    :cond_13
    :goto_10
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aW()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_11

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    :goto_11
    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    goto :goto_12

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_16

    :goto_13
    const/16 v16, 0x1

    goto :goto_14

    :cond_16
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-ge v7, v8, :cond_17

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_17

    goto :goto_13

    :cond_17
    const/16 v16, 0x0

    :goto_14
    if-eqz v16, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_15

    :cond_18
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v11, :cond_1d

    invoke-virtual {v0, v12}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eq v14, v1, :cond_1d

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v13, :cond_1c

    if-eqz v2, :cond_19

    move v15, v4

    goto :goto_17

    :cond_19
    move v15, v3

    :goto_17
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-eqz v2, :cond_1a

    move-object/from16 v19, v1

    move v1, v3

    goto :goto_18

    :cond_1a
    move-object/from16 v19, v1

    move v1, v4

    :goto_18
    move/from16 v20, v2

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v13, v8, :cond_1b

    if-lt v15, v9, :cond_1b

    if-gt v1, v7, :cond_1b

    if-gt v2, v10, :cond_1b

    const/4 v1, 0x4

    goto :goto_19

    :cond_1b
    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_1c
    move-object/from16 v19, v1

    move/from16 v20, v2

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    move/from16 v2, v20

    const/16 v13, 0x8

    goto :goto_16

    .line 741
    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 742
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 447
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 448
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 449
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 450
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 452
    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_1

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 458
    if-eq v1, v6, :cond_3

    .line 459
    if-nez v1, :cond_3

    .line 461
    nop

    .line 481
    move v2, v5

    goto :goto_0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_1
    if-nez v3, :cond_3

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 472
    if-nez v3, :cond_3

    .line 473
    nop

    .line 474
    nop

    .line 481
    move v4, v5

    move v3, v6

    goto :goto_0

    .line 477
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_3
    :goto_0
    nop

    .line 482
    nop

    .line 483
    const/4 v1, 0x0

    if-eq v3, v6, :cond_5

    if-eq v3, v7, :cond_4

    .line 492
    move v4, v1

    :goto_1
    move v5, v4

    goto :goto_2

    .line 485
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 486
    goto :goto_1

    .line 488
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 492
    move v5, v4

    move v4, v1

    .line 493
    :goto_2
    nop

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 495
    nop

    .line 496
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v9

    .line 498
    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    .line 499
    const-string v10, "SlidingPaneLayout"

    const-string v11, "onMeasure: More than two child views are not supported."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_6
    const/4 v10, 0x0

    iput-object v10, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    .line 507
    move v11, v1

    move v13, v4

    move v14, v8

    const/4 v12, 0x0

    move v4, v11

    :goto_3
    const/16 v15, 0x8

    const/16 v16, 0x1

    if-ge v4, v9, :cond_11

    .line 508
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 509
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v7, v18

    check-cast v7, Landroid/support/v4/widget/s;

    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_7

    .line 512
    iput-boolean v1, v7, Landroid/support/v4/widget/s;->lO:Z

    .line 513
    goto/16 :goto_7

    .line 516
    :cond_7
    iget v10, v7, Landroid/support/v4/widget/s;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_8

    .line 517
    iget v10, v7, Landroid/support/v4/widget/s;->weight:F

    add-float/2addr v12, v10

    .line 521
    iget v10, v7, Landroid/support/v4/widget/s;->width:I

    if-eqz v10, :cond_10

    .line 525
    :cond_8
    iget v10, v7, Landroid/support/v4/widget/s;->leftMargin:I

    iget v15, v7, Landroid/support/v4/widget/s;->rightMargin:I

    add-int/2addr v10, v15

    .line 526
    iget v15, v7, Landroid/support/v4/widget/s;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_9

    .line 527
    sub-int v1, v8, v10

    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 529
    :cond_9
    iget v1, v7, Landroid/support/v4/widget/s;->width:I

    const/4 v15, -0x1

    if-ne v1, v15, :cond_a

    .line 530
    sub-int v1, v8, v10

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_4

    .line 533
    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    iget v1, v7, Landroid/support/v4/widget/s;->width:I

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 537
    :goto_4
    iget v10, v7, Landroid/support/v4/widget/s;->height:I

    const/4 v15, -0x2

    if-ne v10, v15, :cond_b

    .line 538
    const/high16 v10, -0x80000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_5

    .line 539
    :cond_b
    iget v10, v7, Landroid/support/v4/widget/s;->height:I

    const/4 v15, -0x1

    if-ne v10, v15, :cond_c

    .line 540
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_5

    .line 542
    :cond_c
    const/high16 v10, 0x40000000    # 2.0f

    iget v15, v7, Landroid/support/v4/widget/s;->height:I

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 545
    :goto_5
    invoke-virtual {v6, v1, v15}, Landroid/view/View;->measure(II)V

    .line 546
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 547
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 549
    const/high16 v15, -0x80000000

    if-ne v3, v15, :cond_d

    if-le v10, v13, :cond_d

    .line 550
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 553
    :cond_d
    sub-int/2addr v14, v1

    .line 554
    if-gez v14, :cond_e

    move/from16 v1, v16

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, v7, Landroid/support/v4/widget/s;->lN:Z

    or-int/2addr v1, v11

    .line 555
    iget-boolean v7, v7, Landroid/support/v4/widget/s;->lN:Z

    if-eqz v7, :cond_f

    .line 556
    iput-object v6, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    .line 507
    :cond_f
    move v11, v1

    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_3

    .line 561
    :cond_11
    if-nez v11, :cond_12

    const/4 v1, 0x0

    cmpl-float v3, v12, v1

    if-lez v3, :cond_20

    .line 562
    :cond_12
    iget v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->ly:I

    sub-int v1, v8, v1

    .line 564
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v9, :cond_20

    .line 565
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 567
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v15, :cond_1f

    .line 568
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/widget/s;

    .line 573
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v15, :cond_1f

    .line 574
    iget v7, v6, Landroid/support/v4/widget/s;->width:I

    if-nez v7, :cond_13

    iget v7, v6, Landroid/support/v4/widget/s;->weight:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_13

    .line 578
    move/from16 v7, v16

    goto :goto_9

    .line 574
    :cond_13
    nop

    .line 578
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_14

    .line 579
    const/4 v10, 0x0

    goto :goto_a

    .line 578
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 579
    :goto_a
    if-eqz v11, :cond_19

    iget-object v15, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    if-eq v4, v15, :cond_19

    .line 580
    iget v15, v6, Landroid/support/v4/widget/s;->width:I

    if-gez v15, :cond_1f

    if-gt v10, v1, :cond_15

    iget v10, v6, Landroid/support/v4/widget/s;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_1f

    .line 584
    :cond_15
    if-eqz v7, :cond_18

    .line 587
    iget v7, v6, Landroid/support/v4/widget/s;->height:I

    const/4 v10, -0x2

    if-ne v7, v10, :cond_16

    .line 588
    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 601
    move v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_b

    .line 590
    :cond_16
    iget v7, v6, Landroid/support/v4/widget/s;->height:I

    const/4 v10, -0x1

    if-ne v7, v10, :cond_17

    .line 591
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b

    .line 594
    :cond_17
    const/high16 v7, 0x40000000    # 2.0f

    iget v6, v6, Landroid/support/v4/widget/s;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_b

    .line 598
    :cond_18
    const/high16 v7, 0x40000000    # 2.0f

    .line 599
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 598
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 601
    :goto_b
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 603
    invoke-virtual {v4, v10, v6}, Landroid/view/View;->measure(II)V

    .line 604
    goto/16 :goto_e

    .line 605
    :cond_19
    iget v7, v6, Landroid/support/v4/widget/s;->weight:F

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    if-lez v7, :cond_1f

    .line 607
    iget v7, v6, Landroid/support/v4/widget/s;->width:I

    if-nez v7, :cond_1c

    .line 609
    iget v7, v6, Landroid/support/v4/widget/s;->height:I

    const/4 v15, -0x2

    if-ne v7, v15, :cond_1a

    .line 610
    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 624
    move/from16 v15, v17

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_d

    .line 612
    :cond_1a
    const/high16 v7, -0x80000000

    iget v7, v6, Landroid/support/v4/widget/s;->height:I

    const/4 v15, -0x1

    if-ne v7, v15, :cond_1b

    .line 613
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_c

    .line 616
    :cond_1b
    const/high16 v7, 0x40000000    # 2.0f

    iget v15, v6, Landroid/support/v4/widget/s;->height:I

    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_c

    .line 620
    :cond_1c
    const/high16 v7, 0x40000000    # 2.0f

    .line 621
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 620
    invoke-static {v15, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 624
    :goto_c
    move/from16 v15, v17

    :goto_d
    if-eqz v11, :cond_1e

    .line 626
    iget v7, v6, Landroid/support/v4/widget/s;->leftMargin:I

    iget v6, v6, Landroid/support/v4/widget/s;->rightMargin:I

    add-int/2addr v7, v6

    .line 627
    sub-int v6, v8, v7

    .line 628
    move/from16 v19, v1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 630
    if-eq v10, v6, :cond_1d

    .line 631
    invoke-virtual {v4, v1, v15}, Landroid/view/View;->measure(II)V

    .line 633
    :cond_1d
    goto :goto_f

    .line 635
    :cond_1e
    move/from16 v19, v1

    const/4 v1, 0x0

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 636
    iget v6, v6, Landroid/support/v4/widget/s;->weight:F

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v12

    float-to-int v6, v6

    .line 637
    add-int/2addr v10, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 639
    invoke-virtual {v4, v7, v15}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 564
    :cond_1f
    :goto_e
    move/from16 v19, v1

    :goto_f
    const/4 v1, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    const/16 v15, 0x8

    goto/16 :goto_8

    .line 645
    :cond_20
    nop

    .line 646
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v13, v1

    .line 648
    invoke-virtual {v0, v2, v13}, Landroid/support/v4/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 649
    iput-boolean v11, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    .line 651
    iget-object v1, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iget v1, v1, Landroid/support/v4/widget/y;->lT:I

    if-eqz v1, :cond_21

    if-nez v11, :cond_21

    .line 653
    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {v0}, Landroid/support/v4/widget/y;->abort()V

    .line 655
    :cond_21
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1269
    instance-of v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1270
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1271
    return-void

    .line 1274
    :cond_0
    check-cast p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    .line 1275
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->jo:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1277
    iget-boolean v0, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->lQ:Z

    if-eqz v0, :cond_2

    .line 1278
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->e(F)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    goto :goto_0

    .line 1280
    :cond_2
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aV()Z

    .line 1282
    :cond_3
    :goto_0
    iget-boolean p1, p1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->lQ:Z

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    .line 1283
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1259
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1261
    new-instance v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1262
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lB:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    :goto_1
    iput-boolean v0, v1, Landroid/support/v4/widget/SlidingPaneLayout$SavedState;->lQ:Z

    .line 1264
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 748
    if-eq p1, p3, :cond_0

    .line 749
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 751
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 823
    iget-boolean v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-nez v0, :cond_0

    .line 824
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 827
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/y;->d(Landroid/view/MotionEvent;)V

    .line 829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 841
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->J(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 844
    iget v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v1, v0, v1

    .line 845
    iget v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v2, p1, v2

    .line 846
    iget-object v3, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iget v3, v3, Landroid/support/v4/widget/y;->mTouchSlop:I

    .line 847
    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-int/2addr v3, v3

    int-to-float v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lF:Landroid/support/v4/widget/y;

    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    .line 848
    invoke-virtual {v1, v2, v0, p1}, Landroid/support/v4/widget/y;->c(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 850
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->aV()Z

    goto :goto_0

    .line 833
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 835
    iput v0, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 836
    iput p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 837
    nop

    .line 851
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 755
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 756
    invoke-virtual {p0}, Landroid/support/v4/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lz:Z

    if-nez p2, :cond_1

    .line 757
    iget-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lA:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/widget/SlidingPaneLayout;->lG:Z

    .line 759
    :cond_1
    return-void
.end method
