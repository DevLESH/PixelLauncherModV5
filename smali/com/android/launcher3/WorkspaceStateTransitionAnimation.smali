.class public Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;


# instance fields
.field final mLauncher:Lcom/android/launcher3/Launcher;

.field mNewScale:F

.field private final mWorkspace:Lcom/android/launcher3/Workspace;

.field public final mWorkspaceScrimAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;

    invoke-direct {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;-><init>()V

    sput-object v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 102
    iput-object p2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 104
    const p2, 0x7f0d0002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:I

    .line 105
    return-void
.end method


# virtual methods
.method final applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V
    .locals 3

    .line 156
    invoke-virtual {p4, p3}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->getPageAlpha(I)F

    move-result p3

    .line 157
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->hasScrim:Z

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 159
    iget-object v0, p2, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, v0, v1, p1, v2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    .line 161
    iget-object p1, p2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object p4, p4, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 163
    return-void
.end method

.method final setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V
    .locals 11

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    .line 128
    iget-object v2, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v9

    .line 130
    move v10, v1

    :goto_0
    if-ge v10, v9, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/CellLayout;

    move-object v3, p0

    move-object v4, p1

    move v6, v10

    move-object v7, v2

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/Property;

    iget v5, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 136
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    aget v5, v0, v5

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 138
    iget-object v3, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspace:Lcom/android/launcher3/Workspace;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v5, 0x2

    aget v0, v0, v5

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v3, v4, v0, v5}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherState;->getHoseatAlpha$53ed9b2a()F

    move-result v3

    iget-object v2, v2, Lcom/android/launcher3/LauncherState$PageAlphaProvider;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0, v3, v2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 146
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->hasScrim:Z

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mWorkspaceScrimAlpha:I

    nop

    :cond_1
    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    .line 145
    invoke-virtual {p2, v0, v2, v1, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    .line 147
    return-void
.end method
