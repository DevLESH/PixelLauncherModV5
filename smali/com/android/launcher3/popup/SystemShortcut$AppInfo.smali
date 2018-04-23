.class public Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    const v0, 0x7f02002f

    const v1, 0x7f0c003a

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(II)V

    .line 76
    return-void
.end method


# virtual methods
.method public final getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 81
    new-instance v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$1;-><init>(Lcom/android/launcher3/popup/SystemShortcut$AppInfo;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V

    return-object v0
.end method
