.class public final Lcom/google/android/gms/internal/ad;
.super Ljava/lang/Object;


# static fields
.field private static IC:I

.field private static ID:I

.field private static IF:I

.field private static IG:I

.field public static final IH:[I

.field public static final II:[J

.field public static final IJ:[F

.field private static IK:[D

.field public static final IL:[Z

.field public static final IM:[Ljava/lang/String;

.field public static final IN:[[B

.field public static final IO:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/ad;->IC:I

    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/ad;->ID:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/ad;->IF:I

    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/ad;->IG:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/ad;->IH:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/ad;->II:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/ad;->IJ:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/ad;->IK:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/ad;->IL:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ad;->IM:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/ad;->IN:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ad;->IO:[B

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/T;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->aF(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/T;->ft()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/T;->aF(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/T;->z(II)V

    return v1
.end method
