.class public Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;
.super Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
.source "SourceFile"


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 400
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 408
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 400
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->customPosition:Z

    .line 412
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->height:I

    .line 424
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 415
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->width:I

    .line 416
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->x:I

    .line 432
    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 439
    iput p1, p0, Lcom/android/launcher3/dragndrop/DragLayer$LayoutParams;->y:I

    .line 440
    return-void
.end method
