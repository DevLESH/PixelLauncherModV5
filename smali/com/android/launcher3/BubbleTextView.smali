.class public Lcom/android/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/android/launcher3/Launcher$OnResumeCallback;


# static fields
.field private static final BADGE_SCALE_PROPERTY:Landroid/util/Property;

.field private static final STATE_PRESSED:[I

.field public static final TEXT_ALPHA_PROPERTY:Landroid/util/Property;


# instance fields
.field private mBadgeColor:I

.field private mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

.field private mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

.field private mBadgeScale:F

.field private final mCenterVertically:Z

.field private final mDeferShadowGenerationOnTouch:Z

.field private mDisableRelayout:Z

.field private mForceHideBadge:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

.field public final mIconSize:I

.field private mIgnorePressedStateChange:Z

.field private mIsIconVisible:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutHorizontal:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private final mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

.field private mPressedBackground:Landroid/graphics/Bitmap;

.field private final mSlop:F

.field private mStayPressed:Z

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTempIconBounds:Landroid/graphics/Rect;

.field private mTempSpaceForBadgeOffset:Landroid/graphics/Point;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    .line 97
    new-instance v0, Lcom/android/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    .line 111
    new-instance v0, Lcom/android/launcher3/BubbleTextView$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "textAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/BubbleTextView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 94
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 143
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 144
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    .line 147
    sget-object v3, Lcom/android/launcher3/R$styleable;->BubbleTextView:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 149
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 150
    nop

    .line 151
    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 153
    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 154
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 155
    if-nez p3, :cond_0

    .line 156
    iget p2, v2, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p2, p2

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 157
    iget p2, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 158
    :cond_0
    if-ne p3, v0, :cond_1

    .line 159
    iget p2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 160
    iget p2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 161
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto :goto_0

    .line 162
    :cond_1
    if-ne p3, p2, :cond_2

    .line 163
    iget p2, v2, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float p2, p2

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 164
    iget p2, v2, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 165
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    .line 167
    :cond_2
    :goto_0
    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    .line 169
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 171
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    new-instance p1, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 174
    new-instance p1, Lcom/android/launcher3/StylusEventHelper;

    new-instance p2, Lcom/android/launcher3/SimpleOnStylusPressListener;

    invoke-direct {p2, p0}, Lcom/android/launcher3/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {p1, p2, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    .line 177
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/BubbleTextView;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/BubbleTextView;F)F
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/BubbleTextView;)I
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/BubbleTextView;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(I)V

    return-void
.end method

