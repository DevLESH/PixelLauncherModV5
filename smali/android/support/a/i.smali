.class public abstract Landroid/support/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/a/c;


# static fields
.field public static final ae:Landroid/support/a/z;

.field public static final af:Landroid/support/a/z;

.field public static final ag:Landroid/support/a/z;

.field public static final ah:Landroid/support/a/z;

.field public static final ai:Landroid/support/a/z;

.field public static final aj:Landroid/support/a/z;

.field public static final ak:Landroid/support/a/z;

.field public static final al:Landroid/support/a/z;

.field public static final am:Landroid/support/a/z;

.field public static final an:Landroid/support/a/z;

.field public static final ao:Landroid/support/a/z;

.field public static final ap:Landroid/support/a/z;

.field public static final aq:Landroid/support/a/z;

.field public static final ar:Landroid/support/a/z;


# instance fields
.field private Z:J

.field private final aA:Ljava/util/ArrayList;

.field public as:Z

.field final at:Ljava/lang/Object;

.field final au:Landroid/support/a/A;

.field av:Z

.field public aw:F

.field public ax:F

.field ay:F

.field private final az:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/support/a/j;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroid/support/a/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ae:Landroid/support/a/z;

    .line 71
    new-instance v0, Landroid/support/a/q;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroid/support/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->af:Landroid/support/a/z;

    .line 86
    new-instance v0, Landroid/support/a/r;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroid/support/a/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ag:Landroid/support/a/z;

    .line 101
    new-instance v0, Landroid/support/a/s;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/support/a/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ah:Landroid/support/a/z;

    .line 116
    new-instance v0, Landroid/support/a/t;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/support/a/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ai:Landroid/support/a/z;

    .line 131
    new-instance v0, Landroid/support/a/u;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroid/support/a/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aj:Landroid/support/a/z;

    .line 146
    new-instance v0, Landroid/support/a/v;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroid/support/a/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ak:Landroid/support/a/z;

    .line 161
    new-instance v0, Landroid/support/a/w;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroid/support/a/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->al:Landroid/support/a/z;

    .line 176
    new-instance v0, Landroid/support/a/x;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroid/support/a/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->am:Landroid/support/a/z;

    .line 191
    new-instance v0, Landroid/support/a/k;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroid/support/a/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->an:Landroid/support/a/z;

    .line 206
    new-instance v0, Landroid/support/a/l;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroid/support/a/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ao:Landroid/support/a/z;

    .line 221
    new-instance v0, Landroid/support/a/m;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/support/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ap:Landroid/support/a/z;

    .line 237
    new-instance v0, Landroid/support/a/n;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroid/support/a/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aq:Landroid/support/a/z;

    .line 252
    new-instance v0, Landroid/support/a/o;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroid/support/a/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ar:Landroid/support/a/z;

    return-void
.end method

.method constructor <init>(Landroid/support/a/B;)V
    .locals 2

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/i;->mVelocity:F

    .line 291
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/a/i;->mValue:F

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/a/i;->as:Z

    .line 304
    iput-boolean v1, p0, Landroid/support/a/i;->av:Z

    .line 307
    iput v0, p0, Landroid/support/a/i;->aw:F

    .line 308
    iget v0, p0, Landroid/support/a/i;->aw:F

    neg-float v0, v0

    iput v0, p0, Landroid/support/a/i;->ax:F

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/a/i;->Z:J

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/i;->az:Ljava/util/ArrayList;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/i;->aA:Ljava/util/ArrayList;

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/i;->at:Ljava/lang/Object;

    .line 334
    new-instance v0, Landroid/support/a/p;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Landroid/support/a/p;-><init>(Landroid/support/a/i;Ljava/lang/String;Landroid/support/a/B;)V

    iput-object v0, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    .line 345
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/support/a/i;->ay:F

    .line 346
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/a/A;)V
    .locals 2

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/i;->mVelocity:F

    .line 291
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/a/i;->mValue:F

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/a/i;->as:Z

    .line 304
    iput-boolean v1, p0, Landroid/support/a/i;->av:Z

    .line 307
    iput v0, p0, Landroid/support/a/i;->aw:F

    .line 308
    iget v0, p0, Landroid/support/a/i;->aw:F

    neg-float v0, v0

    iput v0, p0, Landroid/support/a/i;->ax:F

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/a/i;->Z:J

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/i;->az:Ljava/util/ArrayList;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/i;->aA:Ljava/util/ArrayList;

    .line 356
    iput-object p1, p0, Landroid/support/a/i;->at:Ljava/lang/Object;

    .line 357
    iput-object p2, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    .line 358
    iget-object p1, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    sget-object p2, Landroid/support/a/i;->aj:Landroid/support/a/z;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    sget-object p2, Landroid/support/a/i;->ak:Landroid/support/a/z;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    sget-object p2, Landroid/support/a/i;->al:Landroid/support/a/z;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    iget-object p1, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    sget-object p2, Landroid/support/a/i;->ap:Landroid/support/a/z;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p1, p2, :cond_1

    .line 362
    iput v0, p0, Landroid/support/a/i;->ay:F

    return-void

    .line 363
    :cond_1
    iget-object p1, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    sget-object p2, Landroid/support/a/i;->ah:Landroid/support/a/z;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    sget-object p2, Landroid/support/a/i;->ai:Landroid/support/a/z;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 366
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/support/a/i;->ay:F

    .line 368
    return-void

    .line 364
    :cond_3
    :goto_0
    iput v0, p0, Landroid/support/a/i;->ay:F

    return-void

    .line 360
    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Landroid/support/a/i;->ay:F

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 2

    .line 546
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 547
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 548
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 546
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 551
    :cond_1
    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 2

    .line 689
    iget-object v0, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    iget-object v1, p0, Landroid/support/a/i;->at:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/a/A;->setValue(Ljava/lang/Object;F)V

    .line 690
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/a/i;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 691
    iget-object v0, p0, Landroid/support/a/i;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/support/a/i;->aA:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 695
    :cond_1
    iget-object p1, p0, Landroid/support/a/i;->aA:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/a/i;->a(Ljava/util/ArrayList;)V

    .line 696
    return-void
