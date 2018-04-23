.class public Landroid/support/v4/app/a;
.super Landroid/support/v4/a/a;
.source "SourceFile"


# static fields
.field private static bE:Landroid/support/v4/app/b;


# direct methods
.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 233
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method

.method public static n()Landroid/support/v4/app/b;
    .locals 1

    .line 168
    sget-object v0, Landroid/support/v4/app/a;->bE:Landroid/support/v4/app/b;

    return-object v0
.end method
