.class Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field final synthetic val$coordinates:[I

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/ItemInfo;J[I)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-wide p3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iput-object p5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v1, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    const-wide/16 v3, -0x64

    iget-wide v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    const/4 v7, 0x0

    aget v7, v2, v7

    iget-object v2, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    const/4 v9, 0x1

    aget v8, v2, v9

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 166
    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$item:Lcom/android/launcher3/ItemInfo;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/PendingAddItemInfo;

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v0, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 169
    iget-wide v3, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    const-wide/16 v3, -0x64

    iget-wide v5, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$screenId:J

    iget-object v7, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->val$coordinates:[I

    iget v8, v2, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    iget v9, v2, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V

    .line 173
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate$1;->this$0:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    const v1, 0x7f0c0072

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 174
    return-void
.end method
