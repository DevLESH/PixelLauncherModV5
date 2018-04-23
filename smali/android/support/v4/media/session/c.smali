.class public abstract Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final hK:Ljava/lang/Object;

.field hL:Landroid/support/v4/media/session/d;

.field hM:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 641
    new-instance v0, Landroid/support/v4/media/session/e;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/e;-><init>(Landroid/support/v4/media/session/c;)V

    new-instance v1, Landroid/support/v4/media/session/k;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/k;-><init>(Landroid/support/v4/media/session/j;)V

    iput-object v1, p0, Landroid/support/v4/media/session/c;->hK:Ljava/lang/Object;

    return-void

    .line 643
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/f;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/f;-><init>(Landroid/support/v4/media/session/c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->hK:Ljava/lang/Object;

    .line 645
    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .line 781
    iget-object v0, p0, Landroid/support/v4/media/session/c;->hL:Landroid/support/v4/media/session/d;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Landroid/support/v4/media/session/c;->hL:Landroid/support/v4/media/session/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 783
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 784
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 786
    :cond_0
    return-void
.end method
