.class Landroid/support/v4/view/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic jC:Landroid/support/v4/view/q;

.field final synthetic jD:Landroid/support/v4/view/y;


# direct methods
.method constructor <init>(Landroid/support/v4/view/y;Landroid/support/v4/view/q;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Landroid/support/v4/view/z;->jD:Landroid/support/v4/view/y;

    iput-object p2, p0, Landroid/support/v4/view/z;->jC:Landroid/support/v4/view/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1306
    invoke-static {p2}, Landroid/support/v4/view/aa;->n(Ljava/lang/Object;)Landroid/support/v4/view/aa;

    move-result-object p2

    .line 1307
    iget-object v0, p0, Landroid/support/v4/view/z;->jC:Landroid/support/v4/view/q;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/view/q;->a(Landroid/view/View;Landroid/support/v4/view/aa;)Landroid/support/v4/view/aa;

    move-result-object p1

    .line 1308
    invoke-static {p1}, Landroid/support/v4/view/aa;->a(Landroid/support/v4/view/aa;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    return-object p1
.end method