.method private applyIconAndLabel(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 232
    iget v1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconColor:I

    const/4 v2, -0x1

    const/16 v3, 0x89

    invoke-static {v2, v3}, Landroid/support/v4/b/a;->d(II)I

    move-result v2

    invoke-static {v2, v1}, Landroid/support/v4/b/a;->b(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeColor:I

    .line 234
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->isDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 235
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0047

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    .line 238
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 242
    :cond_1
    return-void
.end method

.method private hasBadge()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 579
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 580
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 581
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    if-eqz p1, :cond_0

    .line 582
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 584
    :cond_0
    return-void
.end method

.method private setTextAlpha(I)V
    .locals 1

    .line 478
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {v0, p1}, Landroid/support/v4/b/a;->d(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    return-void
.end method


# virtual methods
.method public final applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V
    .locals 6

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_7

    .line 549
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 550
    move v0, v2

    goto :goto_0

    .line 549
    :cond_0
    nop

    .line 550
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->getBadgeInfoForItem(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/badge/BadgeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    .line 551
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    if-eqz v3, :cond_1

    .line 552
    move v3, v2

    goto :goto_1

    .line 551
    :cond_1
    nop

    .line 552
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 553
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v5, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iput-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    .line 554
    if-nez v0, :cond_3

    if-eqz v3, :cond_5

    .line 556
    :cond_3
    if-eqz p2, :cond_4

    xor-int p2, v0, v3

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 557
    sget-object p2, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    new-array v0, v2, [F

    aput v4, v0, v1

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 559
    :cond_4
    iput v4, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    .line 560
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    .line 563
    :cond_5
    :goto_3
    iget-object p2, p1, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    .line 564
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 565
    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/badge/BadgeInfo;->getNotificationCount()I

    move-result p2

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f120000

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object p1, v4, v1

    .line 567
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 566
    invoke-virtual {v0, v3, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 568
    return-void

    .line 569
    :cond_6
    iget-object p1, p1, Lcom/android/launcher3/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 573
    :cond_7
    return-void
.end method

.method public applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 599
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 602
    :cond_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 604
    return-void
.end method

.method public final applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V
    .locals 1

    .line 206
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 209
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 214
    instance-of v0, p1, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v0, :cond_0

    .line 215
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PromiseAppInfo;

    .line 216
    iget v0, v0, Lcom/android/launcher3/PromiseAppInfo;->level:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 218
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 219
    return-void
.end method

.method public final applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 224
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 228
    return-void
.end method

.method public final applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 1

    .line 196
    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/ItemInfoWithIcon;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 198
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyPromiseState(Z)V

    .line 202
    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->applyBadgeState(Lcom/android/launcher3/ItemInfo;Z)V

    .line 203
    return-void
.end method

.method public final applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;
    .locals 10

    .line 517
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_4

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 519
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    .line 520
    iget-object v1, v0, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, v0, Lcom/android/launcher3/ItemInfoWithIcon;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 520
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 522
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    .line 523
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c006d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v6, v5, v2

    .line 525
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    int-to-double v6, p1

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 524
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 527
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c006e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/launcher3/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    aput-object v5, v1, v2

    .line 528
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-virtual {p0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 530
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 532
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v1, :cond_3

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    .line 534
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    goto :goto_2

    .line 536
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v1

    .line 537
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/graphics/DrawableFactory;->newPendingIcon(Lcom/android/launcher3/ItemInfoWithIcon;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    .line 538
    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->setLevel(I)Z

    .line 539
    invoke-direct {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :goto_2
    return-object v0

    .line 544
    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final applyPromiseState(Z)V
    .locals 2

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 504
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v1

    .line 505
    if-eqz v1, :cond_1

    .line 506
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->mInstallProgress:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 509
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel(I)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 511
    iget p1, v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;->mInternalStateProgress:F

    :cond_2
    const p1, 0x3fa66666    # 1.3f

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->updateInternalState(FZZ)V

    .line 514
    :cond_3
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 496
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 499
    return-void
.end method

.method public final createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    goto :goto_0

    .line 491
    :cond_0
    move p1, v1

    :goto_0
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1
.end method

.method public final drawBadgeIfNecessary(Landroid/graphics/Canvas;)V
    .locals 10

    .line 400
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 402
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v1

    .line 405
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    iget-object v4, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeRenderer:Lcom/android/launcher3/badge/BadgeRenderer;

    iget v6, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeColor:I

    iget-object v7, p0, Lcom/android/launcher3/BubbleTextView;->mTempIconBounds:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    iget-object v9, p0, Lcom/android/launcher3/BubbleTextView;->mTempSpaceForBadgeOffset:Landroid/graphics/Point;

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/badge/BadgeRenderer;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLandroid/graphics/Point;)V

    .line 408
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 410
    :cond_1
    return-void
.end method

.method public final drawWithoutBadge(Landroid/graphics/Canvas;)V
    .locals 0

    .line 386
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 387
    return-void
.end method

.method public final forceHideBadge(Z)V
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    if-ne v0, p1, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    .line 418
    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->invalidate()V

    return-void

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->hasBadge()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 421
    sget-object p1, Lcom/android/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 423
    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getIconBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v0

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 432
    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v2, v1

    .line 433
    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    add-int/2addr v3, v0

    .line 434
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 435
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    .line 268
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 269
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->STATE_PRESSED:[I

    invoke-static {p1, v0}, Lcom/android/launcher3/BubbleTextView;->mergeDrawableStates([I[I)[I

    .line 272
    :cond_0
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->drawBadgeIfNecessary(Landroid/graphics/Canvas;)V

    .line 393
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 360
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 365
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 367
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 376
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 378
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 379
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 380
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 381
    return p1
.end method

.method public final onLauncherResume()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 351
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .line 439
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCenterVertically:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 441
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    float-to-double v2, v2

    .line 442
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v1, v0

    .line 443
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v1

    .line 445
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaddingBottom()I

    move-result v3

    .line 444
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/launcher3/BubbleTextView;->setPadding(IIII)V

    .line 447
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 448
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 284
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 289
    const/4 v0, 0x1

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    invoke-static {p0, v1, p1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_3

    .line 318
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 311
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 315
    goto :goto_0

    .line 297
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    .line 298
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    iget-boolean p1, p1, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-nez p1, :cond_3

    .line 303
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 322
    :cond_3
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 6

    .line 618
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 623
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 625
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 626
    check-cast p1, Lcom/android/launcher3/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    goto :goto_0

    .line 627
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2

    .line 628
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 629
    new-instance v0, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 630
    iget-object v2, v2, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v2}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 631
    iget v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->rank:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->container:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 633
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p1, Lcom/android/launcher3/ItemInfoWithIcon;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object p1

    .line 634
    if-eqz p1, :cond_1

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 638
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_3

    .line 639
    check-cast p1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    .line 642
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 644
    :cond_4
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_0

    .line 262
    invoke-super {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    .line 264
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    .line 609
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 611
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeInfo:Lcom/android/launcher3/badge/BadgeInfo;

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeColor:I

    .line 187
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/BubbleTextView;->mBadgeScale:F

    .line 188
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mForceHideBadge:Z

    .line 189
    return-void
.end method

.method public final setIconVisible(Z)V
    .locals 3

    .line 587
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 589
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 590
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 591
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 592
    iget p1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-virtual {v0, v1, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 596
    return-void
.end method

.method public final setLongPressTimeout(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    iput p1, v0, Lcom/android/launcher3/CheckLongPressHelper;->mLongPressTimeout:I

    .line 249
    return-void
.end method

.method final setStayPressed(Z)V
    .locals 3

    .line 326
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    .line 327
    if-nez p1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->ADAPTIVE_ICON_SHADOW_BITMAP:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    .line 332
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/graphics/HolographicOutlineHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/graphics/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 337
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 338
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    if-eqz v0, :cond_3

    .line 339
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;->setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V

    .line 343
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->refreshDrawableState()V

    .line 344
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 253
    if-eqz p1, :cond_0

    .line 254
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 256
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 452
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 453
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 459
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 460
    return-void
.end method

.method public final setTextVisibility(Z)V
    .locals 0

    .line 470
    if-eqz p1, :cond_0

    .line 471
    iget p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 473
    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(I)V

    .line 475
    return-void
.end method

.method public final shouldTextBeVisible()Z
    .locals 4

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 465
    :goto_0
    instance-of v1, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 466
    :goto_1
    if-eqz v0, :cond_3

    iget-wide v0, v0, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public final verifyHighRes()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    iget-object v1, v0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/launcher3/IconCache$IconLoadRequest;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfoWithIcon;

    .line 656
    iget-boolean v1, v0, Lcom/android/launcher3/ItemInfoWithIcon;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 658
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 661
    :cond_1
    return-void
.end method
