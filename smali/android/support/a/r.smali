.class final Landroid/support/a/r;
.super Landroid/support/a/z;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/a/z;-><init>(Ljava/lang/String;B)V

    return-void
.end method


# virtual methods
.method public final synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 86
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroid/support/v4/view/s;->k(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public final synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 86
    check-cast p1, Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->b(Landroid/view/View;F)V

    return-void
.end method
