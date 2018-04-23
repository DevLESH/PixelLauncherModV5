.class Landroid/support/v4/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eC:Landroid/support/v4/app/z;


# direct methods
.method constructor <init>(Landroid/support/v4/app/z;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1614
    iget-object v0, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->ez:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v1, v1, Landroid/support/v4/app/z;->eA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1616
    iget-object v0, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->eB:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->N()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->eB:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    .line 1618
    iget-object v0, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v1, v0, Landroid/support/v4/app/z;->ey:Landroid/support/v4/app/x;

    iget-object v0, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v2, v0, Landroid/support/v4/app/z;->eB:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Landroid/support/v4/app/A;->eC:Landroid/support/v4/app/z;

    iget-object v0, v0, Landroid/support/v4/app/z;->eB:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->P()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1621
    :cond_0
    return-void
.end method
