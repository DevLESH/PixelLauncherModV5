.class Lcom/android/launcher3/LauncherModel$7;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$shortcutProvider:Lcom/android/launcher3/util/Provider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/Provider;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$7;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$7;->val$shortcutProvider:Lcom/android/launcher3/util/Provider;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
    .locals 0

    .line 634
    iget-object p1, p0, Lcom/android/launcher3/LauncherModel$7;->val$shortcutProvider:Lcom/android/launcher3/util/Provider;

    invoke-virtual {p1}, Lcom/android/launcher3/util/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 635
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 636
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    iget-object p1, p1, Lcom/android/launcher3/ShortcutInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/LauncherModel$7;->bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    .line 638
    return-void
.end method
