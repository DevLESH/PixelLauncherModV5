.class Landroid/support/v4/app/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/J;


# instance fields
.field final eJ:I

.field final synthetic ey:Landroid/support/v4/app/x;

.field final mFlags:I

.field final mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;Ljava/lang/String;II)V
    .locals 0

    .line 3789
    iput-object p1, p0, Landroid/support/v4/app/K;->ey:Landroid/support/v4/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3790
    iput-object p2, p0, Landroid/support/v4/app/K;->mName:Ljava/lang/String;

    .line 3791
    iput p3, p0, Landroid/support/v4/app/K;->eJ:I

    .line 3792
    iput p4, p0, Landroid/support/v4/app/K;->mFlags:I

    .line 3793
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    .line 3798
    iget-object v0, p0, Landroid/support/v4/app/K;->ey:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/app/K;->eJ:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/K;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3801
    iget-object v0, p0, Landroid/support/v4/app/K;->ey:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->eg:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 3802
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    const/4 p1, 0x0

    return p1

    .line 3808
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/K;->ey:Landroid/support/v4/app/x;

    iget-object v3, p0, Landroid/support/v4/app/K;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/K;->eJ:I

    iget v5, p0, Landroid/support/v4/app/K;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/x;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
