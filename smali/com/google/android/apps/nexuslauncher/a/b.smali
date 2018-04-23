.class public Lcom/google/android/apps/nexuslauncher/a/b;
.super Lcom/android/launcher3/FastBitmapDrawable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field rV:Lcom/google/android/apps/nexuslauncher/a/a;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/google/android/apps/nexuslauncher/a/a;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    .line 21
    return-void
.end method

.method private cj()V
    .locals 6

    .line 56
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/a/b;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 58
    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/a/b;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 60
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 33
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/a;->ci()Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/a/a;->scale:F

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/a/a;->scale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->cj()V

    .line 44
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/android/launcher3/FastBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 29
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/b;->rV:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/a;->ci()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->invalidateSelf()V

    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/a/b;->cj()V

    .line 53
    return-void
.end method
