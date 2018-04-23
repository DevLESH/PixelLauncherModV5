.class Lcom/android/launcher3/model/ModelWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$writer:Lcom/android/launcher3/util/ContentWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Landroid/content/ContentResolver;Lcom/android/launcher3/util/ContentWriter;Lcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$writer:Lcom/android/launcher3/util/ContentWriter;

    iput-object p4, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-object p5, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/launcher3/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$writer:Lcom/android/launcher3/util/ContentWriter;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v3, v3, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v0, v0, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/ItemInfo;->id:J

    iget-object v4, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/launcher3/model/ModelWriter;->access$200(Lcom/android/launcher3/model/ModelWriter;JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v1, Lcom/android/launcher3/model/ModelWriter;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$1;->this$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v2, v2, Lcom/android/launcher3/model/ModelWriter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$1;->val$item:Lcom/android/launcher3/ItemInfo;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/model/BgDataModel;->addItem(Landroid/content/Context;Lcom/android/launcher3/ItemInfo;Z)V

    .line 223
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
