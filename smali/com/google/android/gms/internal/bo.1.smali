.class final Lcom/google/android/gms/internal/bo;
.super Lcom/google/android/gms/internal/bC;


# instance fields
.field private synthetic LZ:Lcom/google/android/gms/common/ConnectionResult;

.field private synthetic Ma:Lcom/google/android/gms/internal/bn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bn;Lcom/google/android/gms/internal/bA;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->Ma:Lcom/google/android/gms/internal/bn;

    iput-object p3, p0, Lcom/google/android/gms/internal/bo;->LZ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/bC;-><init>(Lcom/google/android/gms/internal/bA;)V

    return-void
.end method


# virtual methods
.method public final gi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->Ma:Lcom/google/android/gms/internal/bn;

    iget-object v0, v0, Lcom/google/android/gms/internal/bn;->LW:Lcom/google/android/gms/internal/bk;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->LZ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/bk;->g(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
