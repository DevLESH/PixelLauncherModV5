.class public Landroid/support/v4/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/al;


# instance fields
.field private final fZ:Landroid/os/Bundle;

.field private gI:Landroid/widget/RemoteViews;

.field private gJ:Landroid/widget/RemoteViews;

.field private gK:Landroid/widget/RemoteViews;

.field private gO:I

.field private final gV:Landroid/support/v4/app/ap;

.field private final gW:Ljava/util/List;

.field private final mBuilder:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/ap;)V
    .locals 9

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ar;->gW:Ljava/util/List;

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    .line 62
    iput-object p1, p0, Landroid/support/v4/app/ar;->gV:Landroid/support/v4/app/ap;

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/ap;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/support/v4/app/ap;->gL:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/ap;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    .line 68
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/ap;->gP:Landroid/app/Notification;

    .line 69
    iget-object v2, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 71
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ap;->gl:Landroid/widget/RemoteViews;

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 73
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 74
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 75
    move v3, v4

    goto :goto_1

    .line 74
    :cond_1
    nop

    .line 75
    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 76
    move v3, v4

    goto :goto_2

    .line 75
    :cond_2
    nop

    .line 76
    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v6, 0x10

    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    .line 77
    move v3, v4

    goto :goto_3

    .line 76
    :cond_3
    nop

    .line 77
    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 78
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gh:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gi:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gn:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gj:Landroid/app/PendingIntent;

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gk:Landroid/app/PendingIntent;

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    .line 84
    move v7, v4

    goto :goto_4

    .line 83
    :cond_4
    nop

    .line 84
    move v7, v5

    :goto_4
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gm:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/ap;->go:I

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/ap;->gv:I

    iget v7, p1, Landroid/support/v4/app/ap;->gw:I

    iget-boolean v8, p1, Landroid/support/v4/app/ap;->gx:Z

    .line 88
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_5

    .line 90
    iget-object v2, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v8, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    .line 92
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v2, v6, :cond_c

    .line 93
    iget-object v2, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p1, Landroid/support/v4/app/ap;->gt:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v6, p1, Landroid/support/v4/app/ap;->gr:Z

    .line 94
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, p1, Landroid/support/v4/app/ap;->gp:I

    .line 95
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 97
    iget-object v2, p1, Landroid/support/v4/app/ap;->gg:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/an;

    .line 98
    invoke-direct {p0, v6}, Landroid/support/v4/app/ar;->a(Landroid/support/v4/app/an;)V

    .line 99
    goto :goto_5

    .line 101
    :cond_6
    iget-object v2, p1, Landroid/support/v4/app/ap;->fZ:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    .line 102
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    iget-object v6, p1, Landroid/support/v4/app/ap;->fZ:Landroid/os/Bundle;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 104
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_b

    .line 105
    iget-boolean v2, p1, Landroid/support/v4/app/ap;->gB:Z

    if-eqz v2, :cond_8

    .line 106
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    :cond_8
    iget-object v2, p1, Landroid/support/v4/app/ap;->gy:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 109
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v6, "android.support.groupKey"

    iget-object v8, p1, Landroid/support/v4/app/ap;->gy:Ljava/lang/String;

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-boolean v2, p1, Landroid/support/v4/app/ap;->gz:Z

    if-eqz v2, :cond_9

    .line 111
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v6, "android.support.isGroupSummary"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 113
    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v6, "android.support.useSideChannel"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    :cond_a
    :goto_6
    iget-object v2, p1, Landroid/support/v4/app/ap;->gA:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 118
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v4, "android.support.sortKey"

    iget-object v6, p1, Landroid/support/v4/app/ap;->gA:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_b
    iget-object v2, p1, Landroid/support/v4/app/ap;->gI:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    .line 123
    iget-object v2, p1, Landroid/support/v4/app/ap;->gJ:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    .line 125
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_d

    .line 126
    iget-object v2, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroid/support/v4/app/ap;->gq:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 128
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_d

    .line 129
    iget-object v2, p1, Landroid/support/v4/app/ap;->gQ:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p1, Landroid/support/v4/app/ap;->gQ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 130
    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v4, "android.people"

    iget-object v6, p1, Landroid/support/v4/app/ap;->gQ:Ljava/util/ArrayList;

    iget-object v8, p1, Landroid/support/v4/app/ap;->gQ:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 130
    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    :cond_d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_e

    .line 136
    iget-object v2, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroid/support/v4/app/ap;->gB:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroid/support/v4/app/ap;->gy:Ljava/lang/String;

    .line 137
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v4, p1, Landroid/support/v4/app/ap;->gz:Z

    .line 138
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroid/support/v4/app/ap;->gA:Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 141
    iget v2, p1, Landroid/support/v4/app/ap;->gO:I

    iput v2, p0, Landroid/support/v4/app/ar;->gO:I

    .line 143
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_10

    .line 144
    iget-object v2, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/ap;->gE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/ap;->gF:I

    .line 145
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/ap;->gG:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/ap;->gH:Landroid/app/Notification;

    .line 147
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 148
    invoke-virtual {v2, v3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 150
    iget-object v0, p1, Landroid/support/v4/app/ap;->gQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    iget-object v3, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 152
    goto :goto_7

    .line 153
    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/ap;->gK:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/ar;->gK:Landroid/widget/RemoteViews;

    .line 155
    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_13

    .line 156
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/ap;->fZ:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/ap;->gu:[Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    iget-object v0, p1, Landroid/support/v4/app/ap;->gI:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_11

    .line 159
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/ap;->gI:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 161
    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/ap;->gJ:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/ap;->gJ:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 164
    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/ap;->gK:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroid/support/v4/app/ap;->gK:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 168
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_15

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget v1, p1, Landroid/support/v4/app/ap;->mBadgeIcon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/ap;->gM:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroid/support/v4/app/ap;->gN:J

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/ap;->gO:I

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 173
    iget-boolean v0, p1, Landroid/support/v4/app/ap;->gD:Z

    if-eqz v0, :cond_14

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/ap;->gC:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    .line 177
    :cond_14
    iget-object p1, p1, Landroid/support/v4/app/ap;->gL:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 178
    iget-object p1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 184
    :cond_15
    return-void
.end method

.method private a(Landroid/support/v4/app/an;)V
    .locals 5

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 232
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 233
    iget v1, p1, Landroid/support/v4/app/an;->icon:I

    iget-object v2, p1, Landroid/support/v4/app/an;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/an;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 234
    iget-object v1, p1, Landroid/support/v4/app/an;->ga:[Landroid/support/v4/app/au;

    if-eqz v1, :cond_0

    .line 235
    nop

    .line 236
    iget-object v1, p1, Landroid/support/v4/app/an;->ga:[Landroid/support/v4/app/au;

    .line 235
    invoke-static {v1}, Landroid/support/v4/app/au;->b([Landroid/support/v4/app/au;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 237
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/an;->fZ:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 242
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p1, Landroid/support/v4/app/an;->fZ:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 244
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 246
    :goto_1
    const-string v2, "android.support.allowGeneratedReplies"

    .line 247
    iget-boolean v3, p1, Landroid/support/v4/app/an;->gc:Z

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 249
    iget-boolean v2, p1, Landroid/support/v4/app/an;->gc:Z

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 252
    :cond_2
    const-string v2, "android.support.action.semanticAction"

    .line 253
    iget v3, p1, Landroid/support/v4/app/an;->ge:I

    .line 252
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_3

    .line 255
    iget v2, p1, Landroid/support/v4/app/an;->ge:I

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    .line 258
    :cond_3
    const-string v2, "android.support.action.showsUserInterface"

    .line 259
    iget-boolean p1, p1, Landroid/support/v4/app/an;->gd:Z

    .line 258
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 261
    iget-object p1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 262
    return-void

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 263
    iget-object v0, p0, Landroid/support/v4/app/ar;->gW:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    .line 264
    invoke-static {v1, p1}, Landroid/support/v4/app/as;->a(Landroid/app/Notification$Builder;Landroid/support/v4/app/an;)Landroid/os/Bundle;

    move-result-object p1

    .line 263
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_5
    return-void
.end method

.method private b(Landroid/app/Notification;)V
    .locals 1

    .line 394
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 395
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 396
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 397
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 398
    return-void
.end method


# virtual methods
.method public final at()Landroid/app/Notification$Builder;
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public final build()Landroid/app/Notification;
    .locals 8

    .line 192
    iget-object v0, p0, Landroid/support/v4/app/ar;->gV:Landroid/support/v4/app/ap;

    iget-object v0, v0, Landroid/support/v4/app/ap;->gs:Landroid/support/v4/app/aq;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p0}, Landroid/support/v4/app/aq;->a(Landroid/support/v4/app/al;)V

    .line 197
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/16 v3, 0x10

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto/16 :goto_3

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0, v1}, Landroid/support/v4/app/ar;->b(Landroid/app/Notification;)V

    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_15

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-ne v2, v4, :cond_15

    :goto_0
    invoke-direct {p0, v1}, Landroid/support/v4/app/ar;->b(Landroid/app/Notification;)V

    goto/16 :goto_3

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/ar;->gK:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v4/app/ar;->gK:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_6
    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-ne v2, v5, :cond_7

    invoke-direct {p0, v1}, Landroid/support/v4/app/ar;->b(Landroid/app/Notification;)V

    :cond_7
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_15

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-ne v2, v4, :cond_15

    goto :goto_0

    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_a
    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-ne v2, v5, :cond_b

    invoke-direct {p0, v1}, Landroid/support/v4/app/ar;->b(Landroid/app/Notification;)V

    :cond_b
    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    iget v2, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_15

    iget v2, p0, Landroid/support/v4/app/ar;->gO:I

    if-ne v2, v4, :cond_15

    goto/16 :goto_0

    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_f

    iget-object v1, p0, Landroid/support/v4/app/ar;->gW:Ljava/util/List;

    invoke-static {v1}, Landroid/support/v4/app/as;->b(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    const-string v4, "android.support.actionExtras"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_d
    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_e
    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_15

    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto :goto_3

    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_14

    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/am;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v5, p0, Landroid/support/v4/app/ar;->fZ:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_11
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/support/v4/app/ar;->gW:Ljava/util/List;

    invoke-static {v2}, Landroid/support/v4/app/as;->b(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {v1}, Landroid/support/v4/app/am;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.support.actionExtras"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_12
    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/support/v4/app/ar;->gI:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_13
    iget-object v2, p0, Landroid/support/v4/app/ar;->gJ:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_15

    goto :goto_1

    :cond_14
    iget-object v1, p0, Landroid/support/v4/app/ar;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 201
    :cond_15
    :goto_3
    iget-object v2, p0, Landroid/support/v4/app/ar;->gV:Landroid/support/v4/app/ap;

    iget-object v2, v2, Landroid/support/v4/app/ap;->gI:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_16

    .line 204
    iget-object v2, p0, Landroid/support/v4/app/ar;->gV:Landroid/support/v4/app/ap;

    iget-object v2, v2, Landroid/support/v4/app/ap;->gI:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 206
    :cond_16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 213
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_17

    if-eqz v0, :cond_17

    .line 221
    invoke-static {v1}, Landroid/support/v4/app/am;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    .line 222
    :cond_17
    return-object v1
.end method
