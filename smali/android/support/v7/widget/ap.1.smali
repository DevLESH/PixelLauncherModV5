.class Landroid/support/v7/widget/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field oQ:Ljava/util/ArrayList;

.field oR:I

.field oS:J

.field oT:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ap;->oQ:Ljava/util/ArrayList;

    .line 5286
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/ap;->oR:I

    .line 5287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v7/widget/ap;->oS:J

    .line 5288
    iput-wide v0, p0, Landroid/support/v7/widget/ap;->oT:J

    return-void
.end method
