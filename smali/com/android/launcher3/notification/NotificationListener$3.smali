.class Lcom/android/launcher3/notification/NotificationListener$3;
.super Lcom/android/launcher3/util/SettingsObserver$Secure;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/notification/NotificationListener;


# direct methods
.method constructor <init>(Lcom/android/launcher3/notification/NotificationListener;Landroid/content/ContentResolver;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$3;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/SettingsObserver$Secure;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Z)V
    .locals 0

    .line 151
    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationListener$3;->this$0:Lcom/android/launcher3/notification/NotificationListener;

    invoke-virtual {p1}, Lcom/android/launcher3/notification/NotificationListener;->requestUnbind()V

    .line 154
    :cond_0
    return-void
.end method
