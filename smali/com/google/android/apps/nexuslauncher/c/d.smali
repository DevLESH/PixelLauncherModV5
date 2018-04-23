.class public abstract Lcom/google/android/apps/nexuslauncher/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final vB:Landroid/content/SharedPreferences;

.field public final zp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/d;->zp:Landroid/content/SharedPreferences;

    .line 31
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/i;->j(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/c/d;->vB:Landroid/content/SharedPreferences;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public bS()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/d;->zp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/d;->vB:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 37
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 46
    const-string p1, "reflection_last_predictions"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "pref_show_predictions"

    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/c/d;->v(Z)V

    .line 50
    :cond_1
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/d;->zp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/d;->vB:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 42
    return-void
.end method

.method public final v(Z)V
    .locals 9

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/c/d;->zp:Landroid/content/SharedPreferences;

    const-string v1, "pref_show_predictions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 58
    const/4 v0, 0x0

    if-eqz v4, :cond_0

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/c/d;->vB:Landroid/content/SharedPreferences;

    const-string v2, "reflection_last_predictions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    move-object v5, v1

    goto :goto_0

    .line 59
    :cond_0
    nop

    .line 60
    move-object v5, v0

    :goto_0
    if-eqz v4, :cond_1

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/c/d;->vB:Landroid/content/SharedPreferences;

    const-string v2, "reflection_last_shortcut_predictions"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    move-object v7, v1

    goto :goto_1

    .line 61
    :cond_1
    nop

    .line 62
    move-object v7, v0

    :goto_1
    if-eqz v4, :cond_2

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/c/d;->vB:Landroid/content/SharedPreferences;

    const-string v2, "prediction_order_by_rank"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 63
    :cond_2
    goto :goto_2

    .line 64
    :goto_3
    move-object v3, p0

    move v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/apps/nexuslauncher/c/d;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    return-void
.end method
