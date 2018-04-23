.class Lcom/android/launcher3/popup/PopupContainerWithArrow$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 575
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 576
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 579
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    const/16 v1, 0x20

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 580
    return-void
.end method
