.class public Landroid/support/v7/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public or:I

.field os:I

.field ot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2354
    new-instance v0, Landroid/support/v7/widget/I;

    invoke-direct {v0}, Landroid/support/v7/widget/I;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2320
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    .line 2324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    .line 2325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    .line 2326
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V
    .locals 1

    .line 2328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2329
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    .line 2330
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    .line 2331
    iget-boolean p1, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    .line 2332
    return-void
.end method


# virtual methods
.method final bk()Z
    .locals 1

    .line 2335
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 2344
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 2349
    iget p2, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->or:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2350
    iget p2, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->os:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    iget-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->ot:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    return-void
.end method
