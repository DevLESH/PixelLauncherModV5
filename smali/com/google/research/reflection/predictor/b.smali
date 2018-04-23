.class public Lcom/google/research/reflection/predictor/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aah:J

.field private aai:I

.field protected aaj:Lcom/google/research/reflection/a/a;

.field protected aak:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/research/reflection/predictor/b;->aah:J

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/b;->aai:I

    .line 29
    new-instance v0, Lcom/google/research/reflection/a/a;

    iget v1, p0, Lcom/google/research/reflection/predictor/b;->aai:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    .line 30
    return-void
.end method

.method public static a([BLcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/predictor/b;
    .locals 3

    .line 97
    new-instance v0, Lcom/google/research/reflection/predictor/b;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/b;-><init>()V

    .line 99
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v0, v1, p1}, Lcom/google/research/reflection/predictor/b;->a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    :goto_0
    return-object v0
.end method

.method public static a(Lcom/google/research/reflection/predictor/b;)[B
    .locals 2

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/predictor/b;->d(Ljava/io/DataOutputStream;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 115
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 6

    .line 81
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->clear()V

    .line 82
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 83
    nop

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 85
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 86
    if-eqz v3, :cond_0

    array-length v5, v3

    if-ge v5, v4, :cond_1

    .line 87
    :cond_0
    new-array v3, v4, [B

    .line 89
    :cond_1
    invoke-virtual {p1, v3, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    .line 90
    invoke-interface {p2, v3, v4}, Lcom/google/research/reflection/signal/ReflectionEvent;->a([BI)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object v4

    .line 91
    invoke-virtual {p0, v4}, Lcom/google/research/reflection/predictor/b;->b(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_2
    return-void
.end method

.method public final b(Lcom/google/research/reflection/signal/ReflectionEvent;)V
    .locals 6

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    iget v0, v0, Lcom/google/research/reflection/a/a;->Ye:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-static {v0, p1}, Lcom/google/research/reflection/a/e;->a(Lcom/google/research/reflection/signal/ReflectionEvent;Lcom/google/research/reflection/signal/ReflectionEvent;)J

    move-result-wide v2

    .line 41
    iget-wide v4, p0, Lcom/google/research/reflection/predictor/b;->aah:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    iget v2, v0, Lcom/google/research/reflection/a/a;->Ye:I

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/google/research/reflection/a/a;->Ye:I

    sub-int/2addr v2, v1

    iget v3, v0, Lcom/google/research/reflection/a/a;->Yd:I

    sub-int/2addr v3, v2

    if-gez v3, :cond_0

    iget-object v2, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    array-length v2, v2

    add-int/2addr v3, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->hs()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/research/reflection/a/a;->Yg:Ljava/util/LinkedList;

    iget-object v4, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v2, v3

    iget v2, v0, Lcom/google/research/reflection/a/a;->Ye:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/research/reflection/a/a;->Ye:I

    iget v2, v0, Lcom/google/research/reflection/a/a;->Yh:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/research/reflection/a/a;->Yh:I

    .line 46
    :cond_2
    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/a/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-boolean v1, p0, Lcom/google/research/reflection/predictor/b;->aak:Z

    .line 49
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->clear()V

    .line 61
    return-void
.end method

.method public final d(Ljava/io/DataOutputStream;)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    iget v0, v0, Lcom/google/research/reflection/a/a;->Ye:I

    .line 69
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 71
    iget-object v3, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    invoke-virtual {v3, v2}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 72
    invoke-interface {v3}, Lcom/google/research/reflection/signal/ReflectionEvent;->dl()[B

    move-result-object v3

    .line 73
    array-length v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    array-length v4, v3

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iput-boolean v1, p0, Lcom/google/research/reflection/predictor/b;->aak:Z

    .line 77
    return-void
.end method

.method public final hM()Lcom/google/research/reflection/a/a;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    iget v0, v0, Lcom/google/research/reflection/a/a;->Ye:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    const-string v1, "(size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    iget v1, v1, Lcom/google/research/reflection/a/a;->Ye:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    iget v2, v2, Lcom/google/research/reflection/a/a;->Ye:I

    if-ge v1, v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/google/research/reflection/predictor/b;->aaj:Lcom/google/research/reflection/a/a;

    invoke-virtual {v2, v1}, Lcom/google/research/reflection/a/a;->bs(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/signal/ReflectionEvent;

    invoke-interface {v2}, Lcom/google/research/reflection/signal/ReflectionEvent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
