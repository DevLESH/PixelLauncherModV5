.class Landroid/support/a/g;
.super Landroid/support/a/d;
.source "SourceFile"


# instance fields
.field private final ab:Landroid/view/Choreographer;

.field private final ac:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Landroid/support/a/b;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Landroid/support/a/d;-><init>(Landroid/support/a/b;)V

    .line 194
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroid/support/a/g;->ab:Landroid/view/Choreographer;

    .line 199
    new-instance p1, Landroid/support/a/h;

    invoke-direct {p1, p0}, Landroid/support/a/h;-><init>(Landroid/support/a/g;)V

    iput-object p1, p0, Landroid/support/a/g;->ac:Landroid/view/Choreographer$FrameCallback;

    .line 205
    return-void
.end method


# virtual methods
.method final i()V
    .locals 2

    .line 209
    iget-object v0, p0, Landroid/support/a/g;->ab:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/support/a/g;->ac:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 210
    return-void
.end method
