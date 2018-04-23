.class Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/anim/SpringAnimationHandler$AnimationFactory;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;B)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V

    return-void
.end method

.method private calculateSpringValues(Landroid/support/a/C;II)V
    .locals 5

    .line 435
    const/4 v0, 0x1

    add-int v1, v0, p2

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    .line 436
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, v2, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    int-to-float p3, p3

    sub-float v4, p3, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    cmpg-float p3, p3, v3

    if-gez p3, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-lez v4, :cond_3

    if-ne v4, v0, :cond_2

    const v2, 0x3e4ccccd    # 0.2f

    :goto_2
    add-float/2addr p3, v2

    goto :goto_3

    :cond_2
    const v2, 0x3dcccccd    # 0.1f

    goto :goto_2

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 438
    :cond_3
    const/high16 v0, -0x3d380000    # -100.0f

    add-float/2addr v1, p3

    mul-float/2addr v0, v1

    .line 439
    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p3, v1

    .line 441
    int-to-float p2, p2

    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr p2, v1

    const/high16 v1, 0x44610000    # 900.0f

    sub-float p2, v1, p2

    const/high16 v2, 0x44110000    # 580.0f

    invoke-static {p2, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p2

    .line 446
    iput v0, p1, Landroid/support/a/i;->ax:F

    check-cast p1, Landroid/support/a/C;

    .line 447
    iput p3, p1, Landroid/support/a/i;->aw:F

    check-cast p1, Landroid/support/a/C;

    .line 448
    iget-object p1, p1, Landroid/support/a/C;->aD:Landroid/support/a/D;

    .line 449
    invoke-virtual {p1, p2}, Landroid/support/a/D;->c(F)Landroid/support/a/D;

    move-result-object p1

    const p2, 0x3f0ccccd    # 0.55f

    .line 450
    invoke-virtual {p1, p2}, Landroid/support/a/D;->d(F)Landroid/support/a/D;

    .line 451
    return-void
.end method


# virtual methods
.method public final synthetic initialize(Ljava/lang/Object;)Landroid/support/a/C;
    .locals 3

    .line 382
    check-cast p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget-object v0, Landroid/support/a/i;->af:Landroid/support/a/z;

    new-instance v1, Landroid/support/a/C;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Landroid/support/a/C;-><init>(Ljava/lang/Object;Landroid/support/a/A;F)V

    new-instance p1, Landroid/support/a/D;

    invoke-direct {p1, v2}, Landroid/support/a/D;-><init>(F)V

    iput-object p1, v1, Landroid/support/a/C;->aD:Landroid/support/a/D;

    return-object v1
.end method

.method public final setDefaultValues(Landroid/support/a/C;)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->calculateSpringValues(Landroid/support/a/C;II)V

    .line 427
    return-void
.end method

.method public final synthetic update(Landroid/support/a/C;Ljava/lang/Object;)V
    .locals 3

    .line 382
    check-cast p2, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    rem-int v0, p2, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    div-int/2addr p2, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v1, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v2, v1, 0x2

    if-le p2, v2, :cond_0

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AllAppsSpringAnimationFactory;->calculateSpringValues(Landroid/support/a/C;II)V

    return-void
.end method
