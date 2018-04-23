.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Xm:I


# instance fields
.field protected Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private final Xn:Lcom/google/android/libraries/gsa/launcherclient/g;

.field public final Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

.field public final Xp:Lcom/google/android/libraries/gsa/launcherclient/b;

.field public final Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

.field public final Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

.field public final Xs:Landroid/content/BroadcastReceiver;

.field public Xt:I

.field public Xu:I

.field public Xv:I

.field public Xw:Landroid/view/WindowManager$LayoutParams;

.field public Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

.field public final dO:Landroid/app/Activity;

.field public mDestroyed:Z

.field private qJ:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    const/4 v0, -0x1

    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/g;Lcom/google/android/libraries/gsa/launcherclient/f;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "Client"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    .line 142
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "Service"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xp:Lcom/google/android/libraries/gsa/launcherclient/b;

    .line 147
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/d;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xs:Landroid/content/BroadcastReceiver;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    .line 168
    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    .line 170
    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xu:I

    .line 207
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    .line 208
    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xn:Lcom/google/android/libraries/gsa/launcherclient/g;

    .line 210
    new-instance p2, Lcom/google/android/libraries/gsa/launcherclient/i;

    const/16 v1, 0x41

    invoke-direct {p2, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/i;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

    .line 212
    iget p2, p3, Lcom/google/android/libraries/gsa/launcherclient/f;->Xz:I

    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    .line 214
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/a;->G(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/a;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    .line 215
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/google/android/libraries/gsa/launcherclient/a;->Xe:Ljava/lang/ref/WeakReference;

    iget-object p2, p2, Lcom/google/android/libraries/gsa/launcherclient/a;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 218
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 219
    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 220
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_0

    .line 221
    const-string p3, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 223
    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xs:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    sget p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    if-gtz p2, :cond_1

    .line 225
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->I(Landroid/content/Context;)V

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 235
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    .line 236
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    .line 237
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    .line 238
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 241
    :cond_2
    return-void
.end method

.method static H(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 715
    nop

    .line 716
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "app://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 717
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "v"

    .line 718
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "cv"

    .line 719
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 720
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static I(Landroid/content/Context;)V
    .locals 2

    .line 829
    nop

    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 832
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->H(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 833
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "service.api.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    .line 838
    return-void

    .line 834
    :cond_1
    :goto_0
    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    return-void
.end method

.method static synthetic J(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->I(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/i;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->bd(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/a;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    return-object p0
.end method

.method private bd(I)V
    .locals 2

    .line 681
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xu:I

    if-eq v0, p1, :cond_1

    .line 682
    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xu:I

    .line 683
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xn:Lcom/google/android/libraries/gsa/launcherclient/g;

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/g;->j(Z)V

    .line 687
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xu:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/g;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xn:Lcom/google/android/libraries/gsa/launcherclient/g;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/b;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xp:Lcom/google/android/libraries/gsa/launcherclient/b;

    return-object p0
.end method


# virtual methods
.method public final D(Z)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "hideOverlay"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->c(Ljava/lang/String;Z)V

    .line 577
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 580
    nop

    .line 579
    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    return-void

    .line 581
    :catch_0
    move-exception p1

    .line 587
    :cond_0
    return-void
.end method

.method public final E(Z)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "showOverlay"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->c(Ljava/lang/String;Z)V

    .line 597
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    return-void

    .line 600
    :catch_0
    move-exception p1

    .line 606
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    .line 452
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->gW()V

    return-void

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_2

    .line 456
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 457
    :catch_0
    move-exception p1

    .line 462
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 464
    :cond_2
    return-void
.end method

.method final b(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xp:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "Connected"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->c(Ljava/lang/String;Z)V

    .line 670
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 671
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p1, :cond_1

    .line 672
    invoke-direct {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->bd(I)V

    return-void

    .line 674
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->gW()V

    .line 678
    :cond_2
    return-void
.end method

.method public final gW()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_5

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    iput-object p0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mWindowShift:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->mWindow:Landroid/view/Window;

    .line 473
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_0

    .line 477
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    const-string v1, "layout_params"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 479
    const-string v1, "configuration"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 480
    const-string v1, "client_options"

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xv:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 481
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->qJ:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->qJ:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 484
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xx:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 486
    :goto_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 487
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    return-void

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    return-void

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 501
    :cond_5
    return-void
.end method

.method public final gX()V
    .locals 4

    .line 514
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "startMove"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 524
    :cond_0
    return-void
.end method

.method public final gY()V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "endMove"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 535
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 544
    :cond_0
    return-void
.end method

.method public final h(F)V
    .locals 3

    .line 557
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "updateMove"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 558
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    return-void

    .line 561
    :catch_0
    move-exception p1

    .line 567
    :cond_0
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 1

    .line 658
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->qJ:Landroid/os/Bundle;

    .line 659
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->gW()V

    .line 662
    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 249
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "attachedToWindow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 253
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 254
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 302
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    .line 307
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 309
    :try_start_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 320
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 321
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 275
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    .line 280
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 282
    :try_start_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 293
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 329
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 330
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/a;->C(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 336
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    .line 337
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 346
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 347
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 355
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 356
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/a;->C(Z)V

    .line 362
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->gZ()V

    .line 364
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    .line 365
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xw:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 374
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xt:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 375
    return-void
.end method

.method public final reconnect()V
    .locals 2

    .line 431
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xr:Lcom/google/android/libraries/gsa/launcherclient/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/a;->ha()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xq:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->ha()Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dO:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/e;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    :cond_2
    return-void
.end method

.method public final startSearch([BLandroid/os/Bundle;)Z
    .locals 4

    .line 619
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xo:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "startSearch"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 620
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xm:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 621
    return v2

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->Xd:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 626
    :catch_0
    move-exception p1

    .line 627
    const-string p2, "DrawerOverlayClient"

    const-string v0, "Error starting session for search"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    :cond_1
    return v2
.end method
