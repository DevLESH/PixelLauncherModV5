.class final Lcom/google/android/gms/common/internal/K;
.super Lcom/google/android/gms/common/internal/J;


# instance fields
.field private synthetic Ep:Landroid/content/Intent;

.field private synthetic Eq:Landroid/app/Activity;

.field private synthetic Er:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/K;->Ep:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/K;->Eq:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/K;->Er:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/J;-><init>()V

    return-void
.end method


# virtual methods
.method public final eO()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/K;->Ep:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/K;->Eq:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/K;->Ep:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/K;->Er:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
