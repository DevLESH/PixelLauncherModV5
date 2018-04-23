.class Landroid/support/a/p;
.super Landroid/support/a/A;
.source "SourceFile"


# instance fields
.field final synthetic aB:Landroid/support/a/B;

.field final synthetic aC:Landroid/support/a/i;


# direct methods
.method constructor <init>(Landroid/support/a/i;Ljava/lang/String;Landroid/support/a/B;)V
    .locals 0

    .line 334
    iput-object p1, p0, Landroid/support/a/p;->aC:Landroid/support/a/i;

    iput-object p3, p0, Landroid/support/a/p;->aB:Landroid/support/a/B;

    invoke-direct {p0, p2}, Landroid/support/a/A;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 337
    iget-object p1, p0, Landroid/support/a/p;->aB:Landroid/support/a/B;

    iget p1, p1, Landroid/support/a/B;->mValue:F

    return p1
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 342
    iget-object p1, p0, Landroid/support/a/p;->aB:Landroid/support/a/B;

    iput p2, p1, Landroid/support/a/B;->mValue:F

    .line 343
    return-void
.end method
