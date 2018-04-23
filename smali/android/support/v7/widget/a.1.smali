.class Landroid/support/v7/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/L;


# instance fields
.field private mn:Landroid/support/v4/c/r;

.field final mo:Ljava/util/ArrayList;

.field final mp:Ljava/util/ArrayList;

.field final mq:Landroid/support/v7/widget/b;

.field mr:Ljava/lang/Runnable;

.field final ms:Z

.field final mt:Landroid/support/v7/widget/K;

.field mu:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/b;)V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/a;-><init>(Landroid/support/v7/widget/b;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/b;Z)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/support/v4/c/s;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/c/s;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/a;->mn:Landroid/support/v4/c/r;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a;->mu:I

    .line 75
    iput-object p1, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    .line 76
    iput-boolean p2, p0, Landroid/support/v7/widget/a;->ms:Z

    .line 77
    new-instance p1, Landroid/support/v7/widget/K;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/K;-><init>(Landroid/support/v7/widget/L;)V

    iput-object p1, p0, Landroid/support/v7/widget/a;->mt:Landroid/support/v7/widget/K;

    .line 78
    return-void
.end method

.method private I(I)Z
    .locals 7

    .line 410
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 411
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 412
    iget-object v3, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/c;

    .line 413
    iget v4, v3, Landroid/support/v7/widget/c;->bZ:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 414
    iget v3, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/a;->j(II)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 415
    return v6

    .line 417
    :cond_0
    iget v4, v3, Landroid/support/v7/widget/c;->bZ:I

    if-ne v4, v6, :cond_2

    .line 419
    iget v4, v3, Landroid/support/v7/widget/c;->mv:I

    iget v5, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v4, v5

    .line 420
    iget v3, v3, Landroid/support/v7/widget/c;->mv:I

    :goto_1
    if-ge v3, v4, :cond_2

    .line 421
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v3, v5}, Landroid/support/v7/widget/a;->j(II)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 422
    return v6

    .line 420
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_3
    return v1
.end method

