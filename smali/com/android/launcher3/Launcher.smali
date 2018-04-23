.class public Lcom/android/launcher3/Launcher;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/LauncherExterns;
.implements Lcom/android/launcher3/LauncherModel$Callbacks;
.implements Lcom/android/launcher3/LauncherProviderChangeListener;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;


# static fields
.field public static final AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;


# instance fields
.field public mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field private mAppLaunchSuccess:Z

.field mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

.field public mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field public mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

.field private mCurrentActionMode:Landroid/view/ActionMode;

.field public mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field public mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field public mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

.field public mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field public mHotseat:Lcom/android/launcher3/Hotseat;

.field private mIconCache:Lcom/android/launcher3/IconCache;

.field private mIsSafeModeEnabled:Z

.field private final mLastDispatchTouchEvent:Landroid/graphics/PointF;

.field public mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

.field private mLauncherView:Landroid/view/View;

.field public mModel:Lcom/android/launcher3/LauncherModel;

.field public mModelWriter:Lcom/android/launcher3/model/ModelWriter;

.field public mOldConfig:Landroid/content/res/Configuration;

.field private mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

.field public mOverviewPanel:Landroid/view/ViewGroup;

.field private mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

.field public mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

.field public mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

.field public mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public mRotationEnabled:Z

.field private mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

.field private mScrimAnimator:Landroid/animation/ObjectAnimator;

.field public mSharedPrefs:Landroid/content/SharedPreferences;

.field private mShouldFadeInScrim:Z

.field public mStateManager:Lcom/android/launcher3/LauncherStateManager;

.field private mSynchronouslyBoundPage:I

.field private final mTmpAddItemCellCoordinates:[I

.field public mWorkspace:Lcom/android/launcher3/Workspace;

.field mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/Launcher;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 257
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPage:I

    .line 271
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEvent:Landroid/graphics/PointF;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 1148
    new-instance v0, Lcom/android/launcher3/Launcher$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$7;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherStateManager;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/Launcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/util/PendingRequestArgs;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/launcher3/Launcher;Z)Z
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Launcher;->startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private bindAddScreens(Ljava/util/ArrayList;)V
    .locals 8

    .line 2227
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2228
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2229
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2230
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    .line 2232
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v5, v4, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v6, -0xc9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    iget-object v5, v4, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_0
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(JI)Lcom/android/launcher3/CellLayout;

    .line 2228
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2235
    :cond_2
    return-void
.end method

.method private completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 521
    move-object/from16 v3, p4

    iget-wide v4, v3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 522
    iget-wide v6, v3, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 525
    iget-wide v4, v3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v4

    .line 528
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    const/4 v8, 0x5

    if-eq v1, v8, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 536
    :pswitch_0
    invoke-direct {v0, v2, v7}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 537
    goto/16 :goto_5

    .line 539
    :pswitch_1
    const/4 v1, 0x4

    .line 541
    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/Launcher;->completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;

    move-result-object v1

    .line 542
    if-eqz v1, :cond_e

    .line 544
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 545
    invoke-virtual {v3, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 546
    if-eqz v2, :cond_e

    .line 547
    new-instance v3, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v3, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    const/16 v2, 0xd

    .line 548
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    goto/16 :goto_5

    .line 533
    :cond_1
    invoke-virtual {v0, v2, v3, v6, v6}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 534
    goto/16 :goto_5

    .line 530
    :cond_2
    iget-wide v1, v3, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget v9, v3, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v10, v3, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result v11

    if-ne v11, v8, :cond_e

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-nez v11, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v15, v0, Lcom/android/launcher3/Launcher;->mTmpAddItemCellCoordinates:[I

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v14

    sget-boolean v11, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v11

    invoke-static {v0, v11, v12, v13}, Lcom/android/launcher3/compat/LauncherAppsCompatVO;->createShortcutInfoFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v11

    goto :goto_0

    :cond_4
    move-object v11, v6

    :goto_0
    if-nez v11, :cond_8

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v6, v3, Lcom/android/launcher3/util/PendingRequestArgs;->user:Landroid/os/UserHandle;

    invoke-virtual {v11, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v6, p2

    invoke-static {v0, v6}, Lcom/android/launcher3/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/ShortcutInfo;

    move-result-object v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_6

    const-string v0, "Launcher"

    const-string v1, "Unable to parse a valid custom shortcut result"

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_6
    new-instance v11, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v11, v0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v8, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Lcom/android/launcher3/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring malicious intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v8, v6

    goto :goto_3

    :cond_8
    move-object v8, v11

    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v6, v1, v11

    if-gez v6, :cond_b

    invoke-virtual {v0, v8}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    if-ltz v9, :cond_9

    if-ltz v10, :cond_9

    aput v9, v15, v7

    const/4 v6, 0x1

    aput v10, v15, v6

    iget-object v9, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v6, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v3

    move-wide v11, v1

    move-object v13, v14

    move-object/from16 v18, v14

    move-object v14, v15

    move-object/from16 v19, v15

    move v15, v6

    invoke-virtual/range {v9 .. v17}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/dragndrop/DragView;)Z

    move-result v6

    if-nez v6, :cond_d

    new-instance v6, Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {v6}, Lcom/android/launcher3/DropTarget$DragObject;-><init>()V

    iput-object v8, v6, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v12, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v16, v6

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary$448e2720(Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v9, v18

    move-object/from16 v6, v19

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10, v10}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v11

    :goto_4
    if-nez v11, :cond_a

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;)V

    goto :goto_5

    :cond_a
    iget-object v9, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    aget v12, v6, v7

    aget v13, v6, v10

    move-object v6, v9

    move-object v7, v8

    move-object v14, v8

    move-wide v8, v1

    move-wide v10, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v3, v14}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    goto :goto_5

    :cond_b
    move-object v14, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->findFolderIcon(J)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    iget v1, v3, Lcom/android/launcher3/util/PendingRequestArgs;->rank:I

    invoke-virtual {v0, v14, v1, v7}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;IZ)V

    goto :goto_5

    :cond_c
    const-string v0, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Could not find folder with id "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to add shortcut."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_d
    nop

    .line 550
    :cond_e
    :goto_5
    return-wide v4

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private completeRestoreAppWidget(II)Lcom/android/launcher3/LauncherAppWidgetInfo;
    .locals 2

    .line 2494
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$12;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$12;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 2495
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2500
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 2501
    iput p2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2502
    iget p2, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez p2, :cond_1

    .line 2503
    iput-object v0, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/android/launcher3/model/PackageItemInfo;

    .line 2506
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget v0, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mStartState:I

    iget-object p2, p2, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget p2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 2507
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    .line 2510
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2511
    return-object v1

    .line 2496
    :cond_4
    :goto_1
    const-string p1, "Launcher"

    const-string p2, "Widget update called, when the widget no longer exists."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    return-object v0
.end method

.method private deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 5

    .line 1608
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 1609
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->isCustomWidget()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    nop

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1612
    new-instance v1, Lcom/android/launcher3/Launcher$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/launcher3/Launcher$9;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    sget-object v0, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    .line 1617
    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/Launcher$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1619
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 1620
    return-void
.end method

