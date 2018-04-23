.class public Lcom/google/android/apps/nexuslauncher/instantapps/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final sx:Ljava/util/Map;

.field final sy:Ljava/util/ArrayDeque;

.field final sz:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sz:I

    .line 158
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sx:Ljava/util/Map;

    .line 159
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sy:Ljava/util/ArrayDeque;

    .line 160
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/instantapps/c;->sy:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
