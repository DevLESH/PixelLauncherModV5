.class public Lcom/android/launcher3/popup/PopupContainerWithArrow;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private final mArrayOffset:I

.field private final mArrow:Landroid/view/View;

.field protected mDeferContainerRemoval:Z

.field private final mEndRect:Landroid/graphics/Rect;

.field private mGravity:I

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInterceptTouchDown:Landroid/graphics/PointF;

.field protected mIsAboveIcon:Z

.field private mIsLeftAligned:Z

.field private final mIsRtl:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

.field private mNumNotifications:I

.field protected mOpenCloseAnimator:Landroid/animation/Animator;

.field public mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

.field private final mOutlineRadius:F

.field private final mShortcuts:Ljava/util/List;

.field private final mStartDragThreshold:I

.field private final mStartRect:Landroid/graphics/Rect;

.field private mSystemShortcutContainer:Landroid/view/ViewGroup;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    .line 106
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    .line 107
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    .line 108
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIconLastTouchPos:Landroid/graphics/Point;

    .line 132
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    .line 133
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b0076

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    .line 139
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0b008a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOutlineRadius:F

    .line 141
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 142
    new-instance p2, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object p3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p2, p3}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    .line 145
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setClipToOutline(Z)V

    .line 146
    new-instance p2, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 155
    const p3, 0x7f0b007d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 156
    const v0, 0x7f0b007e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 157
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    .line 158
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    invoke-direct {v1, p3, v0}, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    const p1, 0x7f0b007f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrayOffset:I

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/popup/PopupContainerWithArrow;)F
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOutlineRadius:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/Launcher;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    return-void
.end method

.method private closeComplete()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 883
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 885
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 886
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 890
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 891
    iput-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 892
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 893
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 894
    return-void
.end method

.method private createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
    .locals 5

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 862
    const v1, 0x7f0b0080

    goto :goto_0

    .line 863
    :cond_0
    const v1, 0x7f0b0081

    .line 861
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 864
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-nez v1, :cond_1

    .line 865
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v1

    sub-int v0, v1, v0

    .line 867
    :cond_1
    iget-boolean v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    .line 869
    :cond_2
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 870
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 874
    :cond_3
    new-instance v0, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOutlineRadius:F

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOutlineRadius:F

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 1

    .line 940
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-object p0
.end method

