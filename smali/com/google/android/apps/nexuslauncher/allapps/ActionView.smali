.class public Lcom/google/android/apps/nexuslauncher/allapps/ActionView;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"


# instance fields
.field private mPos:I

.field private rg:Lcom/google/android/apps/nexuslauncher/allapps/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 26
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setLongPressTimeout(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/allapps/a;I)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->rg:Lcom/google/android/apps/nexuslauncher/allapps/a;

    .line 31
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->mPos:I

    .line 32
    return-void
.end method

.method public performClick()Z
    .locals 8

    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->a(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->rp:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->rA:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->rg:Lcom/google/android/apps/nexuslauncher/allapps/a;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/a;->shortcutId:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->mPos:I

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/e;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/e;-><init>(B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/google/android/apps/nexuslauncher/allapps/e;->ts:J

    iput-object v1, v4, Lcom/google/android/apps/nexuslauncher/allapps/e;->rw:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    iput-object v2, v4, Lcom/google/android/apps/nexuslauncher/allapps/e;->rx:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Lcom/google/android/apps/nexuslauncher/allapps/e;->ry:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/apps/nexuslauncher/allapps/e;->rz:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger;->rv:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->c(Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v5, v5, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 37
    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->performClick()Z

    move-result v0

    return v0
.end method
