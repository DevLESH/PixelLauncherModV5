.class public Lcom/android/launcher3/allapps/search/HeaderElevationController;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field private mCurrentY:I

.field private final mHeader:Landroid/view/View;

.field private final mHeaderChild:Landroid/view/View;

.field final mMaxElevation:F

.field private final mScrollToElevation:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/an;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    .line 26
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    .line 27
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 28
    const v1, 0x7f0b0044

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mMaxElevation:F

    .line 29
    const v1, 0x7f0b0045

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mScrollToElevation:F

    .line 34
    new-instance p1, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;-><init>(Lcom/android/launcher3/allapps/search/HeaderElevationController;)V

    .line 51
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeaderChild:Landroid/view/View;

    .line 53
    return-void
.end method

.method private onScroll(I)V
    .locals 2

    .line 67
    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mScrollToElevation:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mScrollToElevation:F

    div-float/2addr v0, v1

    .line 68
    iget v1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mMaxElevation:F

    mul-float/2addr v1, v0

    .line 69
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeader:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mHeaderChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method public final onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 62
    check-cast p1, Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getCurrentScrollY()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    .line 63
    iget p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->onScroll(I)V

    .line 64
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    .line 57
    iget v0, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mCurrentY:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->onScroll(I)V

    .line 58
    return-void
.end method
