.class public Landroid/support/v4/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final iP:Ljava/lang/Object;


# instance fields
.field public iQ:Z

.field private iS:[Ljava/lang/Object;

.field public jm:[I

.field public mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/c/v;->iP:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v4/c/v;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/c/v;->iQ:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    sget-object p1, Landroid/support/v4/c/e;->iL:[I

    iput-object p1, p0, Landroid/support/v4/c/v;->jm:[I

    .line 48
    sget-object p1, Landroid/support/v4/c/e;->iN:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/support/v4/c/e;->t(I)I

    move-result p1

    .line 51
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/c/v;->jm:[I

    .line 52
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    .line 54
    :goto_0
    iput v0, p0, Landroid/support/v4/c/v;->mSize:I

    .line 55
    return-void
.end method


# virtual methods
.method public final aI()Landroid/support/v4/c/v;
    .locals 2

    .line 60
    nop

    .line 62
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/c/v;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/c/v;->jm:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v4/c/v;->jm:[I

    .line 64
    iget-object v1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0
.end method

.method public final clear()V
    .locals 5

    .line 317
    iget v0, p0, Landroid/support/v4/c/v;->mSize:I

    .line 318
    iget-object v1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    .line 320
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 321
    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iput v2, p0, Landroid/support/v4/c/v;->mSize:I

    .line 325
    iput-boolean v2, p0, Landroid/support/v4/c/v;->iQ:Z

    .line 326
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/support/v4/c/v;->aI()Landroid/support/v4/c/v;

    move-result-object v0

    return-object v0
.end method

.method public final gc()V
    .locals 8

    .line 141
    iget v0, p0, Landroid/support/v4/c/v;->mSize:I

    .line 142
    nop

    .line 143
    iget-object v1, p0, Landroid/support/v4/c/v;->jm:[I

    .line 144
    iget-object v2, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    .line 146
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_2

    .line 147
    aget-object v6, v2, v4

    .line 149
    sget-object v7, Landroid/support/v4/c/v;->iP:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 150
    if-eq v4, v5, :cond_0

    .line 151
    aget v7, v1, v4

    aput v7, v1, v5

    .line 152
    aput-object v6, v2, v5

    .line 153
    const/4 v6, 0x0

    aput-object v6, v2, v4

    .line 156
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 146
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iput-boolean v3, p0, Landroid/support/v4/c/v;->iQ:Z

    .line 161
    iput v5, p0, Landroid/support/v4/c/v;->mSize:I

    .line 164
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 76
    iget-object v0, p0, Landroid/support/v4/c/v;->jm:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/c/v;->iP:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final keyAt(I)I
    .locals 1

    .line 244
    iget-boolean v0, p0, Landroid/support/v4/c/v;->iQ:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/v;->jm:[I

    aget p1, v0, p1

    return p1
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 6

    .line 172
    iget-object v0, p0, Landroid/support/v4/c/v;->jm:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result v0

    .line 174
    if-ltz v0, :cond_0

    .line 175
    iget-object p1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    .line 177
    :cond_0
    not-int v0, v0

    .line 179
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/support/v4/c/v;->iP:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 180
    iget-object v1, p0, Landroid/support/v4/c/v;->jm:[I

    aput p1, v1, v0

    .line 181
    iget-object p1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 182
    return-void

    .line 185
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/c/v;->iQ:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    iget-object v2, p0, Landroid/support/v4/c/v;->jm:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 186
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 189
    iget-object v0, p0, Landroid/support/v4/c/v;->jm:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result v0

    not-int v0, v0

    .line 192
    :cond_2
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    iget-object v2, p0, Landroid/support/v4/c/v;->jm:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 193
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroid/support/v4/c/e;->t(I)I

    move-result v1

    .line 195
    new-array v2, v1, [I

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Landroid/support/v4/c/v;->jm:[I

    iget-object v4, p0, Landroid/support/v4/c/v;->jm:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v3, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v2, p0, Landroid/support/v4/c/v;->jm:[I

    .line 203
    iput-object v1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    .line 206
    :cond_3
    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 208
    iget-object v1, p0, Landroid/support/v4/c/v;->jm:[I

    iget-object v2, p0, Landroid/support/v4/c/v;->jm:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Landroid/support/v4/c/v;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/c/v;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_4
    iget-object v1, p0, Landroid/support/v4/c/v;->jm:[I

    aput p1, v1, v0

    .line 213
    iget-object p1, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 214
    iget p1, p0, Landroid/support/v4/c/v;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v4/c/v;->mSize:I

    .line 216
    return-void
.end method

.method public final remove(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Landroid/support/v4/c/v;->jm:[I

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v0, v1, p1}, Landroid/support/v4/c/e;->a([III)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/v4/c/v;->iP:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/c/v;->iP:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/c/v;->iQ:Z

    .line 113
    :cond_0
    return-void
.end method

.method public final size()I
    .locals 1

    .line 223
    iget-boolean v0, p0, Landroid/support/v4/c/v;->iQ:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 227
    :cond_0
    iget v0, p0, Landroid/support/v4/c/v;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 371
    invoke-virtual {p0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 372
    const-string v0, "{}"

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/c/v;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/v;->mSize:I

    if-ge v1, v2, :cond_3

    .line 378
    if-lez v1, :cond_1

    .line 379
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v4/c/v;->keyAt(I)I

    move-result v2

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0, v1}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 385
    if-eq v2, p0, :cond_2

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 388
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final valueAt(I)Ljava/lang/Object;
    .locals 1

    .line 258
    iget-boolean v0, p0, Landroid/support/v4/c/v;->iQ:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/support/v4/c/v;->gc()V

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/v;->iS:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
