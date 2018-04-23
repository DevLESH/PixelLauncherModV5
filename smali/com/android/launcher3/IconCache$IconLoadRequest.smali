.class public Lcom/android/launcher3/IconCache$IconLoadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p1, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    .line 721
    iput-object p2, p0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    .line 722
    return-void
.end method
