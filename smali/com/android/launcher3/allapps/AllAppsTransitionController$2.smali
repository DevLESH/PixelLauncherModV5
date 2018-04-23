.class Lcom/android/launcher3/allapps/AllAppsTransitionController$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->access$200(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 200
    return-void
.end method

.method public final onAnimationSuccess$5c3ae1ee()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsTransitionController$2;->this$0:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->access$100(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V

    .line 195
    return-void
.end method
