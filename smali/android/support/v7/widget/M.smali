.class public abstract Landroid/support/v7/widget/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final lH:Landroid/graphics/Rect;

.field protected final oB:Landroid/support/v7/widget/af;

.field oC:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/af;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/M;->oC:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/M;->lH:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Landroid/support/v7/widget/M;->oB:Landroid/support/v7/widget/af;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/af;B)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/M;-><init>(Landroid/support/v7/widget/af;)V

    return-void
.end method


# virtual methods
.method public abstract Q(Landroid/view/View;)I
.end method

.method public abstract R(Landroid/view/View;)I
.end method

.method public abstract S(Landroid/view/View;)I
.end method

.method public abstract T(Landroid/view/View;)I
.end method

.method public abstract T(I)V
.end method

.method public abstract U(Landroid/view/View;)I
.end method

.method public abstract V(Landroid/view/View;)I
.end method

.method public final bl()I
    .locals 2

    .line 78
    iget v0, p0, Landroid/support/v7/widget/M;->oC:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/M;->bo()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/M;->oC:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract bm()I
.end method

.method public abstract bn()I
.end method

.method public abstract bo()I
.end method

.method public abstract bp()I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndPadding()I
.end method

.method public abstract getMode()I
.end method
