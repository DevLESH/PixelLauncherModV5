.class public final Lcom/google/android/gms/internal/a;
.super Ljava/lang/Object;


# static fields
.field private static Aa:Lcom/google/android/gms/common/api/k;

.field public static final Ab:Lcom/google/android/gms/common/api/f;

.field public static final Ac:Lcom/google/android/gms/common/api/a;

.field private static FM:Lcom/google/android/gms/common/api/k;

.field private static FN:Lcom/google/android/gms/common/api/f;

.field private static FO:Lcom/google/android/gms/common/api/a;

.field private static zD:Lcom/google/android/gms/common/api/Scope;

.field private static zE:Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->Aa:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/common/api/k;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->FM:Lcom/google/android/gms/common/api/k;

    new-instance v0, Lcom/google/android/gms/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->Ab:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/a;->FN:Lcom/google/android/gms/common/api/f;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->zD:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->zE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "SignIn.API"

    sget-object v2, Lcom/google/android/gms/internal/a;->Ab:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/internal/a;->Aa:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->Ac:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    const-string v1, "SignIn.INTERNAL_API"

    sget-object v2, Lcom/google/android/gms/internal/a;->FN:Lcom/google/android/gms/common/api/f;

    sget-object v3, Lcom/google/android/gms/internal/a;->FM:Lcom/google/android/gms/common/api/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/k;)V

    sput-object v0, Lcom/google/android/gms/internal/a;->FO:Lcom/google/android/gms/common/api/a;

    return-void
.end method
