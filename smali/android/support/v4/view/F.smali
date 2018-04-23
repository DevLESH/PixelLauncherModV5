.class public final Landroid/support/v4/view/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final jO:Landroid/support/v4/view/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 111
    new-instance v0, Landroid/support/v4/view/H;

    invoke-direct {v0}, Landroid/support/v4/view/H;-><init>()V

    sput-object v0, Landroid/support/v4/view/F;->jO:Landroid/support/v4/view/I;

    return-void

    .line 112
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 113
    new-instance v0, Landroid/support/v4/view/G;

    invoke-direct {v0}, Landroid/support/v4/view/G;-><init>()V

    sput-object v0, Landroid/support/v4/view/F;->jO:Landroid/support/v4/view/I;

    return-void

    .line 115
    :cond_1
    new-instance v0, Landroid/support/v4/view/I;

    invoke-direct {v0}, Landroid/support/v4/view/I;-><init>()V

    sput-object v0, Landroid/support/v4/view/F;->jO:Landroid/support/v4/view/I;

    .line 117
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 218
    sget-object v0, Landroid/support/v4/view/F;->jO:Landroid/support/v4/view/I;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/I;->a(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method
