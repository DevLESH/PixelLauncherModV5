.class public Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;
.super Lcom/google/android/apps/nexuslauncher/qsb/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/qsb/o;


# instance fields
.field private final sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

.field private final tr:Landroid/content/BroadcastReceiver;

.field private tt:Landroid/animation/AnimatorSet;

.field private tu:Z

.field private tv:Z

.field private tw:Z

.field private tx:Lcom/google/android/apps/nexuslauncher/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p2, Lcom/google/android/apps/nexuslauncher/qsb/g;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/qsb/g;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tr:Landroid/content/BroadcastReceiver;

    .line 79
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->h(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    .line 80
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance p1, Lcom/google/android/apps/nexuslauncher/qsb/j;

    invoke-direct {p1}, Lcom/google/android/apps/nexuslauncher/qsb/j;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 82
    return-void
.end method

.method static a(Lcom/android/launcher3/Launcher;)I
    .locals 5

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 329
    iget-object v1, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 331
    nop

    .line 332
    iget-object v2, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    int-to-float v2, v2

    int-to-float v1, v1

    const v3, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    .line 334
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    const v4, 0x3f2b851f    # 0.67f

    mul-float/2addr v3, v4

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0b00ae

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 336
    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    sub-float/2addr v0, v2

    sub-float/2addr v0, p0

    div-float/2addr v0, v1

    .line 337
    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 2

    .line 41
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tw:Z

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cA()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tw:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tw:Z

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cs()V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 9

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 290
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/i;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/i;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    aput v2, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 303
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 304
    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/Hotseat;->getHeight()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v3

    .line 303
    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 305
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 306
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 307
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 308
    goto :goto_0

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v5, v5, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 310
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v2, v4, v3

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 312
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 314
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 316
    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 317
    if-nez p2, :cond_2

    .line 318
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    .line 320
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cB()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tt:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private cA()Z
    .locals 3

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->forceColoredQsb(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cB()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 240
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tv:Z

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->n(Z)V

    .line 244
    return-void
.end method

.method private cy()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cJ()La/a/a/a/a/a/c;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cI()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 115
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sU:Z

    .line 116
    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sU:Z

    const v4, 0x7f0e003c

    if-eqz v3, :cond_2

    .line 117
    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    if-nez v3, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/google/android/apps/nexuslauncher/b/a;->a(Landroid/content/Context;La/a/a/a/a/a/c;Landroid/graphics/Bitmap;)Lcom/google/android/apps/nexuslauncher/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->addView(Landroid/view/View;I)V

    return-void

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->removeView(Landroid/view/View;)V

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/nexuslauncher/b/a;->a(La/a/a/a/a/a/c;Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->addView(Landroid/view/View;I)V

    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tx:Lcom/google/android/apps/nexuslauncher/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->removeView(Landroid/view/View;)V

    .line 130
    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void
.end method

.method private cz()V
    .locals 3

    .line 142
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 143
    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tw:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cH()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const v2, 0x7f130014

    goto :goto_1

    :cond_1
    :goto_0
    const v2, 0x7f130015

    :goto_1
    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 145
    const v1, 0x7f040025

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tw:Z

    if-eqz v0, :cond_2

    const v0, -0x33000001    # -1.3421772E8f

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->getBackgroundColor()I

    move-result v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->ar(I)V

    .line 147
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sO:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    .line 148
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cD()I

    move-result v1

    .line 147
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->d(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->as(I)V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cE()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->g(F)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cG()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sV:Z

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->cF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sS:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->co()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->addView(Landroid/view/View;)V

    .line 159
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 9

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sT:I

    .line 204
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/f;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/f;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/a;ZLjava/lang/String;I)V

    .line 205
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cu()[B

    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->qS:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/qsb/f;->tl:Landroid/os/Bundle;

    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startSearch([BLandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cB()V

    .line 208
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getLocationInWindow([I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getHeight()I

    move-result v3

    invoke-direct {p2, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v0, p1, v0

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->inset(II)V

    const p1, 0x7f0e003c

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sR:Landroid/view/View;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.nexuslauncher.FAST_TEXT_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "source_mic_alpha"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_1
    const-string v4, "source_round_left"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "source_round_right"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "source_logo_offset"

    invoke-static {p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->b(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v3, "source_mic_offset"

    invoke-static {v0, p2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->b(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "use_fade_animation"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.google.android.googlequicksearchbox"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x50000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/apps/nexuslauncher/qsb/h;

    invoke-direct {v4, p0}, Lcom/google/android/apps/nexuslauncher/qsb/h;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method protected final at(I)I
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final cs()V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->removeAllViews()V

    .line 106
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cz()V

    .line 107
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cy()V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cm()Landroid/content/SharedPreferences;

    .line 109
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method public final n(Z)V
    .locals 1

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tv:Z

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tu:Z

    .line 274
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(ZZ)V

    .line 275
    return-void
.end method

.method public final o(Z)V
    .locals 2

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tv:Z

    .line 279
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tu:Z

    if-eqz v1, :cond_0

    .line 280
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tu:Z

    .line 281
    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(ZZ)V

    .line 283
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tw:Z

    .line 87
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cz()V

    .line 88
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->cy()V

    .line 90
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onAttachedToWindow()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tr:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->a(Lcom/google/android/apps/nexuslauncher/qsb/o;)V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onClick(Landroid/view/View;)V

    .line 188
    if-ne p1, p0, :cond_0

    .line 189
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->au(I)V

    .line 190
    const-string p1, ""

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sT:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Ljava/lang/String;I)V

    .line 192
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onDetachedFromWindow()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sZ:Lcom/google/android/apps/nexuslauncher/qsb/k;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/k;->b(Lcom/google/android/apps/nexuslauncher/qsb/o;)V

    .line 101
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 175
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onLayout(ZIIII)V

    .line 176
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->a(Lcom/android/launcher3/Launcher;)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->setTranslationY(F)V

    .line 177
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 248
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onWindowFocusChanged(Z)V

    .line 250
    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->tv:Z

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->n(Z)V

    return-void

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->o(Z)V

    .line 255
    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 263
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->onWindowVisibilityChanged(I)V

    .line 264
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->o(Z)V

    .line 265
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setInsets(Landroid/graphics/Rect;)V

    .line 182
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->setVisibility(I)V

    .line 183
    return-void
.end method
