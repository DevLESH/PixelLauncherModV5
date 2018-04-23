.class public final Lcom/google/android/gms/phenotype/c;
.super Ljava/lang/Object;


# static fields
.field private static Aa:Lcom/google/android/gms/common/api/k;

.field private static Ab:Lcom/google/android/gms/common/api/f;

.field public static final Ac:Lcom/google/android/gms/common/api/a;

.field public static final Wj:Lcom/google/android/gms/phenotype/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/c;->Aa:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/phenotype/G;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/G;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/c;->Ab:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "Phenotype.API"

    sget-object v2, Lcom/google/android/gms/phenotype/c;->Ab:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/phenotype/c;->Aa:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/phenotype/c;->Ac:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/ak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ak;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/c;->Wj:Lcom/google/android/gms/phenotype/d;

    return-void
.end method

.method public static F(Landroid/content/Context;)Lcom/google/android/gms/phenotype/e;
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/phenotype/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
