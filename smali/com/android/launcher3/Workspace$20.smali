.class Lcom/android/launcher3/Workspace$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$changedInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V
    .locals 0

    .line 3326
    iput-object p1, p0, Lcom/android/launcher3/Workspace$20;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$20;->val$changedInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 1

    .line 3329
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace$20;->val$changedInfo:Ljava/util/ArrayList;

    .line 3330
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3331
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/16 v0, 0x64

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 3332
    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->applyState()V

    .line 3335
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
