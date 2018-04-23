.class Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

.field final synthetic val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {p1}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->access$000(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 214
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    if-nez p2, :cond_0

    .line 215
    iget-object p2, p1, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    .line 216
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBarBottomPaddingPx:I

    sub-int/2addr p5, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p1

    .line 217
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {p2}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->access$100(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    invoke-static {p3}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->access$200(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;

    .line 218
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p2

    .line 219
    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    sub-int/2addr p5, p1

    invoke-interface {p2, p5}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 220
    return-void

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;->val$listener:Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;

    invoke-interface {p1, p5}, Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;->onScrollRangeChanged(I)V

    .line 223
    return-void
.end method
