.class public Landroid/support/v4/view/P;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field public gravity:I

.field jS:F

.field public jU:Z

.field jV:Z

.field jW:I

.field position:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3139
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3120
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/P;->jS:F

    .line 3140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3143
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3120
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/P;->jS:F

    .line 3145
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3146
    const/4 p2, 0x0

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Landroid/support/v4/view/P;->gravity:I

    .line 3147
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3148
    return-void
.end method
