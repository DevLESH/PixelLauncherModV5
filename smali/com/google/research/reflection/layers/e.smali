.class public abstract Lcom/google/research/reflection/layers/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static Zf:D


# instance fields
.field Yw:I

.field Yy:I

.field Zg:Lcom/google/research/reflection/a/a;

.field public Zh:Lcom/google/research/reflection/a/a;

.field public Zi:Lcom/google/research/reflection/a/a;

.field Zj:Lcom/google/research/reflection/layers/m;

.field public Zk:Lcom/google/research/reflection/layers/m;

.field public Zl:Lcom/google/research/reflection/layers/m;

.field public Zm:Z

.field public Zn:I

.field Zo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/google/research/reflection/layers/e;->Zf:D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method constructor <init>(ZIIII)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/research/reflection/a/a;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    .line 52
    new-instance v0, Lcom/google/research/reflection/a/a;

    invoke-direct {v0, p2, v1}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/e;->Zh:Lcom/google/research/reflection/a/a;

    .line 53
    new-instance v0, Lcom/google/research/reflection/a/a;

    invoke-direct {v0, p2, v1}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/e;->Zi:Lcom/google/research/reflection/a/a;

    .line 55
    iput p3, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    .line 56
    iput p4, p0, Lcom/google/research/reflection/layers/e;->Yy:I

    .line 57
    iput p5, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    .line 58
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/e;->Zo:Z

    .line 60
    new-instance p1, Lcom/google/research/reflection/layers/m;

    invoke-direct {p1, p3, p5}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    .line 61
    new-instance p1, Lcom/google/research/reflection/layers/m;

    invoke-direct {p1, p3, p4}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    .line 62
    new-instance p1, Lcom/google/research/reflection/layers/m;

    invoke-direct {p1, p3, p5}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    .line 63
    iget-object p1, p0, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 64
    iget-object p1, p0, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 65
    iget-object p1, p0, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 66
    return-void
.end method

.method public static hE()D
    .locals 2

    .line 231
    sget-wide v0, Lcom/google/research/reflection/layers/e;->Zf:D

    return-wide v0
.end method


# virtual methods
.method public abstract a(ZLcom/google/research/reflection/layers/r;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/m;)Lcom/google/research/reflection/layers/m;
.end method

.method public final a(Lcom/google/research/reflection/layers/e;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    iget-object v0, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    array-length v0, v0

    .line 110
    new-instance v1, Lcom/google/research/reflection/a/a;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v1, p1, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    .line 111
    new-instance v1, Lcom/google/research/reflection/a/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v1, p1, Lcom/google/research/reflection/layers/e;->Zh:Lcom/google/research/reflection/a/a;

    .line 112
    new-instance v1, Lcom/google/research/reflection/a/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object v1, p1, Lcom/google/research/reflection/layers/e;->Zi:Lcom/google/research/reflection/a/a;

    .line 113
    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yy:I

    iput v0, p1, Lcom/google/research/reflection/layers/e;->Yy:I

    .line 114
    iget v0, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    iput v0, p1, Lcom/google/research/reflection/layers/e;->Zn:I

    .line 115
    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iput v0, p1, Lcom/google/research/reflection/layers/e;->Yw:I

    .line 116
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/e;->Zo:Z

    iput-boolean v0, p1, Lcom/google/research/reflection/layers/e;->Zo:Z

    .line 118
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iget v2, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p1, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    .line 119
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iget v2, p0, Lcom/google/research/reflection/layers/e;->Yy:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p1, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    .line 120
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iget v2, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object v0, p1, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    .line 121
    iget-object v0, p1, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 122
    iget-object v0, p1, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 123
    iget-object p1, p1, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 124
    return-void
.end method

.method public abstract a(Lcom/google/research/reflection/layers/r;ILcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;Lcom/google/research/reflection/layers/m;)V
.end method

.method public b(Ljava/io/DataInputStream;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    .line 81
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    .line 82
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/e;->Yy:I

    .line 83
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/research/reflection/layers/e;->Zo:Z

    .line 86
    new-instance p1, Lcom/google/research/reflection/a/a;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    .line 87
    new-instance p1, Lcom/google/research/reflection/a/a;

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zh:Lcom/google/research/reflection/a/a;

    .line 88
    new-instance p1, Lcom/google/research/reflection/a/a;

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/a/a;-><init>(IZ)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zi:Lcom/google/research/reflection/a/a;

    .line 90
    new-instance p1, Lcom/google/research/reflection/layers/m;

    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iget v1, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    .line 91
    new-instance p1, Lcom/google/research/reflection/layers/m;

    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iget v1, p0, Lcom/google/research/reflection/layers/e;->Yy:I

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    .line 92
    new-instance p1, Lcom/google/research/reflection/layers/m;

    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    iget v1, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-direct {p1, v0, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    iput-object p1, p0, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    .line 93
    iget-object p1, p0, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 94
    iget-object p1, p0, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 95
    iget-object p1, p0, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    iget-object p1, p1, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 96
    return-void
.end method

.method public b(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yw:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/google/research/reflection/layers/e;->Zn:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/google/research/reflection/layers/e;->Yy:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    iget-object v0, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 76
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/e;->Zo:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 77
    return-void
.end method

.method final c(Ljava/io/DataInputStream;)V
    .locals 4

    .line 212
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/google/research/reflection/layers/e;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " acquired "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    return-void
.end method

.method final c(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/e;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/e;->hA()Lcom/google/research/reflection/layers/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hA()Lcom/google/research/reflection/layers/e;
.end method

.method hB()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zk:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 174
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zl:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 175
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zj:Lcom/google/research/reflection/layers/m;

    iget-object v0, v0, Lcom/google/research/reflection/layers/m;->ZI:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 176
    return-void
.end method

.method public hC()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->clear()V

    .line 168
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zh:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->clear()V

    .line 169
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zi:Lcom/google/research/reflection/a/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/a/a;->clear()V

    .line 170
    return-void
.end method

.method public final hD()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/research/reflection/layers/e;->Zg:Lcom/google/research/reflection/a/a;

    iget-object v0, v0, Lcom/google/research/reflection/a/a;->Yf:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public abstract update()V
.end method
