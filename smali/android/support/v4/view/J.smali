.class final Landroid/support/v4/view/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 134
    check-cast p1, Landroid/support/v4/view/O;

    check-cast p2, Landroid/support/v4/view/O;

    iget p1, p1, Landroid/support/v4/view/O;->position:I

    iget p2, p2, Landroid/support/v4/view/O;->position:I

    sub-int/2addr p1, p2

    return p1
.end method
