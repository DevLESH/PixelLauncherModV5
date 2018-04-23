.class public Lcom/google/android/apps/nexuslauncher/reflection/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final tX:Ljava/util/regex/Pattern;

.field public static final tY:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 83
    const-string v0, "^([^/]+)/([^#/]+)(#(\\d+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/i;->tX:Ljava/util/regex/Pattern;

    .line 161
    const-string v1, "reflection.engine"

    const-string v2, "reflection.engine.background"

    const-string v3, "reflection.events"

    const-string v4, "model.properties.xml"

    const-string v5, "reflection_multi_process.xml"

    const-string v6, "client_actions"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/i;->tY:Ljava/util/List;

    .line 161
    return-void
.end method

.method public static a(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 176
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 180
    const-string v0, "%s%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "_"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 172
    const-string v0, "reflection.private.properties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
