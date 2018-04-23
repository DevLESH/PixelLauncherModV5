.class public Lcom/android/launcher3/IconCache$CacheEntry;
.super Lcom/android/launcher3/graphics/BitmapInfo;
.source "SourceFile"


# instance fields
.field public contentDescription:Ljava/lang/CharSequence;

.field public isLowResIcon:Z

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/android/launcher3/graphics/BitmapInfo;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/IconCache$CacheEntry;->title:Ljava/lang/CharSequence;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/IconCache$CacheEntry;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method
