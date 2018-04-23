.class public Lcom/google/android/gms/clearcut/b;
.super Ljava/lang/Object;


# instance fields
.field public AA:Z

.field public synthetic AB:Lcom/google/android/gms/clearcut/a;

.field public Ah:Ljava/lang/String;

.field public Ai:I

.field public Aj:Ljava/lang/String;

.field public Ak:Ljava/lang/String;

.field public Am:I

.field public final Ar:Lcom/google/android/gms/clearcut/d;

.field public As:Lcom/google/android/gms/clearcut/d;

.field public At:Ljava/util/ArrayList;

.field public Au:Ljava/util/ArrayList;

.field public Av:Ljava/util/ArrayList;

.field public Aw:Ljava/util/ArrayList;

.field public Ax:Ljava/util/ArrayList;

.field public Ay:Z

.field public final Az:Lcom/google/android/gms/internal/ah;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/clearcut/a;[BB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/a;[BLcom/google/android/gms/clearcut/d;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/clearcut/b;->AB:Lcom/google/android/gms/clearcut/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->AB:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->a(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->Ai:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->AB:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->b(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ah:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->AB:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Aj:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->AB:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->d(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ak:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->AB:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->e(Lcom/google/android/gms/clearcut/a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/b;->Am:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->At:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Au:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Av:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Aw:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ax:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->Ay:Z

    new-instance v0, Lcom/google/android/gms/internal/ah;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ah;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Az:Lcom/google/android/gms/internal/ah;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/b;->AA:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->c(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Aj:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->d(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/b;->Ak:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Az:Lcom/google/android/gms/internal/ah;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->f(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/a/a;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ah;->Ja:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Az:Lcom/google/android/gms/internal/ah;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->f(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/common/a/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/a/a;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ah;->Jb:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/b;->Az:Lcom/google/android/gms/internal/ah;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/a;->g(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/e;

    iget-object p1, p0, Lcom/google/android/gms/clearcut/b;->Az:Lcom/google/android/gms/internal/ah;

    iget-wide v1, p1, Lcom/google/android/gms/internal/ah;->Ja:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ah;->Jo:J

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/clearcut/b;->Az:Lcom/google/android/gms/internal/ah;

    iput-object p2, p1, Lcom/google/android/gms/internal/ah;->Jj:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/b;->Ar:Lcom/google/android/gms/clearcut/d;

    return-void
.end method
