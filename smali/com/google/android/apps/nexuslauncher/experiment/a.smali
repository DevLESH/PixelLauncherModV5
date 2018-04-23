.class public Lcom/google/android/apps/nexuslauncher/experiment/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sh:Lcom/google/android/gms/phenotype/i;

.field public static si:Lcom/google/android/gms/phenotype/h;

.field public static sj:Lcom/google/android/gms/phenotype/h;

.field public static sk:Lcom/google/android/gms/phenotype/h;

.field public static sl:Lcom/google/android/gms/phenotype/h;

.field public static sm:Lcom/google/android/gms/phenotype/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/google/android/gms/phenotype/i;

    const-string v1, "phenotype_configs"

    invoke-direct {v0, v1}, Lcom/google/android/gms/phenotype/i;-><init>(Ljava/lang/String;)V

    const-string v6, ""

    .line 19
    new-instance v1, Lcom/google/android/gms/phenotype/i;

    iget-object v3, v0, Lcom/google/android/gms/phenotype/i;->Wq:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/phenotype/i;->Wr:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/gms/phenotype/i;->Wu:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/phenotype/i;->Ww:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/phenotype/i;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    sput-object v1, Lcom/google/android/apps/nexuslauncher/experiment/a;->sh:Lcom/google/android/gms/phenotype/i;

    const-string v0, "QSBFeature__qsb_is_wide"

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->si:Lcom/google/android/gms/phenotype/h;

    .line 30
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sh:Lcom/google/android/gms/phenotype/i;

    const-string v1, "QSBFeature__qsb_is_in_experiment"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sj:Lcom/google/android/gms/phenotype/h;

    .line 32
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sh:Lcom/google/android/gms/phenotype/i;

    const-string v1, "QSBFeature__qsb_kill_switch"

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sk:Lcom/google/android/gms/phenotype/h;

    .line 35
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sh:Lcom/google/android/gms/phenotype/i;

    const-string v1, "ReflectionFeature__use_rule_based_predictor"

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sl:Lcom/google/android/gms/phenotype/h;

    .line 39
    sget-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sh:Lcom/google/android/gms/phenotype/i;

    const-string v1, "SuggestFeature__use_overview_suggestions"

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/phenotype/i;->b(Ljava/lang/String;Z)Lcom/google/android/gms/phenotype/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/experiment/a;->sm:Lcom/google/android/gms/phenotype/h;

    .line 39
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/phenotype/h;->b(Landroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/experiment/PhenotypeUpdateReceiver;->c(Landroid/content/Context;)V

    .line 25
    return-void
.end method
