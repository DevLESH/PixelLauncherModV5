.class public final enum Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum rA:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

.field private static final synthetic rB:[Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 357
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->rA:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    .line 356
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->rA:Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->rB:[Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;
    .locals 1

    .line 356
    const-class v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;
    .locals 1

    .line 356
    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->rB:[Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/allapps/ActionsController$Logger$EventType;

    return-object v0
.end method
