.class public Lcom/android/launcher3/notification/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field private static sIsConnected:Z

.field private static sIsCreated:Z

.field private static sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

.field private static sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

.field private static sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;


# instance fields
.field private mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

.field private final mNotificationGroupMap:Ljava/util/Map;

.field private final mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mUiCallback:Landroid/os/Handler$Callback;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mWorkerCallback:Landroid/os/Handler$Callback;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 138
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 71
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    .line 77
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$1;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    .line 108
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/notification/NotificationListener$2;-><init>(Lcom/android/launcher3/notification/NotificationListener;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    .line 141
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/notification/NotificationListener;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationListener;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/notification/NotificationListener;[Landroid/service/notification/StatusBarNotification;)Ljava/util/List;
    .locals 4

    .line 55
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/launcher3/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method static synthetic access$300()Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher3/notification/NotificationListener;->shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public static getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;
    .locals 1

    .line 167
    sget-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationListenerInstance:Lcom/android/launcher3/notification/NotificationListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private onNotificationFullRefresh()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method public static removeNotificationsChangedListener()V
    .locals 1

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 191
    return-void
.end method

.method public static removeStatusBarNotificationsChangedListener()V
    .locals 1

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    .line 195
    return-void
.end method

.method public static setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .locals 1

    .line 171
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 173
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object p0

    .line 174
    if-eqz p0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    return-void

    .line 176
    :cond_0
    sget-boolean p0, Lcom/android/launcher3/notification/NotificationListener;->sIsCreated:Z

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    if-eqz p0, :cond_1

    .line 179
    sget-object p0, Lcom/android/launcher3/notification/NotificationListener;->sNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {p0, v0}, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;->onNotificationFullRefresh(Ljava/util/List;)V

    .line 182
    :cond_1
    return-void
.end method

.method public static setStatusBarNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;)V
    .locals 0

    .line 186
    sput-object p0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    .line 187
    return-void
.end method

.method private shouldBeFilteredOut(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    .line 296
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 298
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 299
    move v1, v3

    goto :goto_0

    .line 298
    :cond_0
    nop

    .line 299
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/notification/NotificationGroup;

    .line 302
    if-nez v4, :cond_1

    .line 303
    new-instance v4, Lcom/android/launcher3/notification/NotificationGroup;

    invoke-direct {v4}, Lcom/android/launcher3/notification/NotificationGroup;-><init>()V

    .line 304
    iget-object v5, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_1
    if-eqz v1, :cond_2

    .line 307
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v4, p1, v5}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 314
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->canShowBadge()Z

    move-result p1

    if-nez p1, :cond_4

    .line 315
    return v3

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationListener;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "miscellaneous"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 319
    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 320
    return v3

    .line 324
    :cond_5
    iget-object p1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 325
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 326
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 327
    move p1, v3

    goto :goto_2

    .line 326
    :cond_6
    nop

    .line 327
    move p1, v2

    :goto_2
    if-nez v1, :cond_8

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    return v2

    :cond_8
    :goto_3
    return v3
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 146
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsCreated:Z

    .line 148
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener$3;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationListener;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/notification/NotificationListener$3;-><init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    const-string v1, "notification_badging"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/util/SettingsObserver;->register(Ljava/lang/String;[Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsCreated:Z

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationBadgingObserver:Lcom/android/launcher3/util/SettingsObserver;

    invoke-interface {v0}, Lcom/android/launcher3/util/SettingsObserver;->unregister()V

    .line 164
    return-void
.end method

.method public onListenerConnected()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 200
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 201
    invoke-direct {p0}, Lcom/android/launcher3/notification/NotificationListener;->onNotificationFullRefresh()V

    .line 202
    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    .line 210
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/notification/NotificationListener;->sIsConnected:Z

    .line 212
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 216
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/notification/NotificationListener$NotificationPostedMsg;-><init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/service/notification/StatusBarNotification;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 222
    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 241
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 242
    new-instance v0, Landroid/util/Pair;

    .line 243
    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 244
    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationListener;->mWorkerHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 247
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/android/launcher3/notification/NotificationListener;->sStatusBarNotificationsChangedListener:Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/notification/NotificationListener$StatusBarNotificationsChangedListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationGroup;

    .line 252
    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, v0, Lcom/android/launcher3/notification/NotificationGroup;->mChildKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationGroup;->mGroupSummaryKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotification(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationListener;->mNotificationGroupMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1
    return-void
.end method
