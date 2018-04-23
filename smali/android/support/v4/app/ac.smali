.class Landroid/support/v4/app/ac;
.super Landroid/transition/Transition$EpicenterCallback;
.source "SourceFile"


# instance fields
.field final synthetic fE:Landroid/support/v4/app/Y;

.field final synthetic fs:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Y;Landroid/graphics/Rect;)V
    .locals 0

    .line 304
    iput-object p1, p0, Landroid/support/v4/app/ac;->fE:Landroid/support/v4/app/Y;

    iput-object p2, p0, Landroid/support/v4/app/ac;->fs:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
    .locals 0

    .line 307
    iget-object p1, p0, Landroid/support/v4/app/ac;->fs:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/ac;->fs:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/ac;->fs:Landroid/graphics/Rect;

    return-object p1

    .line 308
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
