.class Landroid/support/v4/app/r;
.super Landroid/support/v4/app/v;
.source "SourceFile"


# instance fields
.field final synthetic dK:Landroid/support/v4/app/p;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0

    .line 884
    iput-object p1, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    .line 885
    invoke-direct {p0, p1}, Landroid/support/v4/app/v;-><init>(Landroid/support/v4/app/p;)V

    .line 886
    return-void
.end method


# virtual methods
.method public final W()Z
    .locals 1

    .line 895
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final X()V
    .locals 1

    .line 910
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->invalidateOptionsMenu()V

    .line 911
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 7

    .line 921
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/p;->ch:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_0

    :try_start_0
    invoke-static {v0, p2, v2, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v3, v0, Landroid/support/v4/app/p;->ch:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/p;->k(I)V

    iget-object v2, v0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v2}, Landroid/support/v4/c/v;->size()I

    move-result v2

    const v4, 0xfffe

    if-lt v2, v4, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Too many pending Fragment activity results."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-object v2, v0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    iget v5, v0, Landroid/support/v4/app/p;->dI:I

    iget-boolean v6, v2, Landroid/support/v4/c/v;->iQ:Z

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/c/v;->gc()V

    :cond_2
    iget-object v6, v2, Landroid/support/v4/c/v;->jm:[I

    iget v2, v2, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v6, v2, v5}, Landroid/support/v4/c/e;->a([III)I

    move-result v2

    if-ltz v2, :cond_3

    iget v2, v0, Landroid/support/v4/app/p;->dI:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v4

    iput v2, v0, Landroid/support/v4/app/p;->dI:I

    goto :goto_1

    :cond_3
    iget v2, v0, Landroid/support/v4/app/p;->dI:I

    iget-object v5, v0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->cx:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Landroid/support/v4/c/v;->put(ILjava/lang/Object;)V

    iget p1, v0, Landroid/support/v4/app/p;->dI:I

    add-int/2addr p1, v1

    rem-int/2addr p1, v4

    iput p1, v0, Landroid/support/v4/app/p;->dI:I

    add-int/2addr v2, v1

    shl-int/lit8 p1, v2, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    invoke-static {v0, p2, p1, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iput-boolean v3, v0, Landroid/support/v4/app/p;->ch:Z

    throw p1
.end method

.method public final onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 890
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/p;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public final onFindViewById(I)Landroid/view/View;
    .locals 1

    .line 964
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 900
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final onGetWindowAnimations()I
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 953
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return v0
.end method

.method public final onHasView()Z
    .locals 1

    .line 969
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onHasWindowAnimations()Z
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/support/v4/app/r;->dK:Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
