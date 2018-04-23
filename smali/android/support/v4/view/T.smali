.class public Landroid/support/v4/view/T;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic jP:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .line 3086
    iput-object p1, p0, Landroid/support/v4/view/T;->jP:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3087
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3091
    iget-object v0, p0, Landroid/support/v4/view/T;->jP:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 3092
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3095
    iget-object v0, p0, Landroid/support/v4/view/T;->jP:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V

    .line 3096
    return-void
.end method
