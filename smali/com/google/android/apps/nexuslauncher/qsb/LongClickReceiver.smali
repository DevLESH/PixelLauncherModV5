.class public Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static tz:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->tz:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->tz:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 38
    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->tz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 39
    if-nez v0, :cond_0

    .line 40
    return-void

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    .line 45
    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@instantapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->d(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/instantapps/b;

    move-result-object p1

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/nexuslauncher/instantapps/b;->d(Ljava/lang/String;)Lcom/android/launcher3/AppInfo;

    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/p;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/p;-><init>(Lcom/android/launcher3/AppInfo;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 51
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v1, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 54
    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/r;

    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/r;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/graphics/Rect;)V

    .line 64
    :goto_0
    const p1, 0x7f0e0011

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;

    .line 65
    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/qsb/HotseatQsbWidget;->o(Z)V

    .line 68
    :cond_3
    invoke-virtual {v1, v0, p2}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->init(Lcom/android/launcher3/Launcher;Z)Z

    .line 72
    new-instance p1, Landroid/content/ClipDescription;

    const-string v0, ""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, p2

    invoke-direct {p1, v0, v2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 73
    new-instance p2, Landroid/content/ClipData;

    new-instance v0, Landroid/content/ClipData$Item;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p2, p1, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 75
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v0, "clip_data"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 78
    return-void

    .line 59
    :cond_4
    return-void
.end method
