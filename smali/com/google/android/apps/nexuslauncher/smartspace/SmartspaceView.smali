.class public Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/android/apps/nexuslauncher/smartspace/e;
.implements Ljava/lang/Runnable;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field private final sH:Landroid/text/TextPaint;

.field private yA:Landroid/view/View;

.field private yB:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

.field private final yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

.field private yD:Z

.field private yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

.field private final yk:Landroid/view/View$OnClickListener;

.field private final yl:Landroid/view/View$OnClickListener;

.field private final ym:Landroid/content/res/ColorStateList;

.field private final yn:I

.field private yo:Z

.field private yp:Landroid/widget/ImageView;

.field private yq:Landroid/widget/ImageView;

.field private yr:Landroid/widget/ImageView;

.field private ys:Landroid/widget/TextView;

.field private yt:Landroid/widget/TextView;

.field private yu:Landroid/widget/TextView;

.field private yv:Landroid/widget/TextView;

.field private yw:Landroid/view/ViewGroup;

.field private yx:Landroid/view/ViewGroup;

.field private yy:Landroid/view/ViewGroup;

.field private yz:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p2, Lcom/google/android/apps/nexuslauncher/smartspace/f;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yk:Landroid/view/View$OnClickListener;

    .line 67
    new-instance p2, Lcom/google/android/apps/nexuslauncher/smartspace/g;

    invoke-direct {p2, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/g;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yl:Landroid/view/View$OnClickListener;

    .line 94
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    .line 96
    nop

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f01002d

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 96
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ym:Landroid/content/res/ColorStateList;

    .line 98
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->dD()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yo:Z

    .line 99
    const p1, 0x7f02000c

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yn:I

    .line 100
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->sH:Landroid/text/TextPaint;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/d;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    return-object p0
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 0

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->dE()V

    .line 332
    const/4 p1, 0x1

    return p1
.end method

.method private af(Landroid/view/View;)I
    .locals 1

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 309
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private dI()V
    .locals 1

    .line 149
    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yt:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yp:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f0e006a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yq:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yr:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yw:Landroid/view/ViewGroup;

    .line 155
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yx:Landroid/view/ViewGroup;

    .line 156
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    .line 157
    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yu:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yv:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yB:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    .line 160
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yA:Landroid/view/View;

    .line 161
    const v0, 0x7f0e006d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yz:Landroid/view/ViewGroup;

    .line 162
    return-void
.end method

.method private dK()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yo:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private dL()Ljava/lang/String;
    .locals 7

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 288
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->sH:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 289
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->sH:Landroid/text/TextPaint;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 290
    invoke-virtual {v0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->u(Z)Lcom/google/android/apps/nexuslauncher/smartspace/a/h;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/a/h;->ze:[Lcom/google/android/apps/nexuslauncher/smartspace/a/i;

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    aget-object v6, v3, v5

    iget v6, v6, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->zd:I

    if-eqz v6, :cond_0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/a/i;->zc:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_1
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->sH:Landroid/text/TextPaint;

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v5, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 291
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v4, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$tIM8xvW8bBo2u7xPS0_bF3vw1DA(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/nexuslauncher/smartspace/d;Z)V
    .locals 6

    .line 186
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 187
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dG()Z

    move-result v0

    .line 188
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yD:Z

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 189
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yD:Z

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yw:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yw:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yD:Z

    if-eqz v3, :cond_0

    const v3, 0x7f04002b

    goto :goto_0

    :cond_0
    const v3, 0x7f04002a

    :goto_0
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dI()V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dG()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dK()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 196
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yD:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_a

    .line 197
    iget p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yn:I

    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setBackgroundResource(I)V

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->dy()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dL()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :goto_3
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->t(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dF()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yl:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dK()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yv:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yi:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yr:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yi:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    invoke-virtual {p2, v2, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    :cond_6
    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yp:Landroid/widget/ImageView;

    iget-boolean v3, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->xY:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->mSupportsDarkText:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ym:Landroid/content/res/ColorStateList;

    goto :goto_5

    :cond_7
    move-object v3, v1

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yp:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yp:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yp:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->af(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yt:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->af(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yz:Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->af(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yy:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->af(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v0, v3

    :cond_9
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->sH:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yt:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->b(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->sH:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v3, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->t(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v2

    invoke-static {v1, v4, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 199
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yw:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz p2, :cond_b

    if-nez v0, :cond_b

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yw:Landroid/view/ViewGroup;

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_6

    :cond_b
    if-nez p2, :cond_c

    if-eqz v0, :cond_c

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yw:Landroid/view/ViewGroup;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_c
    :goto_6
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setBackgroundResource(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yB:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yk:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yB:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dK()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dF()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yA:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yx:Landroid/view/ViewGroup;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yx:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yl:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yx:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dK()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yu:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yi:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yq:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yi:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_7

    :cond_d
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yx:Landroid/view/ViewGroup;

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yA:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_e
    :goto_7
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dG()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->dy()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 204
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->dz()J

    move-result-wide p1

    .line 205
    const-wide/32 v0, 0xee48

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 206
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_f

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 207
    :cond_f
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_10
    return-void
.end method

.method protected final au(I)V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->aq(I)V

    .line 349
    return-void
.end method

.method public final dC()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->dD()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yo:Z

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dJ()V

    .line 174
    return-void
.end method

.method public final dJ()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->dB()V

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->a(Lcom/google/android/apps/nexuslauncher/smartspace/d;Z)V

    .line 181
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->invalidate()V

    .line 117
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 123
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->au(I)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->ae(Landroid/view/View;)V

    .line 318
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 138
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yC:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController;->a(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 145
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dI()V

    .line 146
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 127
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 128
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dG()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yc:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/d;->yj:Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/b;->dy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dL()Ljava/lang/String;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 131
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 322
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yB:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ys:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->yB:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    .line 323
    :goto_0
    if-eqz p1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002b

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 325
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 326
    const v0, 0x1030128

    goto :goto_1

    .line 327
    :cond_1
    const v0, 0x103012b

    :goto_1
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 328
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 329
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0c00af

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 330
    new-instance v1, Lcom/google/android/apps/nexuslauncher/smartspace/-$$Lambda$SmartspaceView$tIM8xvW8bBo2u7xPS0_bF3vw1DA;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/-$$Lambda$SmartspaceView$tIM8xvW8bBo2u7xPS0_bF3vw1DA;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 334
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 335
    const/4 p1, 0x1

    return p1

    .line 337
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public run()V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dJ()V

    .line 344
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 167
    const/4 p1, 0x0

    invoke-super {p0, p1, p1, p1, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 168
    return-void
.end method
