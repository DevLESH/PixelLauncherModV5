.class Lcom/google/android/apps/nexuslauncher/logging/b;
.super Lcom/google/android/apps/nexuslauncher/c/d;
.source "SourceFile"


# instance fields
.field mApps:Ljava/util/List;

.field private final mContext:Landroid/content/Context;

.field mShortcuts:Ljava/util/List;

.field sG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/c/d;-><init>(Landroid/content/Context;)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mShortcuts:Ljava/util/List;

    .line 169
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 183
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->sG:Z

    .line 184
    if-nez p1, :cond_0

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mShortcuts:Ljava/util/List;

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    goto :goto_1

    .line 193
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    const-string p5, ";"

    invoke-virtual {p3, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 195
    array-length p5, p3

    move v0, p2

    :goto_0
    if-ge v0, p5, :cond_2

    aget-object v1, p3, v0

    .line 196
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mApps:Ljava/util/List;

    .line 201
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mShortcuts:Ljava/util/List;

    return-void

    .line 204
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    const-string p3, ";"

    invoke-virtual {p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 206
    array-length p4, p3

    :goto_2
    if-ge p2, p4, :cond_4

    aget-object p5, p3, p2

    .line 207
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p5}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 209
    :cond_4
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/b;->mShortcuts:Ljava/util/List;

    .line 211
    return-void
.end method
