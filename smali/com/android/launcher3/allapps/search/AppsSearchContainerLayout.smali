.class public Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;


# instance fields
.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private mDivider:Landroid/view/View;

.field private mElevationController:Lcom/android/launcher3/allapps/search/HeaderElevationController;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mMinHeight:I

.field private final mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

.field private final mSearchBoxHeight:I

.field private mSearchInput:Lcom/android/launcher3/ExtendedEditText;

.field private final mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSpring:Landroid/support/a/C;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0038

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mMinHeight:I

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 81
    const p2, 0x7f0b0037

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBoxHeight:I

    .line 82
    new-instance p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    .line 84
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 85
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 88
    new-instance p1, Landroid/support/a/C;

    new-instance p2, Landroid/support/a/B;

    invoke-direct {p2}, Landroid/support/a/B;-><init>()V

    invoke-direct {p1, p2}, Landroid/support/a/C;-><init>(Landroid/support/a/B;)V

    new-instance p2, Landroid/support/a/D;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroid/support/a/D;-><init>(F)V

    iput-object p2, p1, Landroid/support/a/C;->aD:Landroid/support/a/D;

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSpring:Landroid/support/a/C;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mMinHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBoxHeight:I

    return p0
.end method

.method private notifyResultChanged()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mElevationController:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->reset()V

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->onSearchResultsChanged()V

    .line 205
    return-void
.end method


# virtual methods
.method public final addOnScrollRangeChangeListener(Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    new-instance v1, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout$1;-><init>(Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 225
    return-void
.end method

.method public final clearSearchResult()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->notifyResultChanged()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(Z)V

    iput-boolean v1, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchModeWhileUsingTabs:Z

    .line 200
    :cond_1
    return-void
.end method

.method public final getSpringForFling()Landroid/support/a/C;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSpring:Landroid/support/a/C;

    return-object v0
.end method

.method public final initialize(Lcom/android/launcher3/allapps/AllAppsContainerView;)V
    .locals 3

    .line 138
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 139
    iput-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mElevationController:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addElevationController(Landroid/support/v7/widget/an;)V

    .line 141
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 142
    iget-object v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/search/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 141
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V

    .line 143
    return-void
.end method

.method public final onAppsUpdated()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    .line 153
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 118
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 124
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 94
    const v0, 0x7f0e0064

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ExtendedEditText;

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    .line 95
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mDivider:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/android/launcher3/allapps/search/HeaderElevationController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mDivider:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/search/HeaderElevationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mElevationController:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    .line 102
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/ExtendedEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v1, Lcom/android/launcher3/graphics/TintedDrawableSpan;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02002c

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/graphics/TintedDrawableSpan;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 108
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 112
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 129
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mMinHeight:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 133
    return-void
.end method

.method public final onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .line 182
    if-eqz p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 184
    invoke-direct {p0}, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->notifyResultChanged()V

    .line 185
    iget-object p2, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public final preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 168
    if-lez v0, :cond_0

    .line 169
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    :goto_0
    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 172
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 171
    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 173
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->focusSearchField()V

    .line 178
    :cond_1
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mElevationController:Lcom/android/launcher3/allapps/search/HeaderElevationController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/HeaderElevationController;->reset()V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/search/AppsSearchContainerLayout;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->reset()V

    .line 159
    return-void
.end method
