.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$2;
.super Landroid/support/v7/widget/X;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$2;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$200(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 288
    return-void
.end method
