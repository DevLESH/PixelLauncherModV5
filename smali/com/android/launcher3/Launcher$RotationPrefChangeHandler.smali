.class Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .line 2841
    iput-object p1, p0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher;B)V
    .locals 0

    .line 2841
    invoke-direct {p0, p1}, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 2846
    const-string p1, "pref_allowRotation"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2848
    iget-object p1, p0, Lcom/android/launcher3/Launcher$RotationPrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->recreate()V

    .line 2850
    :cond_0
    return-void
.end method
