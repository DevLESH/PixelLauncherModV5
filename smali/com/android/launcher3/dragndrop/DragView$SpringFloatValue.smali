.class Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VALUE:Landroid/support/a/A;


# instance fields
.field private final mDelta:F

.field private final mSpring:Landroid/support/a/C;

.field private mValue:F

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 636
    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->VALUE:Landroid/support/a/A;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 3

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mView:Landroid/view/View;

    .line 663
    new-instance v0, Landroid/support/a/C;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->VALUE:Landroid/support/a/A;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/support/a/C;-><init>(Ljava/lang/Object;Landroid/support/a/A;F)V

    neg-float v1, p2

    .line 664
    iput v1, v0, Landroid/support/a/i;->ax:F

    check-cast v0, Landroid/support/a/C;

    iput p2, v0, Landroid/support/a/i;->aw:F

    check-cast v0, Landroid/support/a/C;

    new-instance p2, Landroid/support/a/D;

    invoke-direct {p2, v2}, Landroid/support/a/D;-><init>(F)V

    .line 666
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/support/a/D;->d(F)Landroid/support/a/D;

    move-result-object p2

    .line 667
    const/high16 v1, 0x457a0000    # 4000.0f

    invoke-virtual {p2, v1}, Landroid/support/a/D;->c(F)Landroid/support/a/D;

    move-result-object p2

    .line 665
    iput-object p2, v0, Landroid/support/a/C;->aD:Landroid/support/a/D;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mSpring:Landroid/support/a/C;

    .line 668
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    .line 669
    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F
    .locals 0

    .line 634
    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mValue:F

    return p0
.end method

.method static synthetic access$1402(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)F
    .locals 0

    .line 634
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mValue:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final animateToPos(F)V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mSpring:Landroid/support/a/C;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/a/C;->b(F)V

    .line 673
    return-void
.end method
