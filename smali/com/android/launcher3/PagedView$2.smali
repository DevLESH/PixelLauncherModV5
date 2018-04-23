.class Lcom/android/launcher3/PagedView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;II)V
    .locals 0

    .line 1286
    iput-object p1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iput p2, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1290
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 1295
    iget v0, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    .line 1296
    move v0, v2

    goto :goto_0

    .line 1295
    :cond_0
    nop

    .line 1296
    move v0, v3

    :goto_0
    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-ge v1, v4, :cond_1

    .line 1297
    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    .line 1298
    :goto_1
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    iget v5, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    if-le v4, v5, :cond_2

    .line 1299
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$dragViewIndex:I

    sub-int/2addr v4, v3

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    .line 1300
    :goto_2
    if-gt v1, v4, :cond_4

    .line 1301
    iget-object v5, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1305
    iget-object v6, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v6, v1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v6

    .line 1306
    iget-object v7, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    add-int v8, v1, v0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v7

    .line 1310
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ObjectAnimator;

    .line 1311
    if-eqz v8, :cond_3

    .line 1312
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1315
    :cond_3
    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1316
    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1317
    sget v7, Lcom/android/launcher3/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1318
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 1319
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1300
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1322
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->removeView(Landroid/view/View;)V

    .line 1323
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mDragView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher3/PagedView$2;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/PagedView;->addView(Landroid/view/View;I)V

    .line 1324
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iput v2, v0, Lcom/android/launcher3/PagedView;->mSidePageHoverIndex:I

    .line 1325
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_5

    .line 1326
    iget-object v0, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    iget-object v0, v0, Lcom/android/launcher3/PagedView;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher3/PagedView$2;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setActiveMarker(I)V

    .line 1328
    :cond_5
    return-void
.end method
