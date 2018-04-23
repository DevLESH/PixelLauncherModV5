.class final Landroid/support/v4/app/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/c;
.implements Landroid/support/v4/a/d;


# instance fields
.field cT:Z

.field final eJ:I

.field final fO:Landroid/os/Bundle;

.field fP:Landroid/support/v4/app/ai;

.field fQ:Landroid/support/v4/a/b;

.field fR:Z

.field fS:Z

.field fT:Ljava/lang/Object;

.field fU:Z

.field fV:Z

.field fW:Z

.field fX:Landroid/support/v4/app/ak;

.field final synthetic fY:Landroid/support/v4/app/aj;

.field mDestroyed:Z

.field mStarted:Z


# virtual methods
.method final a(Landroid/support/v4/a/b;Ljava/lang/Object;)V
    .locals 4

    .line 492
    iget-object v0, p0, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    if-eqz v0, :cond_4

    .line 493
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v1, v1, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v0, v0, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    .line 496
    iget-object v1, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v1, v1, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    .line 499
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  onLoadFinished in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p2, p1}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object p1, p1, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    if-eqz p1, :cond_2

    .line 504
    iget-object p1, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object p1, p1, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iput-object v0, p1, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    .line 507
    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/ak;->fS:Z

    goto :goto_0

    .line 503
    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object p2, p2, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    if-eqz p2, :cond_3

    .line 504
    iget-object p2, p0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object p2, p2, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object p2, p2, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iput-object v0, p2, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    :cond_3
    throw p1

    .line 509
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    .line 525
    move-object v0, p0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Landroid/support/v4/app/ak;->eJ:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 526
    const-string v1, " mArgs="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/ak;->fO:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCallbacks="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLoader="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 529
    iget-object v1, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    if-eqz v1, :cond_3

    .line 530
    iget-object v1, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Landroid/support/v4/a/b;->eJ:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " mListener="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/support/v4/a/b;->hk:Landroid/support/v4/a/d;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v3, v1, Landroid/support/v4/a/b;->mStarted:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Landroid/support/v4/a/b;->ho:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Landroid/support/v4/a/b;->hp:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mStarted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v1, Landroid/support/v4/a/b;->mStarted:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mContentChanged="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v1, Landroid/support/v4/a/b;->ho:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " mProcessingChange="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v1, Landroid/support/v4/a/b;->hp:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v3, v1, Landroid/support/v4/a/b;->hm:Z

    if-nez v3, :cond_2

    iget-boolean v3, v1, Landroid/support/v4/a/b;->hn:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAbandoned="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Landroid/support/v4/a/b;->hm:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mReset="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v1, Landroid/support/v4/a/b;->hn:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 532
    :cond_3
    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fR:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fS:Z

    if-eqz v1, :cond_5

    .line 533
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mHaveData="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fR:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 534
    const-string v1, "  mDeliveredData="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fS:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 535
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mData="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/support/v4/app/ak;->fT:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 537
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mStarted="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->mStarted:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 538
    const-string v1, " mReportNextStart="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fV:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 539
    const-string v1, " mDestroyed="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->mDestroyed:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 540
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mRetaining="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->cT:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 541
    const-string v1, " mRetainingStarted="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fU:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 542
    const-string v1, " mListenerRegistered="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Landroid/support/v4/app/ak;->fW:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 543
    iget-object v1, v0, Landroid/support/v4/app/ak;->fX:Landroid/support/v4/app/ak;

    if-eqz v1, :cond_6

    .line 544
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Loader "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    iget-object v1, v0, Landroid/support/v4/app/ak;->fX:Landroid/support/v4/app/ak;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    iget-object v0, v0, Landroid/support/v4/app/ak;->fX:Landroid/support/v4/app/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 548
    :cond_6
    return-void
.end method

