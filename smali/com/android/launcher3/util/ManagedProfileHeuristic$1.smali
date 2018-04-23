.class public Lcom/android/launcher3/util/ManagedProfileHeuristic$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 89
    return-void
.end method
