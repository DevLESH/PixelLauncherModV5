.class public final Lcom/google/android/gms/common/internal/G;
.super Ljava/lang/Object;


# instance fields
.field private final BB:I

.field private final BC:Landroid/view/View;

.field public final BD:Ljava/lang/String;

.field final BE:Ljava/lang/String;

.field public final Bz:Ljava/util/Set;

.field final Ek:Ljava/util/Set;

.field public final El:Ljava/util/Map;

.field public final Em:Lcom/google/android/gms/internal/f;

.field public En:Ljava/lang/Integer;

.field public final zK:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/G;->zK:Landroid/accounts/Account;

    if-nez p2, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/internal/G;->Bz:Ljava/util/Set;

    if-nez p3, :cond_1

    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/common/internal/G;->El:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/G;->BC:Landroid/view/View;

    iput p4, p0, Lcom/google/android/gms/common/internal/G;->BB:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/G;->BD:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/G;->BE:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/G;->Em:Lcom/google/android/gms/internal/f;

    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/G;->Bz:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/G;->El:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/common/internal/H;

    iget-object p3, p3, Lcom/google/android/gms/common/internal/H;->zzaoj:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/G;->Ek:Ljava/util/Set;

    return-void
.end method
