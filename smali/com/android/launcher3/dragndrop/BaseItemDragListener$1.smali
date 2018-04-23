.class Lcom/android/launcher3/dragndrop/BaseItemDragListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/BaseItemDragListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener$1;->this$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/BaseItemDragListener$1;->this$0:Lcom/android/launcher3/dragndrop/BaseItemDragListener;

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 171
    :cond_0
    return-void
.end method
