.class public Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;
.super Lcom/google/android/apps/nexuslauncher/qsb/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;
.implements Lcom/google/android/apps/nexuslauncher/qsb/o;


# instance fields
.field private mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private mSpring:Landroid/support/a/C;

.field private final sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

.field private final ta:I

.field private tb:I

.field private tc:Landroid/graphics/Bitmap;

.field private td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

.field private te:F

.field public tf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tb:I

    .line 64
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00a9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->ta:I

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->te:F

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->te:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setTranslationY(F)V

    .line 69
    new-instance p1, Landroid/support/a/C;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/qsb/c;

    const-string p3, "allAppsQsbLayoutSpringAnimation"

    invoke-direct {p2, p0, p3}, Lcom/google/android/apps/nexuslauncher/qsb/c;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Landroid/support/a/C;-><init>(Ljava/lang/Object;Landroid/support/a/A;F)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mSpring:Landroid/support/a/C;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->te:F

    return p0
.end method

.method private ct()V
    .locals 1

    .line 143
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sO:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->as(I)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sS:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sV:Z

    .line 146
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3

    .line 170
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/f;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/a;ZLjava/lang/String;I)V

    .line 171
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cu()[B

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->qS:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 173
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/f;->tl:Landroid/os/Bundle;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startSearch([BLandroid/os/Bundle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tf:Z

    .line 174
    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tf:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->showKeyboard()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f040008

    invoke-virtual {p1, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object p0, p1, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->tq:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->mSearchBarController:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/e;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/search/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, p1}, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/search/SearchAlgorithm;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 179
    :cond_1
    :goto_1
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sT:I

    .line 180
    return-void
.end method

.method public final addOnScrollRangeChangeListener(Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 266
    return-void
.end method

.method protected final at(I)I
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 122
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    .line 121
    return p1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method final av(I)V
    .locals 2

    .line 269
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p1

    .line 270
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tb:I

    if-eq v0, p1, :cond_0

    .line 271
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tb:I

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->invalidate()V

    .line 274
    :cond_0
    return-void
.end method

.method protected final cr()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x0

    return v0

    .line 281
    :cond_0
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cr()Z

    move-result v0

    return v0
.end method

.method public final cs()V
    .locals 0

    .line 138
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->ct()V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->invalidate()V

    .line 140
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 243
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tb:I

    if-lez v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tc:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 246
    nop

    .line 247
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->c(FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tc:Landroid/graphics/Bitmap;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    iget-object v0, v0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tb:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tc:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    iget-object v0, v0, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->draw(Landroid/graphics/Canvas;)V

    .line 256
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->a(Ljava/lang/String;I)V

    .line 165
    return-void
.end method

.method public final getSpringForFling()Landroid/support/a/C;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mSpring:Landroid/support/a/C;

    return-object v0
.end method

.method public final initialize(Lcom/android/launcher3/allapps/AllAppsContainerView;)V
    .locals 3

    .line 131
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    .line 132
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/d;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;B)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->addElevationController(Landroid/support/v7/widget/an;)V

    .line 133
    :goto_0
    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->applyVerticalFadingEdgeEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onAttachedToWindow()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->ct()V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Lcom/google/android/apps/nexuslauncher/qsb/o;)V

    .line 98
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 155
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onClick(Landroid/view/View;)V

    .line 156
    if-ne p1, p0, :cond_0

    .line 157
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->au(I)V

    .line 158
    const-string p1, ""

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sT:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->a(Ljava/lang/String;I)V

    .line 160
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 103
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onDetachedFromWindow()V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->b(Lcom/google/android/apps/nexuslauncher/qsb/o;)V

    .line 105
    return-void
.end method

.method public final onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v1, 0x7f01002b

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_0

    const v0, -0x14000001

    goto :goto_0

    :cond_0
    const v0, -0x33000001    # -1.3421772E8f

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v2, 0x7f010026

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 112
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->b(II)I

    move-result v0

    .line 114
    nop

    .line 115
    iget p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    invoke-static {v0, p1}, Landroid/support/v4/b/a;->b(II)I

    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->ar(I)V

    .line 116
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 230
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onLayout(ZIIII)V

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    .line 235
    sub-int/2addr p4, p2

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    .line 237
    sub-int/2addr p1, p2

    .line 238
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setTranslationX(F)V

    .line 239
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onWindowFocusChanged(Z)V

    .line 185
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tf:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tf:Z

    .line 186
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onWindowVisibilityChanged(I)V

    .line 195
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tf:Z

    .line 196
    return-void
.end method

.method public final preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .line 261
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->av(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->clearSearchResult()V

    .line 221
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->removeView(Landroid/view/View;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->td:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    .line 226
    :cond_0
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->te:F

    neg-float v1, v1

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->ta:I

    sub-int/2addr p1, v2

    .line 86
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->requestLayout()V

    .line 88
    return-void
.end method
