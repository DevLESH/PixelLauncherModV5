.class Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

.field final synthetic val$itemInfo:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/SystemShortcut$AppInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->this$0:Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    iput-object p2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$itemInfo:Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 86
    iget-object v3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$itemInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-static {v3, v4, v0, v1}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/Launcher;Landroid/graphics/Rect;Landroid/os/Bundle;)Z

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnControl(IILandroid/view/View;)V

    .line 89
    return-void
.end method
