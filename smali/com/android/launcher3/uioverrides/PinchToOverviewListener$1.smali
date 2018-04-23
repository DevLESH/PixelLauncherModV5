.class Lcom/android/launcher3/uioverrides/PinchToOverviewListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/PinchToOverviewListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/PinchToOverviewListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener$1;->this$0:Lcom/android/launcher3/uioverrides/PinchToOverviewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener$1;->this$0:Lcom/android/launcher3/uioverrides/PinchToOverviewListener;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->access$100(Lcom/android/launcher3/uioverrides/PinchToOverviewListener;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PinchToOverviewListener$1;->this$0:Lcom/android/launcher3/uioverrides/PinchToOverviewListener;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/PinchToOverviewListener;->access$000(Lcom/android/launcher3/uioverrides/PinchToOverviewListener;)Lcom/android/launcher3/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    :goto_0
    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 137
    return-void
.end method
