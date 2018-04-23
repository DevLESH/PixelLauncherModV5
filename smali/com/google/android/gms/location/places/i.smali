.class public final Lcom/google/android/gms/location/places/i;
.super Ljava/lang/Object;


# instance fields
.field public PU:J

.field public Pe:J

.field public RN:Lcom/google/android/gms/location/places/PlaceFilter;

.field public RO:Z

.field public RP:Z

.field public gp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/i;->RN:Lcom/google/android/gms/location/places/PlaceFilter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/location/places/i;->Pe:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/location/places/i;->gp:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/places/i;->PU:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/i;->RO:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/i;->RP:Z

    return-void
.end method
