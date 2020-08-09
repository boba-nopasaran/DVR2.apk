.class public Lorg/opencv/core/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/opencv/core/Range;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/opencv/core/Range;->start:I

    iput p2, p0, Lorg/opencv/core/Range;->end:I

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/Range;->set([D)V

    return-void
.end method

.method public static all()Lorg/opencv/core/Range;
    .locals 3

    new-instance v0, Lorg/opencv/core/Range;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Range;->clone()Lorg/opencv/core/Range;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Range;
    .locals 3

    new-instance v0, Lorg/opencv/core/Range;

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    iget v2, p0, Lorg/opencv/core/Range;->end:I

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    return-object v0
.end method

.method public empty()Z
    .locals 2

    iget v0, p0, Lorg/opencv/core/Range;->end:I

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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
    instance-of v2, p1, Lorg/opencv/core/Range;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/Range;

    iget v2, p0, Lorg/opencv/core/Range;->start:I

    iget v3, p1, Lorg/opencv/core/Range;->start:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/opencv/core/Range;->end:I

    iget v3, p1, Lorg/opencv/core/Range;->end:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/16 v4, 0x20

    iget v0, p0, Lorg/opencv/core/Range;->start:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/opencv/core/Range;->end:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lorg/opencv/core/Range;)Lorg/opencv/core/Range;
    .locals 4

    new-instance v0, Lorg/opencv/core/Range;

    iget v1, p1, Lorg/opencv/core/Range;->start:I

    iget v2, p0, Lorg/opencv/core/Range;->start:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p1, Lorg/opencv/core/Range;->end:I

    iget v3, p0, Lorg/opencv/core/Range;->end:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    iget v1, v0, Lorg/opencv/core/Range;->end:I

    iget v2, v0, Lorg/opencv/core/Range;->start:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/opencv/core/Range;->end:I

    return-object v0
.end method

.method public set([D)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_1

    aget-wide v2, p1, v1

    double-to-int v0, v2

    :goto_0
    iput v0, p0, Lorg/opencv/core/Range;->start:I

    array-length v0, p1

    if-le v0, v4, :cond_0

    aget-wide v0, p1, v4

    double-to-int v1, v0

    :cond_0
    iput v1, p0, Lorg/opencv/core/Range;->end:I

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput v1, p0, Lorg/opencv/core/Range;->start:I

    iput v1, p0, Lorg/opencv/core/Range;->end:I

    goto :goto_1
.end method

.method public shift(I)Lorg/opencv/core/Range;
    .locals 3

    new-instance v0, Lorg/opencv/core/Range;

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/opencv/core/Range;->end:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/opencv/core/Range;-><init>(II)V

    return-object v0
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lorg/opencv/core/Range;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/opencv/core/Range;->end:I

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/opencv/core/Range;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/Range;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
