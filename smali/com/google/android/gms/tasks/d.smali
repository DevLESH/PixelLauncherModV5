.class public final Lcom/google/android/gms/tasks/d;
.super Ljava/lang/Object;


# static fields
.field public static final WQ:Ljava/util/concurrent/Executor;

.field static final WR:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/e;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/d;->WQ:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/j;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/d;->WR:Ljava/util/concurrent/Executor;

    return-void
.end method
