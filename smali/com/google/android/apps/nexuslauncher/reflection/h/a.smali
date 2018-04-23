.class public Lcom/google/android/apps/nexuslauncher/reflection/h/a;
.super Lcom/google/research/reflection/predictor/PredictorWrapper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/research/reflection/predictor/PredictorWrapper;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/research/reflection/predictor/f;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/research/reflection/predictor/PredictorWrapper;-><init>(Lcom/google/research/reflection/predictor/f;)V

    .line 50
    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/reflection/e/r;)Lcom/google/android/apps/nexuslauncher/reflection/h/a;
    .locals 10

    .line 56
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/h/a;-><init>()V

    .line 57
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aaw:I

    .line 58
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aaA:I

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/research/reflection/predictor/f;->K(Ljava/lang/String;)Lcom/google/research/reflection/predictor/f;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aav:Lcom/google/research/reflection/predictor/f;

    .line 61
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aav:Lcom/google/research/reflection/predictor/f;

    if-nez v1, :cond_0

    .line 62
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find predictor with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v1, v0}, Lcom/google/research/reflection/predictor/f;->a(Lcom/google/research/reflection/predictor/PredictorWrapper;)V

    .line 65
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 67
    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aav:Lcom/google/research/reflection/predictor/f;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/google/research/reflection/predictor/f;->a(Ljava/io/DataInputStream;Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 71
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 72
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aau:Ljava/util/HashMap;

    iget-object v7, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->name:Ljava/lang/String;

    iget v5, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/t;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 76
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aat:Ljava/util/HashMap;

    iget v7, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 80
    iget-object v6, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aax:Ljava/util/HashMap;

    iget v7, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, v5, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    array-length v1, p0

    :goto_3
    if-ge v3, v1, :cond_4

    aget-object v2, p0, v3

    .line 84
    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->Yj:Ljava/util/HashMap;

    iget v5, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->key:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v2, Lcom/google/android/apps/nexuslauncher/reflection/e/o;->value:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 86
    :cond_4
    return-object v0
.end method

.method public static c(Ljava/util/Map;)Lcom/google/android/apps/nexuslauncher/reflection/e/q;
    .locals 14

    .line 169
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/q;-><init>()V

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->timestamp:J

    .line 171
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->version:I

    .line 172
    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->we:Ljava/lang/String;

    .line 174
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    .line 175
    nop

    .line 176
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 177
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    invoke-direct {v4}, Lcom/google/android/apps/nexuslauncher/reflection/e/s;-><init>()V

    .line 178
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->uW:Ljava/lang/String;

    .line 180
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/reflection/predictor/i;

    .line 181
    iget-object v5, v3, Lcom/google/research/reflection/predictor/i;->aaF:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    iput-object v5, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->wr:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    .line 182
    nop

    .line 183
    iget-object v5, v3, Lcom/google/research/reflection/predictor/i;->aaF:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/research/reflection/predictor/PredictorWrapper;

    .line 184
    iget-object v8, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->wr:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    new-instance v9, Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    invoke-direct {v9}, Lcom/google/android/apps/nexuslauncher/reflection/e/p;-><init>()V

    aput-object v9, v8, v6

    .line 185
    iget-object v8, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->wr:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    aget-object v8, v8, v6

    move-object v9, v7

    check-cast v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;

    .line 186
    new-instance v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    invoke-direct {v10}, Lcom/google/android/apps/nexuslauncher/reflection/e/r;-><init>()V

    iget v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aaw:I

    iput v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wl:I

    iget v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aaA:I

    iput v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wk:I

    iget-object v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v11}, Lcom/google/research/reflection/predictor/f;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wi:Ljava/lang/String;

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v13, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aav:Lcom/google/research/reflection/predictor/f;

    invoke-virtual {v13, v12}, Lcom/google/research/reflection/predictor/f;->b(Ljava/io/DataOutputStream;)V

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wj:[B

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    iget-object v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aau:Ljava/util/HashMap;

    invoke-static {v11}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->a(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wm:[Lcom/google/android/apps/nexuslauncher/reflection/e/t;

    iget-object v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aat:Ljava/util/HashMap;

    invoke-static {v11}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wn:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    iget-object v11, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->aax:Ljava/util/HashMap;

    invoke-static {v11}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wo:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    iget-object v9, v9, Lcom/google/android/apps/nexuslauncher/reflection/h/a;->Yj:Ljava/util/HashMap;

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/reflection/a/c;->b(Ljava/util/Map;)[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    move-result-object v9

    iput-object v9, v10, Lcom/google/android/apps/nexuslauncher/reflection/e/r;->wp:[Lcom/google/android/apps/nexuslauncher/reflection/e/o;

    iput-object v10, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wc:Lcom/google/android/apps/nexuslauncher/reflection/e/r;

    .line 187
    iget-object v8, v4, Lcom/google/android/apps/nexuslauncher/reflection/e/s;->wr:[Lcom/google/android/apps/nexuslauncher/reflection/e/p;

    aget-object v8, v8, v6

    iget-object v9, v3, Lcom/google/research/reflection/predictor/i;->aaG:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/google/android/apps/nexuslauncher/reflection/e/p;->wd:I

    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    goto/16 :goto_1

    .line 190
    :cond_0
    iget-object v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/q;->wg:[Lcom/google/android/apps/nexuslauncher/reflection/e/s;

    add-int/lit8 v5, v2, 0x1

    aput-object v4, v3, v2

    .line 191
    nop

    .line 176
    move v2, v5

    goto/16 :goto_0

    .line 192
    :cond_1
    return-object v0
.end method
