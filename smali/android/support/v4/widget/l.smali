.class Landroid/support/v4/widget/l;
.super Landroid/support/v4/view/a/d;
.source "SourceFile"


# instance fields
.field final synthetic la:Landroid/support/v4/widget/i;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/i;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Landroid/support/v4/widget/l;->la:Landroid/support/v4/widget/i;

    invoke-direct {p0}, Landroid/support/v4/view/a/d;-><init>()V

    .line 1236
    return-void
.end method


# virtual methods
.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 4

    .line 1249
    iget-object v0, p0, Landroid/support/v4/widget/l;->la:Landroid/support/v4/widget/i;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_8

    const/16 p3, 0x40

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eq p2, p3, :cond_4

    const/16 p3, 0x80

    if-eq p2, p3, :cond_3

    packed-switch p2, :pswitch_data_0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/i;->onPerformActionForVirtualView$5985f823(II)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/i;->clearKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object p2, v0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    move-result p2

    if-nez p2, :cond_0

    return v3

    :cond_0
    iget p2, v0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    if-ne p2, p1, :cond_1

    return v3

    :cond_1
    iget p2, v0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    if-eq p2, v2, :cond_2

    iget p2, v0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/i;->clearKeyboardFocusForVirtualView(I)Z

    :cond_2
    iput p1, v0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/i;->sendEventForVirtualView(II)Z

    return v1

    :cond_3
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/i;->clearAccessibilityFocus(I)Z

    move-result p1

    return p1

    :cond_4
    iget-object p2, v0, Landroid/support/v4/widget/i;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v0, Landroid/support/v4/widget/i;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    iget p2, v0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    if-eq p2, p1, :cond_7

    iget p2, v0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    if-eq p2, v2, :cond_6

    iget p2, v0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/i;->clearAccessibilityFocus(I)Z

    :cond_6
    iput p1, v0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    iget-object p2, v0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    goto :goto_0

    :cond_7
    :goto_1
    return v3

    :cond_8
    iget-object p1, v0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/s;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(I)Landroid/support/v4/view/a/a;
    .locals 1

    .line 1242
    iget-object v0, p0, Landroid/support/v4/widget/l;->la:Landroid/support/v4/widget/i;

    .line 1243
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/i;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 1244
    iget-object p1, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final z(I)Landroid/support/v4/view/a/a;
    .locals 1

    .line 1254
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v4/widget/l;->la:Landroid/support/v4/widget/i;

    .line 1255
    invoke-static {p1}, Landroid/support/v4/widget/i;->access$000(Landroid/support/v4/widget/i;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/l;->la:Landroid/support/v4/widget/i;

    invoke-static {p1}, Landroid/support/v4/widget/i;->access$100(Landroid/support/v4/widget/i;)I

    move-result p1

    .line 1256
    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 1257
    const/4 p1, 0x0

    return-object p1

    .line 1259
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/l;->y(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    return-object p1
.end method
