.class Lcom/google/android/apps/nexuslauncher/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/LauncherCallbacks;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field private qQ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

.field final synthetic qR:Lcom/google/android/apps/nexuslauncher/c;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/c;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/c;B)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/d;-><init>(Lcom/google/android/apps/nexuslauncher/c;)V

    return-void
.end method

.method private bR()Lcom/google/android/apps/nexuslauncher/f;
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qO:Lcom/google/android/apps/nexuslauncher/f;

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/f;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Lcom/google/android/apps/nexuslauncher/f;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/c;->qO:Lcom/google/android/apps/nexuslauncher/f;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qO:Lcom/google/android/apps/nexuslauncher/f;

    return-object v0
.end method


# virtual methods
.method public final bindAllApplications$6ba92955()V
    .locals 2

    .line 244
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/d;->bR()Lcom/google/android/apps/nexuslauncher/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/c/d;->v(Z)V

    .line 245
    return-void
.end method

.method public final dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SmartspaceController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  weather "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yi:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isConnected: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

    iget-boolean v1, v1, Lcom/google/android/libraries/gsa/launcherclient/i;->XA:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "act.isBound: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    iget-boolean v1, v1, Lcom/google/android/libraries/gsa/launcherclient/i;->XA:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "app.isBound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1b

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "serviceVersion: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "clientVersion: 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mActivityState: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xu:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mServiceStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2d

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xp:Lcom/google/android/libraries/gsa/launcherclient/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 210
    return-void
.end method

.method public final handleBackPressed()Z
    .locals 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public final hasSettings()Z
    .locals 1

    .line 263
    const/4 v0, 0x1

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 196
    return-void
.end method

.method public final onCreate$79e5e33f()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/e;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3}, Lcom/google/android/apps/nexuslauncher/e;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/c;->qN:Lcom/google/android/apps/nexuslauncher/e;

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    new-instance v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    .line 101
    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/c;->qN:Lcom/google/android/apps/nexuslauncher/e;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/c;->a(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/f;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/g;Lcom/google/android/libraries/gsa/launcherclient/f;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->qN:Lcom/google/android/apps/nexuslauncher/e;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/e;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->i(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/c;->qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

    .line 104
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qQ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qJ:Landroid/os/Bundle;

    const-string v1, "system_ui_visibility"

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    .line 111
    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/d;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/d;->bR()Lcom/google/android/apps/nexuslauncher/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/f;->bS()V

    .line 118
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-boolean v3, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    iget-object v4, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xs:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iput-boolean v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/i;->gZ()V

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    iput-object v3, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    :cond_1
    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/a;->gV()Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, v2, Lcom/google/android/libraries/gsa/launcherclient/a;->Xe:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/gsa/launcherclient/a;->gZ()V

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/a;->Xc:Lcom/google/android/libraries/gsa/launcherclient/a;

    if-ne v0, v2, :cond_2

    sput-object v3, Lcom/google/android/libraries/gsa/launcherclient/a;->Xc:Lcom/google/android/libraries/gsa/launcherclient/a;

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qO:Lcom/google/android/apps/nexuslauncher/f;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/f;->unregister()V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 178
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-boolean v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v2, "detachedFromWindow"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->closeContextMenu()V

    .line 202
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qJ:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public final onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 276
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->qJ:Landroid/os/Bundle;

    const-string v2, "background_color_hint"

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    .line 278
    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v3, v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->a(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;Landroid/content/Context;I)I

    move-result v3

    .line 277
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->qJ:Landroid/os/Bundle;

    const-string v2, "background_secondary_color_hint"

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    .line 280
    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    iget p1, p1, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSecondaryColor:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->d(II)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/android/apps/nexuslauncher/qsb/f;->a(ILandroid/content/Context;)I

    move-result p1

    .line 279
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->qJ:Landroid/os/Bundle;

    const-string v0, "is_background_dark"

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    .line 282
    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    const v2, 0x7f01002b

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    .line 281
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qJ:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->i(Landroid/os/Bundle;)V

    .line 284
    return-void
.end method

.method public final onHomeIntent()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 215
    instance-of v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    .line 216
    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->tf:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherStateManager;->goToState(Lcom/android/launcher3/LauncherState;Z)V

    .line 219
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    .line 220
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->n(Z)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/c;->qP:Z

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->D(Z)V

    .line 225
    return-void
.end method

.method public final onLauncherProviderChange()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->c(J)V

    .line 240
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->dG:Z

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qQ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qQ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->dG:Z

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/c;->mStarted:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->qP:Z

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qM:Lcom/google/android/apps/nexuslauncher/reflection/g;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->c(J)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qQ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qQ:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dJ()V

    .line 145
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 268
    const-string v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 269
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/c;->a(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/gsa/launcherclient/f;

    move-result-object p1

    iget v0, p1, Lcom/google/android/libraries/gsa/launcherclient/f;->Xz:I

    iget v1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/google/android/libraries/gsa/launcherclient/f;->Xz:I

    iput p1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    iget-object p1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->gW()V

    :cond_0
    iget-object p1, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v0, "setClientOptions "

    iget p2, p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    invoke-virtual {p1, v0, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 271
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->mStarted:Z

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    .line 151
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->mStarted:Z

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qL:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/c;->dG:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/c;->qP:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qN:Lcom/google/android/apps/nexuslauncher/e;

    iget-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/e;->qW:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/e;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 161
    :cond_1
    return-void
.end method

.method public final preOnCreate()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    .line 94
    return-void
.end method

.method public final startSearch$4aa4b603(Ljava/lang/String;)Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/LauncherStateManager;

    iget-object v0, v0, Lcom/android/launcher3/LauncherStateManager;->mState:Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->containerType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 251
    const v0, 0x7f0e0012

    goto :goto_0

    .line 252
    :cond_0
    const v0, 0x7f0e0011

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/d;->qR:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/c;->qH:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    instance-of v1, v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    if-eqz v1, :cond_1

    .line 255
    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->g(Ljava/lang/String;)V

    .line 256
    const/4 p1, 0x1

    return p1

    .line 258
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
