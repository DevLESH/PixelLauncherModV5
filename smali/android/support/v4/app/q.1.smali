.class Landroid/support/v4/app/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic dK:Landroid/support/v4/app/p;


# direct methods
.method constructor <init>(Landroid/support/v4/app/p;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroid/support/v4/app/q;->dK:Landroid/support/v4/app/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/app/q;->dK:Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->T()V

    .line 92
    iget-object p1, p0, Landroid/support/v4/app/q;->dK:Landroid/support/v4/app/p;

    iget-object p1, p1, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p1}, Landroid/support/v4/app/u;->execPendingActions()Z

    .line 93
    return-void

    .line 86
    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/app/q;->dK:Landroid/support/v4/app/p;

    iget-boolean p1, p1, Landroid/support/v4/app/p;->mStopped:Z

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Landroid/support/v4/app/q;->dK:Landroid/support/v4/app/p;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/p;->d(Z)V

    return-void

    .line 97
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
