.class public Lcom/android/launcher3/allapps/AllAppsContainerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field public final mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

.field public final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field public mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPersonalMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

.field public mSearchContainer:Landroid/view/View;

.field public mSearchModeWhileUsingTabs:Z

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field public mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

.field private mTabsPagerAdapter:Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;

.field private final mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

.field public mUsingTabs:Z

.field private mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

.field public final mWorkMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mPersonalMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    .line 78
    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mPersonalMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    new-instance p3, Lcom/android/launcher3/util/ItemInfoMatcher$3;

    invoke-direct {p3, p2}, Lcom/android/launcher3/util/ItemInfoMatcher$3;-><init>(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mWorkMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    .line 79
    new-instance p2, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {p2}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    .line 87
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 90
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    .line 103
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 104
    iget-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 106
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 108
    iget-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {p3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 110
    new-instance p3, Lcom/android/launcher3/ClickShadowView;

    invoke-direct {p3, p1}, Lcom/android/launcher3/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 112
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    iget-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    .line 113
    invoke-virtual {p3}, Lcom/android/launcher3/ClickShadowView;->getExtraSize()I

    move-result p3

    add-int/2addr p1, p3

    .line 114
    iget-object p3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {p0, p3, p1, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addView(Landroid/view/View;II)V

    .line 116
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    .line 117
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    new-instance p3, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    invoke-direct {p3, p0, p2}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Z)V

    aput-object p3, p1, p2

    .line 118
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Z)V

    aput-object p2, p1, p3

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/allapps/FloatingHeaderView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    return-object p0
.end method

.method static synthetic access$200$423fdcab()V
    .locals 0

    .line 71
    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/AllAppsContainerView;)[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/AllAppsContainerView;)Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/AllAppsContainerView;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    return p0
.end method

.method public static synthetic lambda$onFinishInflate$1(Lcom/android/launcher3/allapps/AllAppsContainerView;Landroid/view/View;Z)V
    .locals 0

    .line 233
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 236
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setupWorkProfileTabs$3(Lcom/android/launcher3/allapps/AllAppsContainerView;Landroid/view/View;)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/InterceptingViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public static synthetic lambda$setupWorkProfileTabs$4(Lcom/android/launcher3/allapps/AllAppsContainerView;Landroid/view/View;)V
    .locals 1

    .line 440
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/InterceptingViewPager;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic lambda$updateIconBadges$2(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/Set;Lcom/android/launcher3/BubbleTextView;)V
    .locals 2

    .line 330
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 333
    const/4 p0, 0x1

    invoke-virtual {p2, v0, p0}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 336
    :cond_0
    return-void
.end method

.method static synthetic lambda$updatePromiseAppProgress$0(Lcom/android/launcher3/PromiseAppInfo;Lcom/android/launcher3/BubbleTextView;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 184
    iget p0, p0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method public final addElevationController(Landroid/support/v7/widget/an;)V
    .locals 2

    .line 494
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/an;)V

    .line 497
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/SearchUiManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 253
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 293
    return-void
.end method

