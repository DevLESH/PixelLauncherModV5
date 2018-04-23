.class public Lcom/android/launcher3/util/InstantAppResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/util/InstantAppResolver;
    .locals 2

    .line 38
    const-class v0, Lcom/android/launcher3/util/InstantAppResolver;

    const v1, 0x7f0c001c

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/InstantAppResolver;

    return-object p0
.end method


# virtual methods
.method public getInstantApps()Ljava/util/List;
    .locals 1

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 43
    const/4 p1, 0x0

    return p1
.end method

.method public isInstantApp(Lcom/android/launcher3/AppInfo;)Z
    .locals 0

    .line 47
    const/4 p1, 0x0

    return p1
.end method
