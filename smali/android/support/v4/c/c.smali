.class public final Landroid/support/v4/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# static fields
.field private static final iC:[I

.field private static final iD:[Ljava/lang/Object;

.field private static iE:[Ljava/lang/Object;

.field private static iF:I

.field private static iG:[Ljava/lang/Object;

.field private static iH:I


# instance fields
.field private iA:Landroid/support/v4/c/j;

.field private iI:[I

.field public iJ:[Ljava/lang/Object;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/support/v4/c/c;->iC:[I

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/c/c;->iD:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;-><init>(I)V

    .line 243
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    if-nez p1, :cond_0

    .line 250
    sget-object p1, Landroid/support/v4/c/c;->iC:[I

    iput-object p1, p0, Landroid/support/v4/c/c;->iI:[I

    .line 251
    sget-object p1, Landroid/support/v4/c/c;->iD:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/c/c;->s(I)V

    .line 255
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/c/c;->mSize:I

    .line 256
    return-void
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 7

    .line 202
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v0, v6, :cond_2

    .line 203
    const-class v0, Landroid/support/v4/c/c;

    monitor-enter v0

    .line 204
    :try_start_0
    sget v6, Landroid/support/v4/c/c;->iH:I

    if-ge v6, v4, :cond_1

    .line 205
    sget-object v4, Landroid/support/v4/c/c;->iG:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 206
    aput-object p0, p1, v5

    .line 207
    sub-int/2addr p2, v5

    :goto_0
    if-lt p2, v2, :cond_0

    .line 208
    aput-object v1, p1, p2

    .line 207
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 210
    :cond_0
    sput-object p1, Landroid/support/v4/c/c;->iG:[Ljava/lang/Object;

    .line 211
    sget p0, Landroid/support/v4/c/c;->iH:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/c/c;->iH:I

    .line 217
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 218
    :cond_2
    array-length v0, p0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_5

    .line 219
    const-class v0, Landroid/support/v4/c/c;

    monitor-enter v0

    .line 220
    :try_start_1
    sget v6, Landroid/support/v4/c/c;->iF:I

    if-ge v6, v4, :cond_4

    .line 221
    sget-object v4, Landroid/support/v4/c/c;->iE:[Ljava/lang/Object;

    aput-object v4, p1, v3

    .line 222
    aput-object p0, p1, v5

    .line 223
    sub-int/2addr p2, v5

    :goto_1
    if-lt p2, v2, :cond_3

    .line 224
    aput-object v1, p1, p2

    .line 223
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 226
    :cond_3
    sput-object p1, Landroid/support/v4/c/c;->iE:[Ljava/lang/Object;

    .line 227
    sget p0, Landroid/support/v4/c/c;->iF:I

    add-int/2addr p0, v5

    sput p0, Landroid/support/v4/c/c;->iF:I

    .line 233
    :cond_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 235
    :cond_5
    return-void
.end method

.method private aD()I
    .locals 4

    .line 123
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, -0x1

    return v0

    .line 130
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/v4/c/e;->a([III)I

    move-result v1

    .line 133
    if-gez v1, :cond_1

    .line 134
    return v1

    .line 138
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 139
    return v1

    .line 144
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 145
    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_3

    return v2

    .line 144
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    aget v0, v0, v1

    if-nez v0, :cond_6

    .line 150
    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    return v1

    .line 149
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 157
    :cond_6
    not-int v0, v2

    return v0
.end method

.method static synthetic c(Landroid/support/v4/c/c;)I
    .locals 0

    .line 51
    iget p0, p0, Landroid/support/v4/c/c;->mSize:I

    return p0
.end method

.method static synthetic d(Landroid/support/v4/c/c;)[Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    return-object p0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 4

    .line 85
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    .line 88
    if-nez v0, :cond_0

    .line 89
    const/4 p1, -0x1

    return p1

    .line 92
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    invoke-static {v1, v0, p2}, Landroid/support/v4/c/e;->a([III)I

    move-result v1

    .line 95
    if-gez v1, :cond_1

    .line 96
    return v1

    .line 100
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    return v1

    .line 106
    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    .line 107
    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 106
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    .line 112
    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 111
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 119
    :cond_6
    not-int p1, v2

    return p1
.end method

.method private s(I)V
    .locals 5

    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 163
    const-class v3, Landroid/support/v4/c/c;

    monitor-enter v3

    .line 164
    :try_start_0
    sget-object v4, Landroid/support/v4/c/c;->iG:[Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 165
    sget-object p1, Landroid/support/v4/c/c;->iG:[Ljava/lang/Object;

    .line 166
    iput-object p1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 167
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/c/c;->iG:[Ljava/lang/Object;

    .line 168
    aget-object v4, p1, v2

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/c/c;->iI:[I

    .line 169
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 170
    sget p1, Landroid/support/v4/c/c;->iH:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/c/c;->iH:I

    .line 175
    monitor-exit v3

    return-void

    .line 177
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 178
    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    .line 179
    const-class v3, Landroid/support/v4/c/c;

    monitor-enter v3

    .line 180
    :try_start_1
    sget-object v4, Landroid/support/v4/c/c;->iE:[Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 181
    sget-object p1, Landroid/support/v4/c/c;->iE:[Ljava/lang/Object;

    .line 182
    iput-object p1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 183
    aget-object v4, p1, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    sput-object v4, Landroid/support/v4/c/c;->iE:[Ljava/lang/Object;

    .line 184
    aget-object v4, p1, v2

    check-cast v4, [I

    check-cast v4, [I

    iput-object v4, p0, Landroid/support/v4/c/c;->iI:[I

    .line 185
    aput-object v0, p1, v2

    aput-object v0, p1, v1

    .line 186
    sget p1, Landroid/support/v4/c/c;->iF:I

    sub-int/2addr p1, v2

    sput p1, Landroid/support/v4/c/c;->iF:I

    .line 191
    monitor-exit v3

    return-void

    .line 193
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 196
    :cond_3
    :goto_0
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    .line 197
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 198
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 9

    .line 360
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 361
    nop

    .line 362
    invoke-direct {p0}, Landroid/support/v4/c/c;->aD()I

    move-result v1

    .line 367
    move v2, v0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 365
    invoke-direct {p0, p1, v1}, Landroid/support/v4/c/c;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 367
    move v8, v2

    move v2, v1

    move v1, v8

    :goto_0
    if-ltz v1, :cond_1

    .line 368
    return v0

    .line 371
    :cond_1
    not-int v1, v1

    .line 372
    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    iget-object v4, p0, Landroid/support/v4/c/c;->iI:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_5

    .line 373
    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v4, 0x4

    const/16 v6, 0x8

    if-lt v3, v6, :cond_2

    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    shr-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    if-lt v3, v4, :cond_3

    .line 378
    move v4, v6

    goto :goto_1

    .line 373
    :cond_3
    nop

    .line 378
    :goto_1
    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    .line 379
    iget-object v6, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 380
    invoke-direct {p0, v4}, Landroid/support/v4/c/c;->s(I)V

    .line 382
    iget-object v4, p0, Landroid/support/v4/c/c;->iI:[I

    array-length v4, v4

    if-lez v4, :cond_4

    .line 384
    iget-object v4, p0, Landroid/support/v4/c/c;->iI:[I

    array-length v7, v3

    invoke-static {v3, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v4, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v0, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    :cond_4
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {v3, v6, v0}, Landroid/support/v4/c/c;->a([I[Ljava/lang/Object;I)V

    .line 391
    :cond_5
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    if-ge v1, v0, :cond_6

    .line 395
    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    add-int/lit8 v4, v1, 0x1

    iget v6, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v6, v1

    invoke-static {v0, v1, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_6
    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    aput v2, v0, v1

    .line 400
    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 401
    iget p1, p0, Landroid/support/v4/c/c;->mSize:I

    add-int/2addr p1, v5

    iput p1, p0, Landroid/support/v4/c/c;->mSize:I

    .line 402
    return v5
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    .line 749
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/c/c;->s(I)V

    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {v1, v3, v0}, Landroid/support/v4/c/c;->a([I[Ljava/lang/Object;I)V

    .line 750
    :cond_1
    nop

    .line 751
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 752
    invoke-virtual {p0, v0}, Landroid/support/v4/c/c;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 753
    goto :goto_0

    .line 754
    :cond_2
    return v2
.end method

.method public final clear()V
    .locals 3

    .line 283
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    iget-object v1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/c/c;->a([I[Ljava/lang/Object;I)V

    .line 285
    sget-object v0, Landroid/support/v4/c/c;->iC:[I

    iput-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    .line 286
    sget-object v0, Landroid/support/v4/c/c;->iD:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/c/c;->mSize:I

    .line 289
    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Landroid/support/v4/c/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 734
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 735
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/c/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    const/4 p1, 0x0

    return p1

    .line 740
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 588
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 589
    return v0

    .line 591
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 592
    check-cast p1, Ljava/util/Set;

    .line 593
    invoke-virtual {p0}, Landroid/support/v4/c/c;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 594
    return v2

    .line 598
    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    if-ge v1, v3, :cond_3

    .line 599
    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 600
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    .line 601
    return v2

    .line 598
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_3
    nop

    .line 609
    return v0

    .line 606
    :catch_0
    move-exception p1

    .line 607
    return v2

    .line 604
    :catch_1
    move-exception p1

    .line 605
    return v2

    .line 611
    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 619
    iget-object v0, p0, Landroid/support/v4/c/c;->iI:[I

    .line 620
    nop

    .line 621
    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    .line 622
    aget v4, v0, v2

    add-int/2addr v3, v4

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 624
    :cond_0
    return v3
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 326
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/c/c;->aD()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/c/c;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 344
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 723
    iget-object v0, p0, Landroid/support/v4/c/c;->iA:Landroid/support/v4/c/j;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0, p0}, Landroid/support/v4/c/d;-><init>(Landroid/support/v4/c/c;)V

    iput-object v0, p0, Landroid/support/v4/c/c;->iA:Landroid/support/v4/c/j;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/c;->iA:Landroid/support/v4/c/j;

    invoke-virtual {v0}, Landroid/support/v4/c/j;->aG()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 462
    invoke-virtual {p0, p1}, Landroid/support/v4/c/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 463
    if-ltz p1, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Landroid/support/v4/c/c;->removeAt(I)Ljava/lang/Object;

    .line 465
    const/4 p1, 0x1

    return p1

    .line 467
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    .line 764
    nop

    .line 765
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 766
    invoke-virtual {p0, v1}, Landroid/support/v4/c/c;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 767
    goto :goto_0

    .line 768
    :cond_0
    return v0
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .locals 6

    .line 476
    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 477
    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    .line 480
    iget-object p1, p0, Landroid/support/v4/c/c;->iI:[I

    iget-object v1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {p1, v1, v3}, Landroid/support/v4/c/c;->a([I[Ljava/lang/Object;I)V

    .line 481
    sget-object p1, Landroid/support/v4/c/c;->iC:[I

    iput-object p1, p0, Landroid/support/v4/c/c;->iI:[I

    .line 482
    sget-object p1, Landroid/support/v4/c/c;->iD:[Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 483
    iput v2, p0, Landroid/support/v4/c/c;->mSize:I

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    array-length v1, v1

    const/16 v4, 0x8

    if-le v1, v4, :cond_4

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    iget-object v5, p0, Landroid/support/v4/c/c;->iI:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v1, v5, :cond_4

    .line 489
    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    if-le v1, v4, :cond_1

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    shr-int/2addr v4, v3

    add-int/2addr v4, v1

    nop

    .line 493
    :cond_1
    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    .line 494
    iget-object v5, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    .line 495
    invoke-direct {p0, v4}, Landroid/support/v4/c/c;->s(I)V

    .line 497
    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroid/support/v4/c/c;->mSize:I

    .line 498
    if-lez p1, :cond_2

    .line 500
    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    invoke-static {v1, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    invoke-static {v5, v2, v3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    :cond_2
    iget v2, p0, Landroid/support/v4/c/c;->mSize:I

    if-ge p1, v2, :cond_3

    .line 508
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    iget-object v1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v5, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    :cond_3
    goto :goto_0

    .line 512
    :cond_4
    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/c/c;->mSize:I

    .line 513
    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    if-ge p1, v1, :cond_5

    .line 517
    iget-object v1, p0, Landroid/support/v4/c/c;->iI:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/c/c;->iI:[I

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 518
    iget-object v1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/c/c;->mSize:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :cond_5
    iget-object p1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 523
    :goto_0
    return-object v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    .line 779
    nop

    .line 780
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 781
    iget-object v3, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 782
    invoke-virtual {p0, v0}, Landroid/support/v4/c/c;->removeAt(I)Ljava/lang/Object;

    .line 783
    nop

    .line 780
    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 786
    :cond_1
    return v2
.end method

.method public final size()I
    .locals 1

    .line 551
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .line 557
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 558
    iget-object v1, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 565
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    if-ge v0, v1, :cond_0

    .line 566
    nop

    .line 567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 568
    nop

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    array-length v0, p1

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    if-le v0, v1, :cond_1

    .line 572
    iget v0, p0, Landroid/support/v4/c/c;->mSize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 574
    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 636
    invoke-virtual {p0}, Landroid/support/v4/c/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    const-string v0, "{}"

    return-object v0

    .line 640
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/c/c;->mSize:I

    mul-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 641
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/c/c;->mSize:I

    if-ge v1, v2, :cond_3

    .line 643
    if-lez v1, :cond_1

    .line 644
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_1
    iget-object v2, p0, Landroid/support/v4/c/c;->iJ:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 647
    if-eq v2, p0, :cond_2

    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 650
    :cond_2
    const-string v2, "(this Set)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
