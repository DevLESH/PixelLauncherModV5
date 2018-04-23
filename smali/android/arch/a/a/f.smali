.class public Landroid/arch/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private k:Landroid/arch/a/a/e;

.field private m:Z

.field final synthetic n:Landroid/arch/a/a/b;


# direct methods
.method private constructor <init>(Landroid/arch/a/a/b;)V
    .locals 0

    .line 301
    iput-object p1, p0, Landroid/arch/a/a/f;->n:Landroid/arch/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/arch/a/a/f;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/arch/a/a/b;B)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Landroid/arch/a/a/f;-><init>(Landroid/arch/a/a/b;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 315
    iget-boolean v0, p0, Landroid/arch/a/a/f;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Landroid/arch/a/a/f;->n:Landroid/arch/a/a/b;

    invoke-static {v0}, Landroid/arch/a/a/b;->a(Landroid/arch/a/a/b;)Landroid/arch/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 318
    :cond_1
    iget-object v0, p0, Landroid/arch/a/a/f;->k:Landroid/arch/a/a/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/arch/a/a/f;->k:Landroid/arch/a/a/e;

    iget-object v0, v0, Landroid/arch/a/a/e;->i:Landroid/arch/a/a/e;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 301
    iget-boolean v0, p0, Landroid/arch/a/a/f;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/a/a/f;->m:Z

    iget-object v0, p0, Landroid/arch/a/a/f;->n:Landroid/arch/a/a/b;

    invoke-static {v0}, Landroid/arch/a/a/b;->a(Landroid/arch/a/a/b;)Landroid/arch/a/a/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/arch/a/a/f;->k:Landroid/arch/a/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/arch/a/a/f;->k:Landroid/arch/a/a/e;

    iget-object v0, v0, Landroid/arch/a/a/e;->i:Landroid/arch/a/a/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/arch/a/a/f;->k:Landroid/arch/a/a/e;

    iget-object v0, p0, Landroid/arch/a/a/f;->k:Landroid/arch/a/a/e;

    return-object v0
.end method
