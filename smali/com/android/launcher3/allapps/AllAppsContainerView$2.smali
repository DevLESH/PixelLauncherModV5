.class Lcom/android/launcher3/allapps/AllAppsContainerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/R;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field final synthetic val$tabs:Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->val$tabs:Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrolled$486775f1(IF)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->val$tabs:Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateIndicatorPosition(IF)V

    .line 415
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->val$tabs:Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setMainActive(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    .line 422
    invoke-static {}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$200$423fdcab()V

    .line 423
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->bindFastScrollbar()V

    .line 426
    :cond_1
    if-ne p1, v1, :cond_2

    .line 427
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$400(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/BottomUserEducationView;->showIfNeeded(Lcom/android/launcher3/Launcher;)V

    .line 429
    :cond_2
    return-void
.end method
