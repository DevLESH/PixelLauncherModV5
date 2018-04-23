.class Landroid/support/v4/app/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ey:Landroid/support/v4/app/x;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;)V
    .locals 0

    .line 697
    iput-object p1, p0, Landroid/support/v4/app/y;->ey:Landroid/support/v4/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 700
    iget-object v0, p0, Landroid/support/v4/app/y;->ey:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->execPendingActions()Z

    .line 701
    return-void
.end method
