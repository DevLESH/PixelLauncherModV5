.class public Landroid/support/v4/app/p;
.super Landroid/support/v4/app/g;
.source "SourceFile"


# instance fields
.field cT:Z

.field final dE:Landroid/support/v4/app/u;

.field dF:Z

.field dG:Z

.field dH:Z

.field dI:I

.field dJ:Landroid/support/v4/c/v;

.field final mHandler:Landroid/os/Handler;

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    .line 81
    new-instance v0, Landroid/support/v4/app/q;

    invoke-direct {v0, p0}, Landroid/support/v4/app/q;-><init>(Landroid/support/v4/app/p;)V

    iput-object v0, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Landroid/support/v4/app/r;

    invoke-direct {v0, p0}, Landroid/support/v4/app/r;-><init>(Landroid/support/v4/app/p;)V

    new-instance v1, Landroid/support/v4/app/u;

    invoke-direct {v1, v0}, Landroid/support/v4/app/u;-><init>(Landroid/support/v4/app/v;)V

    iput-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/p;->mStopped:Z

    .line 105
    iput-boolean v0, p0, Landroid/support/v4/app/p;->dH:Z

    .line 883
    return-void
.end method

.method private V()V
    .locals 2

    .line 977
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/p;->U()Landroid/support/v4/app/w;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->C:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/w;Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    .line 978
    if-nez v0, :cond_0

    .line 979
    return-void
.end method

.method private static a(Landroid/support/v4/app/w;Landroid/arch/lifecycle/Lifecycle$State;)Z
    .locals 5

    .line 982
    nop

    .line 983
    invoke-virtual {p0}, Landroid/support/v4/app/w;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 984
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 985
    if-eqz v2, :cond_0

    .line 986
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->b()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/arch/lifecycle/Lifecycle;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v3

    sget-object v4, Landroid/arch/lifecycle/Lifecycle$State;->D:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    .line 989
    iget-object v1, v2, Landroid/support/v4/app/Fragment;->di:Landroid/arch/lifecycle/b;

    invoke-virtual {v1, p1}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 990
    nop

    .line 993
    move v1, v4

    :cond_2
    iget-object v2, v2, Landroid/support/v4/app/Fragment;->cK:Landroid/support/v4/app/x;

    .line 994
    if-eqz v2, :cond_3

    .line 995
    invoke-static {v2, p1}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/w;Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 997
    :cond_3
    goto :goto_0

    .line 998
    :cond_4
    return v1
.end method


# virtual methods
.method protected final T()V
    .locals 1

    .line 483
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchResume()V

    .line 484
    return-void
.end method

.method public final U()Landroid/support/v4/app/w;
    .locals 1

    .line 713
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    return-object v0
.end method

