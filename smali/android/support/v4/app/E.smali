.class Landroid/support/v4/app/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eE:Landroid/support/v4/app/D;


# direct methods
.method constructor <init>(Landroid/support/v4/app/D;)V
    .locals 0

    .line 3972
    iput-object p1, p0, Landroid/support/v4/app/E;->eE:Landroid/support/v4/app/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3975
    iget-object v0, p0, Landroid/support/v4/app/E;->eE:Landroid/support/v4/app/D;

    iget-object v0, v0, Landroid/support/v4/app/D;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3976
    return-void
.end method
