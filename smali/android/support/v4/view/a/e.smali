.class Landroid/support/v4/view/a/e;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# instance fields
.field final kf:Landroid/support/v4/view/a/d;


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/d;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/support/v4/view/a/e;->kf:Landroid/support/v4/view/a/d;

    .line 39
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/support/v4/view/a/e;->kf:Landroid/support/v4/view/a/d;

    .line 44
    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/d;->y(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    iget-object p1, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    .line 55
    const/4 p1, 0x0

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Landroid/support/v4/view/a/e;->kf:Landroid/support/v4/view/a/d;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/a/d;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
