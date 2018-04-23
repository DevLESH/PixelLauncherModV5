.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;
.super Landroid/support/v7/widget/an;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/an;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;B)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method


# virtual methods
.method public final onScrolled$5927c743(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .line 488
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$300(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView$OverScrollHelper;->mIsInOverScroll:Z

    if-eqz p1, :cond_0

    .line 490
    return-void

    .line 495
    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-gez p2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 496
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$400(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FI)V

    return-void

    .line 497
    :cond_1
    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 498
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$SpringMotionOnScrollListener;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$400(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Lcom/android/launcher3/anim/SpringAnimationHandler;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/anim/SpringAnimationHandler;->animateToFinalPosition(FI)V

    .line 500
    :cond_2
    return-void
.end method
