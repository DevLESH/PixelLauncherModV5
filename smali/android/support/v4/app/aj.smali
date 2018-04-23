.class Landroid/support/v4/app/aj;
.super Landroid/support/v4/app/ah;
.source "SourceFile"


# static fields
.field static DEBUG:Z


# instance fields
.field cJ:Landroid/support/v4/app/v;

.field cT:Z

.field final cx:Ljava/lang/String;

.field final fM:Landroid/support/v4/c/v;

.field final fN:Landroid/support/v4/c/v;

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/support/v4/app/v;Z)V
    .locals 1

    .line 551
    invoke-direct {p0}, Landroid/support/v4/app/ah;-><init>()V

    .line 219
    new-instance v0, Landroid/support/v4/c/v;

    invoke-direct {v0}, Landroid/support/v4/c/v;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    .line 225
    new-instance v0, Landroid/support/v4/c/v;

    invoke-direct {v0}, Landroid/support/v4/c/v;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    .line 552
    iput-object p1, p0, Landroid/support/v4/app/aj;->cx:Ljava/lang/String;

    .line 553
    iput-object p2, p0, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    .line 554
    iput-boolean p3, p0, Landroid/support/v4/app/aj;->mStarted:Z

    .line 555
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 842
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 843
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v3}, Landroid/support/v4/c/v;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 846
    iget-object v3, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/ak;

    .line 847
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v4, v2}, Landroid/support/v4/c/v;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 848
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/support/v4/app/ak;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v3, v0, p2}, Landroid/support/v4/app/ak;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 845
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 852
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 853
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    :goto_1
    iget-object v2, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v2}, Landroid/support/v4/c/v;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 856
    iget-object v2, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v2, v1}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ak;

    .line 857
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v3, v1}, Landroid/support/v4/c/v;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 858
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/ak;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v2, v0, p2}, Landroid/support/v4/app/ak;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 855
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 862
    :cond_1
    return-void
.end method

.method public final al()Z
    .locals 6

    .line 866
    nop

    .line 867
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    .line 868
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 869
    iget-object v4, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v4, v2}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/ak;

    .line 870
    iget-boolean v5, v4, Landroid/support/v4/app/ak;->mStarted:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Landroid/support/v4/app/ak;->fS:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    or-int/2addr v3, v4

    .line 868
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 872
    :cond_1
    return v3
.end method

.method final an()V
    .locals 6

    .line 741
    sget-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/aj;->mStarted:Z

    if-eqz v0, :cond_1

    .line 743
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 745
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    return-void

    .line 749
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aj;->mStarted:Z

    .line 753
    iget-object v1, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v1}, Landroid/support/v4/c/v;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_a

    .line 754
    iget-object v2, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v2, v1}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ak;

    iget-boolean v3, v2, Landroid/support/v4/app/ak;->cT:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/support/v4/app/ak;->fU:Z

    if-eqz v3, :cond_2

    iput-boolean v0, v2, Landroid/support/v4/app/ak;->mStarted:Z

    goto/16 :goto_1

    :cond_2
    iget-boolean v3, v2, Landroid/support/v4/app/ak;->mStarted:Z

    if-nez v3, :cond_9

    iput-boolean v0, v2, Landroid/support/v4/app/ak;->mStarted:Z

    sget-boolean v3, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "LoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Starting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    if-nez v3, :cond_4

    iget-object v3, v2, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    invoke-interface {v3}, Landroid/support/v4/app/ai;->am()Landroid/support/v4/a/b;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    :cond_4
    iget-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    if-eqz v3, :cond_9

    iget-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-boolean v3, v2, Landroid/support/v4/app/ak;->fW:Z

    if-nez v3, :cond_8

    iget-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iget v4, v2, Landroid/support/v4/app/ak;->eJ:I

    iget-object v5, v3, Landroid/support/v4/a/b;->hk:Landroid/support/v4/a/d;

    if-eqz v5, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iput-object v2, v3, Landroid/support/v4/a/b;->hk:Landroid/support/v4/a/d;

    iput v4, v3, Landroid/support/v4/a/b;->eJ:I

    iget-object v3, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iget-object v4, v3, Landroid/support/v4/a/b;->hl:Landroid/support/v4/a/c;

    if-eqz v4, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-object v2, v3, Landroid/support/v4/a/b;->hl:Landroid/support/v4/a/c;

    iput-boolean v0, v2, Landroid/support/v4/app/ak;->fW:Z

    :cond_8
    iget-object v2, v2, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iput-boolean v0, v2, Landroid/support/v4/a/b;->mStarted:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/a/b;->hn:Z

    iput-boolean v3, v2, Landroid/support/v4/a/b;->hm:Z

    .line 753
    :cond_9
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 756
    :cond_a
    return-void
