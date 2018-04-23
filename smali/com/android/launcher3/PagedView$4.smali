.class Lcom/android/launcher3/PagedView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;)V
    .locals 0

    .line 1851
    iput-object p1, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1855
    iget-object v0, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->onEndReordering()V

    .line 1857
    iget-object v0, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->enableFreeScroll()V

    .line 1858
    return-void
.end method
