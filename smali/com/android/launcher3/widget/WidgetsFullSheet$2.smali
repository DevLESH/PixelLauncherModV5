.class Lcom/android/launcher3/widget/WidgetsFullSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetsFullSheet;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$000(Lcom/android/launcher3/widget/WidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetsRecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetsRecyclerView;->setLayoutFrozen(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$300(Lcom/android/launcher3/widget/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsFullSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsFullSheet;

    invoke-static {v0}, Lcom/android/launcher3/widget/WidgetsFullSheet;->access$400(Lcom/android/launcher3/widget/WidgetsFullSheet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 185
    return-void
.end method
