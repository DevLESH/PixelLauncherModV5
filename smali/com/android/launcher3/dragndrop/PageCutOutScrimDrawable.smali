.class public Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private mAlpha:I

.field private final mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mHighlightRect:Landroid/graphics/Rect;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mHighlightRect:Landroid/graphics/Rect;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mAlpha:I

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 45
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 46
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 52
    iget v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mAlpha:I

    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->computeScrollWithoutInvalidation()V

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    if-eq v0, v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mHighlightRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mHighlightRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 64
    :cond_0
    const/high16 v0, 0x66000000

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mWallpaperColorInfo:Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    iget v1, v1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mMainColor:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->b(II)I

    move-result v0

    .line 65
    iget v1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mAlpha:I

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->d(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 88
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 72
    iget v0, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 73
    iput p1, p0, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->mAlpha:I

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->invalidateSelf()V

    .line 76
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 84
    return-void
.end method
