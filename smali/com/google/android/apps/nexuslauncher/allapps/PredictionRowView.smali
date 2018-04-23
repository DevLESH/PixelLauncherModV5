.class public Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private cQ:Z

.field mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPaint:Landroid/graphics/Paint;

.field rC:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

.field private final rE:I

.field public final rF:Ljava/util/List;

.field public final rG:Ljava/util/ArrayList;

.field rH:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rF:Ljava/util/List;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    .line 74
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setOrientation(I)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setWillNotDraw(Z)V

    .line 76
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rE:I

    .line 81
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 82
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 83
    return-void
.end method

.method private cc()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mAppsView:Lcom/android/launcher3/allapps/AllAppsContainerView;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object v0
.end method

.method private cd()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rE:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rE:I

    if-le v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->removeViewAt(I)V

    goto :goto_0

    .line 177
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rE:I

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    const/4 v1, 0x2

    .line 179
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object v0

    .line 180
    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 181
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 182
    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 184
    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->addView(Landroid/view/View;)V

    .line 186
    goto :goto_1

    .line 189
    :cond_1
    move v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 190
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 191
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->reset()V

    .line 192
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 193
    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 194
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    goto :goto_3

    .line 196
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 189
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cb()V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rC:Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionsFloatingHeader;->cf()V

    .line 202
    return-void
.end method


# virtual methods
.method final cb()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->setVisibility(I)V

    .line 261
    return-void
.end method

.method public final fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .line 244
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 246
    if-ne v0, p2, :cond_0

    .line 247
    const/4 p2, 0x7

    iput p2, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 248
    iput p1, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 249
    return-void

    .line 244
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public final getExpectedHeight()I
    .locals 3

    .line 118
    nop

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 121
    iget-object v0, v0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    add-int/2addr v1, v0

    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 124
    :cond_0
    return v1
.end method

.method public final onAppsUpdated()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rG:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rF:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cc()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/allapps/AllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/nexuslauncher/c/a;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cc()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/nexuslauncher/c/a;->a(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rE:I

    if-ne v3, v4, :cond_1

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cd()V

    .line 170
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cc()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cc()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    .line 91
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cc()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->removeUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cc()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    .line 103
    return-void
.end method

.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->removeAllViews()V

    .line 159
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cd()V

    .line 160
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 230
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->rH:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 235
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    .line 237
    int-to-float v5, v2

    int-to-float v8, v1

    int-to-float v7, v3

    iget-object v9, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 239
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->getExpectedHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 115
    return-void
.end method

.method public final setHidden(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cQ:Z

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PredictionRowView;->cb()V

    .line 257
    return-void
.end method
