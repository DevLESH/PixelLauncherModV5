.class Landroid/support/v4/view/a/f;
.super Landroid/support/v4/view/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v4/view/a/d;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v4/view/a/e;-><init>(Landroid/support/v4/view/a/d;)V

    .line 80
    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/support/v4/view/a/f;->kf:Landroid/support/v4/view/a/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/d;->z(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    iget-object p1, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
