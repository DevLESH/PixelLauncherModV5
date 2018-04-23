.class Landroid/support/v7/widget/aL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field qr:I

.field qs:I

.field qt:I

.field qu:I

.field qv:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aL;->qr:I

    return-void
.end method


# virtual methods
.method final addFlags(I)V
    .locals 1

    .line 151
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/aL;->qr:I

    .line 152
    return-void
.end method

.method final bO()Z
    .locals 4

    .line 169
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    iget v2, p0, Landroid/support/v7/widget/aL;->qu:I

    iget v3, p0, Landroid/support/v7/widget/aL;->qs:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/aL;->compare(II)I

    move-result v2

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 171
    return v1

    .line 175
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_1

    .line 176
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    iget v2, p0, Landroid/support/v7/widget/aL;->qu:I

    iget v3, p0, Landroid/support/v7/widget/aL;->qt:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/aL;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 177
    return v1

    .line 181
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    and-int/lit16 v0, v0, 0x700

    if-eqz v0, :cond_2

    .line 182
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    iget v2, p0, Landroid/support/v7/widget/aL;->qv:I

    iget v3, p0, Landroid/support/v7/widget/aL;->qs:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/aL;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 183
    return v1

    .line 187
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_3

    .line 188
    iget v0, p0, Landroid/support/v7/widget/aL;->qr:I

    iget v2, p0, Landroid/support/v7/widget/aL;->qv:I

    iget v3, p0, Landroid/support/v7/widget/aL;->qt:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/aL;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 189
    return v1

    .line 192
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method final compare(II)I
    .locals 0

    .line 159
    if-le p1, p2, :cond_0

    .line 160
    const/4 p1, 0x1

    return p1

    .line 162
    :cond_0
    if-ne p1, p2, :cond_1

    .line 163
    const/4 p1, 0x2

    return p1

    .line 165
    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method final setBounds(IIII)V
    .locals 0

    .line 140
    iput p1, p0, Landroid/support/v7/widget/aL;->qs:I

    .line 141
    iput p2, p0, Landroid/support/v7/widget/aL;->qt:I

    .line 142
    iput p3, p0, Landroid/support/v7/widget/aL;->qu:I

    .line 143
    iput p4, p0, Landroid/support/v7/widget/aL;->qv:I

    .line 144
    return-void
.end method
