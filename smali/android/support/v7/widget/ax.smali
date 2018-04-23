.class public Landroid/support/v7/widget/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field pd:I

.field private pk:Landroid/util/SparseArray;

.field pl:I

.field pm:I

.field pn:I

.field po:I

.field pp:Z

.field pq:Z

.field pr:Z

.field ps:Z

.field pt:Z

.field pu:Z

.field pv:I

.field pw:J

.field px:I

.field py:I

.field pz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11837
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/ax;->pd:I

    .line 11848
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ax;->pl:I

    .line 11854
    iput v0, p0, Landroid/support/v7/widget/ax;->pm:I

    .line 11866
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v7/widget/ax;->pn:I

    .line 11872
    iput v0, p0, Landroid/support/v7/widget/ax;->po:I

    .line 11874
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->pp:Z

    .line 11881
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->pq:Z

    .line 11883
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->pr:Z

    .line 11885
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->ps:Z

    .line 11891
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->pt:Z

    .line 11893
    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->pu:Z

    return-void
.end method


# virtual methods
.method final Z(I)V
    .locals 3

    .line 11828
    iget v0, p0, Landroid/support/v7/widget/ax;->pn:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 11829
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Layout state should be one of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11830
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but it is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v7/widget/ax;->pn:I

    .line 11831
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11833
    :cond_0
    return-void
.end method

.method public final getItemCount()I
    .locals 2

    .line 12082
    iget-boolean v0, p0, Landroid/support/v7/widget/ax;->pq:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ax;->pl:I

    iget v1, p0, Landroid/support/v7/widget/ax;->pm:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ax;->po:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{mTargetPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/ax;->pd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ax;->pk:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/ax;->po:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->ps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/ax;->pl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/ax;->pm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->pp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->pq:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->pt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/ax;->pu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
