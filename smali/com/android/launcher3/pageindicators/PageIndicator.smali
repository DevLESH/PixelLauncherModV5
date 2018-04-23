.class public abstract Lcom/android/launcher3/pageindicators/PageIndicator;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field protected mNumPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 31
    return-void
.end method


# virtual methods
.method public final addMarker()V
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 39
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onPageCountChanged()V

    .line 40
    return-void
.end method

.method protected onPageCountChanged()V
    .locals 0

    .line 52
    return-void
.end method

.method public final removeMarker()V
    .locals 1

    .line 43
    iget v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onPageCountChanged()V

    .line 45
    return-void
.end method

.method public setActiveMarker(I)V
    .locals 0

    .line 35
    return-void
.end method

.method public final setMarkersCount(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/launcher3/pageindicators/PageIndicator;->mNumPages:I

    .line 49
    invoke-virtual {p0}, Lcom/android/launcher3/pageindicators/PageIndicator;->onPageCountChanged()V

    .line 50
    return-void
.end method

.method public setScroll(II)V
    .locals 0

    .line 33
    return-void
.end method

.method public setShouldAutoHide(Z)V
    .locals 0

    .line 54
    return-void
.end method
