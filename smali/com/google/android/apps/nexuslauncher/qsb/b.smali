.class public Lcom/google/android/apps/nexuslauncher/qsb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private final sT:I

.field private final sX:Ljava/lang/String;

.field final synthetic sY:Lcom/google/android/apps/nexuslauncher/qsb/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/a;Ljava/lang/String;I)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sY:Lcom/google/android/apps/nexuslauncher/qsb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sX:Ljava/lang/String;

    .line 396
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sT:I

    .line 397
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 421
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x1020022

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sX:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 422
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sY:Lcom/google/android/apps/nexuslauncher/qsb/a;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sX:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sT:I

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->a(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 424
    const/4 p1, 0x1

    return p1

    .line 426
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 404
    sget-object v1, Lcom/android/launcher3/Launcher;->AUTO_CANCEL_ACTION_MODE:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 406
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/b;->sX:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 407
    const p1, 0x1020022

    const v2, 0x104000b

    invoke-interface {p2, v1, p1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 408
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 409
    return v0

    .line 411
    :cond_0
    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 430
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 416
    const/4 p1, 0x1

    return p1
.end method