.method private initializeSystemShortcut(Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 3

    .line 668
    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_0

    .line 670
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 671
    iget-object v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    iget v2, p2, Lcom/android/launcher3/popup/SystemShortcut;->iconResId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 672
    iget-object v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    iget v1, p2, Lcom/android/launcher3/popup/SystemShortcut;->labelResId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setText(I)V

    .line 673
    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 675
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 676
    iget v1, p2, Lcom/android/launcher3/popup/SystemShortcut;->iconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 677
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/popup/SystemShortcut;->labelResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 679
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 680
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 681
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 680
    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    return-void
.end method

.method private populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14

    move-object v3, p0

    .line 271
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    .line 273
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 274
    iget-object v1, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 276
    move-object v1, p1

    iput-object v1, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 279
    iget v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    const/4 v4, 0x1

    if-lez v2, :cond_1

    .line 281
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f04001b

    invoke-static {v2, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 282
    new-instance v2, Lcom/android/launcher3/notification/NotificationItemView;

    invoke-direct {v2, v3}, Lcom/android/launcher3/notification/NotificationItemView;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 283
    iget v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    if-ne v2, v4, :cond_0

    .line 284
    iget-object v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v2}, Lcom/android/launcher3/notification/NotificationItemView;->removeFooter()V

    .line 286
    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 288
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v2

    .line 289
    iput-object v3, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 291
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    .line 292
    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v5, :cond_2

    .line 293
    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v5}, Lcom/android/launcher3/notification/NotificationItemView;->addGutter()V

    .line 296
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-lez v5, :cond_3

    .line 297
    iget-object v7, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    const v8, 0x7f040013

    invoke-virtual {v3, v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateHiddenShortcuts()V

    .line 301
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 302
    const v5, 0x7f04002e

    invoke-virtual {v3, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    .line 303
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/popup/SystemShortcut;

    .line 304
    iget-object v8, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04002d

    iget-object v10, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v10, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 306
    iget-object v9, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    invoke-direct {v3, v8, v7}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 308
    goto :goto_1

    .line 310
    :cond_4
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 311
    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v5, :cond_5

    .line 312
    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    invoke-virtual {v5}, Lcom/android/launcher3/notification/NotificationItemView;->addGutter()V

    .line 315
    :cond_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/popup/SystemShortcut;

    .line 316
    const v8, 0x7f04002c

    invoke-virtual {v3, v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(I)Landroid/view/View;

    move-result-object v8

    invoke-direct {v3, v8, v7}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 317
    goto :goto_2

    .line 319
    :cond_6
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->orientAboutIcon()V

    .line 321
    iget-boolean v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 322
    if-eqz v5, :cond_b

    .line 323
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v5

    .line 324
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    move v8, v6

    :goto_3
    if-ge v8, v5, :cond_8

    .line 326
    if-ne v8, v2, :cond_7

    .line 327
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 329
    :cond_7
    invoke-virtual {v3, v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 331
    :cond_8
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 332
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeAllViews()V

    .line 333
    move v2, v6

    :goto_4
    if-ge v2, v5, :cond_9

    .line 334
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v3, v8}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 336
    :cond_9
    iget-object v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v2, :cond_a

    .line 337
    iget-object v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationItemView;->mGutter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 340
    :cond_a
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->orientAboutIcon()V

    .line 342
    :cond_b
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateDividers()V

    .line 345
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 346
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 347
    const v5, 0x7f0b0080

    goto :goto_5

    .line 348
    :cond_c
    const v5, 0x7f0b0081

    .line 346
    :goto_5
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 349
    const v7, 0x7f0b007d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v7, 0x2

    div-int/2addr v2, v7

    .line 350
    iget-object v8, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v8, v8, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v9, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 351
    iget-object v8, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 352
    iget-boolean v9, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v9, :cond_d

    .line 353
    iget-object v9, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getX()F

    move-result v10

    int-to-float v5, v5

    add-float/2addr v10, v5

    int-to-float v2, v2

    sub-float/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    goto :goto_6

    .line 355
    :cond_d
    iget-object v9, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getX()F

    move-result v10

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    int-to-float v5, v5

    sub-float/2addr v10, v5

    int-to-float v2, v2

    sub-float/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/view/View;->setX(F)V

    .line 358
    :goto_6
    iget v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {v2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 361
    iget-object v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 363
    :cond_e
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, v8, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    int-to-float v2, v2

    iget v5, v8, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    int-to-float v5, v5

    iget-boolean v9, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    xor-int/2addr v9, v4

    invoke-static {v2, v5, v9}, Lcom/android/launcher3/graphics/TriangleShape;->create(FFZ)Lcom/android/launcher3/graphics/TriangleShape;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 365
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 366
    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f010028

    invoke-static {v5, v9}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0b0082

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 369
    new-instance v9, Landroid/graphics/CornerPathEffect;

    int-to-float v5, v5

    invoke-direct {v9, v5}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 370
    iget-object v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getElevation()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    .line 374
    :goto_7
    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    iget v2, v8, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    div-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 375
    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    iget-boolean v2, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_f

    move v2, v5

    goto :goto_8

    :cond_f
    iget v2, v8, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    int-to-float v2, v2

    :goto_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 377
    invoke-virtual {v3, v6}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    iput-boolean v4, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0d000d

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v8, v8

    new-instance v10, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    move-result-object v11

    invoke-virtual {v11, v3, v6}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v12, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    new-array v13, v7, [F

    fill-array-data v13, :array_0

    invoke-static {v3, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v12, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v8, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    iget-object v8, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    sget-object v8, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    new-array v9, v4, [F

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v6

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const v8, 0x7f0d000e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v8, v2

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v5, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;

    invoke-direct {v5, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow$2;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    new-array v5, v7, [Landroid/animation/Animator;

    aput-object v11, v5, v6

    aput-object v2, v5, v4

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 379
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 380
    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 381
    iget v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    if-nez v5, :cond_10

    .line 382
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0c0089

    new-array v7, v7, [Ljava/lang/Object;

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    .line 382
    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 385
    :cond_10
    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0c008a

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v6

    iget v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    .line 387
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v4

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 385
    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 390
    :goto_9
    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 391
    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 394
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 397
    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v0

    .line 398
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v4, Landroid/os/Handler;

    .line 399
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    .line 398
    move-object v1, v2

    move-object v2, v4

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 401
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .locals 12

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 248
    return-object v2

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    .line 251
    invoke-static {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    return-object v2

    .line 255
    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 256
    invoke-static {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v2, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v6, v1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v5, v3, v6}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_0

    .line 257
    :cond_4
    :goto_1
    nop

    .line 258
    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object v4, v4, Lcom/android/launcher3/badge/BadgeInfo;->mNotificationKeys:Ljava/util/List;

    .line 259
    :goto_2
    nop

    .line 260
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/android/launcher3/popup/PopupDataProvider;->SYSTEM_SHORTCUTS:[Lcom/android/launcher3/popup/SystemShortcut;

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_3
    if-ge v9, v7, :cond_7

    aget-object v10, v6, v9

    iget-object v11, v2, Lcom/android/launcher3/popup/PopupDataProvider;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10, v11, v1}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 262
    :cond_7
    nop

    .line 263
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040023

    .line 264
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 263
    invoke-virtual {v1, v2, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 265
    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 266
    return-object v0
.end method


# virtual methods
.method protected final animateClose()V
    .locals 7

    .line 810
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 811
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 814
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/anim/RevealOutlineAnimation;

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/RevealOutlineAnimation;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mEndRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->getOutline(Landroid/graphics/Rect;)V

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 820
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    .line 822
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 824
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 825
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    sget-object v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 828
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 829
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->forceHideBadge(Z)V

    .line 831
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 832
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 835
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    move-result-object v5

    .line 836
    invoke-virtual {v5, p0, v4}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 837
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 838
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 840
    sget-object v5, Lcom/android/launcher3/popup/PopupContainerWithArrow;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v6, v4, v0

    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 841
    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 842
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 843
    const v0, 0x7f0d000d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 845
    new-instance v0, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow$4;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 856
    iput-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    .line 857
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 858
    return-void
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 800
    sget-object p1, Lcom/android/launcher3/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/ItemInfo;

    if-ne p2, p1, :cond_0

    .line 801
    const/16 p1, 0x8

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    goto :goto_0

    .line 803
    :cond_0
    const/4 p1, 0x5

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 804
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 806
    :goto_0
    const/16 p1, 0x9

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 807
    return-void
.end method

.method protected final handleClose(Z)V
    .locals 0

    .line 226
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    .line 231
    return-void
.end method

.method public final inflateAndAdd(I)Landroid/view/View;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->addView(Landroid/view/View;)V

    .line 236
    return-object p1
.end method

.method protected final isAlignedWithStart()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final isOfType(I)Z
    .locals 0

    .line 198
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final logActionCommand(I)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILandroid/view/View;I)V

    .line 205
    return-void
.end method

.method public final onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 211
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    const/16 v3, 0x9

    .line 213
    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    .line 212
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionTapOutside(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 214
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 218
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 221
    :cond_2
    return v1
.end method

.method public final onDragEnd()V
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsOpen:Z

    if-nez v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOpenCloseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    return-void

    .line 791
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    if-eqz v0, :cond_1

    .line 792
    invoke-direct {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    .line 796
    :cond_1
    return-void
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    .line 779
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mDeferContainerRemoval:Z

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->animateClose()V

    .line 781
    return-void
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    .line 773
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v4}, Lcom/android/launcher3/notification/NotificationMainView;->getLeft()I

    move-result v4

    iget-object v5, v0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v5}, Lcom/android/launcher3/notification/NotificationMainView;->getTop()I

    move-result v5

    iget-object v6, v0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v6}, Lcom/android/launcher3/notification/NotificationMainView;->getRight()I

    move-result v6

    iget-object v7, v0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {v7}, Lcom/android/launcher3/notification/NotificationMainView;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v3, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    xor-int/2addr v3, v2

    iput-boolean v3, v0, Lcom/android/launcher3/notification/NotificationItemView;->mIgnoreTouch:Z

    iget-boolean v3, v0, Lcom/android/launcher3/notification/NotificationItemView;->mIgnoreTouch:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    iget-boolean v3, v0, Lcom/android/launcher3/notification/NotificationItemView;->mIgnoreTouch:Z

    if-eqz v3, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    iget-object v3, v3, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/SwipeDetector;->isDraggingOrSettling()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    .line 181
    return v2

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v3, v0

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInterceptTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-double v5, p1

    cmpl-double p1, v3, v5

    if-lez p1, :cond_5

    return v2

    .line 184
    :cond_5
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 528
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 531
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTranslationX()F

    move-result p3

    int-to-float p2, p2

    add-float/2addr p3, p2

    const/4 p2, 0x0

    cmpg-float p2, p3, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTranslationX()F

    move-result p2

    int-to-float p3, p4

    add-float/2addr p2, p3

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    .line 534
    :cond_0
    iget p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    .line 537
    :cond_1
    iget p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 538
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setX(F)V

    .line 539
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 541
    :cond_2
    iget p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 542
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setY(F)V

    .line 544
    :cond_3
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 918
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 919
    iget-object v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 922
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 923
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget-object v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    sget-object v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/graphics/Point;->x:I

    iput v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getMeasuredWidth()I

    move-result v4

    sget-object v5, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    :cond_3
    sget-object v3, Lcom/android/launcher3/shortcuts/DeepShortcutView;->sTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 924
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIconLastTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 926
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v2, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v4, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    .line 927
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    .line 928
    iget-object p1, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    invoke-direct {v7, p1, v0}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    new-instance v8, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v8}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 926
    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object p1

    .line 929
    iget v2, v0, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    iget-object v3, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_4

    iput v2, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftX:I

    iput v0, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnimatedShiftY:I

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->applyTranslation()V

    iget-object v3, p1, Lcom/android/launcher3/dragndrop/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher3/dragndrop/DragView$7;

    invoke-direct {v4, p1, v2, v0}, Lcom/android/launcher3/dragndrop/DragView$7;-><init>(Lcom/android/launcher3/dragndrop/DragView;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 932
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/Launcher;I)V

    .line 933
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 899
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 902
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Point;->set(II)V

    .line 905
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    iget-boolean v1, v0, Lcom/android/launcher3/notification/NotificationItemView;->mIgnoreTouch:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    iget-object v1, v1, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 193
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected final onWidgetsBound()V
    .locals 7

    .line 628
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 629
    new-instance v1, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    invoke-direct {v1}, Lcom/android/launcher3/popup/SystemShortcut$Widgets;-><init>()V

    .line 630
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 631
    nop

    .line 632
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 633
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 634
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 635
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/popup/SystemShortcut$Widgets;

    if-eqz v6, :cond_0

    .line 636
    nop

    .line 637
    goto :goto_1

    .line 633
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 641
    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-nez v5, :cond_3

    .line 643
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04002d

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 646
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 647
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->initializeSystemShortcut(Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 648
    return-void

    .line 653
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void

    .line 656
    :cond_3
    if-nez v0, :cond_5

    if-eqz v5, :cond_5

    .line 658
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_4

    .line 659
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 661
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->close(Z)V

    .line 662
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 665
    :cond_5
    return-void
.end method

.method protected final orientAboutIcon()V
    .locals 15

    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->measure(II)V

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredWidth()I

    move-result v1

    .line 422
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrayOffset:I

    add-int/2addr v2, v3

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 426
    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 427
    iget-object v5, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 428
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    .line 431
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v7}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    .line 432
    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v1

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v8}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 433
    nop

    .line 434
    add-int v8, v6, v1

    iget v9, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    .line 435
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    if-ge v8, v9, :cond_0

    .line 436
    move v8, v10

    goto :goto_0

    .line 435
    :cond_0
    nop

    .line 436
    move v8, v0

    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v9

    iget v11, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v11

    if-le v7, v9, :cond_1

    .line 437
    move v9, v10

    goto :goto_1

    .line 436
    :cond_1
    nop

    .line 437
    move v9, v0

    :goto_1
    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    goto :goto_2

    .line 440
    :cond_2
    move v8, v6

    goto :goto_3

    .line 438
    :cond_3
    :goto_2
    nop

    .line 440
    move v8, v7

    :goto_3
    if-ne v8, v6, :cond_4

    move v9, v10

    goto :goto_4

    :cond_4
    move v9, v0

    :goto_4
    iput-boolean v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 443
    iget-object v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v9}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v9

    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    .line 444
    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingLeft()I

    move-result v11

    sub-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->getTotalPaddingRight()I

    move-result v11

    sub-int/2addr v9, v11

    .line 445
    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->getScaleX()F

    move-result v11

    mul-float/2addr v9, v11

    float-to-int v9, v9

    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 448
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 450
    const v12, 0x7f0b0077

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 451
    const v13, 0x7f0b007a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 453
    div-int/lit8 v13, v9, 0x2

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v13, v12

    sub-int/2addr v13, v11

    .line 454
    goto :goto_5

    .line 456
    :cond_5
    const v12, 0x7f0b0079

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 458
    const v13, 0x7f0b007b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 460
    div-int/lit8 v13, v9, 0x2

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v13, v12

    sub-int/2addr v13, v11

    .line 462
    :goto_5
    iget-boolean v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    neg-int v13, v13

    :goto_6
    add-int/2addr v8, v13

    .line 465
    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v11, v11, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v11, v11, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    goto :goto_7

    :cond_7
    iget-object v11, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v11

    .line 466
    :goto_7
    iget-object v12, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v13}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    sub-int/2addr v12, v3

    .line 467
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getTop()I

    move-result v13

    iget v14, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    if-le v12, v13, :cond_8

    move v13, v10

    goto :goto_8

    :cond_8
    move v13, v0

    :goto_8
    iput-boolean v13, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 468
    iget-boolean v13, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v13, :cond_9

    .line 469
    iget-object v12, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    iget-object v13, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v13}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/2addr v12, v2

    .line 473
    :cond_9
    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-eqz v2, :cond_a

    .line 474
    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v2

    goto :goto_9

    .line 476
    :cond_a
    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v2

    .line 478
    :goto_9
    iget v2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    .line 480
    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    .line 481
    add-int/2addr v3, v12

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getBottom()I

    move-result v2

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v11

    if-le v3, v2, :cond_d

    .line 483
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    .line 485
    add-int/2addr v6, v9

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    .line 486
    sub-int/2addr v7, v9

    iget v2, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    .line 487
    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsRtl:Z

    if-nez v2, :cond_b

    .line 488
    add-int/2addr v1, v6

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getRight()I

    move-result v2

    if-lt v1, v2, :cond_c

    .line 489
    nop

    .line 493
    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    goto :goto_a

    .line 496
    :cond_b
    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragLayer;->getLeft()I

    move-result v1

    if-le v7, v1, :cond_c

    .line 497
    nop

    .line 498
    iput-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 504
    :goto_a
    move v8, v7

    goto :goto_b

    .line 500
    :cond_c
    nop

    .line 501
    iput-boolean v10, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsLeftAligned:Z

    .line 504
    move v8, v6

    :goto_b
    iput-boolean v10, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    .line 507
    :cond_d
    int-to-float v0, v8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setX(F)V

    .line 508
    iget v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 509
    return-void

    .line 512
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 513
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;

    .line 514
    iget-boolean v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v2, :cond_f

    .line 515
    const/16 v2, 0x50

    iput v2, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->gravity:I

    iput v2, v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->gravity:I

    .line 516
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 517
    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->bottomMargin:I

    .line 518
    iget v0, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->bottomMargin:I

    iget v2, v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrayOffset:I

    sub-int/2addr v0, v2

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->bottomMargin:I

    return-void

    .line 520
    :cond_f
    const/16 v2, 0x30

    iput v2, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->gravity:I

    iput v2, v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->gravity:I

    .line 521
    iget v2, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v2

    iput v12, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->topMargin:I

    .line 522
    iget v0, v0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->topMargin:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iget v2, v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mArrayOffset:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->topMargin:I

    .line 524
    return-void
.end method

.method final updateDividers()V
    .locals 6

    .line 612
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildCount()I

    move-result v0

    .line 613
    nop

    .line 614
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 615
    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 616
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v5, :cond_1

    .line 617
    if-eqz v3, :cond_0

    .line 618
    invoke-virtual {v3, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setDividerVisibility(I)V

    .line 620
    :cond_0
    check-cast v4, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 621
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setDividerVisibility(I)V

    .line 614
    move-object v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_2
    return-void
.end method

.method final updateHiddenShortcuts()V
    .locals 8

    .line 593
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 595
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 596
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v2, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 598
    :cond_1
    nop

    .line 599
    move v2, v1

    :goto_1
    int-to-float v3, v2

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 601
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 602
    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_3

    .line 603
    iget-object v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 604
    if-lt v5, v0, :cond_2

    const/16 v7, 0x8

    goto :goto_3

    :cond_2
    move v7, v4

    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setVisibility(I)V

    .line 605
    invoke-virtual {v6}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 606
    iget-object v7, v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setScaleX(F)V

    .line 607
    iget-object v6, v6, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setScaleY(F)V

    .line 602
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 609
    :cond_3
    return-void
.end method

.method public final updateNotificationHeader()V
    .locals 5

    .line 746
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 747
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v1

    .line 748
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 749
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNotificationItemView:Lcom/android/launcher3/notification/NotificationItemView;

    .line 750
    invoke-virtual {v1}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result v1

    iget v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    .line 749
    iget-object v3, v2, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    const/4 v4, 0x1

    if-gt v1, v4, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-lez v1, :cond_2

    iget v1, v2, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    if-nez v1, :cond_1

    iget-object v1, v2, Lcom/android/launcher3/notification/NotificationItemView;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/launcher3/notification/NotificationItemView;->mContext:Landroid/content/Context;

    const v4, 0x7f010028

    invoke-static {v3, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/android/launcher3/graphics/IconPalette;->resolveContrastColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, v2, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    :cond_1
    iget-object v0, v2, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderText:Landroid/widget/TextView;

    iget v1, v2, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    iget v1, v2, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 752
    :cond_2
    return-void
.end method
