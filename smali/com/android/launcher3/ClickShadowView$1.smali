.class Lcom/android/launcher3/ClickShadowView$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/ClickShadowView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/ClickShadowView;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/launcher3/ClickShadowView$1;->this$0:Lcom/android/launcher3/ClickShadowView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 0

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/android/launcher3/ClickShadowView$1;->this$0:Lcom/android/launcher3/ClickShadowView;

    invoke-static {p1}, Lcom/android/launcher3/ClickShadowView;->access$000(Lcom/android/launcher3/ClickShadowView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    :catch_0
    move-exception v0

    return-void
.end method
