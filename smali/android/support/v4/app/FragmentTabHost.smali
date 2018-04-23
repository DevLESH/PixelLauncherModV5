.class public Landroid/support/v4/app/FragmentTabHost;
.super Landroid/widget/TabHost;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field private cO:I

.field private final eV:Ljava/util/ArrayList;

.field private eW:Landroid/support/v4/app/w;

.field private eX:Landroid/widget/TabHost$OnTabChangeListener;

.field private eY:Landroid/support/v4/app/Q;

.field private eZ:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method private a(Ljava/lang/String;Landroid/support/v4/app/R;)Landroid/support/v4/app/R;
    .locals 4

    .line 334
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->eV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->eV:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Q;

    iget-object v3, v2, Landroid/support/v4/app/Q;->tag:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 335
    :goto_1
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->eY:Landroid/support/v4/app/Q;

    if-eq p1, v2, :cond_6

    .line 336
    if-nez p2, :cond_2

    .line 337
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->eW:Landroid/support/v4/app/w;

    invoke-virtual {p1}, Landroid/support/v4/app/w;->Y()Landroid/support/v4/app/R;

    move-result-object p2

    .line 340
    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->eY:Landroid/support/v4/app/Q;

    if-eqz p1, :cond_3

    .line 341
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->eY:Landroid/support/v4/app/Q;

    iget-object p1, p1, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_3

    .line 342
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->eY:Landroid/support/v4/app/Q;

    iget-object p1, p1, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/R;

    .line 346
    :cond_3
    if-eqz v2, :cond_5

    .line 347
    iget-object p1, v2, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    if-nez p1, :cond_4

    .line 348
    iget-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->mContext:Landroid/content/Context;

    iget-object v0, v2, Landroid/support/v4/app/Q;->fb:Ljava/lang/Class;

    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Landroid/support/v4/app/Q;->fc:Landroid/os/Bundle;

    .line 348
    invoke-static {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    iput-object p1, v2, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    .line 350
    iget p1, p0, Landroid/support/v4/app/FragmentTabHost;->cO:I

    iget-object v0, v2, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    iget-object v1, v2, Landroid/support/v4/app/Q;->tag:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/app/R;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/R;

    goto :goto_2

    .line 352
    :cond_4
    iget-object p1, v2, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, p1}, Landroid/support/v4/app/R;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/R;

    .line 356
    :cond_5
    :goto_2
    iput-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->eY:Landroid/support/v4/app/Q;

    .line 359
    :cond_6
    return-object p2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 7

    .line 256
    invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 262
    nop

    .line 263
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost;->eV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 264
    iget-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->eV:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Q;

    .line 265
    iget-object v5, p0, Landroid/support/v4/app/FragmentTabHost;->eW:Landroid/support/v4/app/w;

    iget-object v6, v4, Landroid/support/v4/app/Q;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/w;->c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    .line 266
    iget-object v5, v4, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    iget-boolean v5, v5, Landroid/support/v4/app/Fragment;->cR:Z

    if-nez v5, :cond_2

    .line 267
    iget-object v5, v4, Landroid/support/v4/app/Q;->tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 271
    iput-object v4, p0, Landroid/support/v4/app/FragmentTabHost;->eY:Landroid/support/v4/app/Q;

    goto :goto_1

    .line 275
    :cond_0
    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Landroid/support/v4/app/FragmentTabHost;->eW:Landroid/support/v4/app/w;

    invoke-virtual {v2}, Landroid/support/v4/app/w;->Y()Landroid/support/v4/app/R;

    move-result-object v2

    .line 278
    :cond_1
    iget-object v4, v4, Landroid/support/v4/app/Q;->ca:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v4}, Landroid/support/v4/app/R;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/R;

    .line 263
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->eZ:Z

    .line 286
    invoke-direct {p0, v0, v2}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/R;)Landroid/support/v4/app/R;

    move-result-object v0

    .line 287
    if-eqz v0, :cond_4

    .line 288
    invoke-virtual {v0}, Landroid/support/v4/app/R;->commit()I

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->eW:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->executePendingTransactions()Z

    .line 291
    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 295
    invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->eZ:Z

    .line 297
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 309
    instance-of v0, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    if-nez v0, :cond_0

    .line 310
    invoke-super {p0, p1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    return-void

    .line 313
    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    .line 314
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 315
    iget-object p1, p1, Landroid/support/v4/app/FragmentTabHost$SavedState;->fa:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 301
    invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/support/v4/app/FragmentTabHost$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 303
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v4/app/FragmentTabHost$SavedState;->fa:Ljava/lang/String;

    .line 304
    return-object v1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 320
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->eZ:Z

    if-eqz v0, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/FragmentTabHost;->a(Ljava/lang/String;Landroid/support/v4/app/R;)Landroid/support/v4/app/R;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/support/v4/app/R;->commit()I

    .line 326
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->eX:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Landroid/support/v4/app/FragmentTabHost;->eX:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 329
    :cond_1
    return-void
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Landroid/support/v4/app/FragmentTabHost;->eX:Landroid/widget/TabHost$OnTabChangeListener;

    .line 229
    return-void
.end method

.method public setup()V
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setup() that takes a Context and FragmentManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
