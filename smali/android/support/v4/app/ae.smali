.class Landroid/support/v4/app/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fH:I

.field final synthetic fI:Ljava/util/ArrayList;

.field final synthetic fJ:Ljava/util/ArrayList;

.field final synthetic fK:Landroid/support/v4/app/ad;

.field final synthetic fl:Ljava/util/ArrayList;

.field final synthetic fw:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ad;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 168
    iput-object p1, p0, Landroid/support/v4/app/ae;->fK:Landroid/support/v4/app/ad;

    iput p2, p0, Landroid/support/v4/app/ae;->fH:I

    iput-object p3, p0, Landroid/support/v4/app/ae;->fl:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/ae;->fI:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/ae;->fw:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/ae;->fJ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 171
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v4/app/ae;->fH:I

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Landroid/support/v4/app/ae;->fl:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/ae;->fI:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Landroid/support/v4/app/ae;->fw:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/ae;->fJ:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/view/s;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
