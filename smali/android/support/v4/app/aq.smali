.class public abstract Landroid/support/v4/app/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected gR:Landroid/support/v4/app/ap;

.field gS:Ljava/lang/CharSequence;

.field gT:Ljava/lang/CharSequence;

.field gU:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aq;->gU:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/al;)V
    .locals 0

    .line 1617
    return-void
.end method

.method public final a(Landroid/support/v4/app/ap;)V
    .locals 1

    .line 1595
    iget-object v0, p0, Landroid/support/v4/app/aq;->gR:Landroid/support/v4/app/ap;

    if-eq v0, p1, :cond_0

    .line 1596
    iput-object p1, p0, Landroid/support/v4/app/aq;->gR:Landroid/support/v4/app/ap;

    .line 1597
    iget-object p1, p0, Landroid/support/v4/app/aq;->gR:Landroid/support/v4/app/ap;

    if-eqz p1, :cond_0

    .line 1598
    iget-object p1, p0, Landroid/support/v4/app/aq;->gR:Landroid/support/v4/app/ap;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/aq;)Landroid/support/v4/app/ap;

    .line 1601
    :cond_0
    return-void
.end method
