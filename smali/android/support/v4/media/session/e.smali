.class Landroid/support/v4/media/session/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/j;


# instance fields
.field private final hN:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 1

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    .line 793
    return-void
.end method


# virtual methods
.method public final aw()V
    .locals 1

    .line 805
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 806
    if-eqz v0, :cond_0

    .line 807
    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->hM:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 810
    :cond_0
    return-void
.end method

.method public final ax()V
    .locals 1

    .line 846
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 847
    return-void
.end method

.method public final ay()V
    .locals 1

    .line 854
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 855
    return-void
.end method

.method public final b(IIIII)V
    .locals 7

    .line 863
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 864
    if-eqz v0, :cond_0

    .line 865
    new-instance v1, Landroid/support/v4/media/session/h;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/h;-><init>(IIIII)V

    .line 868
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 817
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 818
    if-eqz v0, :cond_0

    .line 819
    iget-boolean v0, v0, Landroid/support/v4/media/session/c;->hM:Z

    if-nez v0, :cond_0

    .line 822
    nop

    .line 823
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->h(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 822
    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 1

    .line 830
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 831
    if-eqz v0, :cond_0

    .line 832
    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->e(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    .line 834
    :cond_0
    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 1

    .line 838
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 839
    if-eqz v0, :cond_0

    .line 840
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->c(Ljava/util/List;)Ljava/util/List;

    .line 842
    :cond_0
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    .line 797
    iget-object v0, p0, Landroid/support/v4/media/session/e;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 798
    return-void
.end method
