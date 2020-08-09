.class public Lcom/adasplus/data/BufferBean;
.super Ljava/lang/Object;
.source "BufferBean.java"


# instance fields
.field public isCanRead:[B

.field public mBuffer:[B


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/adasplus/data/BufferBean;->isCanRead:[B

    if-lez p1, :cond_0

    new-array v1, p1, [B

    iput-object v1, p0, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
