.class public Landroid/support/v4/app/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final cJ:Landroid/support/v4/app/v;


# direct methods
.method constructor <init>(Landroid/support/v4/app/v;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final doLoaderStart()V
    .locals 5

    .line 386
    iget-object v0, p0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-boolean v1, v0, Landroid/support/v4/app/v;->db:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/v;->db:Z

    iget-object v2, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v2}, Landroid/support/v4/app/aj;->an()V

    goto :goto_1

    :cond_0
    iget-boolean v2, v0, Landroid/support/v4/app/v;->dc:Z

    if-nez v2, :cond_1

    const-string v2, "(root)"

    iget-boolean v3, v0, Landroid/support/v4/app/v;->db:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/v;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/aj;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    iget-object v2, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    iget-boolean v2, v2, Landroid/support/v4/app/aj;->mStarted:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, v0, Landroid/support/v4/app/v;->dc:Z

    .line 387
    :cond_2
    return-void
.end method

.method public final doLoaderStop(Z)V
    .locals 2

    .line 397
    iget-object v0, p0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iput-boolean p1, v0, Landroid/support/v4/app/v;->dR:Z

    iget-object v1, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/app/v;->db:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/v;->db:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    invoke-virtual {p1}, Landroid/support/v4/app/aj;->ap()V

    return-void

    :cond_0
    iget-object p1, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    invoke-virtual {p1}, Landroid/support/v4/app/aj;->ao()V

    .line 398
    :cond_1
    return-void
.end method

.method public final execPendingActions()Z
    .locals 1

    .line 379
    iget-object v0, p0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public final noteStateNotSaved()V
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->noteStateNotSaved()V

    .line 119
    return-void
.end method
