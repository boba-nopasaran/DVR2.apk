.class public Lorg/opencv/core/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lorg/opencv/core/Rect;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/opencv/core/Rect;->x:I

    iput p2, p0, Lorg/opencv/core/Rect;->y:I

    iput p3, p0, Lorg/opencv/core/Rect;->width:I

    iput p4, p0, Lorg/opencv/core/Rect;->height:I

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
    double-to-int v0, v0

    iput v0, p0, Lorg/opencv/core/Rect;->x:I

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->y:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    :goto_1
    double-to-int v0, v0

    iput v0, p0, Lorg/opencv/core/Rect;->y:I

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->x:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    :goto_2
    double-to-int v0, v0

    iget v1, p0, Lorg/opencv/core/Rect;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/opencv/core/Rect;->width:I

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget-wide v2, p2, Lorg/opencv/core/Point;->y:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    :goto_3
    double-to-int v0, v0

    iget v1, p0, Lorg/opencv/core/Rect;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/opencv/core/Rect;->height:I

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
    .locals 6

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    double-to-int v0, v0

    iget-wide v2, p1, Lorg/opencv/core/Point;->y:D

    double-to-int v1, v2

    iget-wide v2, p2, Lorg/opencv/core/Size;->width:D

    double-to-int v2, v2

    iget-wide v4, p2, Lorg/opencv/core/Size;->height:D

    double-to-int v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/opencv/core/Rect;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/Rect;->set([D)V

    return-void
.end method


# virtual methods
.method public area()D
    .locals 2

    iget v0, p0, Lorg/opencv/core/Rect;->width:I

    iget v1, p0, Lorg/opencv/core/Rect;->height:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    return-wide v0
.end method

.method public br()Lorg/opencv/core/Point;
    .locals 6

    new-instance v0, Lorg/opencv/core/Point;

    iget v1, p0, Lorg/opencv/core/Rect;->x:I

    iget v2, p0, Lorg/opencv/core/Rect;->width:I

    add-int/2addr v1, v2

    int-to-double v2, v1

    iget v1, p0, Lorg/opencv/core/Rect;->y:I

    iget v4, p0, Lorg/opencv/core/Rect;->height:I

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Rect;->clone()Lorg/opencv/core/Rect;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Rect;
    .locals 5

    new-instance v0, Lorg/opencv/core/Rect;

    iget v1, p0, Lorg/opencv/core/Rect;->x:I

    iget v2, p0, Lorg/opencv/core/Rect;->y:I

    iget v3, p0, Lorg/opencv/core/Rect;->width:I

    iget v4, p0, Lorg/opencv/core/Rect;->height:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public contains(Lorg/opencv/core/Point;)Z
    .locals 4

    iget v0, p0, Lorg/opencv/core/Rect;->x:I

    int-to-double v0, v0

    iget-wide v2, p1, Lorg/opencv/core/Point;->x:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->x:D

    iget v2, p0, Lorg/opencv/core/Rect;->x:I

    iget v3, p0, Lorg/opencv/core/Rect;->width:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/opencv/core/Rect;->y:I

    int-to-double v0, v0

    iget-wide v2, p1, Lorg/opencv/core/Point;->y:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p1, Lorg/opencv/core/Point;->y:D

    iget v2, p0, Lorg/opencv/core/Rect;->y:I

    iget v3, p0, Lorg/opencv/core/Rect;->height:I

    add-int/2addr v2, v3

    int-to-double v2, v2

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
    .locals 1

    iget v0, p0, Lorg/opencv/core/Rect;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/opencv/core/Rect;->height:I

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
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lorg/opencv/core/Rect;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/Rect;

    iget v2, p0, Lorg/opencv/core/Rect;->x:I

    iget v3, p1, Lorg/opencv/core/Rect;->x:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/opencv/core/Rect;->y:I

    iget v3, p1, Lorg/opencv/core/Rect;->y:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/opencv/core/Rect;->width:I

    iget v3, p1, Lorg/opencv/core/Rect;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/opencv/core/Rect;->height:I

    iget v3, p1, Lorg/opencv/core/Rect;->height:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lorg/opencv/core/Rect;->height:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/opencv/core/Rect;->width:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/opencv/core/Rect;->x:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lorg/opencv/core/Rect;->y:I

    int-to-double v2, v1

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

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_1

    aget-wide v2, p1, v1

    double-to-int v0, v2

    :goto_0
    iput v0, p0, Lorg/opencv/core/Rect;->x:I

    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v2, p1, v4

    double-to-int v0, v2

    :goto_1
    iput v0, p0, Lorg/opencv/core/Rect;->y:I

    array-length v0, p1

    if-le v0, v5, :cond_3

    aget-wide v2, p1, v5

    double-to-int v0, v2

    :goto_2
    iput v0, p0, Lorg/opencv/core/Rect;->width:I

    array-length v0, p1

    if-le v0, v6, :cond_0

    aget-wide v0, p1, v6

    double-to-int v1, v0

    :cond_0
    iput v1, p0, Lorg/opencv/core/Rect;->height:I

    :goto_3
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iput v1, p0, Lorg/opencv/core/Rect;->x:I

    iput v1, p0, Lorg/opencv/core/Rect;->y:I

    iput v1, p0, Lorg/opencv/core/Rect;->width:I

    iput v1, p0, Lorg/opencv/core/Rect;->height:I

    goto :goto_3
.end method

.method public size()Lorg/opencv/core/Size;
    .locals 6

    new-instance v0, Lorg/opencv/core/Size;

    iget v1, p0, Lorg/opencv/core/Rect;->width:I

    int-to-double v2, v1

    iget v1, p0, Lorg/opencv/core/Rect;->height:I

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Size;-><init>(DD)V

    return-object v0
.end method

.method public tl()Lorg/opencv/core/Point;
    .locals 6

    new-instance v0, Lorg/opencv/core/Point;

    iget v1, p0, Lorg/opencv/core/Rect;->x:I

    int-to-double v2, v1

    iget v1, p0, Lorg/opencv/core/Rect;->y:I

    int-to-double v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/opencv/core/Rect;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/Rect;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/Rect;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/Rect;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
