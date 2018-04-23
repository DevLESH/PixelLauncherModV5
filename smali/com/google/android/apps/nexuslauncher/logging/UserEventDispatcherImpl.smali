.class public Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;
.super Lcom/android/launcher3/logging/UserEventDispatcher;
.source "SourceFile"


# static fields
.field private static sF:Lcom/google/android/apps/nexuslauncher/logging/b;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

.field private final sD:Lcom/google/android/apps/nexuslauncher/logging/a;

.field private final sE:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sF:Lcom/google/android/apps/nexuslauncher/logging/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/launcher3/logging/UserEventDispatcher;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    .line 49
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/a;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sD:Lcom/google/android/apps/nexuslauncher/logging/a;

    .line 51
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->i(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

    .line 52
    return-void
.end method

.method private static declared-synchronized f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/logging/b;
    .locals 2

    const-class v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sF:Lcom/google/android/apps/nexuslauncher/logging/b;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/google/android/apps/nexuslauncher/logging/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/logging/b;-><init>(Landroid/content/Context;)V

    .line 152
    sput-object v1, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sF:Lcom/google/android/apps/nexuslauncher/logging/b;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/logging/b;->bS()V

    .line 153
    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sF:Lcom/google/android/apps/nexuslauncher/logging/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/c/d;->v(Z)V

    .line 155
    :cond_0
    sget-object p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sF:Lcom/google/android/apps/nexuslauncher/logging/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 149
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)V
    .locals 6

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/android/launcher3/util/ComponentKey;

    .line 103
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 106
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v3, v4

    .line 107
    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 105
    invoke-static {v1, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 109
    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v0

    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->fillIntentInfo(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Landroid/content/Intent;)V

    .line 113
    :cond_1
    iget-object p1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object p1, p1, v4

    iput p3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 114
    invoke-virtual {p2}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 115
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public final aq(I)V
    .locals 5

    .line 119
    nop

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    new-instance v4, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    invoke-direct {v4}, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;-><init>()V

    .line 121
    invoke-static {v2, v4}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(ILcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v3, v0

    .line 119
    invoke-static {v1, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 122
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->extension:Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;

    iput p1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogExtensions$TargetExtension;->smartspaceType:I

    .line 123
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public final dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 129
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/logging/b;

    move-result-object v1

    .line 130
    if-eqz v0, :cond_1

    iget-boolean v2, v1, Lcom/google/android/apps/nexuslauncher/logging/b;->sG:Z

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    instance-of v3, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/logging/b;->mShortcuts:Ljava/util/List;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    goto :goto_0

    :goto_1
    iput v1, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 133
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 134
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sD:Lcom/google/android/apps/nexuslauncher/logging/a;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/logging/a;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 136
    if-eqz v0, :cond_4

    .line 137
    instance-of p2, v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    if-eqz p2, :cond_2

    .line 138
    return-void

    .line 139
    :cond_2
    iget-object p2, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "@instantapp"

    .line 140
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 141
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 143
    :cond_3
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/reflection/g;->tV:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    :cond_4
    return-void
.end method

.method public final logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 6

    .line 69
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 70
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    const-string v2, "shortcut_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 77
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    new-instance v3, Lcom/android/launcher3/shortcuts/ShortcutKey;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/ItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 81
    :cond_2
    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 83
    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@instantapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, v1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v4, v2, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    .line 92
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->sE:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public final x(II)V
    .locals 5

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 61
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object p1

    aput-object p1, v2, v3

    .line 60
    invoke-static {v1, v2}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object p1

    .line 62
    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 63
    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v0, v1, v0

    iput p2, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 64
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 65
    return-void
.end method
