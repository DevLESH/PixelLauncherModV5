.class public abstract Landroid/support/v7/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field oE:Landroid/support/v7/widget/ab;

.field private oF:Ljava/util/ArrayList;

.field oG:J

.field oH:J

.field oI:J

.field oJ:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aa;->oE:Landroid/support/v7/widget/ab;

    .line 12256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aa;->oF:Ljava/util/ArrayList;

    .line 12259
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroid/support/v7/widget/aa;->oG:J

    .line 12260
    iput-wide v0, p0, Landroid/support/v7/widget/aa;->oH:J

    .line 12261
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/widget/aa;->oI:J

    .line 12262
    iput-wide v0, p0, Landroid/support/v7/widget/aa;->oJ:J

    .line 12866
    return-void
.end method

.method static g(Landroid/support/v7/widget/aA;)I
    .locals 3

    .line 12584
    invoke-static {p0}, Landroid/support/v7/widget/aA;->access$1600(Landroid/support/v7/widget/aA;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 12585
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12586
    const/4 p0, 0x4

    return p0

    .line 12588
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 12589
    iget v1, p0, Landroid/support/v7/widget/aA;->mOldPosition:I

    .line 12590
    invoke-virtual {p0}, Landroid/support/v7/widget/aA;->getAdapterPosition()I

    move-result p0

    .line 12591
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq p0, v2, :cond_1

    if-eq v1, p0, :cond_1

    .line 12592
    or-int/lit16 v0, v0, 0x800

    .line 12595
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public a(Landroid/support/v7/widget/aA;Ljava/util/List;)Z
    .locals 0

    .line 12803
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/aa;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z

    move-result p1

    return p1
.end method

.method public abstract be()V
.end method

.method public abstract bg()V
.end method

.method public final br()V
    .locals 3

    .line 12811
    iget-object v0, p0, Landroid/support/v7/widget/aa;->oF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12812
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 12813
    iget-object v2, p0, Landroid/support/v7/widget/aa;->oF:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12812
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12815
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aa;->oF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12816
    return-void
.end method

.method public abstract c(Landroid/support/v7/widget/aA;)V
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/aA;)Z
    .locals 0

    .line 12773
    const/4 p1, 0x1

    return p1
.end method

.method public abstract d(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public abstract e(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public final f(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;
    .locals 1

    .line 12384
    new-instance v0, Landroid/support/v7/widget/ac;

    invoke-direct {v0}, Landroid/support/v7/widget/ac;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ac;->j(Landroid/support/v7/widget/aA;)Landroid/support/v7/widget/ac;

    move-result-object p1

    return-object p1
.end method

.method public abstract f(Landroid/support/v7/widget/aA;Landroid/support/v7/widget/ac;Landroid/support/v7/widget/ac;)Z
.end method

.method public final h(Landroid/support/v7/widget/aA;)V
    .locals 1

    .line 12668
    iget-object v0, p0, Landroid/support/v7/widget/aa;->oE:Landroid/support/v7/widget/ab;

    if-eqz v0, :cond_0

    .line 12670
    iget-object v0, p0, Landroid/support/v7/widget/aa;->oE:Landroid/support/v7/widget/ab;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ab;->i(Landroid/support/v7/widget/aA;)V

    .line 12672
    :cond_0
    return-void
.end method

.method public abstract isRunning()Z
.end method
