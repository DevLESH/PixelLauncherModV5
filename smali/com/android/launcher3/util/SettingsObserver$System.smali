.class public abstract Lcom/android/launcher3/util/SettingsObserver$System;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsObserver;


# instance fields
.field private mKeySetting:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 74
    iput-object p1, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mResolver:Landroid/content/ContentResolver;

    .line 75
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 97
    iget-object p1, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mKeySetting:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/SettingsObserver$System;->onSettingChanged(Z)V

    .line 98
    return-void
.end method

.method public final varargs register(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 79
    iput-object p1, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mKeySetting:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mKeySetting:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    array-length p1, p2

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v2, p2, v0

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mResolver:Landroid/content/ContentResolver;

    .line 84
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    invoke-virtual {v3, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/SettingsObserver$System;->onChange(Z)V

    .line 87
    return-void
.end method

.method public final unregister()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/util/SettingsObserver$System;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    return-void
.end method
