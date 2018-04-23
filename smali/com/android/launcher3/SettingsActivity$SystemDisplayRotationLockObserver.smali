.class Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;
.super Lcom/android/launcher3/util/SettingsObserver$System;
.source "SourceFile"


# instance fields
.field private final mRotationPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V
    .locals 0

    .line 144
    invoke-direct {p0, p2}, Lcom/android/launcher3/util/SettingsObserver$System;-><init>(Landroid/content/ContentResolver;)V

    .line 145
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mRotationPref:Landroid/preference/Preference;

    .line 146
    return-void
.end method


# virtual methods
.method public final onSettingChanged(Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mRotationPref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->mRotationPref:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    .line 152
    const p1, 0x7f0c0057

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0058

    .line 151
    :goto_0
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(I)V

    .line 153
    return-void
.end method
