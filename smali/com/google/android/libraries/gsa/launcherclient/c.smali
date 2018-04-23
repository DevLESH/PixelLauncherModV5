.class Lcom/google/android/libraries/gsa/launcherclient/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Xh:I

.field Xi:Ljava/lang/String;

.field Xj:F

.field Xk:J

.field Xl:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;F)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->Xh:I

    .line 113
    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->Xi:Ljava/lang/String;

    .line 114
    iput p3, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->Xj:F

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->Xk:J

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->Xl:I

    .line 117
    return-void
.end method
