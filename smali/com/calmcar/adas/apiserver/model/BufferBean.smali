.class public Lcom/calmcar/adas/apiserver/model/BufferBean;
.super Ljava/lang/Object;
.source "BufferBean.java"


# instance fields
.field public isCanRead:[B

.field public mBuffer:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/model/BufferBean;->isCanRead:[B

    if-lez p1, :cond_0

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/model/BufferBean;->mBuffer:[B

    :cond_0
    return-void
.end method
