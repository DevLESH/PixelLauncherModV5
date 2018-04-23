.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final bQ:I

.field final cE:Z

.field final cN:I

.field final cO:I

.field final cP:Ljava/lang/String;

.field final cQ:Z

.field final cR:Z

.field final cS:Z

.field cv:Landroid/os/Bundle;

.field final cy:Landroid/os/Bundle;

.field final eT:Ljava/lang/String;

.field eU:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/support/v4/app/O;

    invoke-direct {v0}, Landroid/support/v4/app/O;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->eT:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->bQ:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->cE:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->cN:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->cO:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->cP:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->cS:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->cR:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->cQ:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->eT:Ljava/lang/String;

    .line 43
    iget v0, p1, Landroid/support/v4/app/Fragment;->bQ:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->bQ:I

    .line 44
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cE:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->cE:Z

    .line 45
    iget v0, p1, Landroid/support/v4/app/Fragment;->cN:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->cN:I

    .line 46
    iget v0, p1, Landroid/support/v4/app/Fragment;->cO:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->cO:I

    .line 47
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cP:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->cP:Ljava/lang/String;

    .line 48
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cS:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->cS:Z

    .line 49
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->cR:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->cR:Z

    .line 50
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->cy:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    .line 51
    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->cQ:Z

    iput-boolean p1, p0, Landroid/support/v4/app/FragmentState;->cQ:Z

    .line 52
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 112
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->eT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget p2, p0, Landroid/support/v4/app/FragmentState;->bQ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->cE:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget p2, p0, Landroid/support/v4/app/FragmentState;->cN:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Landroid/support/v4/app/FragmentState;->cO:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->cP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->cS:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->cR:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->cy:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 121
    iget-boolean p2, p0, Landroid/support/v4/app/FragmentState;->cQ:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p2, p0, Landroid/support/v4/app/FragmentState;->cv:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method
