.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;->INSTANCE:Lcom/google/android/apps/nexuslauncher/allapps/-$$Lambda$ActionsController$JIuyXgegkIleLcolakqthXdg-Jg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/a;

    check-cast p2, Lcom/google/android/apps/nexuslauncher/allapps/a;

    invoke-static {p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsController;->lambda$JIuyXgegkIleLcolakqthXdg-Jg(Lcom/google/android/apps/nexuslauncher/allapps/a;Lcom/google/android/apps/nexuslauncher/allapps/a;)I

    move-result p1

    return p1
.end method
