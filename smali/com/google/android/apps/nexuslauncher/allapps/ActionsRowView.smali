.class public Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/f;


# instance fields
.field private cQ:Z

.field rC:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

.field private rD:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setOrientation(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public final ca()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->rD:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final cb()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->ca()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cQ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 7

    .line 79
    const-string v0, "ActionsRowView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "actions updated: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_1

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 85
    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->removeViewAt(I)V

    goto :goto_0

    .line 87
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040002

    .line 89
    invoke-virtual {v1, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    .line 90
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    invoke-virtual {v1, v4}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->addView(Landroid/view/View;)V

    .line 95
    goto :goto_1

    .line 98
    :cond_1
    move v1, v3

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 99
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;

    .line 100
    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->reset()V

    .line 101
    if-le v0, v1, :cond_2

    .line 102
    invoke-virtual {v4, v3}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setVisibility(I)V

    .line 103
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/nexuslauncher/allapps/a;

    .line 104
    iget-object v6, v5, Lcom/google/android/apps/nexuslauncher/allapps/a;->rf:Lcom/android/launcher3/ShortcutInfo;

    invoke-virtual {v4, v6, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 105
    invoke-virtual {v4, v5, v1}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->a(Lcom/google/android/apps/nexuslauncher/allapps/a;I)V

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->setVisibility(I)V

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/apps/nexuslauncher/allapps/ActionView;->a(Lcom/google/android/apps/nexuslauncher/allapps/a;I)V

    .line 98
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cb()V

    .line 113
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->rC:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->cf()V

    .line 114
    return-void
.end method

.method public final k(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->rD:Z

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cb()V

    .line 124
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->setVisibility(I)V

    .line 65
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 73
    return-void
.end method

.method public final setHidden(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cQ:Z

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/ActionsRowView;->cb()V

    .line 119
    return-void
.end method
