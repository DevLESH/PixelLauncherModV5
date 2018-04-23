.class public abstract Landroid/support/v7/widget/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field av:Z

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mTargetView:Landroid/view/View;

.field oB:Landroid/support/v7/widget/af;

.field pd:I

.field pe:Z

.field private final pf:Landroid/support/v7/widget/av;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11271
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/au;->pd:I

    .line 11286
    new-instance v0, Landroid/support/v7/widget/av;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/av;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/au;->pf:Landroid/support/v7/widget/av;

    .line 11287
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/au;II)V
    .locals 4

    .line 11269
    iget-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, p0, Landroid/support/v7/widget/au;->av:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/au;->pd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/au;->pe:Z

    iget-object v2, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/au;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/au;->pd:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v3, p0, Landroid/support/v7/widget/au;->pf:Landroid/support/v7/widget/av;

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/au;->a(Landroid/view/View;Landroid/support/v7/widget/av;)V

    iget-object v2, p0, Landroid/support/v7/widget/au;->pf:Landroid/support/v7/widget/av;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/av;->b(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    goto :goto_0

    :cond_2
    const-string v2, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    :cond_3
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/au;->av:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    iget-object v2, p0, Landroid/support/v7/widget/au;->pf:Landroid/support/v7/widget/av;

    invoke-virtual {p0, p1, p2, v2}, Landroid/support/v7/widget/au;->a(IILandroid/support/v7/widget/av;)V

    iget-object p1, p0, Landroid/support/v7/widget/au;->pf:Landroid/support/v7/widget/av;

    iget p1, p1, Landroid/support/v7/widget/av;->ph:I

    const/4 p2, 0x1

    if-ltz p1, :cond_4

    move v1, p2

    nop

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/au;->pf:Landroid/support/v7/widget/av;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/av;->b(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v1, :cond_6

    iget-boolean p1, p0, Landroid/support/v7/widget/au;->av:Z

    if-eqz p1, :cond_5

    iput-boolean p2, p0, Landroid/support/v7/widget/au;->pe:Z

    iget-object p0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/az;

    invoke-virtual {p0}, Landroid/support/v7/widget/az;->bA()V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->stop()V

    :cond_6
    return-void
.end method


# virtual methods
.method protected abstract a(IILandroid/support/v7/widget/av;)V
.end method

.method protected abstract a(Landroid/view/View;Landroid/support/v7/widget/av;)V
.end method

.method public final getChildPosition(Landroid/view/View;)I
    .locals 1

    .line 11417
    iget-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected abstract onStop()V
.end method

.method protected final stop()V
    .locals 2

    .line 11335
    iget-boolean v0, p0, Landroid/support/v7/widget/au;->av:Z

    if-nez v0, :cond_0

    .line 11336
    return-void

    .line 11338
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/au;->onStop()V

    .line 11339
    iget-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/ax;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/ax;->pd:I

    .line 11340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/au;->mTargetView:Landroid/view/View;

    .line 11341
    iput v1, p0, Landroid/support/v7/widget/au;->pd:I

    .line 11342
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/au;->pe:Z

    .line 11343
    iput-boolean v1, p0, Landroid/support/v7/widget/au;->av:Z

    .line 11345
    iget-object v1, p0, Landroid/support/v7/widget/au;->oB:Landroid/support/v7/widget/af;

    invoke-static {v1, p0}, Landroid/support/v7/widget/af;->access$1400(Landroid/support/v7/widget/af;Landroid/support/v7/widget/au;)V

    .line 11347
    iput-object v0, p0, Landroid/support/v7/widget/au;->oB:Landroid/support/v7/widget/af;

    .line 11348
    iput-object v0, p0, Landroid/support/v7/widget/au;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11349
    return-void
.end method
