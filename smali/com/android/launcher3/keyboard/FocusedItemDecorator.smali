.class public Lcom/android/launcher3/keyboard/FocusedItemDecorator;
.super Landroid/support/v7/widget/ae;
.source "SourceFile"


# instance fields
.field public mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/ae;-><init>()V

    .line 35
    new-instance v0, Lcom/android/launcher3/keyboard/FocusedItemDecorator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator$1;-><init>(Lcom/android/launcher3/keyboard/FocusedItemDecorator;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    .line 42
    return-void
.end method


# virtual methods
.method public final onDraw$13fcd2ff$2854d342(Landroid/graphics/Canvas;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->mHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method
