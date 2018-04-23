.class public Lcom/google/android/apps/nexuslauncher/b/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/LauncherStateManager$StateListener;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mIsRtl:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private sb:Landroid/graphics/Bitmap;

.field private sc:La/a/a/a/a/a/d;

.field private sd:I

.field private final se:Landroid/graphics/Rect;

.field private final sf:Landroid/graphics/RectF;

.field private final sg:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->se:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sf:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sg:Landroid/graphics/Path;

    .line 53
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mIsRtl:Z

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;La/a/a/a/a/a/c;Landroid/graphics/Bitmap;)Lcom/google/android/apps/nexuslauncher/b/a;
    .locals 1

    .line 215
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/b/a;-><init>(Landroid/content/Context;)V

    .line 216
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/b/a;->a(La/a/a/a/a/a/c;Landroid/graphics/Bitmap;)V

    .line 217
    return-object v0
.end method

.method private synthetic a(La/a/a/a/a/a/c;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 167
    iget-boolean v0, p1, La/a/a/a/a/a/c;->abw:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    iget p1, p1, La/a/a/a/a/a/c;->aby:I

    div-int/lit8 p1, p1, 0x2

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 171
    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sd:I

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->invalidate()V

    .line 160
    return-void
.end method

.method private cl()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 208
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    .line 212
    :cond_1
    return-void
.end method

.method public static synthetic lambda$QODvg0YhXkBL51uK9t5tTRd377g(Lcom/google/android/apps/nexuslauncher/b/a;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b/a;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$RPXOQDYHBi_aO8VAiMspLkNG8uM(Lcom/google/android/apps/nexuslauncher/b/a;La/a/a/a/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b/a;->a(La/a/a/a/a/a/c;)V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/a/a/c;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 131
    :cond_0
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sb:Landroid/graphics/Bitmap;

    .line 132
    iget-object p2, p1, La/a/a/a/a/a/c;->abt:La/a/a/a/a/a/d;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sc:La/a/a/a/a/a/d;

    .line 133
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sc:La/a/a/a/a/a/d;

    iget-object p2, p2, La/a/a/a/a/a/d;->abB:[La/a/a/a/a/a/e;

    array-length p2, p2

    .line 134
    int-to-float v0, p2

    iget v1, p1, La/a/a/a/a/a/c;->abx:F

    div-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    .line 135
    div-float v0, v1, v0

    .line 136
    iget-boolean v2, p1, La/a/a/a/a/a/c;->abw:Z

    if-eqz v2, :cond_1

    .line 138
    iget v2, p1, La/a/a/a/a/a/c;->aby:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 142
    :cond_1
    add-int/lit8 v2, p2, 0x1

    new-array v2, v2, [Landroid/animation/Keyframe;

    .line 143
    const/4 v3, 0x0

    .line 144
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    const/4 v6, 0x2

    if-ge v3, p2, :cond_3

    .line 145
    div-float v7, v5, v1

    .line 146
    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v2, v3

    .line 147
    add-float/2addr v5, v0

    .line 148
    if-nez v3, :cond_2

    iget-boolean v7, p1, La/a/a/a/a/a/c;->abw:Z

    if-eqz v7, :cond_2

    .line 149
    iget v7, p1, La/a/a/a/a/a/c;->aby:I

    div-int/2addr v7, v6

    int-to-float v6, v7

    add-float/2addr v5, v6

    .line 144
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    add-int/lit8 v3, p2, -0x1

    invoke-static {v0, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v0

    aput-object v0, v2, p2

    .line 155
    const-string p2, "DoodleKeyFrame"

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 156
    const/4 v0, 0x1

    new-array v2, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p2, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    .line 157
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$QODvg0YhXkBL51uK9t5tTRd377g;

    invoke-direct {v2, p0}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$QODvg0YhXkBL51uK9t5tTRd377g;-><init>(Lcom/google/android/apps/nexuslauncher/b/a;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    float-to-long v1, v1

    invoke-virtual {p2, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v1, p1, La/a/a/a/a/a/c;->abv:Z

    if-eqz v1, :cond_4

    move v0, v6

    nop

    :cond_4
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 164
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p1, La/a/a/a/a/a/c;->abz:I

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 165
    new-instance p2, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$RPXOQDYHBi_aO8VAiMspLkNG8uM;

    invoke-direct {p2, p0, p1}, Lcom/google/android/apps/nexuslauncher/b/-$$Lambda$a$RPXOQDYHBi_aO8VAiMspLkNG8uM;-><init>(Lcom/google/android/apps/nexuslauncher/b/a;La/a/a/a/a/a/c;)V

    iget p1, p1, La/a/a/a/a/a/c;->abA:I

    int-to-long v0, p1

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/b/a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iput-object p0, v0, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    .line 62
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 177
    instance-of p1, p2, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->pause()V

    .line 180
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->cl()V

    .line 185
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iput-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mStateListener:Lcom/android/launcher3/LauncherStateManager$StateListener;

    .line 69
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sg:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sc:La/a/a/a/a/a/d;

    iget-object v0, v0, La/a/a/a/a/a/d;->abB:[La/a/a/a/a/a/e;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sd:I

    aget-object v0, v0, v1

    .line 86
    iget-object v1, v0, La/a/a/a/a/a/e;->abD:[La/a/a/a/a/a/b;

    array-length v1, v1

    .line 87
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 88
    iget-object v3, v0, La/a/a/a/a/a/e;->abD:[La/a/a/a/a/a/b;

    aget-object v3, v3, v2

    .line 89
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/b/a;->se:Landroid/graphics/Rect;

    iget v5, v3, La/a/a/a/a/a/b;->abq:I

    iget v6, v3, La/a/a/a/a/a/b;->abr:I

    iget v7, v3, La/a/a/a/a/a/b;->abq:I

    iget v8, v3, La/a/a/a/a/a/b;->width:I

    add-int/2addr v7, v8

    iget v8, v3, La/a/a/a/a/a/b;->abr:I

    iget v9, v3, La/a/a/a/a/a/b;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sc:La/a/a/a/a/a/d;

    iget v5, v5, La/a/a/a/a/a/d;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 95
    iget v5, v3, La/a/a/a/a/a/b;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 97
    iget v6, v3, La/a/a/a/a/a/b;->abo:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    .line 98
    iget v7, v3, La/a/a/a/a/a/b;->abp:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    .line 99
    add-float v8, v6, v5

    .line 100
    iget v9, v3, La/a/a/a/a/a/b;->height:I

    int-to-float v9, v9

    mul-float/2addr v9, v4

    add-float/2addr v9, v7

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget-boolean v4, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mIsRtl:Z

    if-eqz v4, :cond_1

    .line 104
    iget-boolean v3, v3, La/a/a/a/a/a/b;->abs:Z

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v3, v6

    .line 110
    sub-float v6, v8, v5

    .line 114
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sf:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 115
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sb:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/b/a;->se:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sf:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 73
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 74
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sg:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getMeasuredHeight()I

    move-result p1

    .line 76
    div-int/lit8 p2, p1, 0x2

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->sg:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->getMeasuredWidth()I

    move-result v1

    int-to-float v3, v1

    int-to-float v4, p1

    int-to-float v6, p2

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 78
    return-void
.end method

.method public final onStateSetImmediately$503aab85()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->cl()V

    .line 190
    return-void
.end method

.method public final onStateTransitionComplete$503aab85()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/a;->cl()V

    .line 200
    return-void
.end method

.method public final onStateTransitionStart$503aab85()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/a;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 195
    return-void
.end method
