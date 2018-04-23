.class Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Launcher$OnResumeCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mOriginal:Lcom/android/launcher3/DragSource;

.field mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/UninstallDropTarget;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/UninstallDropTarget;Lcom/android/launcher3/DragSource;Landroid/content/Context;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/UninstallDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    .line 184
    iput-object p3, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mContext:Landroid/content/Context;

    .line 185
    return-void
.end method


# virtual methods
.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/launcher3/DragSource;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 197
    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    .line 190
    iput-object p2, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 191
    return-void
.end method

.method public final onLauncherResume()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 203
    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/UninstallDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->sendFailure()V

    .line 210
    return-void
.end method

.method public final sendFailure()V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/UninstallDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 216
    return-void
.end method
