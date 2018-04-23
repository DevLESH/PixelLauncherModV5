.class public Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

.field private mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 73
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "com.android.launcher3.prefs"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 75
    const p1, 0x7f080012

    invoke-virtual {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 80
    const-string v0, "pref_allowRotation"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;-><init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 89
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    const-string v3, "accelerometer_rotation"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->register(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getAllowRotationDefaultValue(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 95
    :goto_0
    const-string v0, "pref_icon_badging"

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ButtonPreference;

    .line 97
    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_OREO:Z
    # sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v1, "pref_add_icon_to_home"

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f0f0000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 105
    :cond_2
    new-instance v1, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v0, p1, v3}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;-><init>(Lcom/android/launcher3/views/ButtonPreference;Landroid/content/ContentResolver;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 107
    iget-object p1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    const-string v0, "notification_badging"

    const-string v1, "enabled_notification_listeners"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->register(Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    :goto_1
    const-string p1, "pref_override_icon_shape"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 111
    if-eqz p1, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;-><init>(Landroid/content/Context;B)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->unregister()V

    .line 124
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->unregister()V

    .line 128
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 130
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 131
    return-void
.end method
