.class Landroid/support/v4/media/session/f;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.source "SourceFile"


# instance fields
.field private final hN:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .locals 1

    .line 874
    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    .line 875
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    .line 876
    return-void
.end method


# virtual methods
.method public final onCaptioningEnabledChanged(Z)V
    .locals 3

    .line 928
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 929
    if-eqz v0, :cond_0

    .line 930
    const/16 v1, 0xb

    .line 931
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    .line 930
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 933
    :cond_0
    return-void
.end method

.method public final onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 880
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 881
    if-eqz v0, :cond_0

    .line 882
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 884
    :cond_0
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    .line 959
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 960
    if-eqz v0, :cond_0

    .line 961
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 963
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 904
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 905
    if-eqz v0, :cond_0

    .line 906
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 908
    :cond_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 896
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 897
    if-eqz v0, :cond_0

    .line 898
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 900
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 3

    .line 912
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 913
    if-eqz v0, :cond_0

    .line 914
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 916
    :cond_0
    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    .line 920
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 921
    if-eqz v0, :cond_0

    .line 922
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 924
    :cond_0
    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 3

    .line 937
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 938
    if-eqz v0, :cond_0

    .line 939
    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 941
    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    .line 888
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 889
    if-eqz v0, :cond_0

    .line 890
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 892
    :cond_0
    return-void
.end method

.method public final onSessionReady()V
    .locals 3

    .line 980
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 981
    if-eqz v0, :cond_0

    .line 982
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 984
    :cond_0
    return-void
.end method

.method public final onShuffleModeChanged(I)V
    .locals 3

    .line 950
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 951
    if-eqz v0, :cond_0

    .line 952
    const/16 v1, 0xc

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    .line 952
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 955
    :cond_0
    return-void
.end method

.method public final onShuffleModeChangedRemoved(Z)V
    .locals 0

    .line 946
    return-void
.end method

.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 9

    .line 967
    iget-object v0, p0, Landroid/support/v4/media/session/f;->hN:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    .line 968
    if-eqz v0, :cond_1

    .line 969
    nop

    .line 970
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 971
    new-instance v8, Landroid/support/v4/media/session/h;

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->ic:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->ie:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->if:I

    iget v7, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->ig:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/h;-><init>(IIIII)V

    goto :goto_0

    .line 974
    :cond_0
    move-object v8, v1

    :goto_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1, v8, v1}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 976
    :cond_1
    return-void
.end method
