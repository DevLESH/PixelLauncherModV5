.class Lcom/android/launcher3/AlphaUpdateListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mAccessibilityEnabled:Z

.field private mCanceled:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mCanceled:Z

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    .line 48
    iput-boolean p2, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    .line 49
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;Z)V
    .locals 2

    .line 59
    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 62
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :cond_2
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 70
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mCanceled:Z

    .line 71
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 75
    iget-boolean p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {p1, v0}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 77
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/android/launcher3/AlphaUpdateListener;->mView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/AlphaUpdateListener;->mAccessibilityEnabled:Z

    invoke-static {p1, v0}, Lcom/android/launcher3/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 54
    return-void
.end method