.method private a(Landroid/support/v7/widget/c;)V
    .locals 12

    .line 230
    iget v0, p1, Landroid/support/v7/widget/c;->bZ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p1, Landroid/support/v7/widget/c;->bZ:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto/16 :goto_6

    .line 244
    :cond_0
    iget v0, p1, Landroid/support/v7/widget/c;->mv:I

    iget v2, p1, Landroid/support/v7/widget/c;->bZ:I

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/a;->i(II)I

    move-result v0

    .line 248
    nop

    .line 249
    iget v2, p1, Landroid/support/v7/widget/c;->mv:I

    .line 251
    iget v3, p1, Landroid/support/v7/widget/c;->bZ:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_1

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    nop

    .line 254
    nop

    .line 261
    move v3, v1

    goto :goto_0

    .line 256
    :cond_2
    nop

    .line 257
    nop

    .line 261
    move v3, v6

    :goto_0
    move v7, v0

    move v0, v1

    move v8, v2

    move v2, v0

    :goto_1
    iget v9, p1, Landroid/support/v7/widget/c;->mx:I

    if-ge v0, v9, :cond_9

    .line 262
    iget v9, p1, Landroid/support/v7/widget/c;->mv:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    .line 263
    iget v10, p1, Landroid/support/v7/widget/c;->bZ:I

    invoke-direct {p0, v9, v10}, Landroid/support/v7/widget/a;->i(II)I

    move-result v9

    .line 267
    nop

    .line 268
    iget v10, p1, Landroid/support/v7/widget/c;->bZ:I

    if-eq v10, v4, :cond_5

    if-eq v10, v5, :cond_3

    .line 276
    :goto_2
    move v10, v6

    goto :goto_4

    .line 270
    :cond_3
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_4

    .line 271
    move v10, v1

    goto :goto_3

    .line 270
    :cond_4
    nop

    .line 271
    move v10, v6

    :goto_3
    goto :goto_4

    .line 273
    :cond_5
    if-ne v9, v7, :cond_6

    .line 276
    move v10, v1

    goto :goto_4

    .line 273
    :cond_6
    goto :goto_2

    .line 276
    :goto_4
    if-eqz v10, :cond_7

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 280
    :cond_7
    iget v10, p1, Landroid/support/v7/widget/c;->bZ:I

    iget-object v11, p1, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v7

    .line 284
    invoke-virtual {p0, v7, v8}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/c;I)V

    .line 285
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    .line 286
    iget v7, p1, Landroid/support/v7/widget/c;->bZ:I

    if-ne v7, v5, :cond_8

    .line 287
    add-int/2addr v8, v2

    .line 289
    :cond_8
    nop

    .line 290
    nop

    .line 261
    move v2, v1

    move v7, v9

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_9
    iget-object v0, p1, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    .line 295
    if-lez v2, :cond_a

    .line 296
    iget p1, p1, Landroid/support/v7/widget/c;->bZ:I

    invoke-virtual {p0, p1, v7, v2, v0}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1, v8}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/c;I)V

    .line 301
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    .line 311
    :cond_a
    return-void

    .line 231
    :cond_b
    :goto_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroid/support/v7/widget/c;)V
    .locals 3

    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v0, p1, Landroid/support/v7/widget/c;->bZ:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v1, p1, Landroid/support/v7/widget/c;->mv:I

    iget p1, p1, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/b;->l(II)V

    .line 449
    return-void

    .line 441
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v1, p1, Landroid/support/v7/widget/c;->mv:I

    iget p1, p1, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/b;->m(II)V

    .line 442
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v1, p1, Landroid/support/v7/widget/c;->mv:I

    iget p1, p1, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/b;->n(II)V

    .line 445
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v1, p1, Landroid/support/v7/widget/c;->mv:I

    iget v2, p1, Landroid/support/v7/widget/c;->mx:I

    iget-object p1, p1, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroid/support/v7/widget/b;->a(IILjava/lang/Object;)V

    .line 452
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(II)I
    .locals 6

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 330
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/16 v2, 0x8

    if-ltz v0, :cond_e

    .line 331
    iget-object v3, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/c;

    .line 332
    iget v4, v3, Landroid/support/v7/widget/c;->bZ:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_9

    .line 334
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    iget v4, v3, Landroid/support/v7/widget/c;->mx:I

    if-ge v2, v4, :cond_0

    .line 335
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    .line 336
    iget v4, v3, Landroid/support/v7/widget/c;->mx:I

    goto :goto_1

    .line 338
    :cond_0
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    .line 339
    iget v4, v3, Landroid/support/v7/widget/c;->mv:I

    .line 341
    :goto_1
    if-lt p1, v2, :cond_6

    if-gt p1, v4, :cond_6

    .line 343
    iget v4, v3, Landroid/support/v7/widget/c;->mv:I

    if-ne v2, v4, :cond_3

    .line 344
    if-ne p2, v1, :cond_1

    .line 345
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mx:I

    goto :goto_2

    .line 346
    :cond_1
    if-ne p2, v5, :cond_2

    .line 347
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mx:I

    .line 350
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 352
    :cond_3
    if-ne p2, v1, :cond_4

    .line 353
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mv:I

    goto :goto_3

    .line 354
    :cond_4
    if-ne p2, v5, :cond_5

    .line 355
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mv:I

    .line 358
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 360
    :cond_6
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    if-ge p1, v2, :cond_8

    .line 362
    if-ne p2, v1, :cond_7

    .line 363
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mv:I

    .line 364
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mx:I

    goto :goto_4

    .line 365
    :cond_7
    if-ne p2, v5, :cond_8

    .line 366
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mv:I

    .line 367
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mx:I

    .line 370
    :cond_8
    goto :goto_4

    .line 371
    :cond_9
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    if-gt v2, p1, :cond_b

    .line 372
    iget v2, v3, Landroid/support/v7/widget/c;->bZ:I

    if-ne v2, v1, :cond_a

    .line 373
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr p1, v2

    goto :goto_4

    .line 374
    :cond_a
    iget v2, v3, Landroid/support/v7/widget/c;->bZ:I

    if-ne v2, v5, :cond_d

    .line 375
    iget v2, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr p1, v2

    goto :goto_4

    .line 378
    :cond_b
    if-ne p2, v1, :cond_c

    .line 379
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mv:I

    goto :goto_4

    .line 380
    :cond_c
    if-ne p2, v5, :cond_d

    .line 381
    iget v2, v3, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/support/v7/widget/c;->mv:I

    .line 330
    :cond_d
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 394
    :cond_e
    iget-object p2, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_5
    if-ltz p2, :cond_12

    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c;

    .line 396
    iget v1, v0, Landroid/support/v7/widget/c;->bZ:I

    if-ne v1, v2, :cond_10

    .line 397
    iget v1, v0, Landroid/support/v7/widget/c;->mx:I

    iget v3, v0, Landroid/support/v7/widget/c;->mv:I

    if-eq v1, v3, :cond_f

    iget v1, v0, Landroid/support/v7/widget/c;->mx:I

    if-gez v1, :cond_11

    .line 398
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    goto :goto_6

    .line 401
    :cond_10
    iget v1, v0, Landroid/support/v7/widget/c;->mx:I

    if-gtz v1, :cond_11

    .line 402
    iget-object v1, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    .line 394
    :cond_11
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 406
    :cond_12
    return p1
