.class Landroid/support/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field final synthetic ad:Landroid/support/a/g;


# direct methods
.method constructor <init>(Landroid/support/a/g;)V
    .locals 0

    .line 199
    iput-object p1, p0, Landroid/support/a/h;->ad:Landroid/support/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 202
    iget-object p1, p0, Landroid/support/a/h;->ad:Landroid/support/a/g;

    iget-object p1, p1, Landroid/support/a/g;->Y:Landroid/support/a/b;

    invoke-virtual {p1}, Landroid/support/a/b;->h()V

    .line 203
    return-void
.end method
