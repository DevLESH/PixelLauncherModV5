.class public Lcom/android/launcher3/uioverrides/UiFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createFromRenderer$5956766c(IILcom/android/launcher3/graphics/BitmapRenderer;)Landroid/graphics/Bitmap;
    .locals 1

    .line 58
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 59
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {p2, p1}, Lcom/android/launcher3/graphics/BitmapRenderer;->render(Landroid/graphics/Canvas;)V

    .line 60
    return-object p0
.end method

.method public static onWorkspaceLongPress$259c38b3(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 54
    return-void
.end method
