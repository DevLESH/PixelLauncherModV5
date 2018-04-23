.class public Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final addIconToFolderTime:J

.field public final folderAlreadyCreated:Z

.field public final folderIdKey:Ljava/lang/String;

.field public final folderInfo:Lcom/android/launcher3/FolderInfo;

.field public folderPendingAddition:Z

.field public final pendingShortcuts:Ljava/util/ArrayList;

.field public final prefs:Landroid/content/SharedPreferences;

.field final user:Landroid/os/UserHandle;

.field final userSerial:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/launcher3/model/BgDataModel;)V
    .locals 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    .line 116
    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->user:Landroid/os/UserHandle;

    .line 118
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->userSerial:J

    .line 120
    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserCreationTime(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-wide/32 v2, 0x1b77400

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->addIconToFolderTime:J

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "user_folder_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->userSerial:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    .line 123
    const-string p2, "com.android.launcher3.managedusers.prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    .line 125
    iget-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    .line 126
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 127
    iget-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    const-wide/16 v0, -0x1

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 129
    iget-object p3, p3, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p3, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/FolderInfo;

    iput-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    .line 130
    return-void

    .line 131
    :cond_0
    new-instance p3, Lcom/android/launcher3/FolderInfo;

    invoke-direct {p3}, Lcom/android/launcher3/FolderInfo;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    .line 132
    iget-object p3, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 133
    iget-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    const/4 p3, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/launcher3/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 134
    iput-boolean v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderPendingAddition:Z

    return-void

    .line 137
    :cond_1
    iput-object p2, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    .line 139
    return-void
.end method


# virtual methods
.method public final applyPendingState(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 11

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 180
    iget-boolean v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->pendingShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    .line 185
    add-int/lit8 v2, v0, 0x1

    iput v0, v4, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v5, v0, Lcom/android/launcher3/FolderInfo;->id:J

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 187
    nop

    .line 184
    move v0, v2

    goto :goto_0

    .line 189
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderAlreadyCreated:Z

    if-eqz p1, :cond_3

    .line 191
    new-instance p1, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {p1}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo$1;-><init>(Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderIdKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/util/ManagedProfileHeuristic$UserFolderInfo;->folderInfo:Lcom/android/launcher3/FolderInfo;

    iget-wide v1, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    return-void
.end method