.method public final getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    iget v0, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0

    .line 204
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method public final getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->appsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method public final getRecyclerViewContainer()Landroid/view/View;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    return-object v0

    :cond_0
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isHeaderVisible()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 123
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 124
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 6

    .line 143
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 144
    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v4, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroid/support/v7/widget/V;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->swapAdapter(Landroid/support/v7/widget/V;Z)V

    .line 148
    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/ao;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ao;->clear()V

    .line 143
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    .line 288
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 232
    new-instance v0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$02ZoWAdkOVJGdsVd1uo1XIAR3hg;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$02ZoWAdkOVJGdsVd1uo1XIAR3hg;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 238
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    .line 239
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(ZZ)V

    .line 241
    const v0, 0x7f0e0012

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/allapps/SearchUiManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initialize(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    .line 244
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 137
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 138
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 260
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v0, v0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 267
    new-instance v2, Lcom/android/launcher3/allapps/AllAppsContainerView$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 281
    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 282
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v3, v3

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    .line 283
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 284
    return v1

    .line 260
    :cond_3
    :goto_0
    return v1
.end method

.method public final onSearchResultsChanged()V
    .locals 6

    .line 480
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 481
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_2

    .line 482
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-direct {v4, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v4, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    :cond_0
    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [I

    aput v4, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->cancelAnimator(Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->mBackgroundAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 480
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 485
    :cond_3
    return-void
.end method

.method public final rebindAdapters(Z)V
    .locals 1

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(ZZ)V

    .line 345
    return-void
.end method

.method public final rebindAdapters(ZZ)V
    .locals 6

    .line 348
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    const/4 p2, 0x0

    move v0, p2

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setLayoutManager(Landroid/support/v7/widget/af;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getRecyclerViewContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_3

    const v0, 0x7f04000c

    goto :goto_1

    :cond_3
    const v0, 0x7f04000a

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addView(Landroid/view/View;I)V

    if-eqz p1, :cond_4

    check-cast v0, Lcom/android/launcher3/allapps/InterceptingViewPager;

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    .line 352
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    .line 354
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 355
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 357
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz p1, :cond_f

    .line 358
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, p2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/InterceptingViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mPersonalMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 359
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, v1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/InterceptingViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mWorkMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 360
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTabsPagerAdapter:Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;

    if-nez p1, :cond_10

    const p1, 0x7f0e002f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    new-instance v3, Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;B)V

    iput-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTabsPagerAdapter:Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/r;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    move v4, p2

    :goto_3
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    invoke-virtual {v5}, Landroid/support/v4/view/r;->destroyItem$30510aeb()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, p2

    :goto_4
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_7

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/P;

    iget-boolean v5, v5, Landroid/support/v4/view/P;->jU:Z

    if-nez v5, :cond_6

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v4, v4, -0x1

    :cond_6
    add-int/2addr v4, v1

    goto :goto_4

    :cond_7
    iput p2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, p2, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_8
    iput-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    iput p2, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    if-eqz v3, :cond_c

    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/T;

    if-nez v3, :cond_9

    new-instance v3, Landroid/support/v4/view/T;

    invoke-direct {v3, v0}, Landroid/support/v4/view/T;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v3, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/T;

    :cond_9
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/T;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/r;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    iput-boolean p2, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    iget-boolean v3, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/r;

    invoke-virtual {v4}, Landroid/support/v4/view/r;->getCount()I

    move-result v4

    iput v4, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v4, :cond_a

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {v0, v3, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    iput v3, v0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    iput-object v2, v0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v2, v0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_5

    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_5

    :cond_b
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    :cond_c
    :goto_5
    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v2, :cond_d

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, p2

    :goto_6
    if-ge v3, v2, :cond_d

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/InterceptingViewPager;

    new-instance v2, Lcom/android/launcher3/allapps/AllAppsContainerView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/allapps/PersonalWorkSlidingTabStrip;)V

    iget-object p1, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez p1, :cond_e

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    :cond_e
    iget-object p1, v0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->bindFastScrollbar()V

    const p1, 0x7f0e0030

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$1Bixj6v8x-sCUT74MlvR1k9hsYY;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$1Bixj6v8x-sCUT74MlvR1k9hsYY;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0e0031

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$mB_iQDoe7NdibkCOmVeuqamOJ6w;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$mB_iQDoe7NdibkCOmVeuqamOJ6w;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 362
    :cond_f
    iput-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTabsPagerAdapter:Lcom/android/launcher3/allapps/AllAppsContainerView$TabsPagerAdapter;

    .line 363
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, p2

    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 364
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p1, p1, v1

    iput-object v2, p1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 366
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setupHeader()V

    .line 368
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 369
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object p2, p2, v1

    iget-object p2, p2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 371
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 214
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->isHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset()V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->reset()V

    .line 224
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 6

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 298
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr v1, v2

    .line 301
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 302
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 303
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iput v1, v5, Landroid/graphics/Rect;->right:I

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 304
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 301
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 308
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 309
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 310
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 311
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 312
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3, v2, v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setPadding(IIII)V

    goto :goto_1

    .line 314
    :cond_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 315
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setPadding(IIII)V

    .line 317
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 321
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    .line 325
    return-void
.end method

.method public final setLastSearchQuery(Ljava/lang/String;)V
    .locals 6

    .line 463
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v4, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0031

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mEmptySearchMessage:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mUsingTabs:Z

    if-eqz p1, :cond_1

    .line 467
    iput-boolean v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    .line 468
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(ZZ)V

    .line 470
    :cond_1
    return-void
.end method

.method public final setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mTouchFeedbackView:Lcom/android/launcher3/ClickShadowView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ClickShadowView;->setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V

    .line 156
    return-void
.end method

.method public final setupHeader()V
    .locals 5

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v0, v2, v4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup([Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;Z)V

    .line 455
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v0

    .line 456
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->padding:Landroid/graphics/Rect;

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 458
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyPadding()V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_1
    return-void
.end method

.method public final updateIconBadges(Ljava/util/Set;)V
    .locals 3

    .line 328
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 329
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance v2, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$kZFmZ2qhz5QtU9mosmDg_8w6lh8;

    invoke-direct {v2, v0, p1}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$kZFmZ2qhz5QtU9mosmDg_8w6lh8;-><init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Lcom/android/launcher3/allapps/AllAppsStore$IconAction;)V

    .line 337
    return-void
.end method

.method public final updatePromiseAppProgress(Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance v1, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$9t3wJ8QT315EuI2HgUvJ889W7lU;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/-$$Lambda$AllAppsContainerView$9t3wJ8QT315EuI2HgUvJ889W7lU;-><init>(Lcom/android/launcher3/PromiseAppInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Lcom/android/launcher3/allapps/AllAppsStore$IconAction;)V

    .line 187
    return-void
.end method
