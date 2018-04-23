.class public Landroid/support/v4/app/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field fZ:Landroid/os/Bundle;

.field gA:Ljava/lang/String;

.field public gB:Z

.field gC:Z

.field gD:Z

.field gE:Ljava/lang/String;

.field gF:I

.field gG:I

.field gH:Landroid/app/Notification;

.field gI:Landroid/widget/RemoteViews;

.field gJ:Landroid/widget/RemoteViews;

.field gK:Landroid/widget/RemoteViews;

.field gL:Ljava/lang/String;

.field gM:Ljava/lang/String;

.field gN:J

.field gO:I

.field public gP:Landroid/app/Notification;

.field public gQ:Ljava/util/ArrayList;

.field public gg:Ljava/util/ArrayList;

.field gh:Ljava/lang/CharSequence;

.field gi:Ljava/lang/CharSequence;

.field public gj:Landroid/app/PendingIntent;

.field gk:Landroid/app/PendingIntent;

.field gl:Landroid/widget/RemoteViews;

.field gm:Landroid/graphics/Bitmap;

.field gn:Ljava/lang/CharSequence;

.field go:I

.field gp:I

.field gq:Z

.field gr:Z

.field gs:Landroid/support/v4/app/aq;

.field gt:Ljava/lang/CharSequence;

.field gu:[Ljava/lang/CharSequence;

.field gv:I

.field gw:I

.field gx:Z

.field gy:Ljava/lang/String;

.field gz:Z

.field mBadgeIcon:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 734
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ap;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ap;->gg:Ljava/util/ArrayList;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ap;->gq:Z

    .line 680
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ap;->gB:Z

    .line 685
    iput v0, p0, Landroid/support/v4/app/ap;->gF:I

    .line 686
    iput v0, p0, Landroid/support/v4/app/ap;->gG:I

    .line 692
    iput v0, p0, Landroid/support/v4/app/ap;->mBadgeIcon:I

    .line 695
    iput v0, p0, Landroid/support/v4/app/ap;->gO:I

    .line 696
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/ap;->gP:Landroid/app/Notification;

    .line 718
    iput-object p1, p0, Landroid/support/v4/app/ap;->mContext:Landroid/content/Context;

    .line 719
    iput-object p2, p0, Landroid/support/v4/app/ap;->gL:Ljava/lang/String;

    .line 722
    iget-object p1, p0, Landroid/support/v4/app/ap;->gP:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    .line 723
    iget-object p1, p0, Landroid/support/v4/app/ap;->gP:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 724
    iput v0, p0, Landroid/support/v4/app/ap;->gp:I

    .line 725
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ap;->gQ:Ljava/util/ArrayList;

    .line 726
    return-void
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1515
    if-nez p0, :cond_0

    return-object p0

    .line 1516
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    .line 1517
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 1519
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/aq;)Landroid/support/v4/app/ap;
    .locals 1

    .line 1342
    iget-object v0, p0, Landroid/support/v4/app/ap;->gs:Landroid/support/v4/app/aq;

    if-eq v0, p1, :cond_0

    .line 1343
    iput-object p1, p0, Landroid/support/v4/app/ap;->gs:Landroid/support/v4/app/aq;

    .line 1344
    iget-object p1, p0, Landroid/support/v4/app/ap;->gs:Landroid/support/v4/app/aq;

    if-eqz p1, :cond_0

    .line 1345
    iget-object p1, p0, Landroid/support/v4/app/ap;->gs:Landroid/support/v4/app/aq;

    invoke-virtual {p1, p0}, Landroid/support/v4/app/aq;->a(Landroid/support/v4/app/ap;)V

    .line 1348
    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ap;
    .locals 0

    .line 803
    invoke-static {p1}, Landroid/support/v4/app/ap;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ap;->gh:Ljava/lang/CharSequence;

    .line 804
    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ap;
    .locals 0

    .line 811
    invoke-static {p1}, Landroid/support/v4/app/ap;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ap;->gi:Ljava/lang/CharSequence;

    .line 812
    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ap;
    .locals 1

    .line 940
    iget-object v0, p0, Landroid/support/v4/app/ap;->gP:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/ap;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 941
    return-object p0
.end method
