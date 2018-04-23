.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/LauncherStateManager$StateHandler;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mDeferRemoveExtraEmptyScreen:Z

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field public mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field private mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

.field private mForceDrawAdjacentPages:Z

.field public mIsSwitchingState:Z

.field mLastOverlayScroll:F

.field mLastReorderX:I

.field mLastReorderY:I

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field public mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mMaxDistanceForFolderCreation:F

.field public mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

.field mOverlayShown:Z

.field private mOverlayTranslation:F

.field mPageRearrangeEnabled:Z

.field private mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field final mRestoredPages:Ljava/util/ArrayList;

.field mSavedStates:Landroid/util/SparseArray;

.field public final mScreenOrder:Ljava/util/ArrayList;

.field mScrollInteractionBegan:Z

.field mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field public mStartedSendingScrollEvents:Z

.field private final mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private final mTempTouchCoordinates:[F

.field public final mTempXY:[I

.field private mTransitionProgress:F

.field mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field final mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

.field private mXDown:F

.field private mYDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance p2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {p2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    .line 140
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    .line 143
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 153
    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 155
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 164
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 169
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 174
    new-array v2, p3, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 175
    new-array v2, p3, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 176
    new-array v2, p3, [F

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    .line 180
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 182
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 184
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 186
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 195
    new-instance v3, Lcom/android/launcher3/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    .line 196
    new-instance v3, Lcom/android/launcher3/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 198
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 199
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 200
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 222
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 223
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 224
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    .line 237
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 239
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 240
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace;->mPageRearrangeEnabled:Z

    .line 270
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 271
    new-instance v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 272
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 274
    new-instance p1, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    .line 276
    invoke-virtual {p0, p0}, Lcom/android/launcher3/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 279
    iput p2, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p3}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    sget-object p1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/android/launcher3/Workspace$4;

    invoke-direct {p2, p0}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 282
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/folder/PreviewBackground;)Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/graphics/DragPreviewProvider;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/Workspace;F)F
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return p1
.end method

.method static synthetic access$300$31a5b1c7(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition$503aab85()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/Workspace;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method private addInScreen(Landroid/view/View;JJIIII)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    .line 873
    move/from16 v9, p9

    const-wide/16 v10, -0x64

    cmp-long v10, p2, v10

    if-nez v10, :cond_0

    .line 874
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    if-nez v10, :cond_0

    .line 875
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping child, screenId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 878
    return-void

    .line 881
    :cond_0
    const-wide/16 v10, -0xc9

    cmp-long v10, v3, v10

    if-nez v10, :cond_1

    .line 883
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be EXTRA_EMPTY_SCREEN_ID"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_1
    const-wide/16 v10, -0x65

    cmp-long v1, p2, v10

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-nez v1, :cond_2

    .line 888
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 889
    new-instance v3, Lcom/android/launcher3/HotseatIconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher3/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 892
    instance-of v3, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_4

    .line 893
    move-object v3, v7

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v10}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 897
    :cond_2
    instance-of v1, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_3

    .line 898
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 900
    :cond_3
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 901
    new-instance v3, Lcom/android/launcher3/IconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher3/IconKeyEventListener;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 904
    :cond_4
    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 906
    if-eqz v3, :cond_6

    instance-of v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v4, :cond_5

    goto :goto_1

    .line 909
    :cond_5
    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 910
    iput v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 911
    iput v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 912
    iput v8, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 913
    iput v9, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_2

    .line 907
    :cond_6
    :goto_1
    new-instance v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v8, v9}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 916
    :goto_2
    move-object v11, v3

    if-gez v8, :cond_7

    if-gez v9, :cond_7

    .line 917
    iput-boolean v10, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 921
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    .line 922
    iget-wide v3, v3, Lcom/android/launcher3/ItemInfo;->id:J

    long-to-int v4, v3

    .line 924
    instance-of v8, v7, Lcom/android/launcher3/folder/Folder;

    if-nez v8, :cond_8

    .line 925
    move v6, v2

    goto :goto_3

    .line 924
    :cond_8
    nop

    .line 925
    move v6, v10

    :goto_3
    const/4 v3, -0x1

    move-object v2, v7

    move-object v5, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 929
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to add to item at ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to CellLayout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_9
    if-nez v8, :cond_a

    .line 933
    invoke-virtual {v7, v10}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 934
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 936
    :cond_a
    instance-of v1, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_b

    .line 937
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 939
    :cond_b
    return-void
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .line 2223
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2227
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .line 2215
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_0

    .line 2216
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 2218
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 2219
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2220
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 1

    .line 2231
    if-eqz p1, :cond_0

    .line 2232
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2234
    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2235
    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2236
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 11

    .line 1338
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_8

    .line 1339
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 1341
    nop

    .line 1342
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    .line 1343
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v3

    .line 1344
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 1346
    sub-float v2, v4, v2

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    .line 1347
    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    .line 1350
    :cond_0
    nop

    .line 1351
    nop

    .line 1352
    const/4 v3, 0x0

    const/4 v4, -0x1

    move v5, v3

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v5, v0, :cond_3

    .line 1353
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1355
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    .line 1356
    cmpg-float v10, v9, v1

    if-gtz v10, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v9, v8

    cmpl-float v8, v9, v2

    if-ltz v8, :cond_2

    .line 1357
    if-ne v7, v4, :cond_1

    .line 1358
    nop

    .line 1360
    move v7, v5

    .line 1352
    :cond_1
    move v6, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1363
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1365
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1, v3, v6}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v7

    .line 1366
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    add-int/2addr v1, v2

    .line 1367
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 1366
    invoke-static {v1, v7, v4}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v6

    .line 1370
    :cond_4
    if-ne v7, v6, :cond_6

    .line 1372
    add-int/lit8 v1, v0, -0x1

    if-ge v6, v1, :cond_5

    .line 1373
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1374
    :cond_5
    if-lez v7, :cond_6

    .line 1375
    add-int/lit8 v7, v7, -0x1

    .line 1379
    :cond_6
    :goto_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_8

    .line 1380
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 1382
    if-gt v7, v1, :cond_7

    if-gt v1, v6, :cond_7

    .line 1383
    move v5, v2

    goto :goto_3

    .line 1382
    :cond_7
    nop

    .line 1383
    move v5, v3

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1379
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1386
    :cond_8
    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V
    .locals 7

    .line 680
    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 681
    const-string v2, "backgroundAlpha"

    new-array v5, v1, [F

    aput v3, v5, v4

    invoke-static {v2, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 683
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v5, -0xc9

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 685
    new-instance v5, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v5, p0, v3, p4}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;Z)V

    iput-object v5, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 701
    const/4 p4, 0x2

    new-array p4, p4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p4, v4

    aput-object v2, p4, v1

    invoke-static {v3, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 702
    int-to-long v0, p2

    invoke-virtual {p4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 703
    int-to-long p1, p1

    invoke-virtual {p4, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 704
    new-instance p1, Lcom/android/launcher3/Workspace$3;

    invoke-direct {p1, p0, p3}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p4, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    invoke-virtual {p4}, Landroid/animation/ObjectAnimator;->start()V

    .line 716
    return-void
.end method

.method private getPageDescription(I)Ljava/lang/String;
    .locals 6

    .line 3377
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3378
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3379
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-le v0, v2, :cond_1

    .line 3380
    if-ne p1, v1, :cond_0

    .line 3381
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c004a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3383
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 3385
    :cond_1
    if-nez v0, :cond_2

    .line 3387
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0037

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3389
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0049

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onEndStateTransition()V
    .locals 1

    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1453
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1454
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1456
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1457
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 1458
    return-void
.end method

.method private onStartStateTransition$503aab85()V
    .locals 1

    .line 1445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1446
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1448
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1449
    return-void
.end method

.method private setDropLayoutForDragObject$c13fd63(Lcom/android/launcher3/DropTarget$DragObject;F)Z
    .locals 6

    .line 2373
    nop

    .line 2375
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 2376
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aput v0, v4, v1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-static {p0, v0, v3, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v3, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 2377
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    goto :goto_3

    .line 2381
    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 2382
    const/4 v4, -0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2384
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v0, v1

    .line 2385
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v5, v5

    aput v5, v0, v2

    .line 2386
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    add-int/2addr v0, v3

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/Workspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2389
    :cond_5
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2391
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v5, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->max(FF)F

    move-result p2

    aput p2, v0, v1

    .line 2392
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float p1, p1

    aput p1, p2, v2

    .line 2393
    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move v4, v2

    :goto_5
    add-int/2addr v4, v3

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempTouchCoordinates:[F

    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/Workspace;->verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2397
    :cond_7
    if-nez v0, :cond_8

    if-ltz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result p1

    if-ge v3, p1, :cond_8

    .line 2398
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2400
    :cond_8
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v0, p1, :cond_9

    .line 2401
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2402
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2403
    return v2

    .line 2405
    :cond_9
    return v1
.end method

.method private showOutOfSpaceMessage(Z)V
    .locals 2

    .line 2073
    if-eqz p1, :cond_0

    const p1, 0x7f0c0035

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0034

    .line 2074
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2075
    return-void
.end method

.method private transitionStateShouldAllowDrop()Z
    .locals 2

    .line 1638
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1639
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1638
    return v0
.end method

.method private updatePageAlphaValues()V
    .locals 6

    .line 1256
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3

    .line 1257
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1258
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1259
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 1260
    if-eqz v3, :cond_2

    .line 1261
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1262
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v5, v4

    .line 1263
    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v4, :cond_0

    .line 1264
    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_2

    .line 1267
    :cond_0
    iget-object v3, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1268
    const/4 v4, 0x0

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    .line 1267
    move v4, v1

    goto :goto_1

    .line 1269
    :cond_1
    const/4 v4, 0x4

    .line 1267
    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 1258
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1274
    :cond_3
    return-void
.end method

.method private verifyInsidePage(I[F)Lcom/android/launcher3/CellLayout;
    .locals 3

    .line 2412
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2413
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    .line 2414
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2415
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v0, p2, v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    aget v1, p2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget p2, p2, v0

    .line 2416
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    .line 2418
    return-object p1

    .line 2421
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private workspaceInModalState()Z
    .locals 2

    .line 1312
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 21

    move-object/from16 v7, p0

    .line 1648
    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1649
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/16 v19, 0x1

    if-eq v0, v7, :cond_8

    .line 1651
    const/16 v20, 0x0

    if-nez v15, :cond_0

    .line 1652
    return v20

    .line 1654
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    return v20

    .line 1656
    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1659
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1660
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    goto :goto_0

    .line 1662
    :cond_2
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 1667
    :goto_0
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 1668
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 1669
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 1670
    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 1671
    nop

    .line 1676
    move v14, v0

    move v13, v1

    goto :goto_1

    .line 1672
    :cond_3
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1673
    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1676
    move v13, v0

    move v14, v1

    .line 1677
    :goto_1
    nop

    .line 1678
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_4

    .line 1679
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 1680
    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 1683
    move v11, v0

    move v12, v1

    goto :goto_2

    :cond_4
    move v11, v13

    move v12, v14

    :goto_2
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v20

    float-to-int v1, v0

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v19

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v7

    move v3, v11

    move v4, v12

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1686
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v20

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v19

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 1688
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_5

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1690
    return v19

    .line 1693
    :cond_5
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1695
    return v19

    .line 1698
    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1699
    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v20

    float-to-int v9, v1

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v19

    float-to-int v10, v1

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v18, 0x4

    move-object v8, v15

    move-object v3, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1702
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v20

    if-ltz v0, :cond_7

    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v19

    if-ltz v0, :cond_7

    .line 1705
    move/from16 v0, v19

    goto :goto_3

    .line 1702
    :cond_7
    nop

    .line 1705
    move/from16 v0, v20

    :goto_3
    if-nez v0, :cond_9

    .line 1706
    invoke-virtual {v7, v3}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 1707
    return v20

    .line 1711
    :cond_8
    move-object v3, v15

    :cond_9
    invoke-virtual {v7, v3}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    .line 1712
    const-wide/16 v2, -0xc9

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    .line 1716
    :cond_a
    return v19
.end method

.method public final addExtraEmptyScreen()Z
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v1, -0xc9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)V

    .line 601
    const/4 v0, 0x1

    return v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 10

    .line 856
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget v8, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 858
    return-void
.end method

.method public final addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V
    .locals 13

    .line 841
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    .line 842
    iget v1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    .line 843
    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 844
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    long-to-int v0, v0

    .line 845
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-boolean v1, v1, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 846
    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-boolean v4, v3, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v4, :cond_1

    iget-object v2, v3, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget v2, v2, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v2, v0

    nop

    .line 848
    :cond_1
    move v9, v1

    move v10, v2

    goto :goto_1

    :cond_2
    move v9, v0

    move v10, v1

    :goto_1
    iget-wide v5, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v7, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v11, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v12, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v12}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 849
    return-void
.end method

.method final addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 2

    .line 1835
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p3, p3, v0

    const/4 v0, 0x0

    if-lez p3, :cond_0

    return v0

    .line 1837
    :cond_0
    aget p3, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, p3, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    .line 1838
    iget-boolean p2, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p2, :cond_1

    return v0

    .line 1839
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 1841
    instance-of p2, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_3

    .line 1842
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    .line 1843
    iget-object p2, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1844
    invoke-virtual {p1, p4, v0}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 1847
    if-nez p5, :cond_2

    .line 1848
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p2, p2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1850
    :cond_2
    return v1

    .line 1853
    :cond_3
    return v0
.end method

.method public final animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 23

    move-object/from16 v14, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 2792
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 2793
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v7, v11}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2795
    const/4 v12, 0x2

    new-array v13, v12, [I

    .line 2796
    new-array v15, v12, [F

    .line 2797
    instance-of v0, v6, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2798
    move/from16 v16, v5

    goto :goto_0

    .line 2797
    :cond_0
    nop

    .line 2798
    move/from16 v16, v4

    :goto_0
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v3, v6, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, v6, Lcom/android/launcher3/ItemInfo;->spanY:I

    aget v17, v0, v4

    aget v18, v0, v5

    move-object v0, v14

    move-object/from16 v1, p2

    move/from16 v19, v2

    move/from16 v2, v17

    move/from16 v17, v3

    move/from16 v3, v18

    move v12, v4

    move/from16 v4, v17

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v1}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    aput v1, v13, v12

    iget v1, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x1

    aput v1, v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    move-object/from16 v4, p2

    invoke-static {v4, v1, v13, v3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v17, 0x40000000    # 2.0f

    if-eqz v16, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v5, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    aget v3, v13, v12

    move-object/from16 v20, v13

    int-to-double v12, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v21, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v1

    sub-float/2addr v3, v11

    div-float v3, v3, v17

    float-to-double v9, v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    sub-double/2addr v9, v3

    sub-double/2addr v12, v9

    double-to-int v3, v12

    const/4 v4, 0x0

    aput v3, v20, v4

    const/4 v3, 0x1

    aget v4, v20, v3

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v9, v0

    div-float v9, v9, v17

    sub-float/2addr v4, v9

    float-to-int v0, v4

    aput v0, v20, v3

    mul-float/2addr v2, v1

    const/4 v0, 0x0

    aput v2, v15, v0

    mul-float/2addr v5, v1

    aput v5, v15, v3

    goto :goto_1

    :cond_2
    move-object/from16 v21, v11

    move v0, v12

    move-object/from16 v20, v13

    iget v2, v7, Lcom/android/launcher3/dragndrop/DragView;->mInitialScale:F

    mul-float/2addr v2, v1

    aget v3, v20, v0

    int-to-float v3, v3

    sub-float v4, v2, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float v5, v5, v17

    add-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v20, v0

    const/4 v3, 0x1

    aget v5, v20, v3

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v4, v9

    div-float v4, v4, v17

    add-float/2addr v5, v4

    float-to-int v4, v5

    aput v4, v20, v3

    aput v2, v15, v3

    aput v2, v15, v0

    iget-object v2, v7, Lcom/android/launcher3/dragndrop/DragView;->mDragRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    aget v3, v20, v0

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v20, v0

    const/4 v0, 0x1

    aget v3, v20, v0

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    aput v1, v20, v0

    .line 2801
    :cond_3
    :goto_1
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2802
    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v13, v0, -0xc8

    .line 2804
    iget v0, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget v0, v6, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 2806
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 2804
    :cond_5
    :goto_2
    nop

    .line 2806
    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x2

    if-eq v8, v1, :cond_8

    if-eqz p7, :cond_6

    goto :goto_4

    .line 2810
    :cond_6
    move-object/from16 v2, p6

    :cond_7
    const/4 v3, 0x2

    goto :goto_5

    .line 2806
    :cond_8
    :goto_4
    move-object/from16 v2, p6

    if-eqz v2, :cond_7

    .line 2807
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/ItemInfo;)[I

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    aget v4, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x1

    aget v9, v0, v6

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    aget v9, v0, v3

    aget v10, v0, v6

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    aget v4, v0, v3

    aget v0, v0, v6

    invoke-virtual {v2, v3, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2808
    iput-object v9, v7, Lcom/android/launcher3/dragndrop/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    .line 2809
    int-to-float v0, v13

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v3, 0x2

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$4;

    invoke-direct {v0, v7}, Lcom/android/launcher3/dragndrop/DragView$4;-><init>(Lcom/android/launcher3/dragndrop/DragView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 2810
    goto :goto_6

    :goto_5
    if-eqz v0, :cond_9

    if-eqz p7, :cond_9

    .line 2811
    const/4 v0, 0x0

    aget v1, v15, v0

    const/4 v4, 0x1

    aget v5, v15, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v15, v4

    aput v1, v15, v0

    .line 2814
    :cond_9
    :goto_6
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 2815
    const/4 v1, 0x4

    if-ne v8, v1, :cond_a

    .line 2816
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    move-object v1, v7

    move-object/from16 v2, v20

    move-object/from16 v7, p4

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    return-void

    .line 2820
    :cond_a
    const/4 v1, 0x1

    if-ne v8, v1, :cond_b

    .line 2821
    nop

    .line 2826
    move v12, v3

    goto :goto_7

    .line 2823
    :cond_b
    nop

    .line 2826
    const/4 v12, 0x0

    :goto_7
    new-instance v11, Lcom/android/launcher3/Workspace$8;

    move-object/from16 v1, p4

    invoke-direct {v11, v14, v2, v1}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2837
    move-object/from16 v1, v21

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    aget v4, v20, v1

    const/4 v5, 0x1

    aget v6, v20, v5

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    aget v16, v15, v1

    aget v15, v15, v5

    move-object v1, v7

    move v5, v6

    move v6, v8

    move v7, v9

    move v8, v10

    move/from16 v9, v16

    move v10, v15

    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 2841
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1244
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1247
    :cond_0
    return-void
.end method

.method public final beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    .line 1581
    move-object/from16 v10, p5

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1582
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1583
    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 1586
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1587
    iget v5, v2, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v5, v5, 0x2

    .line 1589
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v4, v6}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/Bitmap;[I)F

    move-result v8

    .line 1590
    iget-object v6, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v6, v6, v3

    .line 1591
    iget-object v7, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v9, 0x1

    aget v7, v7, v9

    .line 1593
    iget-object v9, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v9, v9, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 1594
    nop

    .line 1595
    nop

    .line 1596
    instance-of v11, v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    .line 1597
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1598
    move-object v9, v1

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    .line 1599
    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v9

    .line 1602
    new-instance v9, Landroid/graphics/Point;

    neg-int v12, v5

    invoke-direct {v9, v12, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1612
    move-object v12, v2

    goto :goto_0

    .line 1603
    :cond_0
    instance-of v13, v1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v13, :cond_1

    .line 1604
    iget v2, v9, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 1605
    new-instance v9, Landroid/graphics/Point;

    neg-int v12, v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    sub-int/2addr v5, v13

    invoke-direct {v9, v12, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1606
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-direct {v5, v3, v12, v13, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1607
    nop

    .line 1612
    move-object v12, v5

    goto :goto_0

    .line 1607
    :cond_1
    instance-of v2, v2, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    if-eqz v2, :cond_2

    .line 1608
    new-instance v2, Landroid/graphics/Point;

    neg-int v9, v5

    invoke-direct {v2, v9, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 1612
    move-object v9, v2

    goto :goto_0

    :cond_2
    move-object v9, v12

    :goto_0
    if-eqz v11, :cond_3

    .line 1613
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 1614
    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 1617
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_4

    .line 1618
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v2, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1621
    :cond_4
    if-eqz v11, :cond_5

    iget-boolean v2, v10, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v2, :cond_5

    .line 1622
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 1623
    invoke-static {v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    .line 1624
    if-eqz v1, :cond_5

    .line 1625
    new-instance v2, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;

    invoke-direct {v2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow$3;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    iput-object v2, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 1627
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 1631
    :cond_5
    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v1, v4

    move v2, v6

    move v3, v7

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    move-object v7, v12

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    .line 1633
    iget v1, v10, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    iput v1, v0, Lcom/android/launcher3/dragndrop/DragView;->mIntrinsicIconScale:F

    .line 1634
    return-object v0
.end method

.method public final beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 6

    .line 1567
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1568
    instance-of v1, v0, Lcom/android/launcher3/ItemInfo;

    if-nez v1, :cond_0

    .line 1569
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "  tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1572
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1574
    :cond_0
    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    new-instance v4, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v4, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 1576
    return-void
.end method

.method public final bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V
    .locals 10

    .line 489
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 491
    if-nez p1, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f040029

    .line 495
    invoke-virtual {p1, v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 498
    :cond_0
    move-object v4, p1

    new-instance v7, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget p1, v3, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v1, 0x1

    invoke-direct {v7, v0, v0, p1, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 499
    iput-boolean v0, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 500
    const/4 v5, 0x0

    const v6, 0x7f0e0010

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->disableSmartSpace(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 501
    const-string p1, "Launcher.Workspace"

    const-string v0, "Failed to add to item at (0, 0) to CellLayout"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_1
    return-void
.end method

.method public final commitExtraEmptyScreen()J
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 725
    const-wide/16 v0, -0x1

    return-wide v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v1, -0xc9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 729
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 730
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "generate_new_screen_id"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "value"

    .line 734
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 735
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 741
    return-wide v1
.end method

.method public computeScroll()V
    .locals 1

    .line 1226
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1227
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1228
    return-void
.end method

.method public final computeScrollWithoutInvalidation()V
    .locals 1

    .line 1231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->computeScrollHelper(Z)Z

    .line 1232
    return-void
.end method

.method final createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    .line 1778
    iget v3, v0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v3, p6, v3

    const/4 v9, 0x0

    if-lez v3, :cond_0

    return v9

    .line 1779
    :cond_0
    aget v3, p5, v9

    const/4 v10, 0x1

    aget v4, p5, v10

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    .line 1781
    nop

    .line 1782
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v3, :cond_2

    .line 1783
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    .line 1784
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    aget v5, p5, v9

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    aget v5, p5, v10

    if-ne v4, v5, :cond_1

    if-ne v3, v2, :cond_1

    .line 1788
    move v3, v10

    goto :goto_0

    .line 1784
    :cond_1
    nop

    .line 1788
    :cond_2
    move v3, v9

    :goto_0
    if-eqz v11, :cond_8

    if-nez v3, :cond_8

    iget-boolean v3, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v3, :cond_3

    goto/16 :goto_3

    .line 1789
    :cond_3
    iput-boolean v9, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 1790
    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v5

    .line 1792
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ShortcutInfo;

    .line 1793
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/ShortcutInfo;

    .line 1795
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 1796
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/launcher3/ShortcutInfo;

    .line 1797
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/launcher3/ShortcutInfo;

    .line 1799
    if-nez p7, :cond_4

    .line 1800
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1803
    :cond_4
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1804
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3, v11, v15}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v16

    .line 1805
    invoke-virtual {v2, v11}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1807
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v7, p5, v9

    aget v8, p5, v10

    .line 1808
    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1809
    const/4 v2, -0x1

    iput v2, v12, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 1810
    iput v2, v12, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1811
    iput v2, v13, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 1812
    iput v2, v13, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 1815
    if-eqz p8, :cond_5

    .line 1816
    move v3, v10

    goto :goto_1

    .line 1815
    :cond_5
    nop

    .line 1816
    move v3, v9

    :goto_1
    if-eqz v3, :cond_6

    .line 1819
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v3, v1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v3, v1, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v1, v3, Lcom/android/launcher3/folder/PreviewBackground;->mInvalidateDelegate:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 1820
    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v3}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 1821
    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v12, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    iget-object v0, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v3}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v12, v1

    move-object/from16 v14, p8

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FIZ)V

    goto :goto_2

    .line 1824
    :cond_6
    invoke-virtual {v1, v11}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 1825
    invoke-virtual {v1, v12, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 1826
    invoke-virtual {v1, v13, v10}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 1828
    :goto_2
    return v10

    .line 1830
    :cond_7
    return v9

    .line 1788
    :cond_8
    :goto_3
    return v9
.end method

.method protected final determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 4

    .line 998
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1000
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    .line 1001
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1002
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1004
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 1006
    :cond_1
    div-float v2, v1, v0

    .line 1007
    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1009
    iget v3, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 1010
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1013
    :cond_3
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    .line 1015
    return-void

    .line 1016
    :cond_4
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_5

    .line 1021
    sub-float/2addr v2, v0

    .line 1022
    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 1023
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1024
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-super {p0, p1, v1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1025
    return-void

    .line 1027
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1029
    return-void
.end method

.method protected final determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1

    .line 1236
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 1237
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1239
    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0

    .line 2956
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 2957
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 970
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1

    .line 972
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method final enableLayoutTransitions()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 459
    return-void
.end method

.method public final estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7

    .line 349
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 350
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 351
    return-object v6
.end method

.method public final estimateItemSize(Lcom/android/launcher3/ItemInfo;)[I
    .locals 10

    .line 320
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    .line 323
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 324
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 326
    move v1, v2

    goto :goto_0

    .line 324
    :cond_0
    nop

    .line 326
    move v1, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 328
    const/4 v4, 0x0

    .line 329
    if-eqz v1, :cond_1

    .line 330
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 331
    iget-object v5, v4, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v4, v4, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v5, v4}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v4

    .line 333
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    aput v5, v0, v3

    .line 334
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aput p1, v0, v2

    .line 336
    if-eqz v1, :cond_2

    .line 337
    aget p1, v0, v3

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    aput p1, v0, v3

    .line 338
    aget p1, v0, v2

    int-to-float p1, p1

    div-float/2addr p1, v4

    float-to-int p1, p1

    aput p1, v0, v2

    .line 340
    :cond_2
    return-object v0

    .line 342
    :cond_3
    const p1, 0x7fffffff

    aput p1, v0, v3

    .line 343
    aput p1, v0, v2

    .line 344
    return-object v0
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    .line 3394
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridX:I

    .line 3395
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->gridY:I

    .line 3396
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result p1

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 3397
    const/4 p1, 0x1

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 3398
    iget-wide v0, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 3399
    iget p1, p2, Lcom/android/launcher3/ItemInfo;->rank:I

    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->rank:I

    .line 3400
    const/4 p1, 0x2

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    return-void

    .line 3401
    :cond_0
    iget-wide p1, p2, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    .line 3402
    const/4 p1, 0x3

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 3404
    :cond_1
    return-void
.end method

.method final findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6

    .line 2874
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    return-object p1
.end method

.method protected final getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    .line 3372
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 3373
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 1305
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    const/high16 v0, 0x60000

    return v0

    .line 1308
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method public final getExpectedHeight()I
    .locals 1

    .line 3355
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3356
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    .line 3355
    return v0

    .line 3356
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    return v0
.end method

.method public final getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;
    .locals 2

    .line 3079
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 3080
    new-instance v1, Lcom/android/launcher3/Workspace$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$13;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$ItemOperator;[Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 3090
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1

    .line 2547
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2548
    return-void
.end method

.method public final getHomescreenIconByItemId(J)Landroid/view/View;
    .locals 1

    .line 3048
    new-instance v0, Lcom/android/launcher3/Workspace$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace$10;-><init>(Lcom/android/launcher3/Workspace;J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getIdForScreen(Lcom/android/launcher3/CellLayout;)J
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    .line 750
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v0

    return-wide v0

    .line 753
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPageIndexForScreenId(J)I
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected final getPageIndicatorDescription()Ljava/lang/String;
    .locals 2

    .line 3367
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 3

    .line 3006
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3007
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 3008
    iget-object v2, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 3009
    return-object v1

    .line 3011
    :cond_0
    goto :goto_0

    .line 3012
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getScreenIdForPageIndex(I)J
    .locals 2

    .line 761
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 764
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getScreenWithId(J)Lcom/android/launcher3/CellLayout;
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    return-object p1
.end method

.method final getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4

    .line 3019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3020
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 3021
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3022
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3024
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_1

    .line 3025
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3027
    :cond_1
    return-object v0
.end method

.method public final hasExtraEmptyScreen()Z
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v1, -0xc9

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final initParentViews(Landroid/view/View;)V
    .locals 1

    .line 443
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    .line 444
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    new-instance v0, Lcom/android/launcher3/uioverrides/OverviewAccessibilityDelegate;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/OverviewAccessibilityDelegate;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pageindicators/PageIndicator;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 445
    return-void
.end method

.method public final insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;
    .locals 9

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " already exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 549
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 551
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 552
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setSoundEffectsEnabled(Z)V

    .line 555
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 556
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    .line 557
    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 559
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 560
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 562
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 563
    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v4, p1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    .line 562
    iget-object p1, v3, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/LauncherState;->getWorkspacePageAlphaProvider(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$PageAlphaProvider;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;

    move-object v5, v0

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;ILcom/android/launcher3/LauncherState$PageAlphaProvider;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V

    .line 565
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 566
    const/4 p1, 0x1

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 569
    :cond_1
    return-object v0
.end method

.method public final insertNewWorkspaceScreen(J)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    .line 540
    return-void
.end method

.method public final isDropEnabled()Z
    .locals 1

    .line 2948
    const/4 v0, 0x1

    return v0
.end method

.method public final isFinishedSwitchingState()Z
    .locals 2

    .line 964
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final isTouchActive()Z
    .locals 1

    .line 477
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V
    .locals 12

    .line 3171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3172
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3173
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    .line 3174
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 3176
    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    .line 3177
    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_6

    .line 3178
    invoke-virtual {v4, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3179
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 3180
    if-eqz p1, :cond_4

    instance-of v9, v8, Lcom/android/launcher3/FolderInfo;

    if-eqz v9, :cond_4

    instance-of v9, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v9, :cond_4

    .line 3181
    check-cast v7, Lcom/android/launcher3/folder/FolderIcon;

    .line 3182
    iget-object v7, v7, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v7

    .line 3184
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3185
    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_3

    .line 3186
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 3187
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/ItemInfo;

    .line 3188
    invoke-interface {p2, v11, v10}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3189
    return-void

    .line 3185
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 3192
    :cond_3
    goto :goto_4

    .line 3193
    :cond_4
    invoke-interface {p2, v8, v7}, Lcom/android/launcher3/Workspace$ItemOperator;->evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3194
    return-void

    .line 3177
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3173
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3199
    :cond_7
    return-void
.end method

.method final mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 3

    .line 2244
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2245
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    aput v1, p2, v0

    .line 2246
    return-void
.end method

.method final mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V
    .locals 4

    .line 2260
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v1, 0x0

    aget v2, p2, v1

    float-to-int v2, v2

    aput v2, v0, v1

    .line 2261
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    const/4 v2, 0x1

    aget v3, p2, v2

    float-to-int v3, v3

    aput v3, v0, v2

    .line 2262
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-static {p0, v0, v3, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 2263
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p1, p1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-static {p1, v0, v3}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[I)V

    .line 2265
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget p1, p1, v1

    int-to-float p1, p1

    aput p1, p2, v1

    .line 2266
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget p1, p1, v2

    int-to-float p1, p1

    aput p1, p2, v2

    .line 2267
    return-void
.end method

.method moveToDefaultScreen()V
    .locals 2

    .line 3343
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3345
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 3347
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3348
    if-eqz v0, :cond_1

    .line 3349
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3351
    :cond_1
    return-void
.end method

.method protected final notifyPageSwitchListener(I)V
    .locals 4

    .line 1192
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 1193
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    .line 1194
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    const/4 v1, 0x3

    if-ge p1, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1195
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1198
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1277
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 1278
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1279
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 1281
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iput-object v0, v1, Lcom/android/launcher3/dragndrop/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 1282
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 466
    instance-of v0, p2, Lcom/android/launcher3/CellLayout;

    if-nez v0, :cond_0

    .line 467
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A Workspace can only have CellLayout children."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 470
    iput-object p0, v0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 471
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setClickable(Z)V

    .line 472
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 473
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 474
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1285
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 1286
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1287
    return-void
.end method

.method public final onDragEnd()V
    .locals 2

    .line 419
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 425
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 426
    return-void
.end method

.method public final onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 2105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2106
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2109
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2110
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v1, v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject$c13fd63(Lcom/android/launcher3/DropTarget$DragObject;F)Z

    .line 2111
    return-void
.end method

.method public final onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2

    .line 2121
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2122
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2123
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_0

    .line 2124
    :cond_0
    iget p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2125
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2129
    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2130
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2132
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    .line 2133
    return-void
.end method

.method public final onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 25

    move-object/from16 v9, p0

    .line 2276
    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2278
    :cond_0
    iget-object v7, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 2279
    if-nez v7, :cond_1

    .line 2283
    return-void

    .line 2287
    :cond_1
    iget v0, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ltz v0, :cond_18

    iget v0, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-gez v0, :cond_2

    goto/16 :goto_a

    .line 2288
    :cond_2
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2290
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 2291
    :goto_0
    move-object/from16 v21, v0

    goto :goto_1

    .line 2290
    :cond_3
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_0

    .line 2291
    :goto_1
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v15, 0x0

    aget v0, v0, v15

    invoke-direct {v9, v8, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject$c13fd63(Lcom/android/launcher3/DropTarget$DragObject;F)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2292
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2293
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v15, v0, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    goto :goto_3

    .line 2295
    :cond_4
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    iput-boolean v15, v2, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mAlarm:Lcom/android/launcher3/Alarm;

    if-nez v1, :cond_5

    const-wide/16 v3, 0x3b6

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x1f4

    :goto_2
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->mScreen:Lcom/android/launcher3/CellLayout;

    .line 2300
    :cond_6
    :goto_3
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_17

    .line 2302
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2303
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    goto :goto_4

    .line 2305
    :cond_7
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2308
    :goto_4
    iget v0, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 2309
    iget v1, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 2310
    iget v2, v7, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v2, v7, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_8

    .line 2311
    iget v0, v7, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 2312
    iget v1, v7, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 2315
    :cond_8
    move/from16 v22, v0

    move/from16 v23, v1

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v15

    float-to-int v1, v0

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v14, 0x1

    aget v0, v0, v14

    float-to-int v2, v0

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v9

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2318
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v15

    .line 2319
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v14

    .line 2321
    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v15

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v14

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2323
    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v15

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v4, v14

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v2

    .line 2326
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v5, v9, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, v2, v5

    const/4 v6, 0x2

    if-gtz v2, :cond_11

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v5, v15

    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v10, v10, v14

    invoke-virtual {v2, v5, v10}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    iget-object v5, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v9, v5, v2, v15}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z

    move-result v10

    iget v11, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v11, :cond_a

    if-eqz v10, :cond_a

    iget-object v11, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    iget-boolean v11, v11, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-nez v11, :cond_a

    new-instance v5, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;

    aget v10, v4, v15

    aget v4, v4, v14

    invoke-direct {v5, v9, v3, v10, v4}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;II)V

    iget-boolean v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v3, :cond_9

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    iput-object v5, v3, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_5

    :cond_9
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mFolderCreationAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/Workspace$FolderCreationAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    :goto_5
    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_11

    :goto_6
    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v9, v5, v2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v11, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v11, :cond_f

    move-object v4, v2

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v4, v9, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, v9, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v10, v4, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v10, v10, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    if-nez v10, :cond_d

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/CellLayout;

    iget-object v12, v4, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iget v13, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v10, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v12, v11, v13, v10}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    iget-object v10, v4, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v11, v4, Lcom/android/launcher3/folder/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    iput-object v11, v10, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    instance-of v10, v5, Lcom/android/launcher3/AppInfo;

    if-nez v10, :cond_c

    instance-of v10, v5, Lcom/android/launcher3/ShortcutInfo;

    if-nez v10, :cond_c

    instance-of v5, v5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v5, :cond_d

    :cond_c
    iget-object v4, v4, Lcom/android/launcher3/folder/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v10, 0x320

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_d
    :goto_7
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_e
    invoke-virtual {v9, v6}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_f
    iget v2, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v2, v6, :cond_10

    if-nez v4, :cond_10

    invoke-virtual {v9, v15}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    :cond_10
    iget v2, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v2, v14, :cond_11

    if-nez v10, :cond_11

    invoke-virtual {v9, v15}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2328
    :cond_11
    :goto_8
    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v15

    float-to-int v11, v2

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v14

    float-to-int v12, v2

    iget v13, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v5, v14

    move v14, v2

    move v2, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v24

    .line 2332
    if-nez v24, :cond_13

    .line 2333
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v2

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v10, v1, v5

    iget v11, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    const/4 v12, 0x0

    move-object/from16 v1, v21

    move-object v2, v3

    move v3, v4

    move v4, v10

    move v15, v5

    move v5, v11

    move v14, v6

    move v6, v7

    move v7, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;IIIIZLcom/android/launcher3/DropTarget$DragObject;)V

    .line 2352
    :cond_12
    move v11, v14

    move v12, v15

    goto/16 :goto_9

    .line 2335
    :cond_13
    move v15, v5

    move v14, v6

    iget v3, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v3, :cond_14

    iget v3, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    :cond_14
    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 2336
    iget-boolean v3, v3, Lcom/android/launcher3/Alarm;->mAlarmPending:Z

    if-nez v3, :cond_12

    iget v3, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v3, v0, :cond_15

    iget v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v0, v1, :cond_12

    .line 2339
    :cond_15
    new-array v0, v14, [I

    .line 2340
    iget-object v10, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v2

    float-to-int v11, v1

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v15

    float-to-int v12, v1

    iget v1, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v2, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x0

    move/from16 v13, v22

    move v6, v14

    move/from16 v14, v23

    move v5, v15

    move v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v21

    move-object/from16 v18, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 2346
    new-instance v10, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v11, v7, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v7, v7, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, v10

    move-object v1, v9

    move/from16 v3, v22

    move/from16 v4, v23

    move v12, v5

    move v5, v11

    move v11, v6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    .line 2348
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iput-object v10, v0, Lcom/android/launcher3/Alarm;->mAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 2349
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 2352
    :goto_9
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v12, :cond_16

    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v11, :cond_16

    if-nez v24, :cond_17

    .line 2354
    :cond_16
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_17

    .line 2355
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2359
    :cond_17
    return-void

    .line 2287
    :cond_18
    :goto_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 362
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 370
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mOutlineProvider:Lcom/android/launcher3/graphics/DragPreviewProvider;

    new-instance v2, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;-><init>(Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, v1, Lcom/android/launcher3/graphics/DragPreviewProvider;->mOutlineGeneratorCallback:Lcom/android/launcher3/graphics/DragPreviewProvider$OutlineGeneratorCallback;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 381
    iget-boolean p2, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne p2, p0, :cond_2

    goto :goto_0

    .line 383
    :cond_2
    move p2, v0

    goto :goto_1

    .line 381
    :cond_3
    :goto_0
    nop

    .line 383
    move p2, v1

    :goto_1
    if-eqz p2, :cond_a

    .line 384
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 385
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p2

    if-ne p2, v1, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_6

    move v0, v1

    goto :goto_3

    :cond_5
    move p2, v0

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    if-nez v0, :cond_8

    :cond_7
    iget-object p2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v0, -0xc9

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(J)V

    .line 387
    :cond_8
    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget p2, p2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq p2, p0, :cond_a

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result p2

    .line 395
    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_a

    .line 396
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 397
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    invoke-virtual {p0, p2}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 399
    goto :goto_5

    .line 395
    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 406
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 407
    return-void
.end method

.method public final onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 52

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1860
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v11, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1861
    iget-object v9, v10, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1864
    if-eqz v9, :cond_1

    .line 1865
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher3/Hotseat;[F)V

    goto :goto_0

    .line 1868
    :cond_0
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v9, v0}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 1872
    :cond_1
    :goto_0
    nop

    .line 1874
    nop

    .line 1875
    nop

    .line 1876
    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v14, 0x4

    const/16 v23, 0x0

    const-wide/16 v24, -0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne v0, v10, :cond_24

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_2

    goto/16 :goto_19

    .line 1881
    :cond_2
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v5, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1882
    nop

    .line 1883
    nop

    .line 1885
    const/16 v26, -0x1

    if-eqz v9, :cond_1c

    iget-boolean v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_1c

    .line 1887
    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eq v0, v9, :cond_3

    .line 1888
    move/from16 v27, v7

    goto :goto_1

    .line 1887
    :cond_3
    nop

    .line 1888
    move/from16 v27, v6

    :goto_1
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v28

    .line 1889
    if-eqz v28, :cond_4

    .line 1890
    nop

    .line 1892
    move-wide/from16 v31, v24

    goto :goto_2

    .line 1891
    :cond_4
    nop

    .line 1892
    const-wide/16 v31, -0x64

    :goto_2
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v6

    if-gez v0, :cond_5

    .line 1893
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    .line 1894
    :goto_3
    move-wide v3, v0

    goto :goto_4

    .line 1893
    :cond_5
    invoke-virtual {v10, v9}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v0

    goto :goto_3

    .line 1894
    :goto_4
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 1895
    move v2, v0

    goto :goto_5

    .line 1894
    :cond_6
    nop

    .line 1895
    move v2, v7

    :goto_5
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 1899
    move v1, v0

    goto :goto_6

    .line 1895
    :cond_7
    nop

    .line 1899
    move v1, v7

    :goto_6
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v6

    float-to-int v0, v0

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v6, v6, v7

    float-to-int v6, v6

    iget-object v8, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v16, v0

    move-object v0, v10

    move/from16 v41, v1

    move/from16 v1, v16

    move/from16 v42, v2

    move v2, v6

    move-wide/from16 v43, v3

    move/from16 v3, v42

    move/from16 v4, v41

    move-object v6, v5

    move-object v5, v9

    move-object/from16 v45, v6

    const/4 v7, 0x0

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1901
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v7

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v1, v1, v8

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 1906
    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v17, 0x0

    iget-object v6, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v10

    move-object/from16 v1, v45

    move-wide/from16 v2, v31

    move-object v4, v9

    move-object/from16 v18, v6

    move/from16 v6, v16

    move v15, v8

    move v8, v7

    move/from16 v7, v17

    move v15, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x0

    .line 1908
    move-object v0, v10

    move-object v1, v9

    move/from16 v3, v16

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_11

    .line 1916
    :cond_8
    iget-object v8, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    .line 1917
    iget v0, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1918
    iget v1, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1919
    iget v2, v8, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_9

    iget v2, v8, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_9

    .line 1920
    iget v0, v8, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    .line 1921
    iget v1, v8, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    .line 1924
    :cond_9
    move/from16 v16, v1

    iget-wide v1, v8, Lcom/android/launcher3/ItemInfo;->screenId:J

    move-wide/from16 v6, v43

    cmp-long v1, v1, v6

    if-nez v1, :cond_a

    iget-wide v1, v8, Lcom/android/launcher3/ItemInfo;->container:J

    cmp-long v1, v1, v31

    if-nez v1, :cond_a

    iget v1, v8, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v15

    if-ne v1, v2, :cond_a

    iget v1, v8, Lcom/android/launcher3/ItemInfo;->cellY:I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ne v1, v2, :cond_a

    .line 1926
    const/16 v39, 0x1

    goto :goto_7

    .line 1924
    :cond_a
    nop

    .line 1926
    move/from16 v39, v15

    :goto_7
    if-eqz v39, :cond_b

    iget-boolean v1, v10, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v1, :cond_b

    .line 1930
    const/16 v40, 0x1

    goto :goto_8

    .line 1926
    :cond_b
    nop

    .line 1930
    move/from16 v40, v15

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v1

    if-nez v1, :cond_c

    if-nez v40, :cond_c

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 1932
    move/from16 v4, v41

    move/from16 v3, v42

    invoke-virtual {v9, v1, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1933
    const/4 v1, 0x1

    goto :goto_9

    .line 1932
    :cond_c
    move/from16 v4, v41

    move/from16 v3, v42

    .line 1933
    :cond_d
    move v1, v15

    :goto_9
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1934
    if-eqz v1, :cond_e

    .line 1935
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v17, 0x1

    aput v26, v3, v17

    aput v26, v0, v15

    .line 1942
    move v5, v14

    move v11, v15

    goto :goto_a

    .line 1937
    :cond_e
    const/16 v17, 0x1

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v5, v15

    float-to-int v5, v5

    iget-object v12, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v12, v12, v17

    float-to-int v13, v12

    iget-object v12, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v22, 0x2

    move-object/from16 v20, v12

    move-object v12, v9

    move/from16 v18, v13

    move v13, v5

    move v5, v14

    move/from16 v14, v18

    move v11, v15

    move v15, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v45

    move-object/from16 v21, v2

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1942
    :goto_a
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v11

    if-ltz v0, :cond_f

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v15, 0x1

    aget v0, v0, v15

    if-ltz v0, :cond_10

    .line 1945
    move v0, v15

    goto :goto_b

    .line 1942
    :cond_f
    const/4 v15, 0x1

    .line 1945
    :cond_10
    move v0, v11

    :goto_b
    if-eqz v0, :cond_12

    move-object/from16 v12, v45

    instance-of v3, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_13

    aget v3, v2, v11

    iget v4, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v3, v4, :cond_11

    aget v3, v2, v15

    iget v4, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v3, v4, :cond_13

    .line 1947
    :cond_11
    nop

    .line 1948
    aget v3, v2, v11

    iput v3, v8, Lcom/android/launcher3/ItemInfo;->spanX:I

    .line 1949
    aget v3, v2, v15

    iput v3, v8, Lcom/android/launcher3/ItemInfo;->spanY:I

    .line 1950
    move-object v3, v12

    check-cast v3, Landroid/appwidget/AppWidgetHostView;

    .line 1951
    iget-object v4, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v13, v2, v11

    aget v2, v2, v15

    invoke-static {v3, v4, v13, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 1955
    move v13, v15

    goto :goto_c

    :cond_12
    move-object/from16 v12, v45

    :cond_13
    move v13, v11

    :goto_c
    if-eqz v0, :cond_19

    .line 1956
    iget v0, v10, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {v10, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_14

    if-nez v28, :cond_14

    .line 1957
    invoke-virtual {v10, v6, v7}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    .line 1958
    invoke-virtual {v10, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 1961
    move v14, v0

    goto :goto_d

    :cond_14
    move/from16 v14, v26

    :goto_d
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 1962
    if-eqz v27, :cond_16

    .line 1964
    invoke-virtual {v10, v12}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1965
    if-eqz v0, :cond_15

    .line 1966
    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1970
    :cond_15
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v16, v0, v11

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v17, v0, v15

    iget v2, v4, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v3, v4, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, v10

    move-object v1, v12

    move/from16 v18, v2

    move/from16 v19, v3

    move-wide/from16 v2, v31

    move-object/from16 v20, v4

    move-wide v4, v6

    move-wide/from16 v21, v6

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v46, v8

    move/from16 v8, v18

    move-object/from16 v47, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_e

    .line 1975
    :cond_16
    move-object/from16 v20, v4

    move-wide/from16 v21, v6

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    :goto_e
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1976
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v11

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1977
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 1978
    move-object/from16 v1, v46

    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1979
    iget v2, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 1980
    iput-boolean v15, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1982
    cmp-long v2, v31, v24

    if-eqz v2, :cond_17

    instance-of v2, v12, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v2, :cond_17

    .line 1984
    nop

    .line 1988
    move-object v5, v12

    check-cast v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 1989
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 1990
    if-eqz v2, :cond_17

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v2, :cond_17

    move v9, v11

    move-object/from16 v11, p1

    iget-boolean v2, v11, Lcom/android/launcher3/DropTarget$DragObject;->accessibleDrag:Z

    if-nez v2, :cond_18

    .line 1992
    new-instance v2, Lcom/android/launcher3/Workspace$6;

    move-object/from16 v8, v47

    invoke-direct {v2, v10, v5, v8}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 2002
    move-object/from16 v23, v2

    goto :goto_f

    :cond_17
    move v9, v11

    move-object/from16 v11, p1

    :cond_18
    :goto_f
    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v1, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, v1, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object/from16 v29, v2

    move-object/from16 v30, v20

    move-wide/from16 v33, v21

    move/from16 v35, v3

    move/from16 v36, v0

    move/from16 v37, v4

    move/from16 v38, v1

    invoke-virtual/range {v29 .. v38}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/ItemInfo;JJIIII)V

    .line 2004
    nop

    .line 2018
    move v0, v13

    move v1, v14

    move-object/from16 v8, v23

    goto :goto_10

    .line 2005
    :cond_19
    move-object v8, v9

    move v9, v11

    move-object/from16 v11, p1

    if-nez v1, :cond_1a

    .line 2006
    invoke-virtual {v10, v8}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    .line 2010
    :cond_1a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2011
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v2, v1, v9

    .line 2012
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v0, v1, v15

    .line 2013
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2014
    invoke-virtual {v0, v12}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2018
    move v0, v13

    move-object/from16 v8, v23

    move/from16 v1, v26

    :goto_10
    const-wide/16 v13, 0x1f4

    goto :goto_12

    .line 1910
    :cond_1b
    :goto_11
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;J)V

    .line 1911
    return-void

    .line 2018
    :cond_1c
    move-object v12, v5

    move v9, v6

    move v15, v7

    const-wide/16 v13, 0x1f4

    move v0, v9

    move/from16 v39, v0

    move/from16 v40, v39

    move-object/from16 v8, v23

    move/from16 v1, v26

    :goto_12
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 2019
    iget-object v2, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-boolean v2, v2, Lcom/android/launcher3/dragndrop/DragView;->mHasDrawn:Z

    if-eqz v2, :cond_23

    .line 2020
    if-eqz v40, :cond_1d

    .line 2023
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    const/16 v1, 0x96

    invoke-virtual {v0, v8, v12, v1}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 2025
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 2026
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 2027
    invoke-virtual {v7, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2028
    return-void

    .line 2030
    :cond_1d
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 2031
    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1f

    iget v3, v2, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1e

    goto :goto_13

    .line 2033
    :cond_1e
    move v15, v9

    goto :goto_14

    .line 2031
    :cond_1f
    :goto_13
    nop

    .line 2033
    :goto_14
    if-eqz v15, :cond_21

    .line 2034
    if-eqz v0, :cond_20

    .line 2036
    const/4 v5, 0x2

    goto :goto_15

    .line 2035
    :cond_20
    nop

    .line 2036
    move v5, v9

    :goto_15
    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, v2

    move-object v2, v7

    move-object v6, v12

    move-object v15, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2037
    goto :goto_18

    .line 2038
    :cond_21
    move-object v15, v7

    if-gez v1, :cond_22

    .line 2039
    :goto_16
    move/from16 v0, v26

    goto :goto_17

    .line 2038
    :cond_22
    const/16 v26, 0x12c

    goto :goto_16

    .line 2039
    :goto_17
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2, v12, v0, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    .line 2042
    goto :goto_18

    .line 2043
    :cond_23
    move-object v15, v7

    iput-boolean v9, v11, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2044
    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2046
    :goto_18
    invoke-virtual {v15, v12}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2048
    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, v13, v14, v8}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;JLjava/lang/Runnable;)V

    .line 2052
    move/from16 v12, v39

    goto/16 :goto_25

    .line 1877
    :cond_24
    :goto_19
    move v15, v7

    move-object v8, v9

    const/4 v5, 0x5

    move v9, v6

    move v6, v14

    const-wide/16 v13, 0x1f4

    const/4 v7, 0x2

    new-array v0, v7, [I

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v9

    float-to-int v3, v3

    aput v3, v0, v9

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v15

    float-to-int v3, v3

    aput v3, v0, v15

    .line 1879
    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v3, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v3, :cond_25

    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    check-cast v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v3, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->createShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    iput-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    :cond_25
    iget-object v12, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget v3, v12, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v12, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v1, :cond_26

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    move v3, v1

    move v4, v2

    :cond_26
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_27

    move-wide/from16 v48, v24

    goto :goto_1a

    :cond_27
    const-wide/16 v48, -0x64

    :goto_1a
    invoke-virtual {v10, v8}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v1

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_28

    iget v5, v10, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v16

    cmp-long v5, v1, v16

    if-eqz v5, :cond_28

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    :cond_28
    instance-of v5, v12, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v5, :cond_35

    move-object v14, v12

    check-cast v14, Lcom/android/launcher3/PendingAddItemInfo;

    iget v5, v14, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    if-ne v5, v15, :cond_2a

    aget v5, v0, v9

    aget v6, v0, v15

    iget-object v13, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v10

    move-wide/from16 v24, v1

    move v1, v5

    move v2, v6

    const/4 v6, 0x5

    move-object v5, v8

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v9

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v15

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    iget-object v1, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v3, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object v0, v10

    move-object v2, v8

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v10, v0, v8, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_29
    move v0, v9

    goto :goto_1b

    :cond_2a
    move-wide/from16 v24, v1

    :cond_2b
    move v0, v15

    :goto_1b
    iget-object v5, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_2f

    iget v0, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v1, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    if-lez v2, :cond_2c

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    if-lez v2, :cond_2c

    iget v0, v5, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iget v1, v5, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    :cond_2c
    move/from16 v16, v1

    new-array v1, v7, [I

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v9

    float-to-int v13, v2

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v2, v15

    float-to-int v2, v2

    iget v3, v12, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v12, Lcom/android/launcher3/ItemInfo;->spanY:I

    const/16 v19, 0x0

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v22, 0x3

    move-object v7, v12

    move-object v12, v8

    move-object/from16 v50, v14

    move v14, v2

    move/from16 v34, v15

    move v15, v0

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v1

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v1, v9

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    if-ne v0, v2, :cond_2e

    aget v0, v1, v34

    iget v2, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    if-eq v0, v2, :cond_2d

    goto :goto_1c

    :cond_2d
    move v6, v9

    goto :goto_1d

    :cond_2e
    :goto_1c
    move/from16 v6, v34

    :goto_1d
    aget v0, v1, v9

    iput v0, v5, Lcom/android/launcher3/ItemInfo;->spanX:I

    aget v0, v1, v34

    iput v0, v5, Lcom/android/launcher3/ItemInfo;->spanY:I

    move v12, v6

    goto :goto_1e

    :cond_2f
    move-object v7, v12

    move-object/from16 v50, v14

    move/from16 v34, v15

    move v12, v9

    :goto_1e
    new-instance v13, Lcom/android/launcher3/Workspace$7;

    move-object v0, v13

    move-object v1, v10

    move-object/from16 v2, v50

    move-wide/from16 v3, v48

    move-object v14, v5

    move-wide/from16 v5, v24

    move-object v15, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;JJLcom/android/launcher3/ItemInfo;)V

    move-object/from16 v0, v50

    iget v1, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_31

    iget v1, v0, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_30

    goto :goto_1f

    :cond_30
    move v1, v9

    goto :goto_20

    :cond_31
    :goto_1f
    move/from16 v1, v34

    :goto_20
    if-eqz v1, :cond_32

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object v6, v2

    goto :goto_21

    :cond_32
    move-object/from16 v6, v23

    :goto_21
    if-eqz v6, :cond_33

    if-eqz v12, :cond_33

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v3, v14, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v4, v14, Lcom/android/launcher3/ItemInfo;->spanY:I

    invoke-static {v6, v2, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    :cond_33
    if-eqz v1, :cond_34

    move-object v14, v0

    check-cast v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v14, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_34

    invoke-virtual {v14}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-eqz v0, :cond_34

    move/from16 v5, v34

    goto :goto_22

    :cond_34
    move v5, v9

    :goto_22
    iget-object v3, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, v15

    move-object v2, v8

    move-object v4, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2052
    move v12, v9

    goto/16 :goto_25

    .line 1879
    :cond_35
    move-wide/from16 v24, v1

    move/from16 v34, v15

    move-object v15, v12

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;J)V

    iget v1, v15, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_36

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown item type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v15, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v1, 0x7f040017

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v12, v15

    check-cast v12, Lcom/android/launcher3/FolderInfo;

    invoke-static {v1, v2, v8, v12}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    move-object v14, v15

    move-object v15, v1

    goto :goto_24

    :cond_36
    :pswitch_1
    iget-wide v1, v15, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    if-nez v1, :cond_37

    instance-of v1, v15, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_37

    move-object v12, v15

    check-cast v12, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v12

    iput-object v12, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    goto :goto_23

    :cond_37
    move-object v12, v15

    :goto_23
    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, v12

    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v1, v8, v2}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    move-object v14, v12

    :goto_24
    aget v1, v0, v9

    aget v2, v0, v34

    iget-object v6, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v0, v10

    move-object v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v9

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v1, v34

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v12

    iget-object v5, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    iget-object v13, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v0, v10

    move-object v1, v15

    move-wide/from16 v2, v48

    move-object v4, v8

    move v6, v12

    move-object/from16 v51, v8

    move-object v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object v0, v10

    move-object/from16 v1, v51

    move v3, v12

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v9

    float-to-int v13, v0

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v0, v0, v34

    float-to-int v0, v0

    const/4 v1, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    iget-object v2, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v12, v51

    move-object v3, v14

    move v14, v0

    move-object v8, v15

    move v15, v1

    move-object/from16 v20, v2

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v32, v1, v9

    iget-object v1, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v33, v1, v34

    move-object/from16 v26, v0

    move-object/from16 v27, v3

    move-wide/from16 v28, v48

    move-wide/from16 v30, v24

    invoke-virtual/range {v26 .. v33}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v0, v9

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v7, v0, v34

    iget v12, v3, Lcom/android/launcher3/ItemInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/ItemInfo;->spanY:I

    move-object v0, v10

    move-object v1, v8

    move-wide/from16 v2, v48

    move-wide/from16 v4, v24

    move-object v14, v8

    move v8, v12

    move v12, v9

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v14}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    iget-object v0, v10, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, v11, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1, v14, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    goto :goto_25

    .line 1880
    :cond_38
    move v12, v9

    .line 2052
    :cond_39
    :goto_25
    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_3a

    if-nez v12, :cond_3a

    .line 2053
    iget-object v0, v11, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    const v1, 0x7f0c0078

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 2055
    :cond_3a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 4

    .line 2893
    if-eqz p3, :cond_0

    .line 2894
    if-eq p1, p0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_1

    .line 2895
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    .line 2897
    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_1

    .line 2898
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v0, p3, Lcom/android/launcher3/CellLayout$CellInfo;->container:J

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-wide v2, p3, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    .line 2900
    if-eqz p1, :cond_1

    .line 2901
    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2907
    :cond_1
    :goto_0
    iget-boolean p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 2908
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2910
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 2911
    return-void
.end method

.method public final onEndReordering()V
    .locals 8

    .line 1413
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onEndReordering()V

    .line 1415
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 1417
    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1421
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1422
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    .line 1423
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1424
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 1425
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1428
    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1429
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1430
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 1431
    goto :goto_2

    .line 1428
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1434
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 1438
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 981
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    .line 983
    goto :goto_2

    .line 986
    :cond_0
    :pswitch_1
    iget v0, p0, Lcom/android/launcher3/Workspace;->mTouchState:I

    if-nez v0, :cond_2

    .line 987
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 988
    if-eqz v0, :cond_2

    .line 989
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "android.wallpaper.tap"

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    const-string v1, "android.wallpaper.secondaryTap"

    goto :goto_0

    :goto_1
    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 993
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1291
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    .line 1293
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1295
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1297
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    iget-object v1, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v0, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mWindowToken:Landroid/os/IBinder;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1299
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 1300
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1301
    return-void
.end method

.method public final onNoCellFound(Landroid/view/View;)V
    .locals 1

    .line 2058
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2059
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 2060
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->showOutOfSpaceMessage(Z)V

    .line 2067
    return-void

    .line 2068
    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->showOutOfSpaceMessage(Z)V

    .line 2070
    return-void
.end method

.method public final onOverlayScrollChanged(F)V
    .locals 8

    .line 1155
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-nez v1, :cond_1

    .line 1156
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, v5, v5, v4, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1160
    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    goto :goto_0

    .line 1161
    :cond_1
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    .line 1162
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz v1, :cond_2

    .line 1163
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v1, v5, v6, v4, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1166
    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 1168
    :cond_3
    :goto_0
    sub-float/2addr p1, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1172
    div-float/2addr p1, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1174
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float v1, v0, v1

    .line 1175
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    .line 1176
    mul-float/2addr v2, v0

    .line 1178
    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz p1, :cond_4

    .line 1179
    neg-float v2, v2

    .line 1181
    :cond_4
    iput v2, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    .line 1186
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->setTranslationX(F)V

    .line 1187
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 1188
    return-void
.end method

.method protected final onPageBeginTransition()V
    .locals 0

    .line 1032
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 1033
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1034
    return-void
.end method

.method protected final onPageEndTransition()V
    .locals 1

    .line 1037
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1040
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_1

    .line 1049
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 1050
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1052
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1099
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 1102
    iget-boolean p1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1104
    :goto_1
    if-nez p1, :cond_2

    .line 1105
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1108
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1109
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1110
    return-void
.end method

.method protected final onScrollInteractionBegin()V
    .locals 1

    .line 1055
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1057
    return-void
.end method

.method protected final onScrollInteractionEnd()V
    .locals 2

    .line 1060
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionEnd()V

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    .line 1062
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-eqz v1, :cond_0

    .line 1063
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1064
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionEnd()V

    .line 1066
    :cond_0
    return-void
.end method

.method public final onStartReordering()V
    .locals 1

    .line 1407
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onStartReordering()V

    .line 1409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1410
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 949
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected final overScroll(F)V
    .locals 5

    .line 1120
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    cmpg-float v0, p1, v3

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_1

    :cond_0
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 1123
    :cond_1
    move v0, v2

    goto :goto_0

    .line 1120
    :cond_2
    nop

    .line 1123
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_5

    cmpl-float v4, p1, v3

    if-ltz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_4

    :cond_3
    cmpg-float v4, p1, v3

    if-gtz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_5

    .line 1126
    :cond_4
    move v1, v2

    goto :goto_1

    .line 1123
    :cond_5
    nop

    .line 1126
    :goto_1
    if-eqz v0, :cond_7

    .line 1127
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mScrollInteractionBegan:Z

    if-eqz v0, :cond_6

    .line 1128
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mStartedSendingScrollEvents:Z

    .line 1129
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollInteractionBegin()V

    .line 1132
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    .line 1133
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    iget v0, p0, Lcom/android/launcher3/Workspace;->mLastOverlayScroll:F

    invoke-interface {p1, v0}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange$254d549(F)V

    goto :goto_2

    .line 1135
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->dampedOverScroll(F)V

    .line 1138
    :goto_2
    if-eqz v1, :cond_8

    .line 1139
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    invoke-interface {p1, v3}, Lcom/android/launcher3/Launcher$LauncherOverlay;->onScrollChange$254d549(F)V

    .line 1141
    :cond_8
    return-void
.end method

.method public final prepareAccessibilityDrop()V
    .locals 0

    .line 1857
    return-void
.end method

.method public final removeExtraEmptyScreen(ZZ)V
    .locals 2

    .line 633
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 634
    return-void
.end method

.method public final removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V
    .locals 4

    .line 638
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 640
    return-void

    .line 643
    :cond_0
    if-lez p3, :cond_1

    .line 644
    new-instance v0, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;Z)V

    int-to-long p1, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    return-void

    .line 653
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean p1, p1, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    const-wide/16 v0, -0xc9

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    iget-object p3, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p3

    if-nez p3, :cond_3

    iget-boolean p3, p1, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p3, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {p3, v0, v1, p1}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p3}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 654
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 655
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 656
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result p3

    const/16 v0, 0x96

    if-ne p3, p1, :cond_4

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 p3, 0x190

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 658
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    return-void

    .line 661
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/Workspace;->snapToPage(II)V

    .line 662
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/launcher3/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;Z)V

    .line 665
    return-void

    .line 666
    :cond_5
    if-eqz p4, :cond_6

    .line 669
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 672
    :cond_6
    if-eqz p2, :cond_7

    .line 673
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 675
    :cond_7
    return-void
.end method

.method public final removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 10

    .line 3112
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3113
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 3114
    iget-object v2, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 3116
    new-instance v3, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v3}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    .line 3117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3118
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 3119
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3120
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/ItemInfo;

    if-eqz v8, :cond_0

    .line 3121
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/ItemInfo;

    .line 3122
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3123
    iget-wide v8, v8, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v8, v9, v7}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 3118
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3127
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 3128
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->id:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3130
    if-eqz v6, :cond_2

    .line 3133
    invoke-virtual {v1, v6}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3134
    instance-of v4, v6, Lcom/android/launcher3/DropTarget;

    if-eqz v4, :cond_3

    .line 3135
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v6, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    .line 3137
    :cond_2
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 3139
    iget-wide v6, v4, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 3140
    if-eqz v6, :cond_3

    .line 3141
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/FolderInfo;

    .line 3142
    invoke-virtual {v6}, Lcom/android/launcher3/FolderInfo;->prepareAutoUpdate()V

    .line 3143
    check-cast v4, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 3146
    :cond_3
    goto :goto_2

    .line 3147
    :cond_4
    goto/16 :goto_0

    .line 3150
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 3151
    return-void
.end method

.method public final removeWorkspaceItem(Landroid/view/View;)V
    .locals 1

    .line 2917
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2918
    if-eqz v0, :cond_0

    .line 2919
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 2927
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_1

    .line 2928
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast p1, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 2930
    :cond_1
    return-void
.end method

.method public final resetTransitionTransform()V
    .locals 1

    .line 2851
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 2852
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 2853
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 2855
    :cond_0
    return-void
.end method

.method public final restoreInstanceStateForChild(I)V
    .locals 2

    .line 2960
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 2961
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2962
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout;

    .line 2963
    if-eqz p1, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 2967
    :cond_0
    return-void
.end method

.method public final scrollLeft()V
    .locals 1

    .line 2982
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 2983
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()V

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 2986
    if-eqz v0, :cond_1

    .line 2987
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 2989
    :cond_1
    return-void
.end method

.method public final scrollRight()V
    .locals 1

    .line 2993
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 2994
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()V

    .line 2996
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 2997
    if-eqz v0, :cond_1

    .line 2998
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3000
    :cond_1
    return-void
.end method

.method final setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2

    .line 2168
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2169
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2171
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 2172
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_1

    .line 2173
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2177
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, p1, Lcom/android/launcher3/dragndrop/DragLayer;->mPageCutOutScrim:Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/PageCutOutScrimDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->invalidate()V

    .line 2178
    :cond_2
    return-void
.end method

.method final setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 6

    .line 2154
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2155
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2156
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-boolean v3, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iput-boolean v4, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    aput v1, v5, v2

    aput v1, v3, v4

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animate(I)V

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v3, v2

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v5, v5

    rem-int/2addr v3, v5

    iput v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2158
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 2159
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz p1, :cond_2

    .line 2160
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-boolean v2, p1, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2162
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2163
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2164
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2165
    return-void
.end method

.method final setCurrentDropOverCell(II)V
    .locals 1

    .line 2185
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2186
    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 2187
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 2188
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2190
    :cond_1
    return-void
.end method

.method final setDragMode(I)V
    .locals 2

    .line 2193
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    .line 2194
    if-nez p1, :cond_0

    .line 2195
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2199
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2200
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2201
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2202
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2203
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2204
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2205
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2206
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2207
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2208
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2210
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 2212
    :cond_4
    return-void
.end method

.method public final setFinalTransitionTransform()V
    .locals 1

    .line 2844
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 2845
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    .line 2846
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 2847
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget v0, v0, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->mNewScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 2849
    :cond_0
    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 5

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 290
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    .line 291
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 293
    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 294
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/Workspace;->setPadding(IIII)V

    .line 296
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->defaultPageSpacingPx:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    .line 306
    :goto_0
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    .line 307
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBottomPaddingPx:I

    .line 308
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    const/4 v3, 0x0

    .line 310
    invoke-virtual {v2, v0, v3, v0, p1}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    .line 308
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 312
    :cond_1
    return-void
.end method

.method public final setPageRearrangeEnabled(Z)V
    .locals 1

    .line 1528
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mPageRearrangeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1529
    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mPageRearrangeEnabled:Z

    .line 1530
    if-eqz p1, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableFreeScroll()V

    return-void

    .line 1533
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableFreeScroll()V

    .line 1536
    :cond_1
    return-void
.end method

.method public final setState(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    .line 1465
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition$503aab85()V

    .line 1466
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    sget-object v1, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V

    .line 1467
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    .line 1468
    return-void
.end method

.method public final setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/anim/AnimatorSetBuilder;Lcom/android/launcher3/LauncherStateManager$AnimationConfig;)V
    .locals 5

    .line 1476
    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/LauncherState;)V

    .line 1477
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    new-instance v2, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;

    iget-wide v3, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-direct {v2, v3, v4, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation$AnimatedPropertySetter;-><init>(JLcom/android/launcher3/anim/AnimatorSetBuilder;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setWorkspaceProperty(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/WorkspaceStateTransitionAnimation$PropertySetter;)V

    .line 1481
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->hasMultipleVisiblePages:Z

    if-eqz p1, :cond_0

    .line 1482
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 1486
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 1487
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1488
    iget-wide v1, p3, Lcom/android/launcher3/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1489
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1490
    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    .line 1491
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected final shouldFlingForVelocity(I)Z
    .locals 2

    .line 1146
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1146
    return p1
.end method

.method public final showOutlinesTemporarily()V
    .locals 1

    .line 1250
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsPageInTransition:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 1253
    :cond_0
    return-void
.end method

.method public final showPageIndicatorAtCurrentScroll()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeMaxScrollX()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    .line 1116
    :cond_0
    return-void
.end method

.method protected final snapToDestination()V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncherOverlay:Lcom/android/launcher3/Launcher$LauncherOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getUnboundedScrollX()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/Workspace;->mMaxScrollX:I

    if-gt v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getUnboundedScrollX()I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1090
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWasInOverscroll:Z

    .line 1091
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPageImmediately(I)V

    return-void

    .line 1093
    :cond_3
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1095
    return-void
.end method

.method public final snapToPageFromOverView(I)V
    .locals 2

    .line 1441
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    const/16 v1, 0xfa

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/Workspace;->snapToPage(IILandroid/animation/TimeInterpolator;)V

    .line 1442
    return-void
.end method

.method public final startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    .line 1543
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1545
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 1546
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    iget-boolean p1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz p1, :cond_0

    .line 1549
    iget-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v1, Lcom/android/launcher3/Workspace$5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1563
    :cond_0
    invoke-virtual {p0, v0, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 1564
    return-void
.end method

.method public final stripEmptyScreens()V
    .locals 12

    .line 772
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v0, :cond_0

    .line 775
    return-void

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 779
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 780
    return-void

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 784
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LongArrayMap;->size()I

    move-result v3

    .line 786
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 787
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v6, v5}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v6

    .line 788
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/util/LongArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    .line 790
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_2

    .line 791
    iget-object v8, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 792
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 796
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v3

    .line 800
    nop

    .line 803
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 804
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    .line 805
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 806
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v7

    if-le v7, v1, :cond_6

    .line 809
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v7, v0, :cond_4

    .line 810
    add-int/lit8 v6, v6, 0x1

    .line 813
    :cond_4
    if-eqz v3, :cond_5

    .line 814
    const/4 v7, 0x2

    invoke-virtual {v8, v4, v7}, Lcom/android/launcher3/CellLayout;->enableAccessibleDrag(ZI)V

    .line 817
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 820
    :cond_6
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher3/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    .line 821
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v9, -0xc9

    invoke-virtual {v7, v9, v10, v8}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    .line 822
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    goto :goto_1

    .line 826
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 828
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 831
    :cond_8
    if-ltz v6, :cond_9

    .line 832
    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 834
    :cond_9
    return-void
.end method

.method public final updateAccessibilityFlags()V
    .locals 6

    .line 1495
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->workspaceAccessibilityFlag:I

    .line 1496
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1497
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v1

    .line 1498
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1499
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mPageRearrangeEnabled:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    iget-object v4, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    invoke-direct {v4, p0}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mPagesAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    iget-object v4, v3, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1498
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1501
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 1503
    :cond_4
    return-void
.end method

.method final updateChildrenLayersEnabled()V
    .locals 3

    .line 1321
    nop

    .line 1322
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mPageRearrangeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    move v0, v1

    goto :goto_1

    .line 1322
    :cond_1
    :goto_0
    nop

    .line 1324
    const/4 v0, 0x1

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_3

    .line 1325
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1326
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_2

    .line 1327
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    return-void

    .line 1329
    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1330
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 1331
    invoke-virtual {v2, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1329
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1335
    :cond_3
    return-void
.end method

.method final willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 4

    .line 1760
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1761
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1762
    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1

    .line 1763
    :cond_0
    return v0

    .line 1767
    :cond_1
    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 1768
    check-cast p2, Lcom/android/launcher3/folder/FolderIcon;

    .line 1769
    invoke-virtual {p2, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1770
    const/4 p1, 0x1

    return p1

    .line 1773
    :cond_2
    return v0
.end method

.method final willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 1

    .line 1754
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 1755
    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    .line 1756
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method final willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z
    .locals 4

    .line 1727
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1728
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1729
    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v1, :cond_1

    .line 1730
    :cond_0
    return v0

    .line 1734
    :cond_1
    nop

    .line 1735
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 1736
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v1, :cond_2

    .line 1739
    move v1, v2

    goto :goto_0

    .line 1736
    :cond_2
    nop

    .line 1739
    :cond_3
    move v1, v0

    :goto_0
    if-eqz p2, :cond_8

    if-nez v1, :cond_8

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p3, :cond_4

    goto :goto_3

    .line 1743
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/ShortcutInfo;

    .line 1744
    iget p3, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eqz p3, :cond_6

    iget p3, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq p3, v2, :cond_6

    iget p1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 p3, 0x6

    if-ne p1, p3, :cond_5

    goto :goto_1

    .line 1749
    :cond_5
    move p1, v0

    goto :goto_2

    .line 1744
    :cond_6
    :goto_1
    nop

    .line 1749
    move p1, v2

    :goto_2
    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0

    .line 1740
    :cond_8
    :goto_3
    return v0
.end method

.method final willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 1

    .line 1721
    iget v0, p0, Lcom/android/launcher3/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 1722
    :cond_0
    aget p4, p3, v0

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p4, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p2

    .line 1723
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/ItemInfo;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public final workspaceIconsCanBeDragged()Z
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->workspaceIconsCanBeDragged:Z

    return v0
.end method
