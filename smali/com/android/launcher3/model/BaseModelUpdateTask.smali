.class public abstract Lcom/android/launcher3/model/BaseModelUpdateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# instance fields
.field private mAllAppsList:Lcom/android/launcher3/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mDataModel:Lcom/android/launcher3/model/BgDataModel;

.field mModel:Lcom/android/launcher3/LauncherModel;

.field private mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1

    .line 112
    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiHashMap;->clone()Lcom/android/launcher3/util/MultiHashMap;

    move-result-object p1

    .line 113
    new-instance v0, Lcom/android/launcher3/model/BaseModelUpdateTask$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask$3;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/util/MultiHashMap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 119
    return-void
.end method

.method public final bindUpdatedShortcuts(Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/launcher3/model/BaseModelUpdateTask$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/model/BaseModelUpdateTask$2;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 109
    :cond_0
    return-void
.end method

.method public final bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1

    .line 122
    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 123
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    .line 124
    new-instance v0, Lcom/android/launcher3/model/BaseModelUpdateTask$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask$4;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 130
    return-void
.end method

.method public final deleteAndBindComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 136
    new-instance v0, Lcom/android/launcher3/model/BaseModelUpdateTask$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask$5;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/util/ItemInfoMatcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    .line 142
    return-void
.end method

.method public abstract execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V
.end method

.method public final getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->getWriter(Z)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    return-object v0
.end method

.method public final init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 54
    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 55
    iput-object p3, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    .line 56
    iput-object p4, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    .line 57
    iput-object p5, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 58
    return-void
.end method

.method public final run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/AllAppsList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/AllAppsList;)V

    .line 70
    return-void
.end method

.method public final scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallback()Lcom/android/launcher3/LauncherModel$Callbacks;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/launcher3/model/BaseModelUpdateTask$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask$1;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;Lcom/android/launcher3/LauncherModel$Callbacks;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method
