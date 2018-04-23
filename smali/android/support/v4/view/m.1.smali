.class public Landroid/support/v4/view/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jv:Landroid/view/ViewParent;

.field private jw:Landroid/view/ViewParent;

.field public jx:Z

.field private jy:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    .line 57
    return-void
.end method

.method private a(ILandroid/view/ViewParent;)V
    .locals 0

    .line 392
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    iput-object p2, p0, Landroid/support/v4/view/m;->jw:Landroid/view/ViewParent;

    goto :goto_0

    .line 394
    :pswitch_1
    iput-object p2, p0, Landroid/support/v4/view/m;->jv:Landroid/view/ViewParent;

    .line 395
    return-void

    .line 400
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private x(I)Landroid/view/ViewParent;
    .locals 0

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 388
    const/4 p1, 0x0

    return-object p1

    .line 386
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/view/m;->jw:Landroid/view/ViewParent;

    return-object p1

    .line 384
    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/view/m;->jv:Landroid/view/ViewParent;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dispatchNestedFling(FFZ)Z
    .locals 2

    .line 326
    iget-boolean v0, p0, Landroid/support/v4/view/m;->jx:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, v1}, Landroid/support/v4/view/m;->x(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    .line 333
    :cond_0
    return v1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 2

    .line 346
    iget-boolean v0, p0, Landroid/support/v4/view/m;->jx:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0, v1}, Landroid/support/v4/view/m;->x(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    .line 353
    :cond_0
    return v1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 263
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/m;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[II)Z
    .locals 10

    .line 277
    iget-boolean v0, p0, Landroid/support/v4/view/m;->jx:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 278
    invoke-direct {p0, p5}, Landroid/support/v4/view/m;->x(I)Landroid/view/ViewParent;

    move-result-object v2

    .line 279
    if-nez v2, :cond_0

    .line 280
    return v1

    .line 283
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    if-eqz p4, :cond_9

    .line 309
    aput v1, p4, v1

    .line 310
    aput v1, p4, v0

    goto :goto_3

    .line 284
    :cond_2
    :goto_0
    nop

    .line 285
    nop

    .line 286
    if-eqz p4, :cond_3

    .line 287
    iget-object v3, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 288
    aget v3, p4, v1

    .line 289
    aget v4, p4, v0

    .line 292
    move v8, v3

    move v9, v4

    goto :goto_1

    :cond_3
    move v8, v1

    move v9, v8

    :goto_1
    if-nez p3, :cond_5

    .line 293
    iget-object p3, p0, Landroid/support/v4/view/m;->jy:[I

    if-nez p3, :cond_4

    .line 294
    const/4 p3, 0x2

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/support/v4/view/m;->jy:[I

    .line 296
    :cond_4
    iget-object p3, p0, Landroid/support/v4/view/m;->jy:[I

    .line 298
    :cond_5
    aput v1, p3, v1

    .line 299
    aput v1, p3, v0

    .line 300
    iget-object v3, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    move v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 302
    if-eqz p4, :cond_6

    .line 303
    iget-object p1, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 304
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 305
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 307
    :cond_6
    aget p1, p3, v1

    if-nez p1, :cond_8

    aget p1, p3, v0

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v0

    .line 313
    :cond_9
    :goto_3
    return v1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 7

    .line 203
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/m;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedScroll(IIII[II)Z
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p5

    .line 219
    iget-boolean v2, v0, Landroid/support/v4/view/m;->jx:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 220
    move/from16 v2, p6

    invoke-direct {v0, v2}, Landroid/support/v4/view/m;->x(I)Landroid/view/ViewParent;

    move-result-object v4

    .line 221
    if-nez v4, :cond_0

    .line 222
    return v3

    .line 225
    :cond_0
    const/4 v11, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    if-eqz v1, :cond_5

    .line 245
    aput v3, v1, v3

    .line 246
    aput v3, v1, v11

    goto :goto_2

    .line 226
    :cond_2
    :goto_0
    nop

    .line 227
    nop

    .line 228
    if-eqz v1, :cond_3

    .line 229
    iget-object v5, v0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 230
    aget v5, v1, v3

    .line 231
    aget v10, v1, v11

    .line 234
    move v12, v5

    move v13, v10

    goto :goto_1

    :cond_3
    move v12, v3

    move v13, v12

    :goto_1
    iget-object v5, v0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move v10, v2

    invoke-static/range {v4 .. v10}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 237
    if-eqz v1, :cond_4

    .line 238
    iget-object v0, v0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    aget v0, v1, v3

    sub-int/2addr v0, v12

    aput v0, v1, v3

    .line 240
    aget v0, v1, v11

    sub-int/2addr v0, v13

    aput v0, v1, v11

    .line 242
    :cond_4
    return v11

    .line 249
    :cond_5
    :goto_2
    return v3
.end method

.method public final hasNestedScrollingParent(I)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Landroid/support/v4/view/m;->x(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setNestedScrollingEnabled(Z)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Landroid/support/v4/view/m;->jx:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/s;->p(Landroid/view/View;)V

    .line 72
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/view/m;->jx:Z

    .line 73
    return-void
.end method

.method public final startNestedScroll(II)Z
    .locals 4

    .line 144
    invoke-virtual {p0, p2}, Landroid/support/v4/view/m;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 146
    return v1

    .line 148
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/view/m;->jx:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 150
    iget-object v2, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    .line 151
    :goto_0
    if-eqz v0, :cond_3

    .line 152
    iget-object v3, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-direct {p0, p2, v0}, Landroid/support/v4/view/m;->a(ILandroid/view/ViewParent;)V

    .line 154
    iget-object v3, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/W;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 155
    return v1

    .line 157
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 158
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 160
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final stopNestedScroll(I)V
    .locals 2

    .line 185
    invoke-direct {p0, p1}, Landroid/support/v4/view/m;->x(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Landroid/support/v4/view/m;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/W;->a(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/m;->a(ILandroid/view/ViewParent;)V

    .line 190
    :cond_0
    return-void
.end method