.method final destroy()V
    .locals 7

    .line 370
    move-object v0, p0

    :goto_0
    sget-boolean v1, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Destroying: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/ak;->mDestroyed:Z

    .line 372
    iget-boolean v2, v0, Landroid/support/v4/app/ak;->fS:Z

    .line 373
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/support/v4/app/ak;->fS:Z

    .line 374
    iget-object v4, v0, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Landroid/support/v4/app/ak;->fR:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 375
    sget-boolean v2, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "  Resetting: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1
    nop

    .line 377
    iget-object v2, v0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v2, v2, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    if-eqz v2, :cond_2

    .line 378
    iget-object v2, v0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v2, v2, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object v2, v2, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iget-object v2, v2, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    .line 379
    iget-object v4, v0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v4, v4, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object v4, v4, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    const-string v6, "onLoaderReset"

    iput-object v6, v4, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    goto :goto_1

    .line 382
    :cond_2
    move-object v2, v5

    :goto_1
    iget-object v4, v0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v4, v4, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    if-eqz v4, :cond_3

    .line 385
    iget-object v4, v0, Landroid/support/v4/app/ak;->fY:Landroid/support/v4/app/aj;

    iget-object v4, v4, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    iget-object v4, v4, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iput-object v2, v4, Landroid/support/v4/app/x;->ek:Ljava/lang/String;

    .line 384
    :cond_3
    iput-object v5, v0, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    .line 390
    iput-object v5, v0, Landroid/support/v4/app/ak;->fT:Ljava/lang/Object;

    .line 391
    iput-boolean v3, v0, Landroid/support/v4/app/ak;->fR:Z

    .line 392
    iget-object v2, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    if-eqz v2, :cond_5

    .line 393
    iget-boolean v2, v0, Landroid/support/v4/app/ak;->fW:Z

    if-eqz v2, :cond_4

    .line 394
    iput-boolean v3, v0, Landroid/support/v4/app/ak;->fW:Z

    .line 395
    iget-object v2, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v2, v0}, Landroid/support/v4/a/b;->a(Landroid/support/v4/a/d;)V

    .line 396
    iget-object v2, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v2, v0}, Landroid/support/v4/a/b;->a(Landroid/support/v4/a/c;)V

    .line 398
    :cond_4
    iget-object v2, v0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iput-boolean v1, v2, Landroid/support/v4/a/b;->hn:Z

    iput-boolean v3, v2, Landroid/support/v4/a/b;->mStarted:Z

    iput-boolean v3, v2, Landroid/support/v4/a/b;->hm:Z

    iput-boolean v3, v2, Landroid/support/v4/a/b;->ho:Z

    iput-boolean v3, v2, Landroid/support/v4/a/b;->hp:Z

    .line 400
    :cond_5
    iget-object v1, v0, Landroid/support/v4/app/ak;->fX:Landroid/support/v4/app/ak;

    if-eqz v1, :cond_6

    .line 401
    iget-object v0, v0, Landroid/support/v4/app/ak;->fX:Landroid/support/v4/app/ak;

    goto/16 :goto_0

    .line 403
    :cond_6
    return-void
.end method

.method final stop()V
    .locals 3

    .line 344
    sget-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ak;->mStarted:Z

    .line 346
    iget-boolean v1, p0, Landroid/support/v4/app/ak;->cT:Z

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/ak;->fW:Z

    if-eqz v1, :cond_1

    .line 349
    iput-boolean v0, p0, Landroid/support/v4/app/ak;->fW:Z

    .line 350
    iget-object v1, p0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v1, p0}, Landroid/support/v4/a/b;->a(Landroid/support/v4/a/d;)V

    .line 351
    iget-object v1, p0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v1, p0}, Landroid/support/v4/a/b;->a(Landroid/support/v4/a/c;)V

    .line 352
    iget-object v1, p0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iput-boolean v0, v1, Landroid/support/v4/a/b;->mStarted:Z

    .line 355
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 514
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    iget v1, p0, Landroid/support/v4/app/ak;->eJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 518
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v1, p0, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 520
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
