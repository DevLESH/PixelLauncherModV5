.class Lcom/android/launcher3/model/BaseModelUpdateTask$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

.field final synthetic val$widgets:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;->this$0:Lcom/android/launcher3/model/BaseModelUpdateTask;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;->val$widgets:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;->val$widgets:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->bindAllWidgets(Ljava/util/ArrayList;)V

    .line 128
    return-void
.end method
