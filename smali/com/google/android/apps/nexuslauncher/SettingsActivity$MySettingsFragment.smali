.class public Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;
.super Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string p1, "pref_show_predictions"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 78
    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    const-string p1, "pref_enable_minus_one"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/j;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    const-string p1, ""

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    nop

    .line 90
    move-object p1, v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "SettingsActivity"

    const-string v2, "Unable to load my own package info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :goto_0
    const-string v0, "about_app_version"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "pref_hide_apps"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    nop

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->dD()Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "pref_smartspace"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    .line 95
    :cond_0
    const-string p1, "pref_smartspace"

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 108
    const-string v0, "pref_show_predictions"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->i(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/g;->setEnabled(Z)V

    .line 112
    return p2

    .line 116
    :cond_0
    new-instance p2, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;

    invoke-direct {p2}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;-><init>()V

    .line 117
    invoke-virtual {p2, p0, v1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return v1

    .line 122
    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "pref_smartspace"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->dE()V

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0

    const-string/jumbo v0, "pref_hide_apps"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/moddedpixellauncher/HiddenAppsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->onResume()V

    .line 102
    const-string v0, "pref_enable_minus_one"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/c/c;->o(Landroid/content/Context;)Z

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 104
    return-void
.end method
