.class public final Lcom/google/android/gms/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# static fields
.field public static final FQ:Lcom/google/android/gms/internal/f;


# instance fields
.field final FR:Z

.field final FS:Z

.field final FT:Ljava/lang/Long;

.field final FU:Ljava/lang/Long;

.field final zL:Z

.field final zN:Z

.field final zO:Ljava/lang/String;

.field final zP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/g;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/f;->FQ:Lcom/google/android/gms/internal/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->FR:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->zL:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->zO:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->zN:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/f;->FS:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->zP:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->FT:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/gms/internal/f;->FU:Ljava/lang/Long;

    return-void
.end method
