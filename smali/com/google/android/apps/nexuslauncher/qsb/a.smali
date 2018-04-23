.class public abstract Lcom/google/android/apps/nexuslauncher/qsb/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field protected mShadowBitmap:Landroid/graphics/Bitmap;

.field protected final mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

.field protected final sH:Landroid/text/TextPaint;

.field protected final sI:Landroid/graphics/Paint;

.field protected final sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field protected final sK:I

.field protected final sL:I

.field protected final sM:I

.field protected sN:Landroid/graphics/Bitmap;

.field protected sO:I

.field protected sP:I

.field protected sQ:F

.field protected sR:Landroid/view/View;

.field protected sS:Ljava/lang/String;

.field protected sT:I

.field protected sU:Z

.field protected sV:Z

.field private final sW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sH:Landroid/text/TextPaint;

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sI:Landroid/graphics/Paint;

    .line 72
    new-instance p2, Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    invoke-direct {p2}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    .line 85
    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sT:I

    .line 86
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sU:Z

    .line 100
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 101
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sW:I

    .line 105
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sM:I

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sK:I

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b00a5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sL:I

    .line 108
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sH:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b00a7

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 109
    return-void
.end method

.method private cq()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sR:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->requestLayout()V

    .line 340
    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cn()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method protected final a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 7

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 246
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    .line 247
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v4, v2

    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cn()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v5, v2

    .line 249
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v2

    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sV:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cp()I

    move-result v3

    iget v6, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sL:I

    add-int/2addr v3, v6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    int-to-float v6, v2

    .line 246
    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    .line 250
    return-void
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public final ar(I)V
    .locals 1

    .line 145
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sO:I

    if-eq v0, p1, :cond_0

    .line 146
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sO:I

    .line 147
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->invalidate()V

    .line 150
    :cond_0
    return-void
.end method

.method public final as(I)V
    .locals 1

    .line 154
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sP:I

    if-eq v0, p1, :cond_0

    .line 155
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sP:I

    .line 156
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sN:Landroid/graphics/Bitmap;

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->invalidate()V

    .line 159
    :cond_0
    return-void
.end method

.method protected abstract at(I)I
.end method

.method protected final au(I)V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    .line 345
    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->x(II)V

    .line 346
    return-void
.end method

.method protected final c(FFI)Landroid/graphics/Bitmap;
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cn()I

    move-result v0

    .line 262
    add-int/lit8 v1, v0, 0x14

    .line 264
    new-instance v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    invoke-direct {v2, p3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 265
    iput p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 266
    iput p2, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 267
    iget p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    iput p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 268
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 270
    sget-boolean p2, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz p2, :cond_0

    .line 271
    sget-object p2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 273
    :cond_0
    return-object p1
.end method

.method protected final cm()Landroid/content/SharedPreferences;
    .locals 1

    .line 131
    const v0, 0x7f0e003d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sR:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sR:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cq()V

    .line 135
    return-object v0
.end method

.method protected final cn()I
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final co()I
    .locals 2

    .line 286
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sV:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sM:I

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sM:I

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sK:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected final cp()I
    .locals 2

    .line 294
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sH:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sK:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sM:I

    add-int/2addr v0, v1

    return v0

    .line 297
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sM:I

    return v0
.end method

.method protected cr()Z
    .locals 5

    .line 380
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 381
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    return v1

    .line 384
    :cond_2
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/b;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/a;Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    .line 386
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    const v1, 0x3caaaaab

    const v2, 0x3c2aaaab

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 212
    int-to-float v0, v0

    mul-float v3, v0, v2

    mul-float/2addr v0, v1

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sO:I

    invoke-virtual {p0, v3, v0, v4}, Lcom/google/android/apps/nexuslauncher/qsb/a;->c(FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 219
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sV:Z

    if-eqz v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sN:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 222
    int-to-float v0, v0

    mul-float/2addr v2, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sP:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->c(FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sN:Landroid/graphics/Bitmap;

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sN:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->mShadowHelper:Lcom/android/launcher3/graphics/NinePatchDrawHelper;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cp()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cn()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    int-to-float v5, v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v6

    sub-int/2addr v3, v6

    add-int/2addr v3, v0

    int-to-float v6, v3

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/graphics/NinePatchDrawHelper;->draw(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FFF)V

    .line 229
    :cond_2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sQ:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cp()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v3, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v3, v1

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v12, v4, v5

    int-to-float v7, v0

    int-to-float v8, v1

    int-to-float v9, v2

    int-to-float v10, v3

    iget-object v13, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sI:Landroid/graphics/Paint;

    move-object v6, p1

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 232
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 233
    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 3

    .line 318
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p1, 0x10008000

    .line 319
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 320
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 318
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return-void

    .line 321
    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, ".SearchActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 323
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 327
    return-void
.end method

.method public final g(F)V
    .locals 2

    .line 162
    nop

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sQ:F

    .line 164
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sI:Landroid/graphics/Paint;

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sQ:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sI:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sI:Landroid/graphics/Paint;

    const/high16 v0, 0x66000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    return-void
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cm()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 115
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sR:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 305
    :try_start_0
    const-string p1, "android.os.ServiceManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "voiceinteraction"

    aput-object v2, v0, v4

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    const-string v0, "com.android.internal.app.IVoiceInteractionManagerService$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "asInterface"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "showSessionFromSession"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v2, v3, v4

    aput-object v2, v3, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 306
    return-void

    .line 311
    :cond_0
    goto :goto_0

    .line 308
    :catch_0
    move-exception p1

    .line 310
    const-string v0, "AbstractGoogleQsb"

    const-string v1, "Unable to start assist"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    :goto_0
    const-string p1, "android.intent.action.VOICE_ASSIST"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->f(Ljava/lang/String;)V

    .line 314
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 142
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 373
    if-eq p1, p0, :cond_0

    .line 374
    const/4 p1, 0x0

    return p1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cr()Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sJ:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 179
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->at(I)I

    move-result v1

    .line 181
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    div-int v2, v1, v2

    .line 182
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v3, 0x3f6b851f    # 0.92f

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 183
    sub-int/2addr v2, v0

    .line 185
    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 186
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 187
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/a;->setMeasuredDimension(II)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 191
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 192
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/qsb/a;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 196
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 197
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x2

    .line 201
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 190
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 203
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 331
    const-string p1, "opa_enabled"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->cq()V

    .line 334
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 120
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sU:Z

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sW:I

    int-to-float v0, v0

    goto :goto_0

    .line 122
    :cond_0
    const v0, 0x7f0e003c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 123
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_1

    .line 124
    const/4 v0, 0x1

    goto :goto_1

    .line 125
    :cond_1
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->sT:I

    .line 127
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/a;->requestLayout()V

    .line 172
    return-void
.end method
