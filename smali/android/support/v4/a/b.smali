.class public Landroid/support/v4/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eJ:I

.field public hk:Landroid/support/v4/a/d;

.field public hl:Landroid/support/v4/a/c;

.field public hm:Z

.field public hn:Z

.field public ho:Z

.field public hp:Z

.field public mStarted:Z


# virtual methods
.method public final a(Landroid/support/v4/a/c;)V
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/v4/a/b;->hl:Landroid/support/v4/a/c;

    if-nez v0, :cond_0

    .line 222
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/b;->hl:Landroid/support/v4/a/c;

    if-eq v0, p1, :cond_1

    .line 225
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/a/b;->hl:Landroid/support/v4/a/c;

    .line 228
    return-void
.end method

.method public final a(Landroid/support/v4/a/d;)V
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/support/v4/a/b;->hk:Landroid/support/v4/a/d;

    if-nez v0, :cond_0

    .line 186
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/b;->hk:Landroid/support/v4/a/d;

    if-eq v0, p1, :cond_1

    .line 189
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 191
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/a/b;->hk:Landroid/support/v4/a/d;

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 534
    invoke-static {p0, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 535
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget v1, p0, Landroid/support/v4/a/b;->eJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
