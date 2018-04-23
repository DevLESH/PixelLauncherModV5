.class public Lcom/android/launcher3/widget/WidgetsRecyclerView;
.super Lcom/android/launcher3/BaseRecyclerView;
.source "SourceFile"


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

.field private final mScrollbarTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0011

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbarTop:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private isModelNotReady()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final getAvailableScrollHeight()I
    .locals 2

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    iget-object v1, v1, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getScrollbarTrackHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbarTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getCurrentScrollY()I
    .locals 3

    .line 117
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v2, v1

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/af;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1

    .line 118
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public final getScrollBarTop()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbarTop:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/android/launcher3/BaseRecyclerView;->onFinishInflate()V

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/am;)V

    .line 62
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getContext()Landroid/content/Context;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/af;)V

    .line 63
    return-void
.end method

.method public final onUpdateScrollbar(I)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->isModelNotReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result p1

    .line 106
    if-gez p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 108
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    .line 112
    return-void
.end method

.method public final scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string p1, ""

    return-object p1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->stopScroll()V

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 85
    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/af;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 88
    int-to-float v1, v1

    mul-float/2addr v1, p1

    neg-float v1, v1

    float-to-int v1, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    iget-object v1, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v1, :cond_1

    iget-object v1, v2, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, -0x1

    iput v3, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 90
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    sub-float/2addr v0, v1

    :cond_2
    float-to-int p1, v0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/WidgetListRowEntry;

    iget-object p1, p1, Lcom/android/launcher3/widget/WidgetListRowEntry;->titleSectionName:Ljava/lang/String;

    return-object p1
.end method

.method public setAdapter(Landroid/support/v7/widget/V;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseRecyclerView;->setAdapter(Landroid/support/v7/widget/V;)V

    .line 68
    check-cast p1, Lcom/android/launcher3/widget/WidgetsListAdapter;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/WidgetsListAdapter;

    .line 69
    return-void
.end method
