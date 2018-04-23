.class public final Lcom/google/android/gms/internal/F;
.super Lcom/google/android/gms/internal/V;


# instance fields
.field public Gp:I

.field public Gq:J

.field public HH:I

.field public HI:I

.field public HJ:I

.field public HK:D

.field public HL:D

.field public HM:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/V;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/F;->Gp:I

    iput v0, p0, Lcom/google/android/gms/internal/F;->HH:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/F;->Gq:J

    iput v0, p0, Lcom/google/android/gms/internal/F;->HI:I

    iput v0, p0, Lcom/google/android/gms/internal/F;->HJ:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/internal/F;->HK:D

    iput-wide v3, p0, Lcom/google/android/gms/internal/F;->HL:D

    iput-wide v1, p0, Lcom/google/android/gms/internal/F;->HM:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/F;->IA:I

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/T;)Lcom/google/android/gms/internal/aa;
    .locals 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->ft()I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/16 v1, 0x10

    if-eq v0, v1, :cond_7

    const/16 v1, 0x18

    if-eq v0, v1, :cond_6

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_4

    const/16 v1, 0x31

    if-eq v0, v1, :cond_3

    const/16 v1, 0x39

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/T;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/F;->HM:J

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/F;->HL:D

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/F;->HK:D

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/F;->HJ:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/F;->HI:I

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/F;->Gq:J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fv()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v2, p0, Lcom/google/android/gms/internal/F;->HH:I

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/T;->fv()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/T;->aI(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/F;->a(Lcom/google/android/gms/internal/T;I)Z

    goto :goto_0

    :pswitch_1
    iput v2, p0, Lcom/google/android/gms/internal/F;->Gp:I

    goto/16 :goto_0

    :cond_9
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/U;)V
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/F;->Gp:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/F;->Gp:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->A(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/F;->HH:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/F;->HH:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->A(II)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/F;->Gq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/F;->Gq:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/F;->HI:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/F;->HI:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->A(II)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/F;->HJ:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/F;->HJ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/U;->A(II)V

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/F;->HK:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-wide v6, p0, Lcom/google/android/gms/internal/F;->HK:D

    invoke-virtual {p1, v0, v6, v7}, Lcom/google/android/gms/internal/U;->a(ID)V

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/F;->HL:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/internal/F;->HL:D

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/U;->a(ID)V

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/F;->HM:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget-wide v1, p0, Lcom/google/android/gms/internal/F;->HM:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/U;->a(IJ)V

    :cond_7
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/V;->a(Lcom/google/android/gms/internal/U;)V

    return-void
.end method

.method protected final computeSerializedSize()I
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/internal/V;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/F;->Gp:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/F;->Gp:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/F;->HH:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/F;->HH:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/internal/F;->Gq:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v5, p0, Lcom/google/android/gms/internal/F;->Gq:J

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/F;->HI:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/F;->HI:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/F;->HJ:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/F;->HJ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/U;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-wide v1, p0, Lcom/google/android/gms/internal/F;->HK:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v1, v1, v7

    const/16 v2, 0x8

    if-eqz v1, :cond_5

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aN(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_5
    iget-wide v7, p0, Lcom/google/android/gms/internal/F;->HL:D

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v7, v5

    if-eqz v1, :cond_6

    const/16 v1, 0x38

    invoke-static {v1}, Lcom/google/android/gms/internal/U;->aN(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_6
    iget-wide v5, p0, Lcom/google/android/gms/internal/F;->HM:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_7

    iget-wide v3, p0, Lcom/google/android/gms/internal/F;->HM:J

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/U;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/F;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/F;

    iget v1, p0, Lcom/google/android/gms/internal/F;->Gp:I

    iget v3, p1, Lcom/google/android/gms/internal/F;->Gp:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/F;->HH:I

    iget v3, p1, Lcom/google/android/gms/internal/F;->HH:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/google/android/gms/internal/F;->Gq:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/F;->Gq:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/F;->HI:I

    iget v3, p1, Lcom/google/android/gms/internal/F;->HI:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/F;->HJ:I

    iget v3, p1, Lcom/google/android/gms/internal/F;->HJ:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/internal/F;->HK:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/F;->HK:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/google/android/gms/internal/F;->HL:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/F;->HL:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/google/android/gms/internal/F;->HM:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/F;->HM:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    iget-object p1, p1, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/X;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    if-eqz v1, :cond_d

    iget-object p1, p1, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    return v0

    :cond_c
    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/F;->Gp:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/F;->HH:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/F;->Gq:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/F;->Gq:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/F;->HI:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/F;->HJ:I

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/F;->HK:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/F;->HL:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/F;->HM:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/F;->HM:J

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/F;->Iq:Lcom/google/android/gms/internal/X;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/X;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method
