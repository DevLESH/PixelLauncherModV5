.class Lcom/android/launcher3/model/BaseModelUpdateTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

.field final synthetic val$updatedShortcuts:Ljava/util/ArrayList;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;->val$updatedShortcuts:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindShortcutsChanged$113655ee(Ljava/util/ArrayList;)V

    .line 106
    return-void
.end method
