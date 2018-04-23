.class Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;
.super Landroid/support/v4/view/r;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-direct {p0}, Landroid/support/v4/view/r;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsContainerView;B)V
    .locals 0

    .line 562
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 565
    const/4 v0, 0x2

    return v0
.end method

.method public final instantiateItem$571d21bd(I)Ljava/lang/Object;
    .locals 1

    .line 576
    if-nez p1, :cond_0

    .line 577
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p1

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;->this$0:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 570
    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
