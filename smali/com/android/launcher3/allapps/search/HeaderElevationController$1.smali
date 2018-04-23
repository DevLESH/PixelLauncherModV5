.class Lcom/android/launcher3/allapps/search/HeaderElevationController$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/HeaderElevationController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/search/HeaderElevationController;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 47
    iget-object v3, p0, Lcom/android/launcher3/allapps/search/HeaderElevationController$1;->this$0:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    iget v3, v3, Lcom/android/launcher3/allapps/search/HeaderElevationController;->mMaxElevation:F

    float-to-int v3, v3

    .line 48
    sub-int/2addr v0, v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 49
    return-void
.end method