.end method

.method public final a(J)Z
    .locals 6

    .line 638
    iget-wide v0, p0, Landroid/support/a/i;->Z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 640
    iput-wide p1, p0, Landroid/support/a/i;->Z:J

    .line 641
    iget p1, p0, Landroid/support/a/i;->mValue:F

    invoke-virtual {p0, p1}, Landroid/support/a/i;->a(F)V

    .line 642
    return v1

    .line 644
    :cond_0
    iget-wide v4, p0, Landroid/support/a/i;->Z:J

    sub-long v4, p1, v4

    .line 645
    iput-wide p1, p0, Landroid/support/a/i;->Z:J

    .line 646
    invoke-virtual {p0, v4, v5}, Landroid/support/a/i;->b(J)Z

    move-result p1

    .line 648
    iget p2, p0, Landroid/support/a/i;->mValue:F

    iget v0, p0, Landroid/support/a/i;->aw:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroid/support/a/i;->mValue:F

    .line 649
    iget p2, p0, Landroid/support/a/i;->mValue:F

    iget v0, p0, Landroid/support/a/i;->ax:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/support/a/i;->mValue:F

    .line 651
    iget p2, p0, Landroid/support/a/i;->mValue:F

    invoke-virtual {p0, p2}, Landroid/support/a/i;->a(F)V

    .line 653
    if-eqz p1, :cond_4

    .line 654
    iput-boolean v1, p0, Landroid/support/a/i;->av:Z

    invoke-static {}, Landroid/support/a/a;->f()Landroid/support/a/a;

    move-result-object p2

    iget-object v0, p2, Landroid/support/a/a;->R:Landroid/support/v4/c/u;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/u;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Landroid/support/a/a;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v4, p2, Landroid/support/a/a;->S:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/support/a/a;->W:Z

    :cond_1
    iput-wide v2, p0, Landroid/support/a/i;->Z:J

    iput-boolean v1, p0, Landroid/support/a/i;->as:Z

    :goto_0
    iget-object p2, p0, Landroid/support/a/i;->az:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Landroid/support/a/i;->az:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/a/i;->az:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Landroid/support/a/i;->az:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/support/a/i;->a(Ljava/util/ArrayList;)V

    .line 656
    :cond_4
    return p1
.end method

.method abstract b(J)Z
.end method

.method public start()V
    .locals 2

    .line 575
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 576
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_0
    iget-boolean v0, p0, Landroid/support/a/i;->av:Z

    if-nez v0, :cond_6

    .line 579
    iget-boolean v0, p0, Landroid/support/a/i;->av:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/i;->av:Z

    iget-boolean v0, p0, Landroid/support/a/i;->as:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/a/i;->au:Landroid/support/a/A;

    iget-object v1, p0, Landroid/support/a/i;->at:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/a/A;->getValue(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/a/i;->mValue:F

    :cond_1
    iget v0, p0, Landroid/support/a/i;->mValue:F

    iget v1, p0, Landroid/support/a/i;->aw:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Landroid/support/a/i;->mValue:F

    iget v1, p0, Landroid/support/a/i;->ax:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/support/a/a;->f()Landroid/support/a/a;

    move-result-object v0

    iget-object v1, v0, Landroid/support/a/a;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/support/a/a;->g()Landroid/support/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/d;->i()V

    :cond_3
    iget-object v1, v0, Landroid/support/a/a;->S:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, v0, Landroid/support/a/a;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 581
    :cond_6
    :goto_1
    return-void
.end method
