.class Lcom/android/launcher3/model/LoaderResults$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/model/LoaderResults;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/LoaderResults;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/android/launcher3/model/LoaderResults$6;->this$0:Lcom/android/launcher3/model/LoaderResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 230
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide p1, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result p1

    return p1
.end method