.method private ensurePendingDropLayoutExists(J)J
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 733
    if-nez v0, :cond_0

    .line 736
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreen()Z

    .line 737
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen()J

    move-result-wide p1

    return-wide p1

    .line 739
    :cond_0
    return-wide p1
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;
    .locals 1

    .line 2835
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 2836
    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0

    .line 2838
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method private handleActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 560
    move-object/from16 v1, p3

    iget-boolean v3, v6, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-eqz v3, :cond_0

    .line 562
    new-instance v3, Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-direct {v3, v0, v2, v1}, Lcom/android/launcher3/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v3, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 563
    return-void

    .line 565
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v6, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 568
    iget-object v4, v6, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 569
    iput-object v3, v6, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 570
    if-nez v4, :cond_1

    .line 571
    return-void

    .line 574
    :cond_1
    iget v3, v4, Lcom/android/launcher3/util/PendingRequestArgs;->mObjectType:I

    const/4 v5, 0x2

    const/4 v7, 0x0

    if-ne v3, v5, :cond_2

    iget v3, v4, Lcom/android/launcher3/util/PendingRequestArgs;->mArg1:I

    goto :goto_0

    .line 576
    :cond_2
    move v3, v7

    :goto_0
    new-instance v5, Lcom/android/launcher3/Launcher$1;

    invoke-direct {v5, v6}, Lcom/android/launcher3/Launcher$1;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 583
    const/16 v8, 0xb

    const/16 v9, 0x1f4

    const/4 v10, 0x1

    const/4 v11, -0x1

    if-ne v0, v8, :cond_6

    .line 585
    if-eqz v1, :cond_3

    .line 586
    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 587
    move v1, v0

    goto :goto_1

    .line 586
    :cond_3
    nop

    .line 587
    move v1, v11

    :goto_1
    if-nez v2, :cond_4

    .line 588
    invoke-virtual {v6, v7, v1, v4}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 589
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v5, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    return-void

    .line 591
    :cond_4
    if-ne v2, v11, :cond_5

    .line 592
    const/4 v3, 0x0

    .line 594
    invoke-virtual {v4}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v5

    const/16 v7, 0x1f4

    .line 592
    move-object v0, v6

    move-object v2, v4

    move-object v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 597
    :cond_5
    return-void

    .line 598
    :cond_6
    const/16 v8, 0xa

    if-ne v0, v8, :cond_8

    .line 599
    if-ne v2, v11, :cond_7

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v6, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 602
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 603
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 605
    :cond_7
    return-void

    .line 608
    :cond_8
    const/16 v8, 0x9

    if-eq v0, v8, :cond_a

    const/4 v8, 0x5

    if-ne v0, v8, :cond_9

    goto :goto_2

    .line 612
    :cond_9
    move v8, v7

    goto :goto_3

    .line 608
    :cond_a
    :goto_2
    nop

    .line 612
    move v8, v10

    :goto_3
    if-eqz v8, :cond_10

    .line 614
    if-eqz v1, :cond_b

    const-string v0, "appWidgetId"

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    goto :goto_4

    .line 615
    :cond_b
    nop

    .line 616
    :goto_4
    if-gez v11, :cond_c

    .line 617
    goto :goto_5

    .line 619
    :cond_c
    nop

    .line 623
    move v3, v11

    :goto_5
    if-ltz v3, :cond_f

    if-nez v2, :cond_d

    goto :goto_6

    .line 638
    :cond_d
    iget-wide v0, v4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v11, -0x64

    cmp-long v0, v0, v11

    if-nez v0, :cond_e

    .line 641
    iget-wide v0, v4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 642
    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/Launcher;->ensurePendingDropLayoutExists(J)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 644
    :cond_e
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v11, v4, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    .line 645
    invoke-virtual {v0, v11, v12}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 647
    iput-boolean v10, v5, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 648
    new-instance v8, Lcom/android/launcher3/Launcher$3;

    move-object v0, v8

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Launcher$3;-><init>(Lcom/android/launcher3/Launcher;IILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    .line 655
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v8, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 658
    return-void

    .line 624
    :cond_f
    :goto_6
    const-string v0, "Launcher"

    const-string v1, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v6, v7, v3, v4}, Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    .line 628
    new-instance v0, Lcom/android/launcher3/Launcher$2;

    invoke-direct {v0, v6}, Lcom/android/launcher3/Launcher$2;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 635
    iget-object v1, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v10, v0, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 637
    return-void

    .line 661
    :cond_10
    const/16 v8, 0xd

    if-eq v0, v8, :cond_14

    const/16 v8, 0xc

    if-ne v0, v8, :cond_11

    goto :goto_8

    .line 671
    :cond_11
    if-ne v0, v10, :cond_13

    .line 673
    if-ne v2, v11, :cond_12

    iget-wide v12, v4, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    const-wide/16 v14, -0x1

    cmp-long v3, v12, v14

    if-eqz v3, :cond_12

    .line 674
    invoke-direct {v6, v0, v1, v11, v4}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 675
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v5, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_7

    .line 678
    :cond_12
    if-nez v2, :cond_13

    .line 679
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v10, v5, v9, v7}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 683
    :cond_13
    :goto_7
    iget-object v0, v6, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->clearAnimatedView()V

    .line 684
    return-void

    .line 663
    :cond_14
    :goto_8
    if-ne v2, v11, :cond_15

    .line 665
    invoke-direct {v6, v0, v1, v3, v4}, Lcom/android/launcher3/Launcher;->completeAdd(ILandroid/content/Intent;ILcom/android/launcher3/util/PendingRequestArgs;)J

    .line 668
    :cond_15
    return-void
.end method

