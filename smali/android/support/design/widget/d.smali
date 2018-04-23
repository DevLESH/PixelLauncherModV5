.class public Landroid/support/design/widget/d;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field bA:Z

.field final bB:Landroid/graphics/Rect;

.field bC:Ljava/lang/Object;

.field bn:Landroid/support/design/widget/b;

.field bo:Z

.field public bp:I

.field public bq:I

.field br:I

.field public bs:I

.field public bt:I

.field bu:I

.field bv:I

.field bw:Landroid/view/View;

.field bx:Z

.field private by:Z

.field private bz:Z

.field public gravity:I

.field mAnchorView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2737
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2677
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/d;->bo:Z

    .line 2686
    iput p1, p0, Landroid/support/design/widget/d;->gravity:I

    .line 2692
    iput p1, p0, Landroid/support/design/widget/d;->bp:I

    .line 2699
    const/4 p2, -0x1

    iput p2, p0, Landroid/support/design/widget/d;->bq:I

    .line 2705
    iput p2, p0, Landroid/support/design/widget/d;->br:I

    .line 2712
    iput p1, p0, Landroid/support/design/widget/d;->bs:I

    .line 2719
    iput p1, p0, Landroid/support/design/widget/d;->bt:I

    .line 2732
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    .line 2738
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2741
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2677
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/d;->bo:Z

    .line 2686
    iput v0, p0, Landroid/support/design/widget/d;->gravity:I

    .line 2692
    iput v0, p0, Landroid/support/design/widget/d;->bp:I

    .line 2699
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/design/widget/d;->bq:I

    .line 2705
    iput v1, p0, Landroid/support/design/widget/d;->br:I

    .line 2712
    iput v0, p0, Landroid/support/design/widget/d;->bs:I

    .line 2719
    iput v0, p0, Landroid/support/design/widget/d;->bt:I

    .line 2732
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    .line 2743
    sget-object v2, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2746
    sget v3, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/d;->gravity:I

    .line 2749
    sget v3, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/d;->br:I

    .line 2751
    sget v3, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/d;->bp:I

    .line 2755
    sget v3, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->bq:I

    .line 2758
    sget v1, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->bs:I

    .line 2759
    sget v1, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->bt:I

    .line 2761
    sget v0, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/d;->bo:Z

    .line 2763
    iget-boolean v0, p0, Landroid/support/design/widget/d;->bo:Z

    if-eqz v0, :cond_0

    .line 2764
    sget v0, Landroid/support/coreui/R$styleable;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/b;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/d;->bn:Landroid/support/design/widget/b;

    .line 2767
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2769
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/d;)V
    .locals 1

    .line 2776
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2677
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/d;->bo:Z

    .line 2686
    iput p1, p0, Landroid/support/design/widget/d;->gravity:I

    .line 2692
    iput p1, p0, Landroid/support/design/widget/d;->bp:I

    .line 2699
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/d;->bq:I

    .line 2705
    iput v0, p0, Landroid/support/design/widget/d;->br:I

    .line 2712
    iput p1, p0, Landroid/support/design/widget/d;->bs:I

    .line 2719
    iput p1, p0, Landroid/support/design/widget/d;->bt:I

    .line 2732
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    .line 2777
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 2784
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2677
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/d;->bo:Z

    .line 2686
    iput p1, p0, Landroid/support/design/widget/d;->gravity:I

    .line 2692
    iput p1, p0, Landroid/support/design/widget/d;->bp:I

    .line 2699
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/d;->bq:I

    .line 2705
    iput v0, p0, Landroid/support/design/widget/d;->br:I

    .line 2712
    iput p1, p0, Landroid/support/design/widget/d;->bs:I

    .line 2719
    iput p1, p0, Landroid/support/design/widget/d;->bt:I

    .line 2732
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    .line 2785
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2780
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2677
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/design/widget/d;->bo:Z

    .line 2686
    iput p1, p0, Landroid/support/design/widget/d;->gravity:I

    .line 2692
    iput p1, p0, Landroid/support/design/widget/d;->bp:I

    .line 2699
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/d;->bq:I

    .line 2705
    iput v0, p0, Landroid/support/design/widget/d;->br:I

    .line 2712
    iput p1, p0, Landroid/support/design/widget/d;->bs:I

    .line 2719
    iput p1, p0, Landroid/support/design/widget/d;->bt:I

    .line 2732
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/d;->bB:Landroid/graphics/Rect;

    .line 2781
    return-void
.end method


# virtual methods
.method final a(IZ)V
    .locals 0

    .line 2925
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2930
    :pswitch_0
    iput-boolean p2, p0, Landroid/support/design/widget/d;->bz:Z

    goto :goto_0

    .line 2927
    :pswitch_1
    iput-boolean p2, p0, Landroid/support/design/widget/d;->by:Z

    .line 2928
    return-void

    .line 2933
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final h(I)Z
    .locals 0

    .line 2936
    packed-switch p1, :pswitch_data_0

    .line 2942
    const/4 p1, 0x0

    return p1

    .line 2940
    :pswitch_0
    iget-boolean p1, p0, Landroid/support/design/widget/d;->bz:Z

    return p1

    .line 2938
    :pswitch_1
    iget-boolean p1, p0, Landroid/support/design/widget/d;->by:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