.end method


# virtual methods
.method final J(I)Z
    .locals 1

    .line 463
    iget v0, p0, Landroid/support/v7/widget/a;->mu:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final K(I)I
    .locals 1

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/a;->j(II)I

    move-result p1

    return p1
.end method

.method public final a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;
    .locals 1

    .line 726
    iget-object v0, p0, Landroid/support/v7/widget/a;->mn:Landroid/support/v4/c/r;

    invoke-interface {v0}, Landroid/support/v4/c/r;->aH()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/c;

    .line 727
    if-nez v0, :cond_0

    .line 728
    new-instance v0, Landroid/support/v7/widget/c;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/c;-><init>(IIILjava/lang/Object;)V

    goto :goto_0

    .line 730
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/c;->bZ:I

    .line 731
    iput p2, v0, Landroid/support/v7/widget/c;->mv:I

    .line 732
    iput p3, v0, Landroid/support/v7/widget/c;->mx:I

    .line 733
    iput-object p4, v0, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    .line 735
    :goto_0
    return-object v0
.end method

.method final a(Landroid/support/v7/widget/c;I)V
    .locals 2

    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/b;->d(Landroid/support/v7/widget/c;)V

    .line 315
    iget v0, p1, Landroid/support/v7/widget/c;->bZ:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 323
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v1, p1, Landroid/support/v7/widget/c;->mx:I

    iget-object p1, p1, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroid/support/v7/widget/b;->a(IILjava/lang/Object;)V

    .line 321
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget p1, p1, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v0, p2, p1}, Landroid/support/v7/widget/b;->k(II)V

    .line 318
    return-void
.end method

