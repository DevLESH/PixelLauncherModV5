.class public Landroid/support/v4/app/ay;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/a;


# instance fields
.field private di:Landroid/arch/lifecycle/b;

.field private hi:Landroid/support/v4/c/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/c/u;

    invoke-direct {v0}, Landroid/support/v4/c/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ay;->hi:Landroid/support/v4/c/u;

    .line 47
    new-instance v0, Landroid/arch/lifecycle/b;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/b;-><init>(Landroid/arch/lifecycle/a;)V

    iput-object v0, p0, Landroid/support/v4/app/ay;->di:Landroid/arch/lifecycle/b;

    .line 96
    return-void
.end method


# virtual methods
.method public b()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/ay;->di:Landroid/arch/lifecycle/b;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {p0}, Landroid/arch/lifecycle/f;->a(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    iget-object v0, p0, Landroid/support/v4/app/ay;->di:Landroid/arch/lifecycle/b;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->C:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/b;->a(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method