.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/x;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/support/v4/app/g;->b()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method final d(Z)V
    .locals 2

    .line 665
    iget-boolean v0, p0, Landroid/support/v4/app/p;->dH:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 666
    iput-boolean v1, p0, Landroid/support/v4/app/p;->dH:Z

    .line 667
    iput-boolean p1, p0, Landroid/support/v4/app/p;->cT:Z

    .line 668
    iget-object p1, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-boolean v0, p0, Landroid/support/v4/app/p;->cT:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/u;->doLoaderStop(Z)V

    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object p1, p1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v4/app/x;->o(I)V

    return-void

    .line 670
    :cond_0
    if-eqz p1, :cond_1

    .line 675
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p1}, Landroid/support/v4/app/u;->doLoaderStart()V

    .line 676
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/u;->doLoaderStop(Z)V

    .line 678
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 650
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/g;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 651
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 653
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    iget-boolean v1, p0, Landroid/support/v4/app/p;->dF:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    iget-boolean v1, p0, Landroid/support/v4/app/p;->dG:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    iget-boolean v1, p0, Landroid/support/v4/app/p;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-boolean v1, p0, Landroid/support/v4/app/p;->dH:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 660
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLoadersStarted="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, v1, Landroid/support/v4/app/v;->db:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, v1, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loader Manager "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/app/aj;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 661
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/w;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->noteStateNotSaved()V

    .line 137
    shr-int/lit8 v0, p1, 0x10

    .line 138
    if-eqz v0, :cond_2

    .line 139
    add-int/lit8 v0, v0, -0x1

    .line 141
    iget-object v1, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v1, v0}, Landroid/support/v4/c/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    iget-object v2, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v2, v0}, Landroid/support/v4/c/v;->remove(I)V

    .line 143
    if-nez v1, :cond_0

    .line 144
    const-string p1, "FragmentActivity"

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 148
    if-nez v0, :cond_1

    .line 149
    const-string p1, "FragmentActivity"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Activity result no fragment exists for who: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_1
    const v1, 0xffff

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    return-void

    .line 157
    :cond_2
    invoke-static {}, Landroid/support/v4/app/a;->n()Landroid/support/v4/app/b;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/support/v4/app/b;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    return-void

    .line 163
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onActivityResult(IILandroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 172
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    .line 173
    invoke-virtual {v0}, Landroid/support/v4/app/w;->isStateSaved()Z

    move-result v1

    .line 174
    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/w;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/g;->onBackPressed()V

    .line 184
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 275
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 276
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->noteStateNotSaved()V

    .line 277
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 278
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v1, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iget-object v2, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/v;Landroid/support/v4/app/t;Landroid/support/v4/app/Fragment;)V

    .line 298
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 300
    nop

    .line 301
    invoke-virtual {p0}, Landroid/support/v4/app/p;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/s;

    .line 302
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 303
    iget-object v2, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v4, v0, Landroid/support/v4/app/s;->dN:Landroid/support/v4/c/u;

    iget-object v2, v2, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v4/c/u;->size()I

    move-result v5

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v4, v6}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/aj;

    iput-object v2, v7, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput-object v4, v2, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    .line 305
    :cond_1
    if-eqz p1, :cond_5

    .line 306
    const-string v2, "android:support:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 307
    iget-object v4, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/support/v4/app/s;->dM:Landroid/support/v4/app/M;

    nop

    :cond_2
    iget-object v0, v4, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/x;->a(Landroid/os/Parcelable;Landroid/support/v4/app/M;)V

    .line 310
    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "android:support:next_request_index"

    .line 312
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/p;->dI:I

    .line 313
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 314
    const-string v2, "android:support:request_fragment_who"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 315
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    array-length v2, v0

    array-length v3, p1

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 319
    :cond_3
    new-instance v2, Landroid/support/v4/c/v;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/c/v;-><init>(I)V

    iput-object v2, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    .line 320
    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 321
    iget-object v3, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    aget v4, v0, v2

    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/c/v;->put(ILjava/lang/Object;)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 317
    :cond_4
    :goto_2
    const-string p1, "FragmentActivity"

    const-string v0, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_5
    iget-object p1, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    if-nez p1, :cond_6

    .line 328
    new-instance p1, Landroid/support/v4/c/v;

    invoke-direct {p1}, Landroid/support/v4/c/v;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    .line 329
    iput v1, p0, Landroid/support/v4/app/p;->dI:I

    .line 332
    :cond_6
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object p1, p1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->dispatchCreate()V

    .line 333
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    .line 340
    if-nez p1, :cond_0

    .line 341
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/g;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 342
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p0}, Landroid/support/v4/app/p;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/app/x;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 343
    return p1

    .line 345
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/g;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/g;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroid/support/v4/app/g;->onDestroy()V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/p;->d(Z)V

    .line 363
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchDestroy()V

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/v;->da:Landroid/support/v4/app/aj;

    invoke-virtual {v0}, Landroid/support/v4/app/aj;->as()V

    .line 365
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 372
    invoke-super {p0}, Landroid/support/v4/app/g;->onLowMemory()V

    .line 373
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchLowMemory()V

    .line 374
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 381
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/g;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const/4 p1, 0x1

    return p1

    .line 385
    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 393
    const/4 p1, 0x0

    return p1

    .line 390
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object p1, p1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/x;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 387
    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object p1, p1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object p1, p1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/x;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->dispatchMultiWindowModeChanged(Z)V

    .line 253
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 436
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onNewIntent(Landroid/content/Intent;)V

    .line 437
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p1}, Landroid/support/v4/app/u;->noteStateNotSaved()V

    .line 438
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .line 402
    if-eqz p1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/x;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 407
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/g;->onPanelClosed(ILandroid/view/Menu;)V

    .line 408
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 415
    invoke-super {p0}, Landroid/support/v4/app/g;->onPause()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->dG:Z

    .line 417
    iget-object v0, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    invoke-virtual {p0}, Landroid/support/v4/app/p;->T()V

    .line 421
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x;->o(I)V

    .line 422
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/x;->dispatchPictureInPictureModeChanged(Z)V

    .line 268
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 470
    invoke-super {p0}, Landroid/support/v4/app/g;->onPostResume()V

    .line 471
    iget-object v0, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    invoke-virtual {p0}, Landroid/support/v4/app/p;->T()V

    .line 473
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->execPendingActions()Z

    .line 474
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 491
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 492
    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 493
    iget-object p2, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object p2, p2, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object p2, p2, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {p2, p3}, Landroid/support/v4/app/x;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    .line 494
    return p1

    .line 496
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 771
    iget-object p2, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p2}, Landroid/support/v4/app/u;->noteStateNotSaved()V

    .line 772
    shr-int/lit8 p1, p1, 0x10

    const p2, 0xffff

    and-int/2addr p1, p2

    .line 773
    if-eqz p1, :cond_1

    .line 774
    add-int/lit8 p1, p1, -0x1

    .line 776
    iget-object p2, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {p2, p1}, Landroid/support/v4/c/v;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 777
    iget-object p3, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {p3, p1}, Landroid/support/v4/c/v;->remove(I)V

    .line 778
    if-nez p2, :cond_0

    .line 779
    const-string p1, "FragmentActivity"

    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void

    .line 782
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {p1, p2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 783
    if-nez p1, :cond_1

    .line 784
    const-string p1, "FragmentActivity"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Activity result no fragment exists for who: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 786
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 459
    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    .line 460
    iget-object v0, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/p;->dG:Z

    .line 462
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->execPendingActions()Z

    .line 463
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 10

    .line 514
    iget-boolean v0, p0, Landroid/support/v4/app/p;->mStopped:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0, v1}, Landroid/support/v4/app/p;->d(Z)V

    .line 518
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    iget-object v2, v0, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    invoke-static {v2}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/M;)V

    iget-object v0, v0, Landroid/support/v4/app/x;->es:Landroid/support/v4/app/M;

    .line 521
    iget-object v2, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v2, v2, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v3, v2, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v3}, Landroid/support/v4/c/u;->size()I

    move-result v3

    new-array v5, v3, [Landroid/support/v4/app/aj;

    add-int/lit8 v6, v3, -0x1

    :goto_0
    if-ltz v6, :cond_1

    iget-object v7, v2, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v7, v6}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/aj;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, v2, Landroid/support/v4/app/v;->dR:Z

    move v7, v4

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v8, v5, v4

    iget-boolean v9, v8, Landroid/support/v4/app/aj;->cT:Z

    if-nez v9, :cond_3

    if-eqz v6, :cond_3

    iget-boolean v9, v8, Landroid/support/v4/app/aj;->mStarted:Z

    if-nez v9, :cond_2

    invoke-virtual {v8}, Landroid/support/v4/app/aj;->an()V

    :cond_2
    invoke-virtual {v8}, Landroid/support/v4/app/aj;->ap()V

    :cond_3
    iget-boolean v9, v8, Landroid/support/v4/app/aj;->cT:Z

    if-eqz v9, :cond_4

    move v7, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/support/v4/app/aj;->as()V

    iget-object v9, v2, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    iget-object v8, v8, Landroid/support/v4/app/aj;->cx:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/support/v4/c/u;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v4, v7

    :cond_6
    const/4 v1, 0x0

    if-eqz v4, :cond_7

    iget-object v2, v2, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    goto :goto_3

    .line 523
    :cond_7
    move-object v2, v1

    :goto_3
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    .line 524
    return-object v1

    .line 527
    :cond_8
    new-instance v3, Landroid/support/v4/app/s;

    invoke-direct {v3}, Landroid/support/v4/app/s;-><init>()V

    .line 528
    iput-object v1, v3, Landroid/support/v4/app/s;->dL:Ljava/lang/Object;

    .line 529
    iput-object v0, v3, Landroid/support/v4/app/s;->dM:Landroid/support/v4/app/M;

    .line 530
    iput-object v2, v3, Landroid/support/v4/app/s;->dN:Landroid/support/v4/c/u;

    .line 531
    return-object v3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 539
    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 540
    invoke-direct {p0}, Landroid/support/v4/app/p;->V()V

    .line 541
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    .line 543
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 545
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 546
    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/p;->dI:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    iget-object v0, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 549
    iget-object v1, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v1}, Landroid/support/v4/c/v;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 550
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v3}, Landroid/support/v4/c/v;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 551
    iget-object v3, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/v;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 552
    iget-object v3, p0, Landroid/support/v4/app/p;->dJ:Landroid/support/v4/c/v;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_1
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 555
    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 557
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 11

    .line 565
    invoke-super {p0}, Landroid/support/v4/app/g;->onStart()V

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/p;->mStopped:Z

    .line 568
    iput-boolean v0, p0, Landroid/support/v4/app/p;->dH:Z

    .line 569
    iget-object v1, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iget-boolean v1, p0, Landroid/support/v4/app/p;->dF:Z

    if-nez v1, :cond_0

    .line 572
    iput-boolean v2, p0, Landroid/support/v4/app/p;->dF:Z

    .line 573
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->dispatchActivityCreated()V

    .line 576
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->noteStateNotSaved()V

    .line 577
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->execPendingActions()Z

    .line 579
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v1}, Landroid/support/v4/app/u;->doLoaderStart()V

    .line 583
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v1, v1, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v1}, Landroid/support/v4/app/x;->dispatchStart()V

    .line 584
    iget-object v1, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v1, v1, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v3, v1, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v3}, Landroid/support/v4/c/u;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/app/aj;

    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_1

    iget-object v6, v1, Landroid/support/v4/app/v;->dQ:Landroid/support/v4/c/u;

    invoke-virtual {v6, v5}, Landroid/support/v4/c/u;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/aj;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_7

    aget-object v5, v4, v1

    iget-boolean v6, v5, Landroid/support/v4/app/aj;->cT:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "LoaderManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Finished Retaining in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v0, v5, Landroid/support/v4/app/aj;->cT:Z

    iget-object v6, v5, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v6}, Landroid/support/v4/c/v;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_6

    iget-object v7, v5, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v7, v6}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/ak;

    iget-boolean v8, v7, Landroid/support/v4/app/ak;->cT:Z

    if-eqz v8, :cond_4

    sget-boolean v8, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "LoaderManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  Finished Retaining: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v0, v7, Landroid/support/v4/app/ak;->cT:Z

    iget-boolean v8, v7, Landroid/support/v4/app/ak;->mStarted:Z

    iget-boolean v9, v7, Landroid/support/v4/app/ak;->fU:Z

    if-eq v8, v9, :cond_4

    iget-boolean v8, v7, Landroid/support/v4/app/ak;->mStarted:Z

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/support/v4/app/ak;->stop()V

    :cond_4
    iget-boolean v8, v7, Landroid/support/v4/app/ak;->mStarted:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v7, Landroid/support/v4/app/ak;->fR:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v7, Landroid/support/v4/app/ak;->fV:Z

    if-nez v8, :cond_5

    iget-object v8, v7, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iget-object v9, v7, Landroid/support/v4/app/ak;->fT:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/a/b;Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Landroid/support/v4/app/aj;->ar()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 585
    :cond_7
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->noteStateNotSaved()V

    .line 446
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 592
    invoke-super {p0}, Landroid/support/v4/app/g;->onStop()V

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/p;->mStopped:Z

    .line 595
    invoke-direct {p0}, Landroid/support/v4/app/p;->V()V

    .line 596
    iget-object v1, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/p;->dE:Landroid/support/v4/app/u;

    iget-object v0, v0, Landroid/support/v4/app/u;->cJ:Landroid/support/v4/app/v;

    iget-object v0, v0, Landroid/support/v4/app/v;->cI:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->dispatchStop()V

    .line 599
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 728
    iget-boolean v0, p0, Landroid/support/v4/app/p;->ch:Z

    if-nez v0, :cond_0

    .line 729
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 730
    invoke-static {p2}, Landroid/support/v4/app/p;->k(I)V

    .line 733
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/g;->startActivityForResult(Landroid/content/Intent;I)V

    .line 734
    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/g;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0

    .line 67
    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/g;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/g;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
