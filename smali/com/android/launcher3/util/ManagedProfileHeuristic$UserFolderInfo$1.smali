.class Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderInfo;->prepareAutoUpdate()V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 197
    iget-object v2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;->this$0:Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 198
    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method
