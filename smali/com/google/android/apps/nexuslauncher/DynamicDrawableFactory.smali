.class public Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;
.super Lcom/android/launcher3/graphics/DrawableFactory;
.source "SourceFile"


# instance fields
.field private final qC:Lcom/google/android/apps/nexuslauncher/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/android/launcher3/graphics/DrawableFactory;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/c;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->qC:Lcom/google/android/apps/nexuslauncher/a/c;

    .line 18
    return-void
.end method


# virtual methods
.method public final newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;
    .locals 3

    .line 22
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->itemType:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/nexuslauncher/a/c;->rW:Landroid/content/ComponentName;

    .line 23
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    .line 24
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/DynamicDrawableFactory;->qC:Lcom/google/android/apps/nexuslauncher/a/c;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/a/b;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/a/c;->rY:Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/a/a;->cg()Lcom/google/android/apps/nexuslauncher/a/a;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/android/apps/nexuslauncher/a/b;-><init>(Lcom/android/launcher3/ItemInfoWithIcon;Lcom/google/android/apps/nexuslauncher/a/a;)V

    iget-object p1, v0, Lcom/google/android/apps/nexuslauncher/a/c;->rX:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object p1

    return-object p1
.end method
