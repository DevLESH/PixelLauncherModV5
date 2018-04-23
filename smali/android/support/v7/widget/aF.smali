.class Landroid/support/v7/widget/aF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mOffset:I

.field mPosition:I

.field oh:Z

.field oi:Z

.field pX:Z

.field pY:[I

.field final synthetic pZ:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# virtual methods
.method final reset()V
    .locals 2

    .line 3271
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aF;->mPosition:I

    .line 3272
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/support/v7/widget/aF;->mOffset:I

    .line 3273
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/aF;->oh:Z

    .line 3274
    iput-boolean v1, p0, Landroid/support/v7/widget/aF;->pX:Z

    .line 3275
    iput-boolean v1, p0, Landroid/support/v7/widget/aF;->oi:Z

    .line 3276
    iget-object v1, p0, Landroid/support/v7/widget/aF;->pY:[I

    if-eqz v1, :cond_0

    .line 3277
    iget-object v1, p0, Landroid/support/v7/widget/aF;->pY:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 3279
    :cond_0
    return-void
.end method
