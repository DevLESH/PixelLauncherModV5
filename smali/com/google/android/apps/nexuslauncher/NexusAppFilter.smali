.class public Lcom/google/android/apps/nexuslauncher/NexusAppFilter;
.super Lcom/android/launcher3/AppFilter;
.source "SourceFile"


# instance fields
.field private final qG:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/android/launcher3/AppFilter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;->qG:Ljava/util/HashSet;

    .line 20
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;->qG:Ljava/util/HashSet;

    const-string v1, "com.google.android.googlequicksearchbox/.VoiceSearchActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;->qG:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.launcher/com.google.android.launcher.StubApp"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;->qG:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.wallpaper/.picker.CategoryPickerActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/experiment/a;->b(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;->qG:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
