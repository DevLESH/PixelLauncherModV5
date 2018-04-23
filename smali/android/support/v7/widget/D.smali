.class public abstract Landroid/support/v7/widget/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/D;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method final getCachedSpanIndex(II)I
    .locals 2

    .line 872
    iget-boolean v0, p0, Landroid/support/v7/widget/D;->mCacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/D;->getSpanIndex(II)I

    move-result p1

    return p1

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 876
    if-eq v0, v1, :cond_1

    .line 877
    return v0

    .line 879
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/D;->getSpanIndex(II)I

    move-result p2

    .line 880
    iget-object v0, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    return p2
.end method

.method public final getSpanGroupIndex(II)I
    .locals 6

    .line 969
    nop

    .line 970
    nop

    .line 971
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result v0

    .line 972
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, p1, :cond_2

    .line 973
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result v5

    .line 974
    add-int/2addr v3, v5

    .line 975
    if-ne v3, p2, :cond_0

    .line 976
    nop

    .line 977
    add-int/lit8 v4, v4, 0x1

    .line 972
    move v3, v1

    goto :goto_1

    .line 978
    :cond_0
    if-le v3, p2, :cond_1

    .line 980
    nop

    .line 981
    add-int/lit8 v4, v4, 0x1

    .line 972
    move v3, v5

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    :cond_2
    add-int/2addr v3, v0

    if-le v3, p2, :cond_3

    .line 985
    add-int/lit8 v4, v4, 0x1

    .line 987
    :cond_3
    return v4
.end method

.method public getSpanIndex(II)I
    .locals 6

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result v0

    .line 909
    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 910
    return v1

    .line 912
    :cond_0
    nop

    .line 913
    nop

    .line 915
    iget-boolean v2, p0, Landroid/support/v7/widget/D;->mCacheSpanIndices:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 916
    iget-object v2, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    move v2, v1

    :goto_0
    if-gt v2, v3, :cond_2

    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-ge v5, p1, :cond_1

    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v4, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    .line 917
    :goto_1
    if-ltz v2, :cond_4

    .line 918
    iget-object v3, p0, Landroid/support/v7/widget/D;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 922
    :cond_4
    move v2, v1

    move v3, v2

    :goto_2
    if-ge v2, p1, :cond_7

    .line 923
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/D;->getSpanSize(I)I

    move-result v4

    .line 924
    add-int/2addr v3, v4

    .line 925
    if-ne v3, p2, :cond_5

    .line 926
    nop

    .line 922
    move v3, v1

    goto :goto_3

    .line 927
    :cond_5
    if-le v3, p2, :cond_6

    .line 929
    nop

    .line 922
    move v3, v4

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 932
    :cond_7
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_8

    .line 933
    return v3

    .line 935
    :cond_8
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method
