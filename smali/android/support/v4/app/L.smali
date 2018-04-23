.class Landroid/support/v4/app/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/n;


# instance fields
.field final eK:Z

.field final eL:Landroid/support/v4/app/c;

.field eM:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/c;Z)V
    .locals 0

    .line 3823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3824
    iput-boolean p2, p0, Landroid/support/v4/app/L;->eK:Z

    .line 3825
    iput-object p1, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    .line 3826
    return-void
.end method


# virtual methods
.method public final S()V
    .locals 1

    .line 3835
    iget v0, p0, Landroid/support/v4/app/L;->eM:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/L;->eM:I

    .line 3836
    iget v0, p0, Landroid/support/v4/app/L;->eM:I

    if-eqz v0, :cond_0

    .line 3837
    return-void

    .line 3839
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->bF:Landroid/support/v4/app/x;

    invoke-static {v0}, Landroid/support/v4/app/x;->b(Landroid/support/v4/app/x;)V

    .line 3840
    return-void
.end method

.method public final ai()V
    .locals 9

    .line 3866
    iget v0, p0, Landroid/support/v4/app/L;->eM:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 3867
    move v0, v2

    goto :goto_0

    .line 3866
    :cond_0
    nop

    .line 3867
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    iget-object v3, v3, Landroid/support/v4/app/c;->bF:Landroid/support/v4/app/x;

    .line 3868
    iget-object v4, v3, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3869
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    .line 3870
    iget-object v6, v3, Landroid/support/v4/app/x;->dV:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 3871
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/app/Fragment;->b(Landroid/support/v4/app/n;)V

    .line 3872
    if-eqz v0, :cond_4

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->Q()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3873
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    iget-object v7, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v6, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    iget-object v8, v8, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v8, v8, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_2

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    iget-object v7, v7, Landroid/support/v4/app/x;->cJ:Landroid/support/v4/app/v;

    iget-object v7, v7, Landroid/support/v4/app/v;->mHandler:Landroid/os/Handler;

    new-instance v8, Landroid/support/v4/app/k;

    invoke-direct {v8, v6}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->B()V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->H()Landroid/support/v4/app/m;

    move-result-object v6

    iput-boolean v1, v6, Landroid/support/v4/app/m;->dA:Z

    .line 3869
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3876
    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    iget-object v1, v1, Landroid/support/v4/app/c;->bF:Landroid/support/v4/app/x;

    iget-object v3, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    iget-boolean v4, p0, Landroid/support/v4/app/L;->eK:Z

    xor-int/2addr v0, v2

    invoke-static {v1, v3, v4, v0, v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;Landroid/support/v4/app/c;ZZZ)V

    .line 3877
    return-void
.end method

.method public final aj()V
    .locals 4

    .line 3884
    iget-object v0, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->bF:Landroid/support/v4/app/x;

    iget-object v1, p0, Landroid/support/v4/app/L;->eL:Landroid/support/v4/app/c;

    iget-boolean v2, p0, Landroid/support/v4/app/L;->eK:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/x;Landroid/support/v4/app/c;ZZZ)V

    .line 3885
    return-void
.end method

.method public final startListening()V
    .locals 1

    .line 3849
    iget v0, p0, Landroid/support/v4/app/L;->eM:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/L;->eM:I

    .line 3850
    return-void
.end method
