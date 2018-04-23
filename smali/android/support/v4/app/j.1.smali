.class public Landroid/support/v4/app/j;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field ck:I

.field cl:I

.field cm:Z

.field public cn:Z

.field co:I

.field cp:Landroid/app/Dialog;

.field cq:Z

.field cr:Z

.field cs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/j;->ck:I

    .line 90
    iput v0, p0, Landroid/support/v4/app/j;->cl:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cm:Z

    .line 92
    iput-boolean v0, p0, Landroid/support/v4/app/j;->cn:Z

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/j;->co:I

    .line 101
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/w;Ljava/lang/String;)V
    .locals 1

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cr:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cs:Z

    .line 141
    invoke-virtual {p1}, Landroid/support/v4/app/w;->Y()Landroid/support/v4/app/R;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/R;

    .line 143
    invoke-virtual {p1}, Landroid/support/v4/app/R;->commit()I

    .line 144
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 396
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 398
    iget-boolean v0, p0, Landroid/support/v4/app/j;->cn:Z

    if-nez v0, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 403
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 405
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 410
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/j;->t()Landroid/support/v4/app/p;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_3

    .line 412
    iget-object v1, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 414
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/j;->cm:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 415
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 416
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 417
    if-eqz p1, :cond_4

    .line 418
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 419
    if-eqz p1, :cond_4

    .line 420
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 423
    :cond_4
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    .line 285
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 286
    iget-boolean p1, p0, Landroid/support/v4/app/j;->cs:Z

    if-nez p1, :cond_0

    .line 289
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/app/j;->cr:Z

    .line 291
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 381
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 306
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 308
    iget v0, p0, Landroid/support/v4/app/j;->cO:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/j;->cn:Z

    .line 310
    if-eqz p1, :cond_1

    .line 311
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->ck:I

    .line 312
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->cl:I

    .line 313
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cm:Z

    .line 314
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/j;->cn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cn:Z

    .line 315
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/j;->co:I

    .line 317
    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 474
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 475
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cq:Z

    .line 480
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    .line 483
    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 296
    iget-boolean v0, p0, Landroid/support/v4/app/j;->cs:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/j;->cr:Z

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cr:Z

    .line 302
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 385
    iget-boolean p1, p0, Landroid/support/v4/app/j;->cq:Z

    if-nez p1, :cond_1

    .line 390
    iget-boolean p1, p0, Landroid/support/v4/app/j;->cr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/j;->cr:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cs:Z

    iput-boolean p1, p0, Landroid/support/v4/app/j;->cq:Z

    iget v0, p0, Landroid/support/v4/app/j;->co:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    iget v1, p0, Landroid/support/v4/app/j;->co:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/w;->popBackStack(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/app/j;->co:I

    return-void

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->cI:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/w;->Y()Landroid/support/v4/app/R;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/R;

    invoke-virtual {p1}, Landroid/support/v4/app/R;->commitAllowingStateLoss()I

    return-void

    .line 392
    :cond_1
    return-void
.end method

.method public final onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .line 321
    iget-boolean v0, p0, Landroid/support/v4/app/j;->cn:Z

    if-nez v0, :cond_0

    .line 322
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/j;->r()Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    .line 327
    iget-object p1, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 328
    iget-object p1, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    iget v0, p0, Landroid/support/v4/app/j;->ck:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 330
    :goto_0
    iget-object p1, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 333
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/j;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 437
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_0

    .line 441
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 444
    :cond_0
    iget v0, p0, Landroid/support/v4/app/j;->ck:I

    if-eqz v0, :cond_1

    .line 445
    const-string v0, "android:style"

    iget v1, p0, Landroid/support/v4/app/j;->ck:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    :cond_1
    iget v0, p0, Landroid/support/v4/app/j;->cl:I

    if-eqz v0, :cond_2

    .line 448
    const-string v0, "android:theme"

    iget v1, p0, Landroid/support/v4/app/j;->cl:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 450
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/j;->cm:Z

    if-nez v0, :cond_3

    .line 451
    const-string v0, "android:cancelable"

    iget-boolean v1, p0, Landroid/support/v4/app/j;->cm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 453
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/j;->cn:Z

    if-nez v0, :cond_4

    .line 454
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Landroid/support/v4/app/j;->cn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    :cond_4
    iget v0, p0, Landroid/support/v4/app/j;->co:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 457
    const-string v0, "android:backStackId"

    iget v1, p0, Landroid/support/v4/app/j;->co:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    :cond_5
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 427
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 429
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->cq:Z

    .line 431
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 433
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 463
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 464
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/support/v4/app/j;->cp:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 467
    :cond_0
    return-void
.end method

.method public r()Landroid/app/Dialog;
    .locals 3

    .line 376
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->t()Landroid/support/v4/app/p;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/app/j;->cl:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
