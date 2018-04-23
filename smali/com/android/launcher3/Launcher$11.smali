.class Lcom/android/launcher3/Launcher$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$11;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$11;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1763
    iget-object p1, p0, Lcom/android/launcher3/Launcher$11;->this$0:Lcom/android/launcher3/Launcher;

    iget-object p2, p0, Lcom/android/launcher3/Launcher$11;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher$11;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Launcher;->access$500(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V

    .line 1764
    return-void
.end method
