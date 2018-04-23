.class public Lcom/google/android/apps/nexuslauncher/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final rM:Ljava/util/Calendar;

.field rN:I

.field rO:I

.field rP:I

.field rQ:I

.field rR:I

.field rS:I

.field rT:Landroid/graphics/drawable/Drawable;

.field rU:Landroid/graphics/drawable/LayerDrawable;

.field scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final cg()Lcom/google/android/apps/nexuslauncher/a/a;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return-object v1

    .line 43
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/a/a;-><init>()V

    .line 44
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->scale:F

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->scale:F

    .line 45
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    .line 46
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    .line 47
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    .line 48
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rQ:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rQ:I

    .line 49
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rR:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rR:I

    .line 50
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rS:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rS:I

    .line 52
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/a/a;->ch()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rU:Landroid/graphics/drawable/LayerDrawable;

    .line 55
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/a/a;->rU:Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public final ch()Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    return-object v0

    .line 61
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rT:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    return-object v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ci()Z
    .locals 9

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rQ:I

    const/16 v3, 0xc

    rsub-int/lit8 v2, v2, 0xc

    add-int/2addr v0, v2

    rem-int/2addr v0, v3

    .line 75
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rR:I

    rsub-int/lit8 v4, v4, 0x3c

    add-int/2addr v2, v4

    rem-int/lit8 v2, v2, 0x3c

    .line 76
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rS:I

    rsub-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x3c

    .line 78
    nop

    .line 79
    iget v5, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 80
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rU:Landroid/graphics/drawable/LayerDrawable;

    iget v8, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rN:I

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 81
    mul-int/lit8 v0, v0, 0x3c

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    nop

    .line 86
    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    if-eq v3, v7, :cond_1

    .line 87
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rU:Landroid/graphics/drawable/LayerDrawable;

    iget v5, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rO:I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 88
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rM:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    nop

    .line 93
    move v0, v6

    :cond_1
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    if-eq v2, v7, :cond_2

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rU:Landroid/graphics/drawable/LayerDrawable;

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/a/a;->rP:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    mul-int/2addr v4, v1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    nop

    .line 100
    move v0, v6

    :cond_2
    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a/a;->cg()Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object v0

    return-object v0
.end method
