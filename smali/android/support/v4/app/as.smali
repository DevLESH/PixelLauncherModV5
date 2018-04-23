.class Landroid/support/v4/app/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final gX:Ljava/lang/Object;

.field private static gY:Ljava/lang/reflect/Field;

.field private static gZ:Z

.field private static final ha:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/as;->gX:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/as;->ha:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/an;)Landroid/os/Bundle;
    .locals 3

    .line 138
    iget v0, p1, Landroid/support/v4/app/an;->icon:I

    iget-object v1, p1, Landroid/support/v4/app/an;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/an;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 139
    new-instance p0, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/support/v4/app/an;->fZ:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p1, Landroid/support/v4/app/an;->ga:[Landroid/support/v4/app/au;

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "android.support.remoteInputs"

    .line 142
    iget-object v1, p1, Landroid/support/v4/app/an;->ga:[Landroid/support/v4/app/au;

    invoke-static {v1}, Landroid/support/v4/app/as;->a([Landroid/support/v4/app/au;)[Landroid/os/Bundle;

    move-result-object v1

    .line 141
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 144
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/an;->gb:[Landroid/support/v4/app/au;

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "android.support.dataRemoteInputs"

    .line 146
    iget-object v1, p1, Landroid/support/v4/app/an;->gb:[Landroid/support/v4/app/au;

    invoke-static {v1}, Landroid/support/v4/app/as;->a([Landroid/support/v4/app/au;)[Landroid/os/Bundle;

    move-result-object v1

    .line 145
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 148
    :cond_1
    const-string v0, "android.support.allowGeneratedReplies"

    .line 149
    iget-boolean p1, p1, Landroid/support/v4/app/an;->gc:Z

    .line 148
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    return-object p0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 6

    .line 87
    sget-object v0, Landroid/support/v4/app/as;->gX:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/as;->gZ:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 92
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sget-object v3, Landroid/support/v4/app/as;->gY:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 93
    const-class v3, Landroid/app/Notification;

    const-string v4, "extras"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 94
    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sput-boolean v1, Landroid/support/v4/app/as;->gZ:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 99
    :cond_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    sput-object v3, Landroid/support/v4/app/as;->gY:Ljava/lang/reflect/Field;

    .line 102
    :cond_2
    sget-object v3, Landroid/support/v4/app/as;->gY:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 103
    if-nez v3, :cond_3

    .line 104
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    sget-object v4, Landroid/support/v4/app/as;->gY:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    :cond_3
    :try_start_4
    monitor-exit v0

    return-object v3

    .line 110
    :catch_0
    move-exception p0

    .line 111
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    :catch_1
    move-exception p0

    .line 109
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    nop

    .line 113
    :goto_0
    sput-boolean v1, Landroid/support/v4/app/as;->gZ:Z

    .line 114
    monitor-exit v0

    return-object v2

    .line 115
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private static a([Landroid/support/v4/app/au;)[Landroid/os/Bundle;
    .locals 6

    .line 311
    if-nez p0, :cond_0

    .line 312
    const/4 p0, 0x0

    return-object p0

    .line 314
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 315
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 316
    aget-object v2, p0, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "resultKey"

    iget-object v5, v2, Landroid/support/v4/app/au;->hc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "label"

    iget-object v5, v2, Landroid/support/v4/app/au;->hd:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v4, "choices"

    iget-object v5, v2, Landroid/support/v4/app/au;->he:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v4, "allowFreeFormInput"

    iget-boolean v5, v2, Landroid/support/v4/app/au;->hf:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "extras"

    iget-object v5, v2, Landroid/support/v4/app/au;->fZ:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v2, Landroid/support/v4/app/au;->hg:Ljava/util/Set;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "allowedDataTypes"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    aput-object v3, v0, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_3
    return-object v0
.end method

.method public static b(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4

    .line 69
    nop

    .line 70
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 71
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 72
    if-eqz v3, :cond_1

    .line 73
    if-nez v1, :cond_0

    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 76
    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    return-object v1
.end method
