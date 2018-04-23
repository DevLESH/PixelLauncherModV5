.class public Lcom/google/research/reflection/predictor/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public aaN:Ljava/util/Set;

.field aaO:I

.field public ra:Ljava/lang/String;

.field public vK:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/reflection/predictor/m;->aaN:Ljava/util/Set;

    .line 147
    iput-object p1, p0, Lcom/google/research/reflection/predictor/m;->ra:Ljava/lang/String;

    .line 148
    iput p2, p0, Lcom/google/research/reflection/predictor/m;->vK:F

    .line 149
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/research/reflection/predictor/m;->aaN:Ljava/util/Set;

    .line 150
    iput v0, p0, Lcom/google/research/reflection/predictor/m;->aaO:I

    .line 151
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 119
    check-cast p1, Lcom/google/research/reflection/predictor/m;

    iget v0, p0, Lcom/google/research/reflection/predictor/m;->vK:F

    iget p1, p1, Lcom/google/research/reflection/predictor/m;->vK:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
