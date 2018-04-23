.class public abstract Landroid/support/v4/app/v;
.super Landroid/support/v4/app/t;
.source "SourceFile"


# instance fields
.field final cI:Landroid/support/v4/app/x;

.field final dO:Landroid/app/Activity;

.field final dP:I

.field dQ:Landroid/support/v4/c/u;

.field dR:Z

.field da:Landroid/support/v4/app/aj;

.field db:Z

.field dc:Z

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/app/x;

    invoke-direct {v0}, Landroid/support/v4/app/x;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    .line 68
    iput-object p1, p0, Landroid/support/v4/app/v;->dO:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    .line 71
    iput p4, p0, Landroid/support/v4/app/v;->dP:I

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/p;)V
    .locals 2

    .line 63
    iget-object v0, p1, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/v;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method


# virtual methods
.method public W()Z
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public X()V
    .locals 0

    .line 115
    return-void
.end method

.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aj;
    .locals 1

    .line 305
    iget-object v0, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Landroid/support/v4/c/u;

    invoke-direct {v0}, Landroid/support/v4/c/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aj;

    .line 309
    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    .line 310
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/aj;-><init>(Ljava/lang/String;Landroid/support/v4/app/v;Z)V

    .line 311
    iget-object p2, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {p2, p1, v0}, Landroid/support/v4/c/u;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean p1, v0, Landroid/support/v4/app/aj;->mStarted:Z

    if-nez p1, :cond_2

    .line 313
    invoke-virtual {v0}, Landroid/support/v4/app/aj;->an()V

    .line 315
    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 131
    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aj;

    .line 223
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/aj;->cT:Z

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/app/aj;->as()V

    .line 225
    iget-object v0, p0, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/u;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 84
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 0

    .line 186
    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .line 180
    iget v0, p0, Landroid/support/v4/app/v;->dP:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 173
    const/4 v0, 0x1

    return v0
.end method
