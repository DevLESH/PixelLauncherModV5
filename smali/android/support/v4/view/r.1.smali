.class public abstract Landroid/support/v4/view/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mObservable:Landroid/database/DataSetObservable;

.field private mViewPagerObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/r;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public final destroyItem$30510aeb()V
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getCount()I
.end method

.method public instantiateItem$571d21bd(I)Ljava/lang/Object;
    .locals 1

    .line 114
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Required method instantiateItem was not overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public final setViewPagerObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iput-object p1, p0, Landroid/support/v4/view/r;->mViewPagerObserver:Landroid/database/DataSetObserver;

    .line 317
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