.method final aY()V
    .locals 17

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a;->mt:Landroid/support/v7/widget/K;

    iget-object v2, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x8

    const/4 v8, -0x1

    if-ltz v3, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/c;

    iget v9, v9, Landroid/support/v7/widget/c;->bZ:I

    if-ne v9, v7, :cond_1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_1
    move v6, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    move v3, v8

    :goto_2
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eq v3, v8, :cond_20

    add-int/lit8 v7, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/c;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/c;

    iget v13, v12, Landroid/support/v7/widget/c;->bZ:I

    if-eq v13, v10, :cond_19

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v8, v11, Landroid/support/v7/widget/c;->mv:I

    iget v10, v11, Landroid/support/v7/widget/c;->mx:I

    if-ge v8, v10, :cond_5

    iget v8, v12, Landroid/support/v7/widget/c;->mv:I

    iget v10, v11, Landroid/support/v7/widget/c;->mv:I

    if-ne v8, v10, :cond_4

    iget v8, v12, Landroid/support/v7/widget/c;->mx:I

    iget v10, v11, Landroid/support/v7/widget/c;->mx:I

    iget v13, v11, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v10, v13

    if-ne v8, v10, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_5
    iget v8, v12, Landroid/support/v7/widget/c;->mv:I

    iget v10, v11, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v10, v4

    if-ne v8, v10, :cond_6

    iget v8, v12, Landroid/support/v7/widget/c;->mx:I

    iget v10, v11, Landroid/support/v7/widget/c;->mv:I

    iget v13, v11, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v10, v13

    if-ne v8, v10, :cond_6

    move v5, v4

    move v8, v5

    goto :goto_4

    :cond_6
    move v8, v4

    const/4 v5, 0x0

    :goto_4
    iget v10, v11, Landroid/support/v7/widget/c;->mx:I

    iget v13, v12, Landroid/support/v7/widget/c;->mv:I

    if-ge v10, v13, :cond_7

    iget v10, v12, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v10, v4

    iput v10, v12, Landroid/support/v7/widget/c;->mv:I

    goto :goto_5

    :cond_7
    iget v10, v11, Landroid/support/v7/widget/c;->mx:I

    iget v13, v12, Landroid/support/v7/widget/c;->mv:I

    iget v14, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v13, v14

    if-ge v10, v13, :cond_8

    iget v3, v12, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v3, v4

    iput v3, v12, Landroid/support/v7/widget/c;->mx:I

    iput v6, v11, Landroid/support/v7/widget/c;->bZ:I

    iput v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v3, v12, Landroid/support/v7/widget/c;->mx:I

    if-nez v3, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, v1, Landroid/support/v7/widget/K;->oA:Landroid/support/v7/widget/L;

    invoke-interface {v3, v12}, Landroid/support/v7/widget/L;->c(Landroid/support/v7/widget/c;)V

    goto/16 :goto_0

    :cond_8
    :goto_5
    iget v10, v11, Landroid/support/v7/widget/c;->mv:I

    iget v13, v12, Landroid/support/v7/widget/c;->mv:I

    if-gt v10, v13, :cond_9

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v6, v4

    iput v6, v12, Landroid/support/v7/widget/c;->mv:I

    goto :goto_6

    :cond_9
    iget v10, v11, Landroid/support/v7/widget/c;->mv:I

    iget v13, v12, Landroid/support/v7/widget/c;->mv:I

    iget v14, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v13, v14

    if-ge v10, v13, :cond_a

    iget v10, v12, Landroid/support/v7/widget/c;->mv:I

    iget v13, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v10, v13

    iget v13, v11, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v10, v13

    iget-object v13, v1, Landroid/support/v7/widget/K;->oA:Landroid/support/v7/widget/L;

    iget v14, v11, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v14, v4

    invoke-interface {v13, v6, v14, v10, v9}, Landroid/support/v7/widget/L;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v9

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v4, v6

    iput v4, v12, Landroid/support/v7/widget/c;->mx:I

    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, v1, Landroid/support/v7/widget/K;->oA:Landroid/support/v7/widget/L;

    invoke-interface {v3, v11}, Landroid/support/v7/widget/L;->c(Landroid/support/v7/widget/c;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v8, :cond_f

    if-eqz v9, :cond_d

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v9, Landroid/support/v7/widget/c;->mv:I

    if-le v4, v5, :cond_c

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v9, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mv:I

    :cond_c
    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v9, Landroid/support/v7/widget/c;->mv:I

    if-le v4, v5, :cond_d

    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v9, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mx:I

    :cond_d
    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v12, Landroid/support/v7/widget/c;->mv:I

    if-le v4, v5, :cond_e

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v12, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mv:I

    :cond_e
    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v12, Landroid/support/v7/widget/c;->mv:I

    if-le v4, v5, :cond_13

    :goto_7
    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v12, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mx:I

    goto :goto_8

    :cond_f
    if-eqz v9, :cond_11

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v9, Landroid/support/v7/widget/c;->mv:I

    if-lt v4, v5, :cond_10

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v9, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mv:I

    :cond_10
    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v9, Landroid/support/v7/widget/c;->mv:I

    if-lt v4, v5, :cond_11

    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v9, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mx:I

    :cond_11
    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v12, Landroid/support/v7/widget/c;->mv:I

    if-lt v4, v5, :cond_12

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v12, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroid/support/v7/widget/c;->mv:I

    :cond_12
    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v5, v12, Landroid/support/v7/widget/c;->mv:I

    if-lt v4, v5, :cond_13

    goto :goto_7

    :cond_13
    :goto_8
    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v5, v11, Landroid/support/v7/widget/c;->mx:I

    if-eq v4, v5, :cond_14

    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_14
    invoke-interface {v2, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_9
    if-eqz v9, :cond_0

    :goto_a
    invoke-interface {v2, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    if-ge v4, v6, :cond_15

    move v5, v8

    goto :goto_b

    :cond_15
    const/4 v5, 0x0

    :goto_b
    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    if-ge v4, v6, :cond_16

    add-int/lit8 v5, v5, 0x1

    :cond_16
    iget v4, v12, Landroid/support/v7/widget/c;->mv:I

    iget v6, v11, Landroid/support/v7/widget/c;->mv:I

    if-gt v4, v6, :cond_17

    iget v4, v11, Landroid/support/v7/widget/c;->mv:I

    iget v6, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v4, v6

    iput v4, v11, Landroid/support/v7/widget/c;->mv:I

    :cond_17
    iget v4, v12, Landroid/support/v7/widget/c;->mv:I

    iget v6, v11, Landroid/support/v7/widget/c;->mx:I

    if-gt v4, v6, :cond_18

    iget v4, v11, Landroid/support/v7/widget/c;->mx:I

    iget v6, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v4, v6

    iput v4, v11, Landroid/support/v7/widget/c;->mx:I

    :cond_18
    iget v4, v12, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v4, v5

    iput v4, v12, Landroid/support/v7/widget/c;->mv:I

    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_19
    iget v5, v11, Landroid/support/v7/widget/c;->mx:I

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    if-ge v5, v6, :cond_1a

    iget v5, v12, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v5, v4

    iput v5, v12, Landroid/support/v7/widget/c;->mv:I

    goto :goto_c

    :cond_1a
    iget v5, v11, Landroid/support/v7/widget/c;->mx:I

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    iget v8, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v6, v8

    if-ge v5, v6, :cond_1b

    iget v5, v12, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v5, v4

    iput v5, v12, Landroid/support/v7/widget/c;->mx:I

    iget-object v5, v1, Landroid/support/v7/widget/K;->oA:Landroid/support/v7/widget/L;

    iget v6, v11, Landroid/support/v7/widget/c;->mv:I

    iget-object v8, v12, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-interface {v5, v10, v6, v4, v8}, Landroid/support/v7/widget/L;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v5

    goto :goto_d

    :cond_1b
    :goto_c
    move-object v5, v9

    :goto_d
    iget v6, v11, Landroid/support/v7/widget/c;->mv:I

    iget v8, v12, Landroid/support/v7/widget/c;->mv:I

    if-gt v6, v8, :cond_1c

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v6, v4

    iput v6, v12, Landroid/support/v7/widget/c;->mv:I

    goto :goto_e

    :cond_1c
    iget v6, v11, Landroid/support/v7/widget/c;->mv:I

    iget v8, v12, Landroid/support/v7/widget/c;->mv:I

    iget v13, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v8, v13

    if-ge v6, v8, :cond_1d

    iget v6, v12, Landroid/support/v7/widget/c;->mv:I

    iget v8, v12, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v6, v8

    iget v8, v11, Landroid/support/v7/widget/c;->mv:I

    sub-int/2addr v6, v8

    iget-object v8, v1, Landroid/support/v7/widget/K;->oA:Landroid/support/v7/widget/L;

    iget v9, v11, Landroid/support/v7/widget/c;->mv:I

    add-int/2addr v9, v4

    iget-object v4, v12, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-interface {v8, v10, v9, v6, v4}, Landroid/support/v7/widget/L;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v9

    iget v4, v12, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr v4, v6

    iput v4, v12, Landroid/support/v7/widget/c;->mx:I

    :cond_1d
    :goto_e
    invoke-interface {v2, v7, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v4, v12, Landroid/support/v7/widget/c;->mx:I

    if-lez v4, :cond_1e

    invoke-interface {v2, v3, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_1e
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, v1, Landroid/support/v7/widget/K;->oA:Landroid/support/v7/widget/L;

    invoke-interface {v4, v12}, Landroid/support/v7/widget/L;->c(Landroid/support/v7/widget/c;)V

    :goto_f
    if-eqz v5, :cond_1f

    invoke-interface {v2, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1f
    if-eqz v9, :cond_0

    goto/16 :goto_a

    .line 93
    :cond_20
    iget-object v1, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 94
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_33

    .line 95
    iget-object v3, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/c;

    .line 96
    iget v11, v3, Landroid/support/v7/widget/c;->bZ:I

    if-eq v11, v10, :cond_2a

    if-eq v11, v7, :cond_29

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_1a

    .line 101
    :pswitch_2
    iget v11, v3, Landroid/support/v7/widget/c;->mv:I

    iget v12, v3, Landroid/support/v7/widget/c;->mv:I

    iget v13, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v12, v13

    iget v13, v3, Landroid/support/v7/widget/c;->mv:I

    move v15, v8

    const/4 v14, 0x0

    :goto_11
    if-ge v13, v12, :cond_26

    iget-object v5, v0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v5, v13}, Landroid/support/v7/widget/b;->L(I)Landroid/support/v7/widget/aA;

    move-result-object v5

    if-nez v5, :cond_23

    invoke-direct {v0, v13}, Landroid/support/v7/widget/a;->I(I)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_13

    :cond_21
    if-ne v15, v4, :cond_22

    invoke-virtual {v0, v6, v11, v14, v9}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/c;)V

    move v5, v4

    goto :goto_12

    :cond_22
    const/4 v5, 0x0

    :goto_12
    const/4 v15, 0x0

    goto :goto_15

    :cond_23
    :goto_13
    if-nez v15, :cond_24

    invoke-virtual {v0, v6, v11, v14, v9}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/c;)V

    move v5, v4

    goto :goto_14

    :cond_24
    const/4 v5, 0x0

    :goto_14
    move v15, v4

    :goto_15
    if-eqz v5, :cond_25

    sub-int/2addr v13, v14

    sub-int/2addr v12, v14

    move v14, v4

    goto :goto_16

    :cond_25
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    :goto_16
    add-int/2addr v13, v4

    goto :goto_11

    :cond_26
    iget v5, v3, Landroid/support/v7/widget/c;->mx:I

    if-eq v14, v5, :cond_27

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    invoke-virtual {v0, v6, v11, v14, v9}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v3

    :cond_27
    if-nez v15, :cond_28

    invoke-direct {v0, v3}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/c;)V

    goto/16 :goto_1a

    :cond_28
    invoke-direct {v0, v3}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/c;)V

    .line 102
    goto :goto_1a

    .line 98
    :pswitch_3
    invoke-direct {v0, v3}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/c;)V

    .line 99
    goto :goto_1a

    .line 107
    :cond_29
    invoke-direct {v0, v3}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/c;)V

    goto :goto_1a

    .line 104
    :cond_2a
    iget v5, v3, Landroid/support/v7/widget/c;->mv:I

    iget v11, v3, Landroid/support/v7/widget/c;->mv:I

    iget v12, v3, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v11, v12

    iget v12, v3, Landroid/support/v7/widget/c;->mv:I

    move v14, v5

    move v13, v8

    const/4 v5, 0x0

    :goto_17
    if-ge v12, v11, :cond_2f

    iget-object v15, v0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v15, v12}, Landroid/support/v7/widget/b;->L(I)Landroid/support/v7/widget/aA;

    move-result-object v15

    if-nez v15, :cond_2d

    invoke-direct {v0, v12}, Landroid/support/v7/widget/a;->I(I)Z

    move-result v15

    if-eqz v15, :cond_2b

    goto :goto_18

    :cond_2b
    if-ne v13, v4, :cond_2c

    iget-object v13, v3, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-virtual {v0, v10, v14, v5, v13}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/c;)V

    move v14, v12

    const/4 v5, 0x0

    :cond_2c
    const/4 v13, 0x0

    goto :goto_19

    :cond_2d
    :goto_18
    if-nez v13, :cond_2e

    iget-object v13, v3, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-virtual {v0, v10, v14, v5, v13}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/c;)V

    move v14, v12

    const/4 v5, 0x0

    :cond_2e
    move v13, v4

    :goto_19
    add-int/2addr v5, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_2f
    iget v11, v3, Landroid/support/v7/widget/c;->mx:I

    if-eq v5, v11, :cond_30

    iget-object v11, v3, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    invoke-virtual {v0, v10, v14, v5, v11}, Landroid/support/v7/widget/a;->a(IIILjava/lang/Object;)Landroid/support/v7/widget/c;

    move-result-object v3

    :cond_30
    if-nez v13, :cond_31

    invoke-direct {v0, v3}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/c;)V

    goto :goto_1a

    :cond_31
    invoke-direct {v0, v3}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/c;)V

    .line 105
    nop

    .line 110
    :goto_1a
    iget-object v3, v0, Landroid/support/v7/widget/a;->mr:Ljava/lang/Runnable;

    if-eqz v3, :cond_32

    .line 111
    iget-object v3, v0, Landroid/support/v7/widget/a;->mr:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 114
    :cond_33
    iget-object v0, v0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method final aZ()V
    .locals 5

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 119
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 120
    iget-object v3, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget-object v4, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/c;

    invoke-interface {v3, v4}, Landroid/support/v7/widget/b;->e(Landroid/support/v7/widget/c;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->d(Ljava/util/List;)V

    .line 123
    iput v1, p0, Landroid/support/v7/widget/a;->mu:I

    .line 124
    return-void
.end method

.method final ba()Z
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final bb()V
    .locals 7

    .line 556
    invoke-virtual {p0}, Landroid/support/v7/widget/a;->aZ()V

    .line 557
    iget-object v0, p0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 559
    iget-object v3, p0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/c;

    .line 560
    iget v4, v3, Landroid/support/v7/widget/c;->bZ:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 566
    :pswitch_0
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/b;->e(Landroid/support/v7/widget/c;)V

    .line 567
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v5, v3, Landroid/support/v7/widget/c;->mv:I

    iget v3, v3, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/b;->k(II)V

    .line 568
    goto :goto_1

    .line 562
    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/b;->e(Landroid/support/v7/widget/c;)V

    .line 563
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v5, v3, Landroid/support/v7/widget/c;->mv:I

    iget v3, v3, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/b;->m(II)V

    .line 564
    goto :goto_1

    .line 574
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/b;->e(Landroid/support/v7/widget/c;)V

    .line 575
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v5, v3, Landroid/support/v7/widget/c;->mv:I

    iget v3, v3, Landroid/support/v7/widget/c;->mx:I

    invoke-interface {v4, v5, v3}, Landroid/support/v7/widget/b;->n(II)V

    goto :goto_1

    .line 570
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    invoke-interface {v4, v3}, Landroid/support/v7/widget/b;->e(Landroid/support/v7/widget/c;)V

    .line 571
    iget-object v4, p0, Landroid/support/v7/widget/a;->mq:Landroid/support/v7/widget/b;

    iget v5, v3, Landroid/support/v7/widget/c;->mv:I

    iget v6, v3, Landroid/support/v7/widget/c;->mx:I

    iget-object v3, v3, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Landroid/support/v7/widget/b;->a(IILjava/lang/Object;)V

    .line 572
    nop

    .line 578
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/a;->mr:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 579
    iget-object v3, p0, Landroid/support/v7/widget/a;->mr:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 558
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->d(Ljava/util/List;)V

    .line 583
    iput v1, p0, Landroid/support/v7/widget/a;->mu:I

    .line 584
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/support/v7/widget/c;)V
    .locals 1

    .line 740
    iget-boolean v0, p0, Landroid/support/v7/widget/a;->ms:Z

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/c;->mw:Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Landroid/support/v7/widget/a;->mn:Landroid/support/v4/c/r;

    invoke-interface {v0, p1}, Landroid/support/v4/c/r;->m(Ljava/lang/Object;)Z

    .line 744
    :cond_0
    return-void
