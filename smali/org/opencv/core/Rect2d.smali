.class public Lorg/opencv/core/Rect2d;
.super Ljava/lang/Object;
.source "Rect2d.java"


# instance fields
.field public height:D

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 10

    const-wide/16 v2, 0x0

    move-object v1, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/core/Rect2d;->x:D

    iput-wide p3, p0, Lorg/opencv/core/Rect2d;->y:D

    iput-wide p5, p0, Lorg/opencv/core/Rect2d;->width:D

    iput-wide p7, p0, Lorg/opencv/core/Rect2d;->height:D

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Point;Lorg/opencv/core/Point;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->x:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->y:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->x:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    :goto_2
    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    :goto_3
    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->height:D

    return-void

    :cond_0
    iget-wide v0, p2, Lorg/opencv/core/Point;->x:D

    goto :goto_0

    :cond_1
    iget-wide v0, p2, Lorg/opencv/core/Point;->y:D

    goto :goto_1

    :cond_2
    iget-wide v0, p2, Lorg/opencv/core/Point;->x:D

    goto :goto_2

    :cond_3
    iget-wide v0, p2, Lorg/opencv/core/Point;->y:D

    goto :goto_3
.end method

.method public constructor <init>(Lorg/opencv/core/Point;Lorg/opencv/core/Size;)V
    .locals 10

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v6, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v8, p2, Lorg/opencv/core/Size;->height:D

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/Rect2d;->set([D)V

    return-void
.end method


# virtual methods
.method public area()D
    .locals 4

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public br()Lorg/opencv/core/Point;
    .locals 8

    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->width:D

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v6, p0, Lorg/opencv/core/Rect2d;->height:D

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Rect2d;->clone()Lorg/opencv/core/Rect2d;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Rect2d;
    .locals 10

    new-instance v1, Lorg/opencv/core/Rect2d;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v6, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v8, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    return-object v1
.end method

.method public contains(Lorg/opencv/core/Point;)Z
    .locals 6

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->width:D

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v2, p1, Lorg/opencv/core/Point;->y:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->height:D

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public empty()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->height:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    instance-of v2, p1, Lorg/opencv/core/Rect2d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/Rect2d;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p1, Lorg/opencv/core/Rect2d;->x:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    iget-wide v4, p1, Lorg/opencv/core/Rect2d;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Rect2d;->width:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    iget-wide v4, p1, Lorg/opencv/core/Rect2d;->height:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

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
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->x:D

    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v0, p1, v4

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->y:D

    array-length v0, p1

    if-le v0, v5, :cond_3

    aget-wide v0, p1, v5

    :goto_2
    iput-wide v0, p0, Lorg/opencv/core/Rect2d;->width:D

    array-length v0, p1

    if-le v0, v6, :cond_0

    aget-wide v2, p1, v6

    :cond_0
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    :goto_3
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :cond_4
    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    iput-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    goto :goto_3
.end method

.method public size()Lorg/opencv/core/Size;
    .locals 6

    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Size;-><init>(DD)V

    return-object v0
.end method

.method public tl()Lorg/opencv/core/Point;
    .locals 6

    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    iget-wide v4, p0, Lorg/opencv/core/Rect2d;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->x:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->y:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->width:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/Rect2d;->height:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
