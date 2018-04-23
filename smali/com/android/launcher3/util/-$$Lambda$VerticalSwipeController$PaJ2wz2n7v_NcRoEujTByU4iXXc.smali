.class public final synthetic Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/launcher3/util/VerticalSwipeController;

.field private final synthetic f$1:Lcom/android/launcher3/LauncherState;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/VerticalSwipeController;Lcom/android/launcher3/LauncherState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;->f$0:Lcom/android/launcher3/util/VerticalSwipeController;

    iput-object p2, p0, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;->f$1:Lcom/android/launcher3/LauncherState;

    iput-boolean p3, p0, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;->f$0:Lcom/android/launcher3/util/VerticalSwipeController;

    iget-object v1, p0, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;->f$1:Lcom/android/launcher3/LauncherState;

    iget-boolean v2, p0, Lcom/android/launcher3/util/-$$Lambda$VerticalSwipeController$PaJ2wz2n7v_NcRoEujTByU4iXXc;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/VerticalSwipeController;->lambda$onDragEnd$0(Lcom/android/launcher3/util/VerticalSwipeController;Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method
