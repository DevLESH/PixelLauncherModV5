.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final bL:I

.field final bM:I

.field final bQ:I

.field final bR:I

.field final bS:Ljava/lang/CharSequence;

.field final bT:I

.field final bU:Ljava/lang/CharSequence;

.field final bV:Ljava/util/ArrayList;

.field final bW:Ljava/util/ArrayList;

.field final bX:Z

.field final cf:[I

.field final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Landroid/support/v4/app/e;

    invoke-direct {v0}, Landroid/support/v4/app/e;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bL:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bM:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bQ:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bR:I

    .line 84
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bS:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bT:I

    .line 86
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bU:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bV:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bW:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->bX:Z

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/c;)V
    .locals 7

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p1, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    .line 50
    iget-boolean v1, p1, Landroid/support/v4/app/c;->bN:Z

    if-nez v1, :cond_0

    .line 51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not on back stack"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_0
    nop

    .line 55
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 56
    iget-object v3, p1, Landroid/support/v4/app/c;->bG:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/d;

    .line 57
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v5, v2, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->bZ:I

    aput v6, v4, v2

    .line 58
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v4, v5, 0x1

    iget-object v6, v3, Landroid/support/v4/app/d;->ca:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/support/v4/app/d;->ca:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->bQ:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    aput v6, v2, v5

    .line 59
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cb:I

    aput v6, v2, v4

    .line 60
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cc:I

    aput v6, v2, v5

    .line 61
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroid/support/v4/app/d;->cd:I

    aput v6, v2, v4

    .line 62
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v4, v5, 0x1

    iget v3, v3, Landroid/support/v4/app/d;->ce:I

    aput v3, v2, v5

    .line 55
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 64
    :cond_2
    iget v0, p1, Landroid/support/v4/app/c;->bL:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bL:I

    .line 65
    iget v0, p1, Landroid/support/v4/app/c;->bM:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bM:I

    .line 66
    iget-object v0, p1, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 67
    iget v0, p1, Landroid/support/v4/app/c;->bQ:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bQ:I

    .line 68
    iget v0, p1, Landroid/support/v4/app/c;->bR:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bR:I

    .line 69
    iget-object v0, p1, Landroid/support/v4/app/c;->bS:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bS:Ljava/lang/CharSequence;

    .line 70
    iget v0, p1, Landroid/support/v4/app/c;->bT:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->bT:I

    .line 71
    iget-object v0, p1, Landroid/support/v4/app/c;->bU:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bU:Ljava/lang/CharSequence;

    .line 72
    iget-object v0, p1, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bV:Ljava/util/ArrayList;

    .line 73
    iget-object v0, p1, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->bW:Ljava/util/ArrayList;

    .line 74
    iget-boolean p1, p1, Landroid/support/v4/app/c;->bX:Z

    iput-boolean p1, p0, Landroid/support/v4/app/BackStackState;->bX:Z

    .line 75
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/x;)Landroid/support/v4/app/c;
    .locals 7

    .line 93
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p1}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/x;)V

    .line 94
    nop

    .line 95
    nop

    .line 96
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 97
    new-instance v3, Landroid/support/v4/app/d;

    invoke-direct {v3}, Landroid/support/v4/app/d;-><init>()V

    .line 98
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    iput v1, v3, Landroid/support/v4/app/d;->bZ:I

    .line 99
    sget-boolean v1, Landroid/support/v4/app/x;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Instantiate "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " op #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " base fragment #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    aget v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    .line 102
    if-ltz v1, :cond_1

    .line 103
    iget-object v5, p1, Landroid/support/v4/app/x;->dW:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 104
    iput-object v1, v3, Landroid/support/v4/app/d;->ca:Landroid/support/v4/app/Fragment;

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v3, Landroid/support/v4/app/d;->ca:Landroid/support/v4/app/Fragment;

    .line 108
    :goto_1
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroid/support/v4/app/d;->cb:I

    .line 109
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroid/support/v4/app/d;->cc:I

    .line 110
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v5, v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Landroid/support/v4/app/d;->cd:I

    .line 111
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    add-int/lit8 v4, v5, 0x1

    aget v1, v1, v5

    iput v1, v3, Landroid/support/v4/app/d;->ce:I

    .line 112
    iget v1, v3, Landroid/support/v4/app/d;->cb:I

    iput v1, v0, Landroid/support/v4/app/c;->bH:I

    .line 113
    iget v1, v3, Landroid/support/v4/app/d;->cc:I

    iput v1, v0, Landroid/support/v4/app/c;->bI:I

    .line 114
    iget v1, v3, Landroid/support/v4/app/d;->cd:I

    iput v1, v0, Landroid/support/v4/app/c;->bJ:I

    .line 115
    iget v1, v3, Landroid/support/v4/app/d;->ce:I

    iput v1, v0, Landroid/support/v4/app/c;->bK:I

    .line 116
    invoke-virtual {v0, v3}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/d;)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    nop

    .line 96
    move v1, v4

    goto/16 :goto_0

    .line 119
    :cond_2
    iget p1, p0, Landroid/support/v4/app/BackStackState;->bL:I

    iput p1, v0, Landroid/support/v4/app/c;->bL:I

    .line 120
    iget p1, p0, Landroid/support/v4/app/BackStackState;->bM:I

    iput p1, v0, Landroid/support/v4/app/c;->bM:I

    .line 121
    iget-object p1, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    .line 122
    iget p1, p0, Landroid/support/v4/app/BackStackState;->bQ:I

    iput p1, v0, Landroid/support/v4/app/c;->bQ:I

    .line 123
    const/4 p1, 0x1

    iput-boolean p1, v0, Landroid/support/v4/app/c;->bN:Z

    .line 124
    iget v1, p0, Landroid/support/v4/app/BackStackState;->bR:I

    iput v1, v0, Landroid/support/v4/app/c;->bR:I

    .line 125
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->bS:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/c;->bS:Ljava/lang/CharSequence;

    .line 126
    iget v1, p0, Landroid/support/v4/app/BackStackState;->bT:I

    iput v1, v0, Landroid/support/v4/app/c;->bT:I

    .line 127
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->bU:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/support/v4/app/c;->bU:Ljava/lang/CharSequence;

    .line 128
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->bV:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/c;->bV:Ljava/util/ArrayList;

    .line 129
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->bW:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/support/v4/app/c;->bW:Ljava/util/ArrayList;

    .line 130
    iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->bX:Z

    iput-boolean v1, v0, Landroid/support/v4/app/c;->bX:Z

    .line 131
    invoke-virtual {v0, p1}, Landroid/support/v4/app/c;->i(I)V

    .line 132
    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 142
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->cf:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 143
    iget p2, p0, Landroid/support/v4/app/BackStackState;->bL:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Landroid/support/v4/app/BackStackState;->bM:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget p2, p0, Landroid/support/v4/app/BackStackState;->bQ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Landroid/support/v4/app/BackStackState;->bR:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->bS:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 149
    iget p2, p0, Landroid/support/v4/app/BackStackState;->bT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->bU:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 151
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->bV:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 152
    iget-object p2, p0, Landroid/support/v4/app/BackStackState;->bW:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 153
    iget-boolean p2, p0, Landroid/support/v4/app/BackStackState;->bX:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return-void
.end method
