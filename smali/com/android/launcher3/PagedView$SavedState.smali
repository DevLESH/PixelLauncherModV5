.class public Lcom/android/launcher3/PagedView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1760
    new-instance v0, Lcom/android/launcher3/PagedView$SavedState$1;

    invoke-direct {v0}, Lcom/android/launcher3/PagedView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1750
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1743
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 1751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    .line 1752
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1756
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1757
    iget p2, p0, Lcom/android/launcher3/PagedView$SavedState;->currentPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    return-void
.end method
