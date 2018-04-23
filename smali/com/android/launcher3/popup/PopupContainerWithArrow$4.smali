.class Lcom/android/launcher3/popup/PopupContainerWithArrow$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 848
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 849
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    if-eqz p1, :cond_0

    .line 850
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    return-void

    .line 852
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->access$400(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    .line 854
    return-void
.end method
