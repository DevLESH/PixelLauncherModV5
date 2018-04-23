.class public Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field public final animationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

.field final appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field final layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field final padding:Landroid/graphics/Rect;

.field recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field verticalFadingEdge:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Z)V
    .locals 9

    .line 521
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    .line 522
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$400(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Z)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 523
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$400(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$400(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    const/4 v8, 0x1

    move-object v3, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 525
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iput-object p2, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 526
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->animationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    .line 527
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/support/v7/widget/A;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 528
    return-void
.end method


# virtual methods
.method final applyPadding()V
    .locals 5

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 553
    :cond_0
    return-void
.end method

.method public final applyVerticalFadingEdgeEnabled(Z)V
    .locals 2

    .line 556
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->verticalFadingEdge:Z

    .line 557
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$600(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->verticalFadingEdge:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 559
    return-void
.end method

.method final setup(Landroid/view/View;Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mItemFilter:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->onAppsUpdated()V

    .line 532
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 533
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$600(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z

    iput-object p2, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 534
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/af;)V

    .line 535
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroid/support/v7/widget/V;)V

    .line 536
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setHasFixedSize(Z)V

    .line 538
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setItemAnimator(Landroid/support/v7/widget/aa;)V

    .line 539
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->animationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    if-eqz p1, :cond_0

    .line 540
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->animationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    iput-object p2, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mSpringAnimationHandler:Lcom/android/launcher3/anim/SpringAnimationHandler;

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;B)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/an;)V

    .line 542
    :cond_0
    new-instance p1, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p1, p2}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    .line 543
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addItemDecoration(Landroid/support/v7/widget/ae;)V

    .line 544
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object p1, p1, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    iput-object p1, p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 545
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->verticalFadingEdge:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyVerticalFadingEdgeEnabled(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 547
    return-void
.end method
