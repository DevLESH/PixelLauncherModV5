.class public Lcom/google/android/apps/nexuslauncher/reflection/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public time:J

.field public uT:Ljava/lang/String;

.field public uU:I

.field final synthetic uV:Lcom/google/android/apps/nexuslauncher/reflection/b/c;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/b/c;Landroid/content/ComponentName;JJ)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->uV:Lcom/google/android/apps/nexuslauncher/reflection/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/apps/nexuslauncher/reflection/b/c;->a(Lcom/google/android/apps/nexuslauncher/reflection/b/c;Landroid/content/ComponentName;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->uT:Ljava/lang/String;

    .line 113
    iput-wide p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->time:J

    .line 114
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/b/d;->uU:I

    .line 115
    return-void
.end method
