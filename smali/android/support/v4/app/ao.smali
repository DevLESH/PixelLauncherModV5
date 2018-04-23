.class public Landroid/support/v4/app/ao;
.super Landroid/support/v4/app/aq;
.source "SourceFile"


# instance fields
.field private gf:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1999
    invoke-direct {p0}, Landroid/support/v4/app/aq;-><init>()V

    .line 2000
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ao;
    .locals 0

    .line 2029
    invoke-static {p1}, Landroid/support/v4/app/ap;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ao;->gf:Ljava/lang/CharSequence;

    .line 2030
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/al;)V
    .locals 2

    .line 2039
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2040
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2041
    invoke-interface {p1}, Landroid/support/v4/app/al;->at()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroid/support/v4/app/ao;->gS:Ljava/lang/CharSequence;

    .line 2042
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/app/ao;->gf:Ljava/lang/CharSequence;

    .line 2043
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2044
    iget-boolean v0, p0, Landroid/support/v4/app/ao;->gU:Z

    if-eqz v0, :cond_0

    .line 2045
    iget-object v0, p0, Landroid/support/v4/app/ao;->gT:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2048
    :cond_0
    return-void
.end method
