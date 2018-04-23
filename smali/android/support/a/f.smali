.class Landroid/support/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aa:Landroid/support/a/e;


# direct methods
.method constructor <init>(Landroid/support/a/e;)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroid/support/a/f;->aa:Landroid/support/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 228
    iget-object v0, p0, Landroid/support/a/f;->aa:Landroid/support/a/e;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/support/a/e;->Z:J

    .line 229
    iget-object v0, p0, Landroid/support/a/f;->aa:Landroid/support/a/e;

    iget-object v0, v0, Landroid/support/a/e;->Y:Landroid/support/a/b;

    invoke-virtual {v0}, Landroid/support/a/b;->h()V

    .line 230
    return-void
.end method
