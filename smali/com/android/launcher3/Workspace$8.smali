.class Lcom/android/launcher3/Workspace$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$finalView:Landroid/view/View;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 2826
    iput-object p1, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$8;->val$finalView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$8;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2829
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$finalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2830
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$finalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2832
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2833
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2835
    :cond_1
    return-void
.end method
