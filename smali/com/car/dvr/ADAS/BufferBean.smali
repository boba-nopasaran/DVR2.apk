.class public Lcom/car/dvr/ADAS/BufferBean;
.super Ljava/lang/Object;
.source "BufferBean.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field public isCanRead:[B

.field public mBuffer:[B


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "BufferBean"

    iput-object v1, p0, Lcom/car/dvr/ADAS/BufferBean;->TAG:Ljava/lang/String;

    const-string v1, "BufferBean"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/car/dvr/ADAS/BufferBean;->isCanRead:[B

    if-lez p1, :cond_0

    new-array v1, p1, [B

    iput-object v1, p0, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