.end method

.method final ao()V
    .locals 4

    .line 759
    sget-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/aj;->mStarted:Z

    if-nez v0, :cond_1

    .line 761
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 763
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    return-void

    .line 767
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 768
    iget-object v1, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v1, v0}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/ak;

    invoke-virtual {v1}, Landroid/support/v4/app/ak;->stop()V

    .line 767
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 770
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/aj;->mStarted:Z

    .line 771
    return-void
.end method

.method final ap()V
    .locals 7

    .line 774
    sget-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/aj;->mStarted:Z

    if-nez v0, :cond_1

    .line 776
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 778
    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    return-void

    .line 782
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/aj;->cT:Z

    .line 783
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/aj;->mStarted:Z

    .line 784
    iget-object v2, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v2}, Landroid/support/v4/c/v;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 785
    iget-object v3, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/ak;

    sget-boolean v4, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "LoaderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  Retaining: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v0, v3, Landroid/support/v4/app/ak;->cT:Z

    iget-boolean v4, v3, Landroid/support/v4/app/ak;->mStarted:Z

    iput-boolean v4, v3, Landroid/support/v4/app/ak;->fU:Z

    iput-boolean v1, v3, Landroid/support/v4/app/ak;->mStarted:Z

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/ak;->fP:Landroid/support/v4/app/ai;

    .line 784
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 787
    :cond_3
    return-void
.end method

.method final aq()V
    .locals 3

    .line 801
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 802
    iget-object v2, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v2, v0}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ak;

    iput-boolean v1, v2, Landroid/support/v4/app/ak;->fV:Z

    .line 801
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 804
    :cond_0
    return-void
.end method

.method final ar()V
    .locals 4

    .line 807
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 808
    iget-object v1, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v1, v0}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/ak;

    iget-boolean v2, v1, Landroid/support/v4/app/ak;->mStarted:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroid/support/v4/app/ak;->fV:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/ak;->fV:Z

    iget-boolean v2, v1, Landroid/support/v4/app/ak;->fR:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Landroid/support/v4/app/ak;->cT:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/ak;->fQ:Landroid/support/v4/a/b;

    iget-object v3, v1, Landroid/support/v4/app/ak;->fT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/a/b;Ljava/lang/Object;)V

    .line 807
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 810
    :cond_1
    return-void
.end method

.method final as()V
    .locals 3

    .line 813
    iget-boolean v0, p0, Landroid/support/v4/app/aj;->cT:Z

    if-nez v0, :cond_2

    .line 814
    sget-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 816
    iget-object v1, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v1, v0}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/ak;

    invoke-virtual {v1}, Landroid/support/v4/app/ak;->destroy()V

    .line 815
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/aj;->fM:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->clear()V

    .line 821
    :cond_2
    sget-boolean v0, Landroid/support/v4/app/aj;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 823
    iget-object v1, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v1, v0}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/ak;

    invoke-virtual {v1}, Landroid/support/v4/app/ak;->destroy()V

    .line 822
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 825
    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/aj;->fN:Landroid/support/v4/c/v;

    invoke-virtual {v0}, Landroid/support/v4/c/v;->clear()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    .line 827
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 832
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v1, p0, Landroid/support/v4/app/aj;->cJ:Landroid/support/v4/app/v;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 836
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
