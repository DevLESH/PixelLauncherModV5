.class public Lcom/android/launcher3/model/ModelWriter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;

.field final synthetic val$info:Lcom/android/launcher3/FolderInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "container="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v3, v3, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v1, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, v2, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;Ljava/lang/Iterable;)V

    .line 268
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    iget-wide v1, v1, Lcom/android/launcher3/FolderInfo;->id:J

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$3;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v1, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher3/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$3;->val$info:Lcom/android/launcher3/FolderInfo;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel;->removeItem(Landroid/content/Context;[Lcom/android/launcher3/ItemInfo;)V

    .line 272
    return-void
.end method
