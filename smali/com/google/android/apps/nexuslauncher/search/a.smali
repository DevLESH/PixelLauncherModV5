.class Lcom/google/android/apps/nexuslauncher/search/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private final xg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/search/a;->xg:I

    .line 105
    return-void
.end method


# virtual methods
.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 110
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/search/a;->xg:I

    if-ltz p1, :cond_0

    .line 111
    const/4 p1, 0x7

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 112
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/search/a;->xg:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    return-void

    .line 114
    :cond_0
    const/16 p1, 0x8

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 116
    return-void
.end method