.end method

.method final d(Ljava/util/List;)V
    .locals 3

    .line 747
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 748
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 749
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/c;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/a;->c(Landroid/support/v7/widget/c;)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 752
    return-void
.end method

.method final j(II)I
    .locals 4

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    :goto_0
    if-ge p2, v0, :cond_6

    .line 473
    iget-object v1, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/c;

    .line 474
    iget v2, v1, Landroid/support/v7/widget/c;->bZ:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 475
    iget v2, v1, Landroid/support/v7/widget/c;->mv:I

    if-ne v2, p1, :cond_0

    .line 476
    iget p1, v1, Landroid/support/v7/widget/c;->mx:I

    goto :goto_1

    .line 478
    :cond_0
    iget v2, v1, Landroid/support/v7/widget/c;->mv:I

    if-ge v2, p1, :cond_1

    .line 479
    add-int/lit8 p1, p1, -0x1

    .line 481
    :cond_1
    iget v1, v1, Landroid/support/v7/widget/c;->mx:I

    if-gt v1, p1, :cond_5

    .line 482
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 485
    :cond_2
    iget v2, v1, Landroid/support/v7/widget/c;->mv:I

    if-gt v2, p1, :cond_5

    .line 486
    iget v2, v1, Landroid/support/v7/widget/c;->bZ:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 487
    iget v2, v1, Landroid/support/v7/widget/c;->mv:I

    iget v3, v1, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_3

    .line 488
    const/4 p1, -0x1

    return p1

    .line 490
    :cond_3
    iget v1, v1, Landroid/support/v7/widget/c;->mx:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 491
    :cond_4
    iget v2, v1, Landroid/support/v7/widget/c;->bZ:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 492
    iget v1, v1, Landroid/support/v7/widget/c;->mx:I

    add-int/2addr p1, v1

    .line 472
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 496
    :cond_6
    return p1
.end method

.method final reset()V
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/a;->mo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->d(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/a;->mp:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/a;->d(Ljava/util/List;)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a;->mu:I

    .line 89
    return-void
.end method
