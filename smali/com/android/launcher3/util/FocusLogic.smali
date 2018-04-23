.class public Lcom/android/launcher3/util/FocusLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static createFullMatrix(II)[[I
    .locals 3

    .line 151
    filled-new-array {p0, p1}, [I

    move-result-object p1

    const-class v0, I

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    .line 153
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 154
    aget-object v1, p1, v0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object p1
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 166
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 167
    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 168
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v2

    .line 170
    invoke-static {v1, p0}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object p0

    .line 173
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 174
    invoke-virtual {v0, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 179
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 180
    if-eqz v2, :cond_0

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, -0x1

    :cond_0
    aget-object v5, p0, v5

    aput v3, v5, v4

    .line 173
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_2
    return-object p0
.end method

.method public static createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 198
    iget-object v1, p1, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 200
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    .line 201
    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 208
    iget v2, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 209
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget p1, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/2addr v3, p1

    goto :goto_0

    .line 211
    :cond_0
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v3, p1, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/2addr v2, v3

    .line 212
    iget v3, p1, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 214
    :goto_0
    invoke-static {v2, v3}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object p1

    .line 215
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 229
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 234
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 235
    aget-object v4, p1, v4

    aput v2, v4, v3

    .line 228
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_4

    .line 251
    if-eqz p2, :cond_3

    .line 252
    nop

    .line 253
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 254
    aget-object v3, p1, v3

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v5, v2

    aput v5, v3, v4

    .line 255
    goto :goto_3

    .line 256
    :cond_3
    nop

    .line 257
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 258
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    aget-object v4, p1, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/2addr v5, v2

    aput v5, v4, v3

    .line 250
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 264
    :cond_4
    return-object p1
.end method

.method public static createSparseMatrixWithPivotColumn(Lcom/android/launcher3/CellLayout;II)[[I
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 283
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {v1, p0}, Lcom/android/launcher3/util/FocusLogic;->createFullMatrix(II)[[I

    move-result-object p0

    .line 286
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 288
    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 292
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 293
    if-gez p1, :cond_0

    .line 294
    sub-int/2addr v4, p1

    aget-object v4, p0, v4

    aput v2, v4, v3

    goto :goto_1

    .line 296
    :cond_0
    aget-object v4, p0, v4

    aput v2, v4, v3

    .line 286
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_2
    const/16 v0, 0x64

    if-gez p1, :cond_3

    .line 301
    aget-object p1, p0, v1

    aput v0, p1, p2

    goto :goto_2

    .line 303
    :cond_3
    aget-object p1, p0, p1

    aput v0, p1, p2

    .line 308
    :goto_2
    return-object p0
.end method

.method private static handleDpadHorizontal(III[[IIZ)I
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 327
    if-nez v3, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dpad navigation requires a matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    nop

    .line 332
    nop

    .line 333
    nop

    .line 335
    const/4 v6, -0x1

    move v8, v6

    move v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_3

    .line 336
    move v10, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_2

    .line 337
    aget-object v11, v3, v7

    aget v11, v11, v8

    if-ne v11, v0, :cond_1

    .line 338
    nop

    .line 339
    nop

    .line 336
    move v9, v7

    move v10, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 335
    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    move v9, v10

    goto :goto_0

    .line 349
    :cond_3
    add-int v7, v8, v4

    move v10, v6

    :goto_2
    const/16 v11, -0xb

    if-ltz v7, :cond_5

    if-ge v7, v1, :cond_5

    .line 350
    invoke-static {v7, v9, v1, v2, v3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v10

    if-eq v10, v6, :cond_4

    if-eq v10, v11, :cond_4

    .line 352
    return v10

    .line 349
    :cond_4
    add-int/2addr v7, v4

    goto :goto_2

    .line 360
    :cond_5
    nop

    .line 361
    nop

    .line 362
    move v12, v10

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    if-ge v10, v2, :cond_d

    .line 364
    mul-int v15, v10, v4

    add-int v5, v9, v15

    .line 365
    sub-int v7, v9, v15

    .line 366
    add-int/2addr v15, v8

    .line 367
    invoke-static {v15, v5, v1, v2, v3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v6

    if-ne v6, v11, :cond_6

    .line 368
    nop

    .line 370
    const/4 v13, 0x1

    :cond_6
    invoke-static {v15, v7, v1, v2, v3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v6

    if-ne v6, v11, :cond_7

    .line 371
    nop

    .line 373
    const/4 v14, 0x1

    :cond_7
    :goto_4
    if-ltz v15, :cond_c

    if-ge v15, v1, :cond_c

    .line 374
    if-eqz v13, :cond_8

    add-int/lit8 v6, v1, -0x1

    if-ge v15, v6, :cond_8

    .line 375
    move v6, v4

    goto :goto_5

    .line 374
    :cond_8
    nop

    .line 375
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v6, v5

    invoke-static {v15, v6, v1, v2, v3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v6

    .line 376
    const/4 v12, -0x1

    if-eq v6, v12, :cond_9

    .line 377
    return v6

    .line 379
    :cond_9
    if-eqz v14, :cond_a

    add-int/lit8 v6, v1, -0x1

    if-ge v15, v6, :cond_a

    neg-int v6, v4

    goto :goto_6

    .line 380
    :cond_a
    const/4 v6, 0x0

    :goto_6
    add-int/2addr v6, v7

    invoke-static {v15, v6, v1, v2, v3}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v12

    .line 381
    const/4 v6, -0x1

    if-eq v12, v6, :cond_b

    .line 382
    return v12

    .line 373
    :cond_b
    add-int/2addr v15, v4

    goto :goto_4

    .line 363
    :cond_c
    const/4 v6, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 389
    :cond_d
    const/16 v1, 0x64

    if-ne v0, v1, :cond_11

    .line 390
    const/4 v0, -0x4

    const/4 v1, -0x8

    if-eqz p5, :cond_f

    .line 391
    if-gez v4, :cond_e

    return v1

    :cond_e
    return v0

    .line 393
    :cond_f
    if-gez v4, :cond_10

    return v0

    :cond_10
    return v1

    .line 395
    :cond_11
    return v12
.end method

.method private static handleDpadVertical(III[[II)I
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 410
    move/from16 v3, p4

    .line 411
    if-nez v2, :cond_0

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dpad navigation requires a matrix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    nop

    .line 416
    nop

    .line 418
    const/4 v5, -0x1

    move v7, v5

    move v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    .line 419
    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_2

    .line 420
    aget-object v10, v2, v6

    aget v10, v10, v7

    move/from16 v11, p0

    if-ne v10, v11, :cond_1

    .line 421
    nop

    .line 422
    nop

    .line 419
    move v9, v6

    move v8, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 418
    :cond_2
    move/from16 v11, p0

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    move v8, v9

    goto :goto_0

    .line 433
    :cond_3
    add-int v6, v7, v3

    move v9, v5

    :goto_2
    const/16 v10, -0xb

    if-ltz v6, :cond_5

    if-ge v6, v1, :cond_5

    if-ltz v6, :cond_5

    .line 434
    invoke-static {v8, v6, v0, v1, v2}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v9

    if-eq v9, v5, :cond_4

    if-eq v9, v10, :cond_4

    .line 436
    return v9

    .line 433
    :cond_4
    add-int/2addr v6, v3

    goto :goto_2

    .line 444
    :cond_5
    nop

    .line 445
    nop

    .line 446
    move v11, v9

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    if-ge v9, v0, :cond_d

    .line 448
    mul-int v14, v9, v3

    add-int v15, v8, v14

    .line 449
    sub-int v4, v8, v14

    .line 450
    add-int/2addr v14, v7

    .line 451
    invoke-static {v15, v14, v0, v1, v2}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 452
    nop

    .line 454
    const/4 v12, 0x1

    :cond_6
    invoke-static {v4, v14, v0, v1, v2}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v6

    if-ne v6, v10, :cond_7

    .line 455
    nop

    .line 457
    const/4 v13, 0x1

    :cond_7
    :goto_4
    if-ltz v14, :cond_c

    if-ge v14, v1, :cond_c

    .line 458
    if-eqz v12, :cond_8

    add-int/lit8 v6, v1, -0x1

    if-ge v14, v6, :cond_8

    .line 459
    move v6, v3

    goto :goto_5

    .line 458
    :cond_8
    nop

    .line 459
    const/4 v6, 0x0

    :goto_5
    add-int/2addr v6, v15

    invoke-static {v6, v14, v0, v1, v2}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v6

    .line 460
    if-eq v6, v5, :cond_9

    .line 461
    return v6

    .line 463
    :cond_9
    if-eqz v13, :cond_a

    add-int/lit8 v6, v1, -0x1

    if-ge v14, v6, :cond_a

    neg-int v6, v3

    goto :goto_6

    .line 464
    :cond_a
    const/4 v6, 0x0

    :goto_6
    add-int/2addr v6, v4

    invoke-static {v6, v14, v0, v1, v2}, Lcom/android/launcher3/util/FocusLogic;->inspectMatrix(IIII[[I)I

    move-result v11

    .line 465
    if-eq v11, v5, :cond_b

    .line 466
    return v11

    .line 457
    :cond_b
    add-int/2addr v14, v3

    goto :goto_4

    .line 447
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 470
    :cond_d
    return v11
.end method

.method public static handleKeyEvent(I[[IIIIZ)I
    .locals 9

    .line 87
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 88
    move v3, v0

    goto :goto_0

    .line 87
    :cond_0
    array-length v1, p1

    .line 88
    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    .line 96
    move v4, v0

    goto :goto_1

    .line 88
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    .line 96
    move v4, v1

    .line 97
    :goto_1
    const/4 v1, -0x6

    const/4 v2, -0x7

    const/4 v8, 0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_5

    .line 124
    :sswitch_0
    nop

    .line 125
    nop

    .line 131
    move v0, v2

    goto/16 :goto_5

    .line 121
    :sswitch_1
    nop

    .line 122
    nop

    .line 131
    :goto_2
    move v0, v1

    goto/16 :goto_5

    .line 127
    :sswitch_2
    sub-int/2addr p4, v8

    if-ge p3, p4, :cond_2

    const/4 p0, -0x8

    .line 128
    move v0, p0

    goto :goto_3

    .line 127
    :cond_2
    nop

    .line 128
    move v0, v2

    :goto_3
    goto :goto_5

    .line 130
    :sswitch_3
    if-lez p3, :cond_3

    const/4 p0, -0x3

    goto :goto_4

    :cond_3
    goto :goto_2

    .line 107
    :sswitch_4
    const/4 v6, 0x1

    move v2, p2

    move-object v5, p1

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[IIZ)I

    move-result p0

    .line 108
    if-nez p5, :cond_4

    if-ne p0, v0, :cond_4

    sub-int/2addr p4, v8

    if-ge p3, p4, :cond_4

    .line 109
    const/16 p0, -0x9

    goto :goto_4

    .line 110
    :cond_4
    if-eqz p5, :cond_6

    if-ne p0, v0, :cond_6

    if-lez p3, :cond_6

    .line 111
    const/4 p0, -0x5

    goto :goto_4

    .line 99
    :sswitch_5
    const/4 v6, -0x1

    move v2, p2

    move-object v5, p1

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/util/FocusLogic;->handleDpadHorizontal(III[[IIZ)I

    move-result p0

    .line 100
    if-nez p5, :cond_5

    if-ne p0, v0, :cond_5

    if-lez p3, :cond_5

    .line 101
    const/4 p0, -0x2

    goto :goto_4

    .line 102
    :cond_5
    if-eqz p5, :cond_6

    if-ne p0, v0, :cond_6

    sub-int/2addr p4, v8

    if-ge p3, p4, :cond_6

    .line 103
    const/16 p0, -0xa

    .line 131
    :cond_6
    :goto_4
    move v0, p0

    goto :goto_5

    .line 115
    :sswitch_6
    invoke-static {p2, v3, v4, p1, v8}, Lcom/android/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result p0

    .line 116
    goto :goto_4

    .line 118
    :sswitch_7
    invoke-static {p2, v3, v4, p1, v0}, Lcom/android/launcher3/util/FocusLogic;->handleDpadVertical(III[[II)I

    move-result p0

    .line 119
    goto :goto_4

    .line 131
    :goto_5
    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static inspectMatrix(IIII[[I)I
    .locals 0

    .line 505
    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, -0x1

    if-eqz p2, :cond_1

    .line 507
    aget-object p2, p4, p0

    aget p2, p2, p1

    if-eq p2, p3, :cond_1

    .line 508
    aget-object p0, p4, p0

    aget p0, p0, p1

    .line 513
    return p0

    .line 516
    :cond_1
    return p3
.end method

.method public static shouldConsume(I)Z
    .locals 1

    .line 78
    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
