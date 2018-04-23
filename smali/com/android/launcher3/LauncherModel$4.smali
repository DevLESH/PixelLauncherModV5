.class Lcom/android/launcher3/LauncherModel$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field final synthetic val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/LauncherModel$Callbacks;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$4;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$4;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$4;->val$oldCallbacks:Lcom/android/launcher3/LauncherModel$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherModel$Callbacks;->clearPendingBinds()V

    .line 450
    return-void
.end method
