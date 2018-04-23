.class Lcom/android/launcher3/states/SpringLoadedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/states/SpringLoadedState;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/states/SpringLoadedState;Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/states/SpringLoadedState$1;->this$0:Lcom/android/launcher3/states/SpringLoadedState;

    iput-object p2, p0, Lcom/android/launcher3/states/SpringLoadedState$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/states/SpringLoadedState$1;->val$launcher:Lcom/android/launcher3/Launcher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 107
    return-void
.end method
