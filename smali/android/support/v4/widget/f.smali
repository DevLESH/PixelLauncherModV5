.class public final Landroid/support/v4/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final kZ:Landroid/support/v4/widget/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Landroid/support/v4/widget/g;

    invoke-direct {v0}, Landroid/support/v4/widget/g;-><init>()V

    sput-object v0, Landroid/support/v4/widget/f;->kZ:Landroid/support/v4/widget/h;

    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/support/v4/widget/h;

    invoke-direct {v0}, Landroid/support/v4/widget/h;-><init>()V

    sput-object v0, Landroid/support/v4/widget/f;->kZ:Landroid/support/v4/widget/h;

    .line 44
    return-void
.end method

.method public static a(Landroid/widget/EdgeEffect;FF)V
    .locals 1

    .line 176
    sget-object v0, Landroid/support/v4/widget/f;->kZ:Landroid/support/v4/widget/h;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/widget/h;->a(Landroid/widget/EdgeEffect;FF)V

    .line 177
    return-void
.end method
