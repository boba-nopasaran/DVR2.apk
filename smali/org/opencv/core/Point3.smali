.class public Lorg/opencv/core/Point3;
.super Ljava/lang/Object;
.source "Point3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 8

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/core/Point3;->x:D

    iput-wide p3, p0, Lorg/opencv/core/Point3;->y:D

    iput-wide p5, p0, Lorg/opencv/core/Point3;->z:D

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Point;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iput-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iput-wide v0, p0, Lorg/opencv/core/Point3;->y:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/opencv/core/Point3;->z:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Point3;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/Point3;->set([D)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Point3;->clone()Lorg/opencv/core/Point3;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Point3;
    .locals 8

    new-instance v1, Lorg/opencv/core/Point3;

    iget-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v6, p0, Lorg/opencv/core/Point3;->z:D

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    return-object v1
.end method

.method public cross(Lorg/opencv/core/Point3;)Lorg/opencv/core/Point3;
    .locals 12

    new-instance v1, Lorg/opencv/core/Point3;

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->z:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v6, p1, Lorg/opencv/core/Point3;->y:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v6, p1, Lorg/opencv/core/Point3;->x:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v8, p1, Lorg/opencv/core/Point3;->z:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v8, p1, Lorg/opencv/core/Point3;->y:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v10, p1, Lorg/opencv/core/Point3;->x:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    return-object v1
.end method

.method public dot(Lorg/opencv/core/Point3;)D
    .locals 6

    iget-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v2, p1, Lorg/opencv/core/Point3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->z:D

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
    instance-of v2, p1, Lorg/opencv/core/Point3;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/Point3;

    iget-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    iget-wide v4, p1, Lorg/opencv/core/Point3;->z:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public set([D)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Point3;->x:D

    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v0, p1, v4

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/Point3;->y:D

    array-length v0, p1

    if-le v0, v5, :cond_0

    aget-wide v2, p1, v5

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    :goto_2
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    iput-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    iput-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    iput-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/opencv/core/Point3;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point3;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Point3;->z:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
