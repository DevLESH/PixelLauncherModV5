.class Landroid/arch/lifecycle/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field H:Landroid/arch/lifecycle/Lifecycle$State;


# virtual methods
.method final c(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 352
    invoke-static {p1}, Landroid/arch/lifecycle/b;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    .line 353
    iget-object v0, p0, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/Lifecycle$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    .line 354
    iput-object p1, p0, Landroid/arch/lifecycle/d;->H:Landroid/arch/lifecycle/Lifecycle$State;

    .line 356
    return-void
.end method
