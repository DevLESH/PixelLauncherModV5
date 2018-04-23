.class public abstract Lcom/google/protobuf/nano/b;
.super Lcom/google/protobuf/nano/g;
.source "SourceFile"


# instance fields
.field protected XL:Lcom/google/protobuf/nano/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/g;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/google/protobuf/nano/g;->clone()Lcom/google/protobuf/nano/g;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/b;

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/f;->a(Lcom/google/protobuf/nano/b;Lcom/google/protobuf/nano/b;)V

    return-object v0
.end method
