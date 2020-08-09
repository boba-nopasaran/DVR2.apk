.class public Lorg/opencv/core/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/opencv/core/Point;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/core/Point;->x:D

    iput-wide p3, p0, Lorg/opencv/core/Point;->y:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Point;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/Point;->set([D)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Point;->clone()Lorg/opencv/core/Point;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Point;
    .locals 6

    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public dot(Lorg/opencv/core/Point;)D
    .locals 6

    iget-wide v0, p0, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/opencv/core/Point;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/opencv/core/Point;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/Point;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/16 v4, 0x20

    iget-wide v0, p0, Lorg/opencv/core/Point;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/opencv/core/Point;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public inside(Lorg/opencv/core/Rect;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lorg/opencv/core/Rect;->contains(Lorg/opencv/core/Point;)Z

    move-result v0

    return v0
.end method

.method public set([D)V
    .locals 5

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Point;->x:D

    array-length v0, p1

    if-le v0, v4, :cond_0

    aget-wide v2, p1, v4

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/Point;->y:D

    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lorg/opencv/core/Point;->x:D

    iput-wide v2, p0, Lorg/opencv/core/Point;->y:D

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/opencv/core/Point;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
