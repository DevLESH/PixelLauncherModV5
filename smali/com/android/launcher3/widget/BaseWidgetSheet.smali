.class abstract Lcom/android/launcher3/widget/BaseWidgetSheet;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DragSource;


# instance fields
.field protected mGradientView:Lcom/android/launcher3/graphics/GradientView;

.field private mWidgetInstructionToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method protected final clearNavBarColor()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 122
    return-void
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 0

    .line 133
    const/4 p1, 0x5

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getElementsRowCount()I

    move-result p1

    iput p1, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    .line 135
    return-void
.end method

.method protected abstract getElementsRowCount()I
.end method

.method public final logActionCommand(I)V
    .locals 2

    .line 139
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getElementsRowCount()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->cardinality:I

    .line 141
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(ILcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 142
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    iget-object p1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 64
    :cond_0
    nop

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0029

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 68
    iget-object p1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    return-void
.end method

.method protected onCloseComplete()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->clearNavBarColor()V

    .line 117
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    .line 111
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 12

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/widget/WidgetCell;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 76
    check-cast p1, Lcom/android/launcher3/widget/WidgetCell;

    iget-object v0, p1, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/WidgetImageView;

    iget-object v3, v0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, v4, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    new-instance v5, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v5, p1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget-object p1, v0, Lcom/android/launcher3/widget/WidgetImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v8

    new-instance v9, Landroid/graphics/Point;

    aget p1, v3, v1

    aget v0, v3, v2

    invoke-direct {v9, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v11, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v11}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->close(Z)V

    return v2

    .line 78
    :cond_2
    return v2
.end method

.method protected final setTranslationShift(F)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    .line 83
    iget-object p1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mGradientView:Lcom/android/launcher3/graphics/GradientView;

    iget v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mTranslationShift:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/graphics/GradientView;->setAlpha(F)V

    .line 84
    return-void
.end method

.method protected final setupNavBarColor()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f01002b

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v1

    .line 128
    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 126
    move v0, v2

    goto :goto_0

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 126
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 129
    return-void
.end method
