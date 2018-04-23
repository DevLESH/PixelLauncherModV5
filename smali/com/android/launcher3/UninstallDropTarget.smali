.class public Lcom/android/launcher3/UninstallDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field private final mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

.field private final mUninstallDisabledCache:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/UninstallDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    .line 46
    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/UninstallDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    .line 47
    iget-object p1, p0, Lcom/android/launcher3/UninstallDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    iput-object p0, p1, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 48
    return-void
.end method

.method private getUninstallTarget(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;
    .locals 3

    .line 102
    nop

    .line 103
    nop

    .line 104
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    .line 109
    :cond_0
    move-object p1, v0

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v1, p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 117
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 129
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/UninstallDropTarget;->performDropAction(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 130
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;

    if-eqz v1, :cond_1

    .line 131
    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast p1, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V

    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;->sendFailure()V

    .line 139
    :cond_1
    return-void
.end method

.method public getAccessibilityAction()I
    .locals 1

    .line 69
    const v0, 0x7f0e0006

    return v0
.end method

.method public final onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/launcher3/UninstallDropTarget;->performDropAction(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;

    .line 168
    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/android/launcher3/UninstallDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 65
    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    .line 123
    new-instance v0, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/UninstallDropTarget$DeferredOnComplete;-><init>(Lcom/android/launcher3/UninstallDropTarget;Lcom/android/launcher3/DragSource;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 125
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->setupUi()V

    .line 54
    return-void
.end method

.method protected performDropAction(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;
    .locals 6

    .line 146
    invoke-direct {p0, p1}, Lcom/android/launcher3/UninstallDropTarget;->getUninstallTarget(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 150
    iget-object p1, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const v0, 0x7f0c0045

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 151
    return-object v1

    .line 154
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f0c0015

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "package"

    .line 155
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.USER"

    iget-object v4, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v0, "UninstallDropTarget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse intent to start uninstall activity for item="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-object v1
.end method

.method protected setupUi()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/UninstallDropTarget;->mHoverColor:I

    .line 59
    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/UninstallDropTarget;->setDrawable(I)V

    .line 60
    return-void
.end method

.method protected supportsDrop(Lcom/android/launcher3/ItemInfo;)Z
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 76
    nop

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 78
    iget-object v3, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 79
    const-string v3, "no_control_apps"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "no_uninstall_apps"

    .line 80
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    move v0, v2

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    nop

    .line 79
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    iget-object v3, p0, Lcom/android/launcher3/UninstallDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/UninstallDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    return v2

    .line 89
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_5

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 91
    iget v3, v0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v3, v3, 0xc0

    if-eqz v3, :cond_5

    .line 92
    iget p1, v0, Lcom/android/launcher3/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2

    .line 95
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher3/UninstallDropTarget;->getUninstallTarget(Lcom/android/launcher3/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v2
.end method
