.class public abstract Landroid/support/v4/widget/i;
.super Landroid/support/v4/view/b;
.source "SourceFile"


# static fields
.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/n;

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/o;


# instance fields
.field public mAccessibilityFocusedVirtualViewId:I

.field final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field public final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/l;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/i;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 332
    new-instance v0, Landroid/support/v4/widget/j;

    invoke-direct {v0}, Landroid/support/v4/widget/j;-><init>()V

    sput-object v0, Landroid/support/v4/widget/i;->NODE_ADAPTER:Landroid/support/v4/widget/n;

    .line 344
    new-instance v0, Landroid/support/v4/widget/k;

    invoke-direct {v0}, Landroid/support/v4/widget/k;-><init>()V

    sput-object v0, Landroid/support/v4/widget/i;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/o;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/i;->mTempParentRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/i;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/widget/i;->mTempGlobalRect:[I

    .line 118
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    .line 121
    iput v0, p0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    .line 124
    iput v0, p0, Landroid/support/v4/widget/i;->mHoveredVirtualViewId:I

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_0
    iput-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v4/widget/i;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    invoke-static {p1}, Landroid/support/v4/view/s;->f(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-static {p1, v0}, Landroid/support/v4/view/s;->d(Landroid/view/View;I)V

    .line 150
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/i;)I
    .locals 0

    .line 88
    iget p0, p0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    return p0
.end method

.method static synthetic access$100(Landroid/support/v4/widget/i;)I
    .locals 0

    .line 88
    iget p0, p0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    return p0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/a/a;
    .locals 8

    .line 788
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object v0

    .line 791
    iget-object v1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 792
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/a;->setFocusable(Z)V

    .line 793
    const-string v1, "android.view.View"

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setClassName(Ljava/lang/CharSequence;)V

    .line 794
    sget-object v1, Landroid/support/v4/widget/i;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 795
    sget-object v1, Landroid/support/v4/widget/i;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 796
    iget-object v1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->setParent(Landroid/view/View;)V

    .line 799
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/i;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 802
    iget-object v1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 803
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 807
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 808
    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/support/v4/widget/i;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :cond_1
    iget-object v1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v1

    .line 814
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_2

    .line 815
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 818
    :cond_2
    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 819
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_3
    iget-object v1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 825
    iget-object v1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget-object v4, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 828
    :cond_4
    iget v1, p0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    const/4 v4, 0x0

    if-ne v1, p1, :cond_5

    .line 829
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/a;->setAccessibilityFocused(Z)V

    .line 830
    invoke-virtual {v0, v3}, Landroid/support/v4/view/a/a;->addAction(I)V

    goto :goto_0

    .line 832
    :cond_5
    invoke-virtual {v0, v4}, Landroid/support/v4/view/a/a;->setAccessibilityFocused(Z)V

    .line 833
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 837
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    if-ne v1, p1, :cond_6

    .line 838
    move p1, v2

    goto :goto_1

    .line 837
    :cond_6
    nop

    .line 838
    move p1, v4

    :goto_1
    if-eqz p1, :cond_7

    .line 839
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/a;->addAction(I)V

    goto :goto_2

    .line 840
    :cond_7
    iget-object v1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 841
    invoke-virtual {v0, v2}, Landroid/support/v4/view/a/a;->addAction(I)V

    .line 843
    :cond_8
    :goto_2
    iget-object v1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 845
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempGlobalRect:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 849
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/a;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 850
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/support/v4/widget/i;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 851
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 854
    iget p1, v0, Landroid/support/v4/view/a/a;->kc:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_b

    .line 855
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p1

    .line 857
    iget v3, v0, Landroid/support/v4/view/a/a;->kc:I

    .line 858
    :goto_3
    if-eq v3, v1, :cond_a

    .line 861
    iget-object v6, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    iput v1, p1, Landroid/support/v4/view/a/a;->kc:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_9

    iget-object v7, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, v6, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 862
    :cond_9
    sget-object v6, Landroid/support/v4/widget/i;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/support/v4/view/a/a;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 864
    invoke-virtual {p0, v3, p1}, Landroid/support/v4/widget/i;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V

    .line 865
    iget-object v3, p0, Landroid/support/v4/widget/i;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/support/v4/view/a/a;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 866
    iget-object v3, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v4/widget/i;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/support/v4/widget/i;->mTempParentRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 859
    iget v3, p1, Landroid/support/v4/view/a/a;->kc:I

    goto :goto_3

    .line 868
    :cond_a
    iget-object p1, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 871
    :cond_b
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempGlobalRect:[I

    aget v1, v1, v4

    iget-object v3, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v4/widget/i;->mTempGlobalRect:[I

    aget v3, v3, v2

    iget-object v6, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    .line 872
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    .line 871
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 875
    :cond_c
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 876
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempGlobalRect:[I

    aget v1, v1, v4

    iget-object v3, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v4/widget/i;->mTempGlobalRect:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    .line 877
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 876
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 878
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/i;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    .line 879
    if-eqz p1, :cond_d

    .line 880
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/a/a;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 882
    iget-object p1, p0, Landroid/support/v4/widget/i;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/support/v4/widget/i;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 883
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_d

    iget-object p1, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 888
    :cond_d
    return-object v0
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 3

    .line 929
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 934
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 935
    return v0

    .line 939
    :cond_1
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 940
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 941
    check-cast p1, Landroid/view/View;

    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 945
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 946
    goto :goto_0

    .line 943
    :cond_3
    :goto_1
    return v0

    .line 949
    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0

    .line 930
    :cond_6
    :goto_2
    return v0
.end method


# virtual methods
.method final clearAccessibilityFocus(I)Z
    .locals 1

    .line 995
    iget v0, p0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 996
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/i;->mAccessibilityFocusedVirtualViewId:I

    .line 997
    iget-object v0, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 998
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/i;->sendEventForVirtualView(II)Z

    .line 1000
    const/4 p1, 0x1

    return p1

    .line 1002
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 1

    .line 1043
    iget v0, p0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_0

    .line 1045
    const/4 p1, 0x0

    return p1

    .line 1048
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/i;->mKeyboardFocusedVirtualViewId:I

    .line 1050
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/i;->sendEventForVirtualView(II)Z

    .line 1053
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/d;
    .locals 0

    .line 154
    iget-object p1, p0, Landroid/support/v4/widget/i;->mNodeProvider:Landroid/support/v4/widget/l;

    if-nez p1, :cond_0

    .line 155
    new-instance p1, Landroid/support/v4/widget/l;

    invoke-direct {p1, p0}, Landroid/support/v4/widget/l;-><init>(Landroid/support/v4/widget/i;)V

    iput-object p1, p0, Landroid/support/v4/widget/i;->mNodeProvider:Landroid/support/v4/widget/l;

    .line 157
    :cond_0
    iget-object p1, p0, Landroid/support/v4/widget/i;->mNodeProvider:Landroid/support/v4/widget/l;

    return-object p1
.end method

.method public abstract getVirtualViewAt(FF)I
.end method

.method public abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method

.method final obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;
    .locals 7

    .line 716
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 717
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/a;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/s;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/i;->getVisibleVirtualViews(Ljava/util/List;)V

    iget-object v1, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Views cannot have both real and virtual children"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    iget-object v5, p1, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    .line 720
    :cond_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/i;->createNodeForChild(I)Landroid/support/v4/view/a/a;

    move-result-object p1

    return-object p1
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 657
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 660
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 0

    .line 752
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 755
    return-void
.end method

.method public abstract onPerformActionForVirtualView$5985f823(II)Z
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1113
    return-void
.end method

.method public abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/a;)V
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 4

    .line 502
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/widget/i;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 506
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 507
    if-nez v1, :cond_1

    .line 508
    return v0

    .line 511
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/i;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/a/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object v2, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/i;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, v0, Landroid/support/v4/view/a/a;->kb:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 512
    :goto_0
    iget-object p1, p0, Landroid/support/v4/widget/i;->mHost:Landroid/view/View;

    invoke-static {v1, p1, p2}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 503
    :cond_5
    :goto_1
    return v0
.end method

.method public final updateHoveredVirtualView(I)V
    .locals 2

    .line 609
    iget v0, p0, Landroid/support/v4/widget/i;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 610
    return-void

    .line 613
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/i;->mHoveredVirtualViewId:I

    .line 614
    iput p1, p0, Landroid/support/v4/widget/i;->mHoveredVirtualViewId:I

    .line 618
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/i;->sendEventForVirtualView(II)Z

    .line 619
    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/i;->sendEventForVirtualView(II)Z

    .line 621
    return-void
.end method
