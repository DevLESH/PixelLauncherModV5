.class public Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field private final mActions:Landroid/util/SparseArray;

.field private final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 7

    .line 40
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 43
    iget-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 46
    const v3, 0x7f0c007f

    const v4, 0x7f0c0080

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_0

    .line 47
    :cond_0
    nop

    .line 46
    move v5, v3

    :goto_0
    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x7f0e000b

    invoke-direct {v2, v6, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 49
    if-eqz v0, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    nop

    .line 49
    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f0e000c

    invoke-direct {v2, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    return-void
.end method

.method private movePage(ILandroid/view/View;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onStartReordering()V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2, p1}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 75
    iget-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->onEndReordering()V

    .line 76
    iget-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 79
    const/16 p1, 0x40

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 80
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e000c

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 91
    :cond_0
    if-le p1, v1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v0, 0x7f0e000b

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 95
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 55
    if-eqz p1, :cond_2

    .line 56
    const/16 v0, 0x40

    if-ne p2, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 59
    goto :goto_0

    :cond_0
    const v0, 0x7f0e000c

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 60
    iget-object p2, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p2

    add-int/2addr p2, v1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    .line 61
    return v1

    .line 62
    :cond_1
    const v0, 0x7f0e000b

    if-ne p2, v0, :cond_2

    .line 63
    iget-object p2, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p2, v1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    .line 64
    return v1

    .line 68
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
