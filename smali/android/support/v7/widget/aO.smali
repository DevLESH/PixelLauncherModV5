.class Landroid/support/v7/widget/aO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static qA:Landroid/support/v4/c/r;


# instance fields
.field flags:I

.field qy:Landroid/support/v7/widget/ac;

.field qz:Landroid/support/v7/widget/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 305
    new-instance v0, Landroid/support/v4/c/s;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/c/s;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/aO;->qA:Landroid/support/v4/c/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static a(Landroid/support/v7/widget/aO;)V
    .locals 1

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aO;->flags:I

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aO;->qy:Landroid/support/v7/widget/ac;

    .line 318
    iput-object v0, p0, Landroid/support/v7/widget/aO;->qz:Landroid/support/v7/widget/ac;

    .line 319
    sget-object v0, Landroid/support/v7/widget/aO;->qA:Landroid/support/v4/c/r;

    invoke-interface {v0, p0}, Landroid/support/v4/c/r;->m(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method static bP()Landroid/support/v7/widget/aO;
    .locals 1

    .line 311
    sget-object v0, Landroid/support/v7/widget/aO;->qA:Landroid/support/v4/c/r;

    invoke-interface {v0}, Landroid/support/v4/c/r;->aH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 312
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0}, Landroid/support/v7/widget/aO;-><init>()V

    :cond_0
    return-object v0
.end method

.method static bQ()V
    .locals 1

    .line 324
    :cond_0
    sget-object v0, Landroid/support/v7/widget/aO;->qA:Landroid/support/v4/c/r;

    invoke-interface {v0}, Landroid/support/v4/c/r;->aH()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    return-void
.end method