.method private initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 9

    .line 431
    invoke-virtual {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowModeCompat()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 434
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 435
    invoke-virtual {p1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 436
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v1, v4, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v2, v4, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Point;->set(II)V

    new-instance v8, Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    iget-boolean v7, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    move-object v0, v8

    move-object v1, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Landroid/graphics/Point;Landroid/graphics/Point;IIZ)V

    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, v8, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v0, v1

    iget v1, v8, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v8, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->adjustToHideWorkspaceLabels()V

    :cond_0
    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget-object p1, v8, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    iput-object v8, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 438
    :cond_1
    return-void
.end method

.method public static synthetic lambda$bindAllApplications$0(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    .line 2589
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->bindAllApplications(Ljava/util/ArrayList;)V

    return-void
.end method

.method private prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V
    .locals 3

    .line 1142
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1143
    iget-boolean v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v2, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {p1, p0, v0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    iput-boolean v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 1144
    :cond_0
    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    .line 1145
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1146
    return-void
.end method

.method private startAppShortcutOrInfoActivity(Landroid/view/View;)V
    .locals 2

    .line 1839
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1841
    instance-of v1, v0, Lcom/android/launcher3/PromiseAppInfo;

    if-eqz v1, :cond_0

    .line 1842
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/PromiseAppInfo;

    .line 1843
    invoke-virtual {v1, p0}, Lcom/android/launcher3/PromiseAppInfo;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1844
    goto :goto_0

    .line 1845
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1847
    :goto_0
    if-nez v1, :cond_1

    .line 1848
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must have a valid intent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1850
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 1851
    return-void
.end method

.method private startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 1777
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 1778
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 1779
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 1780
    return-void
.end method


# virtual methods
.method final addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V
    .locals 6

    .line 1451
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Launcher;->addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V

    .line 1452
    return-void
.end method

.method final addAppWidgetImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;I)V
    .locals 1

    .line 1456
    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    new-instance v0, Lcom/android/launcher3/Launcher$8;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Launcher$8;-><init>(Lcom/android/launcher3/Launcher;)V

    .line 1466
    invoke-virtual {p4, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 1467
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p5, p3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    .line 1469
    :cond_0
    return-void
.end method

.method final addFolder(Lcom/android/launcher3/CellLayout;JJII)Lcom/android/launcher3/folder/FolderIcon;
    .locals 10

    move-object v0, p0

    .line 1549
    new-instance v9, Lcom/android/launcher3/FolderInfo;

    invoke-direct {v9}, Lcom/android/launcher3/FolderInfo;-><init>()V

    .line 1550
    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1553
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    move-object v2, v9

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1556
    const v1, 0x7f040017

    move-object v2, p1

    invoke-static {v1, v0, v2, v9}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1557
    iget-object v2, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1, v9}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1559
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 1560
    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 1561
    return-object v1
.end method

.method public final addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;JJ[III)V
    .locals 0

    .line 1473
    iput-wide p2, p1, Lcom/android/launcher3/PendingAddItemInfo;->container:J

    .line 1474
    iput-wide p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->screenId:J

    .line 1475
    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p6, :cond_0

    .line 1476
    aget p4, p6, p2

    iput p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellX:I

    .line 1477
    aget p4, p6, p3

    iput p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->cellY:I

    .line 1479
    :cond_0
    iput p7, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanX:I

    .line 1480
    iput p8, p1, Lcom/android/launcher3/PendingAddItemInfo;->spanY:I

    .line 1482
    iget p4, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 p5, 0x0

    if-eq p4, p3, :cond_3

    packed-switch p4, :pswitch_data_0

    .line 1491
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unknown item type: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1485
    :pswitch_0
    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object p2, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object p3

    if-eqz p2, :cond_1

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p4, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result p4

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    iput-object p5, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p2

    iget-object p4, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    iget-object p6, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object p7, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-virtual {p6, p2, p7, p4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p0, p2, p1, p5, p3}, Lcom/android/launcher3/Launcher;->addAppWidgetFromDropImpl(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/WidgetAddFlowHandler;)V

    return-void

    :cond_2
    const/16 p4, 0xb

    invoke-virtual {p3, p0, p2, p1, p4}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    .line 1486
    return-void

    .line 1488
    :cond_3
    check-cast p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    new-instance p4, Landroid/content/Intent;

    const-string p6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {p4, p6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p6, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p4, p6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object p1, p1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    invoke-virtual {p1, p0, p3}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p3, p2, p5}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 1489
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final bindAllApplications(Ljava/util/ArrayList;)V
    .locals 7

    .line 2585
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_5

    .line 2586
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    iget-boolean v4, v0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mIsExecuting:Z

    if-nez v4, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mCompleted:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    goto :goto_1

    .line 2587
    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2589
    new-instance v1, Lcom/android/launcher3/-$$Lambda$Launcher$fBJ_D9T0EhAtpT_QqEHbfldEVmg;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/-$$Lambda$Launcher$fBJ_D9T0EhAtpT_QqEHbfldEVmg;-><init>(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2590
    return-void

    .line 2593
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/AppInfo;

    iget-object v6, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mWorkMatcher:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-virtual {v6, v5, v1}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/AllAppsContainerView;->rebindAdapters(ZZ)V

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v1, v0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    .line 2595
    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p1, :cond_6

    .line 2596
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->bindAllApplications$6ba92955()V

    .line 2598
    :cond_6
    return-void
.end method

.method public final bindAllWidgets(Ljava/util/ArrayList;)V
    .locals 1

    .line 2687
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iput-object p1, v0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/ArrayList;

    .line 2688
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p1

    .line 2689
    if-eqz p1, :cond_0

    .line 2690
    invoke-virtual {p1}, Lcom/android/launcher3/AbstractFloatingView;->onWidgetsBound()V

    .line 2692
    :cond_0
    return-void
.end method

.method public final bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .locals 3

    .line 2680
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_1

    .line 2681
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/AppInfo;

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/launcher3/AppInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    .line 2683
    :cond_1
    return-void
.end method

.method public final bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 2241
    if-eqz p1, :cond_0

    .line 2242
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 2247
    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2248
    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 2250
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2251
    const/4 p2, 0x1

    invoke-virtual {p0, p3, p2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    .line 2255
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2, p1, p1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(ZZ)V

    .line 2256
    return-void
.end method

.method public final bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .locals 1

    .line 2624
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    .line 2627
    :cond_0
    return-void
.end method

.method public final bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 1

    .line 2614
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iput-object p1, v0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    .line 2615
    return-void
.end method

.method public final bindItems(Ljava/util/List;Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 2266
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 2267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2268
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v8, v7, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    iget-wide v7, v7, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    :goto_0
    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    .line 2269
    :cond_2
    move v4, v3

    :goto_2
    iget-object v5, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 2270
    nop

    .line 2271
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 2272
    const-wide/16 v9, -0x1

    :goto_3
    if-ge v3, v6, :cond_7

    .line 2273
    move-object/from16 v11, p1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/ItemInfo;

    .line 2276
    iget-wide v13, v12, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v15, -0x65

    cmp-long v13, v13, v15

    if-nez v13, :cond_3

    iget-object v13, v0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v13, :cond_6

    .line 2278
    :cond_3
    iget v13, v12, Lcom/android/launcher3/ItemInfo;->itemType:I

    packed-switch v13, :pswitch_data_0

    .line 2305
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Item Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2298
    :pswitch_1
    move-object v13, v12

    check-cast v13, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->inflateAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v13

    .line 2299
    if-nez v13, :cond_4

    .line 2300
    goto/16 :goto_5

    .line 2291
    :pswitch_2
    const v13, 0x7f040017

    .line 2292
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v14

    invoke-virtual {v5, v14}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object v15, v12

    check-cast v15, Lcom/android/launcher3/FolderInfo;

    .line 2291
    invoke-static {v13, v0, v14, v15}, Lcom/android/launcher3/folder/FolderIcon;->fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v13

    .line 2294
    goto :goto_4

    .line 2286
    :pswitch_3
    move-object v13, v12

    check-cast v13, Lcom/android/launcher3/ShortcutInfo;

    .line 2287
    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object v13

    .line 2288
    nop

    .line 2311
    :cond_4
    :goto_4
    iget-wide v14, v12, Lcom/android/launcher3/ItemInfo;->container:J

    const-wide/16 v16, -0x64

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 2312
    iget-object v14, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v7, v12, Lcom/android/launcher3/ItemInfo;->screenId:J

    invoke-virtual {v14, v7, v8}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 2313
    if-eqz v7, :cond_5

    iget v8, v12, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v14, v12, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v7, v8, v14}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2314
    iget v8, v12, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v13, v12, Lcom/android/launcher3/ItemInfo;->cellY:I

    invoke-virtual {v7, v8, v13}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 2315
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 2316
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "Collision while binding workspace item: "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ". Collides with "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2321
    const-string v8, "Launcher"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iget-object v7, v0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v7, v12}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2323
    goto :goto_5

    .line 2327
    :cond_5
    invoke-virtual {v5, v13, v12}, Lcom/android/launcher3/Workspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 2328
    if-eqz v4, :cond_6

    .line 2330
    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2331
    invoke-virtual {v13, v7}, Landroid/view/View;->setScaleX(F)V

    .line 2332
    invoke-virtual {v13, v7}, Landroid/view/View;->setScaleY(F)V

    .line 2333
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v13, v7, v7, v7}, Lcom/android/launcher3/LauncherAnimUtils;->ofViewAlphaAndScale(Landroid/view/View;FFF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1c2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    mul-int/lit8 v8, v3, 0x55

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v8, Landroid/view/animation/OvershootInterpolator;

    const v9, 0x3fa66666    # 1.3f

    invoke-direct {v8, v9}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2334
    iget-wide v7, v12, Lcom/android/launcher3/ItemInfo;->screenId:J

    .line 2272
    move-wide v9, v7

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 2338
    :cond_7
    if-eqz v4, :cond_9

    .line 2340
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-lez v3, :cond_9

    .line 2341
    iget-object v3, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v4, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v3

    .line 2342
    iget-object v6, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v6, v9, v10}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(J)I

    move-result v6

    .line 2343
    new-instance v7, Lcom/android/launcher3/Launcher$12;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/Launcher$12;-><init>(Lcom/android/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;)V

    .line 2349
    cmp-long v1, v9, v3

    const-wide/16 v2, 0x1f4

    if-eqz v1, :cond_8

    .line 2352
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v4, Lcom/android/launcher3/Launcher$13;

    invoke-direct {v4, v0, v6, v7}, Lcom/android/launcher3/Launcher$13;-><init>(Lcom/android/launcher3/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 2362
    :cond_8
    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v7, v2, v3}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2366
    :cond_9
    :goto_6
    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 2367
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public final bindPromiseAppProgressUpdated(Lcom/android/launcher3/PromiseAppInfo;)V
    .locals 1

    .line 2631
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updatePromiseAppProgress(Lcom/android/launcher3/PromiseAppInfo;)V

    .line 2634
    :cond_0
    return-void
.end method

.method public final bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 2

    .line 2661
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$19;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$19;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2662
    return-void
.end method

.method public final bindScreens(Ljava/util/ArrayList;)V
    .locals 3

    .line 2209
    nop

    .line 2210
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2211
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2212
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2213
    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherModel;->updateWorkspaceScreenOrder(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->bindAddScreens(Ljava/util/ArrayList;)V

    .line 2223
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p1, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    iget-boolean v0, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 2224
    :cond_1
    return-void
.end method

.method public final bindShortcutsChanged$113655ee(Ljava/util/ArrayList;)V
    .locals 8

    .line 2649
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v6, v6, Lcom/android/launcher3/ShortcutInfo;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/launcher3/Workspace$15;

    invoke-direct {p1, v0, v2}, Lcom/android/launcher3/Workspace$15;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    new-instance p1, Lcom/android/launcher3/Workspace$16;

    invoke-direct {p1, v0, v3}, Lcom/android/launcher3/Workspace$16;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    invoke-virtual {v0, v4, p1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2652
    :cond_1
    return-void
.end method

.method public final bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 6

    .line 2638
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v1, v0, p1, v2}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/LauncherAppWidgetHost;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v3, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v4

    iget v3, v3, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher3/Workspace$20;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$20;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2639
    :cond_2
    return-void
.end method

.method public final bindWorkspaceComponentsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 3

    .line 2673
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Lcom/android/launcher3/util/ItemInfoMatcher;)V

    .line 2674
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 2675
    :cond_0
    return-void
.end method

.method public final clearPendingBinds()V
    .locals 1

    .line 2175
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 2177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2179
    :cond_0
    return-void
.end method

.method final completeAddAppWidget(ILcom/android/launcher3/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .locals 9

    .line 1117
    if-nez p4, :cond_0

    .line 1118
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    invoke-virtual {p4, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p4

    .line 1122
    :cond_0
    new-instance v8, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget-object v0, p4, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v8, p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    .line 1123
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanX:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 1124
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->spanY:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 1125
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanX:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 1126
    iget v0, p2, Lcom/android/launcher3/ItemInfo;->minSpanY:I

    iput v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 1127
    invoke-virtual {p4}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    .line 1129
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v4, p2, Lcom/android/launcher3/ItemInfo;->screenId:J

    iget v6, p2, Lcom/android/launcher3/ItemInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/ItemInfo;->cellY:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/ItemInfo;JJII)V

    .line 1132
    if-nez p3, :cond_1

    .line 1134
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p2, p0, p1, p4}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    .line 1136
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 1137
    invoke-direct {p0, p3, v8}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1138
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, p3, v8}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 1139
    return-void
.end method

.method final completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 11

    .line 745
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v1, p3, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 746
    nop

    .line 747
    nop

    .line 749
    nop

    .line 750
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 751
    const/4 p1, 0x3

    .line 752
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 753
    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getWidgetHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 752
    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 754
    nop

    .line 755
    new-instance v1, Lcom/android/launcher3/Launcher$4;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/launcher3/Launcher$4;-><init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    .line 762
    nop

    .line 766
    move v8, p1

    move-object v9, v0

    move-object v7, v1

    goto :goto_1

    .line 762
    :cond_0
    if-nez p1, :cond_1

    .line 763
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 764
    const/4 p1, 0x4

    goto :goto_0

    .line 766
    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v8, p1

    move-object v7, v0

    move-object v9, v7

    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p1, :cond_2

    .line 767
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 768
    iget-object p1, p1, Lcom/android/launcher3/dragndrop/DragLayer;->mDropView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v6, p1

    check-cast v6, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v10, 0x1

    .line 767
    move-object v4, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    return-void

    .line 770
    :cond_2
    if-eqz v7, :cond_3

    .line 772
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 774
    :cond_3
    return-void
.end method

.method public final createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 3

    .line 1011
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1012
    const/4 v1, 0x0

    const v2, 0x7f04000d

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    .line 1013
    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 1014
    invoke-virtual {p1, p0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1015
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1016
    return-object p1
.end method

.method final createShortcut(Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/ShortcutInfo;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1624
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 2139
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2140
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 2141
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2144
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-nez v1, :cond_0

    .line 2145
    const v1, 0x7f0c0037

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2146
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getDescription(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    .line 2144
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2147
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2026
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEvent:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2027
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 2711
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2713
    array-length v0, p4

    if-lez v0, :cond_5

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const-string v2, "--all"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Workspace Items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2715
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Homescreen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2718
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2719
    move v3, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2720
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2721
    if-eqz v4, :cond_0

    .line 2722
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2715
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2727
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Hotseat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2728
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v1, v1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 2729
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2730
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 2731
    if-eqz v2, :cond_3

    .line 2732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2729
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2737
    :cond_4
    :try_start_0
    invoke-static {p3}, Lcom/android/launcher3/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2740
    goto :goto_3

    .line 2738
    :catch_0
    move-exception v0

    .line 2743
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPendingRequestArgs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2746
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mPendingActivityResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2750
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p2, :cond_6

    .line 2751
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p2, p1, p3}, Lcom/android/launcher3/LauncherCallbacks;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2753
    :cond_6
    return-void
.end method

.method public final executeOnNextDraw(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 1

    .line 2520
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->markCompleted()V

    .line 2523
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingExecutor:Lcom/android/launcher3/util/ViewOnDrawExecutor;

    .line 2524
    iput-object p0, p1, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object v0, p1, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    iget-object v0, p1, Lcom/android/launcher3/util/ViewOnDrawExecutor;->mAttachedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->attachObserver()V

    .line 2525
    return-void
.end method

.method public final findFolderIcon(J)Lcom/android/launcher3/folder/FolderIcon;
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Launcher$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher3/Launcher$6;-><init>(Lcom/android/launcher3/Launcher;J)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/Workspace$ItemOperator;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    return-object p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final finishAutoCancelActionMode()Z
    .locals 2

    .line 2866
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCurrentActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/Launcher;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2867
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mCurrentActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2868
    const/4 v0, 0x1

    return v0

    .line 2870
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final finishBindingItems()V
    .locals 6

    .line 2549
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 2552
    iput-boolean v2, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 2554
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_2

    .line 2555
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v0, v0, Lcom/android/launcher3/util/ActivityResultInfo;->requestCode:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget v2, v2, Lcom/android/launcher3/util/ActivityResultInfo;->resultCode:I

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    iget-object v3, v3, Lcom/android/launcher3/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 2557
    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    .line 2560
    :cond_2
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 2563
    return-void
.end method

.method public final finishFirstPageBind(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V
    .locals 2

    .line 2535
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2536
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2537
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;

    invoke-direct {v1, p1}, Lcom/android/launcher3/-$$Lambda$J2oCKe92_KGnEbjsZWSV7KWwOAs;-><init>(Lcom/android/launcher3/util/ViewOnDrawExecutor;)V

    .line 2536
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2537
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 2538
    :cond_1
    if-eqz p1, :cond_2

    .line 2539
    invoke-virtual {p1}, Lcom/android/launcher3/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    .line 2541
    :cond_2
    return-void
.end method

.method public final bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    return-object v0
.end method

.method public final getActivityLaunchOptions(Landroid/view/View;Z)Landroid/os/Bundle;
    .locals 0

    .line 1955
    if-eqz p2, :cond_0

    .line 1956
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/LauncherAppTransitionManager;->getDefaultActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 1957
    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/LauncherAppTransitionManager;->getDefaultActivityLaunchOptions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p1

    .line 1955
    return-object p1
.end method

.method public final getCellLayout(JJ)Lcom/android/launcher3/CellLayout;
    .locals 2

    .line 2110
    const-wide/16 v0, -0x65

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 2111
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz p1, :cond_0

    .line 2112
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object p1, p1, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    return-object p1

    .line 2114
    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2117
    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, p3, p4}, Lcom/android/launcher3/Workspace;->getScreenWithId(J)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public final getCurrentWorkspaceScreen()I
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_0

    .line 2163
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    return v0

    .line 2165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .line 1961
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1962
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1963
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public final inflateAppWidget(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 8

    .line 2381
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2382
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 2384
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2385
    return-object v0

    .line 2388
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2394
    nop

    .line 2403
    move-object v2, v3

    goto :goto_0

    .line 2395
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2397
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    goto :goto_0

    .line 2399
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 2403
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_a

    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v0, :cond_a

    .line 2405
    if-nez v2, :cond_3

    .line 2406
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing restored widget: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", as the provider is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2410
    return-object v3

    .line 2414
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_9

    .line 2415
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2417
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    iput v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 2418
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v0, v5

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2422
    new-instance v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v0, v2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    .line 2423
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 2424
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 2425
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 2426
    iget v5, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    iput v5, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 2427
    invoke-static {p0, v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 2429
    const/16 v5, 0x20

    .line 2430
    invoke-virtual {p1, v5}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v5

    .line 2431
    if-eqz v5, :cond_5

    iget-object v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v6, :cond_5

    .line 2432
    iget-object v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 2433
    if-eqz v0, :cond_4

    .line 2434
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2436
    :cond_4
    nop

    .line 2438
    move-object v0, v6

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget v7, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v6, v7, v2, v0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    .line 2444
    iput-object v3, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    .line 2445
    iget v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v6, v6, -0x21

    iput v6, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2448
    if-eqz v0, :cond_8

    .line 2451
    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    if-eqz v5, :cond_6

    goto :goto_1

    .line 2453
    :cond_6
    goto :goto_2

    .line 2452
    :cond_7
    :goto_1
    nop

    .line 2453
    move v1, v4

    :goto_2
    iput v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2456
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2457
    goto :goto_3

    .line 2458
    :cond_9
    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v0, :cond_a

    .line 2462
    iput v4, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 2463
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 2468
    :cond_a
    :goto_3
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v0, :cond_c

    .line 2470
    if-nez v2, :cond_b

    .line 2471
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing invalid widget: id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2473
    return-object v3

    .line 2476
    :cond_b
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 2477
    iget v0, v2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 2478
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget v1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_4

    .line 2480
    :cond_c
    new-instance v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-direct {v0, p0, p1, v1, v4}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 2482
    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/Launcher;->prepareAppWidget(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 2484
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2485
    return-object v0
.end method

.method public final isDraggingEnabled()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isHotseatLayout(Landroid/view/View;)Z
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    .line 2103
    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 2102
    return p1
.end method

.method public final isInState(Lcom/android/launcher3/LauncherState;)Z
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isWorkspaceLocked()Z
    .locals 1

    .line 1431
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 2861
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 2862
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 2863
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 2855
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 2856
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mCurrentActionMode:Landroid/view/ActionMode;

    .line 2857
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->handleActivityResult(IILandroid/content/Intent;)V

    .line 690
    return-void
.end method

.method public final onAppWidgetHostReset()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 471
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1179
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onAttachedToWindow()V

    .line 1181
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    .line 1182
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onAttachedToWindow()V

    .line 1185
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1629
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    return-void

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->handleBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1633
    return-void

    .line 1636
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1637
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 1638
    return-void

    .line 1643
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 1644
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    .line 1645
    if-eqz v1, :cond_3

    .line 1646
    invoke-virtual {v1}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()V

    return-void

    .line 1647
    :cond_3
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1648
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 1649
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v3, v3, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->containerType:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 1650
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1651
    return-void

    .line 1653
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->showOutlinesTemporarily()V

    .line 1655
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1665
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1666
    return-void

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1670
    return-void

    .line 1673
    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/Workspace;

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1674
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1675
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 1677
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 1675
    invoke-virtual {p1, v2, v2, v1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1678
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1680
    :cond_2
    return-void

    .line 1683
    :cond_3
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_5

    .line 1684
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1685
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 1686
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 1689
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->snapToPageFromOverView(I)V

    .line 1690
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1692
    :cond_4
    return-void

    .line 1695
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1696
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eqz v1, :cond_e

    .line 1697
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-nez v1, :cond_6

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must be a Shortcut"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 v1, v1, 0x3f

    and-int/lit8 v1, v1, -0x5

    and-int/lit8 v1, v1, -0x9

    if-eqz v1, :cond_b

    iget-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, v0, Lcom/android/launcher3/ShortcutInfo;->disabledMessage:Ljava/lang/CharSequence;

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    const p1, 0x7f0c0023

    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    const p1, 0x7f0c0024

    goto :goto_0

    :cond_8
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/2addr v1, v3

    if-nez v1, :cond_9

    iget v0, v0, Lcom/android/launcher3/ShortcutInfo;->runtimeStatusFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a

    :cond_9
    const p1, 0x7f0c0026

    :cond_a
    :goto_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_b
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->hasPromiseIconUi()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v2

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    return-void

    .line 1698
    :cond_e
    instance-of v1, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v1, :cond_11

    .line 1699
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_18

    .line 1700
    if-nez v0, :cond_f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input must be a FolderIcon"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderIcon;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v0, p1, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_10

    iget-boolean v0, p1, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    :cond_10
    return-void

    .line 1702
    :cond_11
    instance-of v1, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_12

    .line 1703
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher;->startAppShortcutOrInfoActivity(Landroid/view/View;)V

    return-void

    .line 1704
    :cond_12
    instance-of v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_18

    .line 1705
    instance-of v0, p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_18

    .line 1706
    check-cast p1, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v0, :cond_13

    const p1, 0x7f0c0025

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance v1, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    invoke-direct {v1, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result p1

    if-eqz p1, :cond_18

    iget p1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v2, 0xc

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V

    return-void

    :cond_14
    const/16 p1, 0xd

    invoke-virtual {v1, p0, v0, p1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z

    return-void

    :cond_15
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    if-ltz v0, :cond_16

    move v2, v4

    nop

    :cond_16
    :goto_2
    if-eqz v2, :cond_17

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/Launcher;->startMarketIntentForPackage(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c006b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c006c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c006a

    new-instance v3, Lcom/android/launcher3/Launcher$11;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/launcher3/Launcher$11;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c0069

    new-instance v2, Lcom/android/launcher3/Launcher$10;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/Launcher$10;-><init>(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1709
    :cond_18
    return-void
.end method

.method public final onClickWallpaperPicker(Landroid/view/View;)V
    .locals 5

    .line 1876
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1877
    const p1, 0x7f0c0054

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1878
    return-void

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 1882
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumScreensExcludingEmpty()I

    move-result v3

    sget-object v4, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(II[I)V

    sget-object v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    aget v0, v0, v1

    int-to-float v0, v0

    sget-object v2, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->sTempInt:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1883
    new-instance v2, Lcom/android/launcher3/util/PendingRequestArgs;

    new-instance v4, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v4}, Lcom/android/launcher3/ItemInfo;-><init>()V

    invoke-direct {v2, v4}, Lcom/android/launcher3/util/PendingRequestArgs;-><init>(Lcom/android/launcher3/ItemInfo;)V

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1884
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.launcher3.WALLPAPER_OFFSET"

    .line 1885
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    .line 1887
    const v2, 0x7f0c001d

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1888
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1889
    xor-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 1890
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1894
    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1895
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1897
    if-eqz v3, :cond_2

    .line 1898
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowModeCompat()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    .line 1899
    :cond_2
    goto :goto_0

    .line 1901
    :cond_3
    nop

    .line 1904
    :goto_0
    move-object p1, v2

    :goto_1
    const/16 v3, 0xa

    :try_start_0
    invoke-virtual {p0, v0, v3, p1}, Lcom/android/launcher3/Launcher;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    return-void

    .line 1905
    :catch_0
    move-exception p1

    .line 1906
    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 1907
    const p1, 0x7f0c0022

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1909
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 409
    and-int/lit16 v0, v0, 0x480

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mUserEventDispatcher:Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 411
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v0}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/BaseActivity;->mDPChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-interface {v2, v3}, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;->onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/LauncherRootView;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherStateManager;->reapplyState()V

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 426
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 427
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->preOnCreate()V

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    .line 303
    iput-object p0, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mOnThemeChangeListener:Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;

    .line 304
    iget-boolean v1, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mIsDark:Z

    iget-boolean v0, v0, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/Launcher;->overrideTheme(ZZ)V

    .line 306
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 307
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mOldConfig:Landroid/content/res/Configuration;

    .line 311
    iget-object v1, v0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {p0, v1}, Lcom/android/launcher3/Launcher;->initDeviceProfile(Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 313
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    .line 315
    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 316
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherModel;->getWriter(Z)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 317
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/IconCache;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    .line 318
    new-instance v0, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 320
    new-instance v0, Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 321
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    .line 322
    new-instance v0, Lcom/android/launcher3/LauncherStateManager;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherStateManager;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    .line 324
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 326
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->startListening()V

    .line 329
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    .line 331
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragLayer;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v1, 0x7f0e0024

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->initParentViews(Landroid/view/View;)V

    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mOverviewPanel:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragController;)V

    const v0, 0x7f0e0025

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Hotseat;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v4, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v5}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v4, v0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->mLockedToDefaultPage:Z

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const v2, 0x7f0e004a

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DropTargetBar;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mMoveTarget:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDropTargetBar:Lcom/android/launcher3/DropTargetBar;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/DropTargetBar;->setup(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAllAppsController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iput-object v2, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iput-object v4, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    iput-object v5, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mHotseat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/Hotseat;->bringToFront()V

    iget-object v2, v0, Lcom/android/launcher3/allapps/AllAppsTransitionController;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v2, v0}, Lcom/android/launcher3/allapps/SearchUiManager;->addOnScrollRangeChangeListener(Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V

    .line 332
    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 337
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-nez v0, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAllowRotationPrefEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 339
    new-instance v0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;B)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 339
    new-instance v0, Lcom/android/launcher3/Launcher$PrefChangeHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Launcher$PrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;B)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 343
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/states/InternalStateHandler;->handleCreate(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z

    move-result v0

    .line 344
    if-eqz v0, :cond_3

    .line 346
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    .line 348
    if-eqz p1, :cond_3

    .line 351
    const-string v2, "launcher.state"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 354
    :cond_3
    if-eqz p1, :cond_6

    const-string v2, "launcher.state"

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iget v4, v4, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/LauncherState;->values()[Lcom/android/launcher3/LauncherState;

    move-result-object v4

    aget-object v2, v4, v2

    iget-boolean v4, v2, Lcom/android/launcher3/LauncherState;->disableRestore:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    invoke-virtual {v4, v2, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    :cond_4
    const-string v2, "launcher.request_args"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v2, :cond_5

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    :cond_5
    const-string v2, "launcher.activity_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ActivityResultInfo;

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    const-string v2, "launcher.widget_panel"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {p0, v1}, Lcom/android/launcher3/widget/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/WidgetsFullSheet;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/widget/WidgetsFullSheet;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 358
    :cond_6
    nop

    .line 359
    const/16 v2, -0x3e9

    if-eqz p1, :cond_7

    .line 360
    const-string v4, "launcher.current_screen"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 363
    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherModel;->startLoader(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 364
    if-nez v0, :cond_9

    .line 367
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    goto :goto_0

    .line 371
    :cond_8
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 373
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 377
    :cond_9
    :goto_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setDefaultKeyMode(I)V

    .line 381
    iget-boolean p1, p0, Lcom/android/launcher3/Launcher;->mRotationEnabled:Z

    if-eqz p1, :cond_a

    .line 382
    const/4 p1, -0x1

    goto :goto_1

    :cond_a
    const/4 p1, 0x5

    .line 381
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setRequestedOrientation(I)V

    .line 384
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setContentView(Landroid/view/View;)V

    .line 385
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/LauncherRootView;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherRootView;->dispatchInsets()V

    .line 388
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p1

    const v0, 0x7f01002c

    .line 395
    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 394
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(IZ)V

    .line 397
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppTransitionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mAppTransitionManager:Lcom/android/launcher3/LauncherAppTransitionManager;

    .line 399
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p1, :cond_b

    .line 400
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->onCreate$79e5e33f()V

    .line 403
    :cond_b
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1349
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDestroy()V

    .line 1351
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1352
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$9;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 1357
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    iget-object v1, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    .line 1358
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->stopLoader()V

    .line 1359
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppState;->setLauncher(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherModel;

    .line 1362
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    if-eqz v1, :cond_2

    .line 1363
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mRotationPrefChangeHandler:Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1362
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    if-eqz v1, :cond_4

    .line 1363
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mPrefChangeHandler:Lcom/android/launcher3/Launcher$PrefChangeHandler;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1367

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    goto :goto_0

    .line 1368
    :catch_0
    move-exception v1

    .line 1369
    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1372
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 1373
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v1

    iput-object v0, v1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mOnThemeChangeListener:Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnThemeChangeListener;

    .line 1375
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->onDestroyActivity()V

    .line 1377
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->clearPendingBinds()V

    .line 1379
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_3

    .line 1380
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDestroy()V

    .line 1382
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1189
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onDetachedFromWindow()V

    .line 1191
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onDetachedFromWindow()V

    .line 1194
    :cond_0
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 2784
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2785
    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 2793
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2794
    instance-of v2, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_5

    .line 2795
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ItemInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mAccessibilityDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 2797
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ItemInfo;

    const v4, 0x7f0e000e

    .line 2796
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2799
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->requestFocus()Z

    .line 2800
    return v1

    .line 2805
    :cond_1
    new-instance v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->getActionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v5, v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v6, v0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-direct {v3, v5, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v0, v4, v6, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    .line 2806
    return v1

    .line 2787
    :cond_4
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2788
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 2789
    return v1

    .line 2811
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2816
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 2819
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean p1, p1, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 2820
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2822
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;)V

    .line 2826
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEvent:Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 2827
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onWorkspaceLongPress$259c38b3(Lcom/android/launcher3/Launcher;)V

    .line 2829
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2831
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onLauncherProviderChanged()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onLauncherProviderChange()V

    .line 495
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 2032
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2033
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2034
    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 2036
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mLastDispatchTouchEvent:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    .line 2037
    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    iget-object v5, v0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-nez v5, :cond_4

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 2039
    :cond_5
    move v0, v4

    goto :goto_2

    .line 2037
    :cond_6
    nop

    .line 2039
    move v0, v1

    :goto_2
    instance-of v2, p1, Lcom/android/launcher3/Workspace;

    if-eqz v2, :cond_9

    .line 2040
    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2041
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result p1

    if-nez p1, :cond_7

    if-nez v0, :cond_7

    .line 2042
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 2044
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 2042
    invoke-virtual {p1, v4, v1, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2045
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onWorkspaceLongPress$259c38b3(Lcom/android/launcher3/Launcher;)V

    .line 2046
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v1, v4}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    .line 2048
    return v4

    .line 2050
    :cond_7
    return v1

    .line 2053
    :cond_8
    return v1

    .line 2057
    :cond_9
    nop

    .line 2058
    nop

    .line 2059
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/ItemInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 2060
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 2061
    new-instance v5, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v5, p1, v2}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/ItemInfo;)V

    .line 2062
    iget-object v2, v5, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2063
    iput-object v3, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 2068
    move-object v3, v5

    goto :goto_3

    :cond_a
    move-object v2, v3

    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2069
    if-nez v2, :cond_d

    .line 2071
    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-boolean v2, v2, Lcom/android/launcher3/Workspace;->mPageRearrangeEnabled:Z

    if-eqz v2, :cond_b

    .line 2072
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->startReordering(Landroid/view/View;)Z

    .line 2073
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v4, v1, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    goto :goto_4

    .line 2076
    :cond_b
    if-eqz v0, :cond_c

    .line 2077
    return v1

    .line 2079
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 2081
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v0

    .line 2079
    invoke-virtual {p1, v4, v1, v4, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 2082
    invoke-static {p0}, Lcom/android/launcher3/uioverrides/UiFactory;->onWorkspaceLongPress$259c38b3(Lcom/android/launcher3/Launcher;)V

    .line 2084
    :goto_4
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1, v1, v4}, Lcom/android/launcher3/Workspace;->performHapticFeedback(II)Z

    goto :goto_5

    .line 2087
    :cond_d
    instance-of p1, v2, Lcom/android/launcher3/folder/Folder;

    if-nez p1, :cond_e

    .line 2093
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/Workspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 2097
    :cond_e
    :goto_5
    return v4
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1248
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1251
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x400000

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_0

    .line 1256
    move v0, v1

    goto :goto_0

    .line 1251
    :cond_0
    nop

    .line 1256
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1257
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1258
    :cond_1
    move v1, v2

    :goto_1
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1259
    nop

    .line 1260
    iget-boolean v4, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    invoke-static {p0, p1, v4}, Lcom/android/launcher3/states/InternalStateHandler;->handleNewIntent(Lcom/android/launcher3/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    .line 1262
    if-eqz v3, :cond_7

    .line 1263
    if-nez p1, :cond_5

    .line 1266
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object p1

    .line 1267
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v3

    .line 1268
    if-eqz v3, :cond_2

    .line 1269
    invoke-virtual {v3, v2}, Lcom/android/launcher3/AbstractFloatingView;->logActionCommand(I)V

    goto :goto_2

    .line 1270
    :cond_2
    if-eqz v0, :cond_3

    .line 1271
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v3, v3, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v3, v3, Lcom/android/launcher3/LauncherState;->containerType:I

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    .line 1272
    iget-object v4, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v4

    iput v4, v3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 1273
    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 1277
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/android/launcher3/BaseActivity;->mStarted:Z

    invoke-static {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 1279
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1282
    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    if-eqz p1, :cond_4

    .line 1283
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->reset()V

    .line 1286
    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isTouchActive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1287
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/-$$Lambda$sYh4eC33epC-mbZ5fujk1nuROqs;

    invoke-direct {v1, v0}, Lcom/android/launcher3/-$$Lambda$sYh4eC33epC-mbZ5fujk1nuROqs;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1291
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    .line 1292
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1293
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 1296
    :cond_6
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p1, :cond_7

    .line 1297
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherCallbacks;->onHomeIntent()V

    .line 1301
    :cond_7
    return-void
.end method

.method public final onPageBoundSynchronously(I)V
    .locals 0

    .line 2515
    iput p1, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPage:I

    .line 2516
    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 852
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/InstallShortcutReceiver;->enableInstallQueue(I)V

    .line 854
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 856
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchUpTime:J

    .line 858
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onPause()V

    .line 861
    :cond_0
    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 6

    .line 2760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2761
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/LauncherState;)Z

    move-result v1

    const/16 v2, 0x1000

    if-eqz v1, :cond_0

    .line 2762
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f0c0036

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2766
    new-instance v3, Lcom/android/launcher3/keyboard/CustomActionsPopup;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/keyboard/CustomActionsPopup;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->getActionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 2767
    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    const v4, 0x7f0c0028

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2770
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ItemInfo;

    if-eqz v3, :cond_2

    .line 2771
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2772
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f0c0088

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2775
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2776
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f0c0027

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2779
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 2780
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 698
    iget-object p2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 699
    const/16 v0, 0xe

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    .line 700
    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->getRequestCode()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 701
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 703
    nop

    .line 704
    iget-wide v0, p2, Lcom/android/launcher3/util/PendingRequestArgs;->container:J

    iget-wide v2, p2, Lcom/android/launcher3/util/PendingRequestArgs;->screenId:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->getCellLayout(JJ)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_0

    .line 706
    iget v1, p2, Lcom/android/launcher3/util/PendingRequestArgs;->cellX:I

    iget v2, p2, Lcom/android/launcher3/util/PendingRequestArgs;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p2}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object p2

    .line 710
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget p3, p3, v2

    if-nez p3, :cond_1

    .line 712
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    return-void

    .line 715
    :cond_1
    const p1, 0x7f0c0042

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const p3, 0x7f0c0013

    .line 716
    invoke-virtual {p0, p3}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 719
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1306
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1307
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget v0, p0, Lcom/android/launcher3/Launcher;->mSynchronouslyBoundPage:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 1308
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 827
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onResume()V

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    .line 832
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedSessionMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 833
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V

    .line 835
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->disableAndFlushInstallQueue(ILandroid/content/Context;)V

    .line 839
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/launcher3/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mShortcutPermissionCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 841
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/allapps/DiscoveryBounce;->showIfNeeded(Lcom/android/launcher3/Launcher;)V

    .line 842
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v0}, Lcom/android/launcher3/LauncherCallbacks;->onResume()V

    .line 846
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1312
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1313
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    :cond_0
    const-string v0, "launcher.state"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v1, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1319
    const/16 v0, 0x10

    .line 1320
    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/Launcher;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    .line 1321
    if-eqz v0, :cond_1

    .line 1322
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1323
    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1324
    const-string v0, "launcher.widget_panel"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1325
    goto :goto_0

    .line 1326
    :cond_1
    const-string v0, "launcher.widget_panel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1331
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/Launcher;Z)V

    .line 1333
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_2

    .line 1334
    const-string v0, "launcher.request_args"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    if-eqz v0, :cond_3

    .line 1337
    const-string v0, "launcher.activity_result"

    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mPendingActivityResult:Lcom/android/launcher3/util/ActivityResultInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1340
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1342
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 796
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStart()V

    .line 797
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 799
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->onStart()V

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->setListenIfResumed(Z)V

    .line 803
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/android/launcher3/notification/NotificationListener;->setNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    .line 805
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 810
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    .line 812
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/launcher3/Launcher$5;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Launcher$5;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 818
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 819
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 820
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mScrimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 822
    :cond_2
    iput-boolean v1, p0, Lcom/android/launcher3/Launcher;->mShouldFadeInScrim:Z

    .line 823
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method protected onStop()V
    .locals 3

    .line 778
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onStop()V

    .line 779
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    .line 781
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    invoke-interface {v1}, Lcom/android/launcher3/LauncherCallbacks;->onStop()V

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppWidgetHost;->setListenIfResumed(Z)V

    .line 786
    iget-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    if-nez v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    .line 788
    iget-object v2, v2, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v2, v2, Lcom/android/launcher3/LauncherState;->containerType:I

    .line 787
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(II)V

    .line 790
    :cond_1
    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->removeNotificationsChangedListener()V

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->disableRestore:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mRestState:Lcom/android/launcher3/LauncherState;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    iput-object v1, v0, Lcom/android/launcher3/LauncherStateManager;->mLastStableState:Lcom/android/launcher3/LauncherState;

    .line 792
    :cond_3
    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 443
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1713
    const/4 p1, 0x0

    return p1
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 2123
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onTrimMemory(I)V

    .line 2124
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 2127
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    .line 2132
    :cond_0
    return-void
.end method

.method public overrideTheme(ZZ)V
    .locals 0

    .line 454
    if-eqz p1, :cond_0

    .line 455
    const p1, 0x7f130004

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    return-void

    .line 456
    :cond_0
    if-eqz p2, :cond_1

    .line 457
    const p1, 0x7f130003

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    .line 459
    :cond_1
    return-void
.end method

.method public final refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    .locals 2

    .line 2699
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/LauncherModel$8;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/LauncherModel$8;-><init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    .line 2700
    return-void
.end method

.method public final removeItem(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Z)Z
    .locals 4

    .line 1572
    instance-of v0, p2, Lcom/android/launcher3/ShortcutInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 1575
    instance-of v2, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_0

    .line 1576
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/FolderInfo;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/FolderInfo;->remove(Lcom/android/launcher3/ShortcutInfo;Z)V

    goto :goto_0

    .line 1578
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 1580
    :goto_0
    if-eqz p3, :cond_1

    .line 1581
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 1583
    :cond_1
    goto :goto_1

    :cond_2
    instance-of v0, p2, Lcom/android/launcher3/FolderInfo;

    if-eqz v0, :cond_5

    .line 1584
    check-cast p2, Lcom/android/launcher3/FolderInfo;

    .line 1585
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3

    .line 1586
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 1588
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 1589
    if-eqz p3, :cond_4

    .line 1590
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    iget-object p3, p1, Lcom/android/launcher3/model/ModelWriter;->mWorkerExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/launcher3/model/ModelWriter$3;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter$3;-><init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/FolderInfo;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1592
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 1593
    check-cast p2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 1594
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    .line 1595
    if-eqz p3, :cond_6

    .line 1596
    invoke-direct {p0, p2}, Lcom/android/launcher3/Launcher;->deleteWidgetInfo(Lcom/android/launcher3/LauncherAppWidgetInfo;)V

    .line 1598
    :cond_6
    nop

    .line 1601
    :goto_1
    return v1

    .line 1599
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final setLauncherCallbacks(Lcom/android/launcher3/LauncherCallbacks;)Z
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 487
    const/4 p1, 0x1

    return p1
.end method

.method public final setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V
    .locals 1

    .line 2151
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

    if-eqz v0, :cond_0

    .line 2152
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

    invoke-interface {v0}, Lcom/android/launcher3/Launcher$OnResumeCallback;->onLauncherResume()V

    .line 2154
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Launcher;->mOnResumeCallback:Lcom/android/launcher3/Launcher$OnResumeCallback;

    .line 2155
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 1394
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1395
    return-void
.end method

.method public final startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z
    .locals 12

    .line 1967
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    .line 1968
    iget-boolean v1, p0, Lcom/android/launcher3/Launcher;->mIsSafeModeEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p0, p2}, Lcom/android/launcher3/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1969
    const p1, 0x7f0c0024

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1970
    iget-boolean p1, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    return p1

    .line 1973
    :cond_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p3, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_2

    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-eq v1, v3, :cond_1

    iget v1, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-ne v1, v2, :cond_2

    :cond_1
    move-object v1, p3

    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 1977
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1981
    move v1, v3

    goto :goto_0

    .line 1977
    :cond_2
    nop

    .line 1981
    move v1, v0

    :goto_0
    if-eqz p1, :cond_3

    const-string v4, "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    .line 1982
    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1983
    move v4, v3

    goto :goto_1

    .line 1982
    :cond_3
    nop

    .line 1983
    move v4, v0

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 1984
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isInMultiWindowModeCompat()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v0

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v3

    :goto_3
    invoke-virtual {p0, p1, v4}, Lcom/android/launcher3/Launcher;->getActivityLaunchOptions(Landroid/view/View;Z)Landroid/os/Bundle;

    move-result-object v4

    .line 1987
    move-object v10, v4

    goto :goto_4

    .line 1985
    :cond_6
    nop

    .line 1987
    move-object v10, v5

    :goto_4
    if-nez p3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v5, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 1990
    :goto_5
    const/high16 v4, 0x10000000

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1991
    if-eqz p1, :cond_8

    .line 1992
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1995
    :cond_8
    if-eqz v1, :cond_c

    .line 1997
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    iget v4, p3, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-ne v4, v2, :cond_9

    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/DeepShortcutManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v11, p3, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_NOUGAT_MR1:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_a

    :try_start_2
    iget-object v6, v2, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    iput-boolean v3, v2, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to start shortcut"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v0, v2, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_6

    :cond_9
    invoke-virtual {p0, p2, v10}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :goto_6
    :try_start_4
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_8

    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2017
    :catch_1
    move-exception p1

    goto :goto_9

    .line 1997
    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_b

    const-string v2, "android.intent.action.CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v1, 0xe

    invoke-static {v1, p2, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    const-string v2, "android.permission.CALL_PHONE"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/Launcher;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_8

    :cond_b
    throw v1

    .line 1998
    :cond_c
    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_7

    .line 2002
    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v1

    .line 2003
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 2002
    invoke-virtual {v1, v2, v5, v4, v10}, Lcom/android/launcher3/compat/LauncherAppsCompat;->startActivityForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_8

    .line 2000
    :cond_e
    :goto_7
    invoke-virtual {p0, p2, v10}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 2006
    :goto_8
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v1, :cond_f

    .line 2011
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 2012
    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 2013
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Launcher;->setOnResumeCallback(Lcom/android/launcher3/Launcher$OnResumeCallback;)V

    .line 2015
    :cond_f
    iput-boolean v3, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    .line 2016
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2020
    goto :goto_a

    .line 2017
    :goto_9
    nop

    .line 2018
    const v1, 0x7f0c0022

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2019
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to launch. tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " intent="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    :goto_a
    iget-boolean p1, p0, Lcom/android/launcher3/Launcher;->mAppLaunchSuccess:Z

    return p1
.end method

.method public final startBinding()V
    .locals 3

    .line 2187
    const/4 v0, 0x1

    const/16 v1, 0x8f

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/Launcher;ZI)V

    .line 2194
    iput-boolean v0, p0, Lcom/android/launcher3/Launcher;->mWorkspaceLoading:Z

    .line 2197
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/Workspace$14;

    invoke-direct {v1, v0}, Lcom/android/launcher3/Workspace$14;-><init>(Lcom/android/launcher3/Workspace;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 2198
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 2200
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    if-eqz v0, :cond_1

    .line 2201
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mHotseat:Lcom/android/launcher3/Hotseat;

    iget-object v0, v0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    .line 2203
    :cond_1
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 1401
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/BaseActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    return-void

    .line 1403
    :catch_0
    move-exception p1

    .line 1404
    new-instance p1, Landroid/content/ActivityNotFoundException;

    invoke-direct {p1}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    .line 1415
    if-nez p3, :cond_0

    .line 1416
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1417
    const-string p4, "source"

    const-string v0, "launcher-search"

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_0
    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/android/launcher3/Launcher;->mLauncherCallbacks:Lcom/android/launcher3/LauncherCallbacks;

    .line 1421
    invoke-interface {p4, p1}, Lcom/android/launcher3/LauncherCallbacks;->startSearch$4aa4b603(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1423
    :cond_1
    const/4 p4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/BaseActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1427
    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object p2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;)V

    .line 1428
    return-void
.end method

.method public final updateIconBadges(Ljava/util/Set;)V
    .locals 4

    .line 1168
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Lcom/android/launcher3/Workspace$17;

    invoke-direct {v3, v0, v1, p1, v2}, Lcom/android/launcher3/Workspace$17;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/Set;Ljava/util/HashSet;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    new-instance v1, Lcom/android/launcher3/Workspace$18;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/Workspace$18;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(ZLcom/android/launcher3/Workspace$ItemOperator;)V

    .line 1169
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsContainerView;->updateIconBadges(Ljava/util/Set;)V

    .line 1171
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_0

    .line 1173
    iget-object v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    .line 1175
    :cond_0
    return-void
.end method

.method public clearIconCache()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mIconCache:Lcom/android/launcher3/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache;->clear()V

    return-void
.end method
