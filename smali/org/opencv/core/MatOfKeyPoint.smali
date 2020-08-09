.class public Lorg/opencv/core/MatOfKeyPoint;
.super Lorg/opencv/core/Mat;
.source "MatOfKeyPoint.java"


# static fields
.field private static final _channels:I = 0x7

.field private static final _depth:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfKeyPoint;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfKeyPoint;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;)V
    .locals 2

    invoke-static {}, Lorg/opencv/core/Range;->all()Lorg/opencv/core/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfKeyPoint;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfKeyPoint;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/opencv/core/KeyPoint;)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfKeyPoint;->fromArray([Lorg/opencv/core/KeyPoint;)V

    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfKeyPoint;
    .locals 2

    new-instance v0, Lorg/opencv/core/MatOfKeyPoint;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfKeyPoint;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v1

    invoke-super {p0, p1, v0, v1}, Lorg/opencv/core/Mat;->create(III)V

    :cond_0
    return-void
.end method

.method public varargs fromArray([Lorg/opencv/core/KeyPoint;)V
    .locals 8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/opencv/core/MatOfKeyPoint;->alloc(I)V

    mul-int/lit8 v0, v2, 0x7

    new-array v3, v0, [F

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v4, p1, v0

    mul-int/lit8 v5, v0, 0x7

    iget-object v6, v4, Lorg/opencv/core/KeyPoint;->pt:Lorg/opencv/core/Point;

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v6

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x1

    iget-object v6, v4, Lorg/opencv/core/KeyPoint;->pt:Lorg/opencv/core/Point;

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    double-to-float v6, v6

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x2

    iget v6, v4, Lorg/opencv/core/KeyPoint;->size:F

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x3

    iget v6, v4, Lorg/opencv/core/KeyPoint;->angle:F

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x4

    iget v6, v4, Lorg/opencv/core/KeyPoint;->response:F

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x5

    iget v6, v4, Lorg/opencv/core/KeyPoint;->octave:I

    int-to-float v6, v6

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x6

    iget v4, v4, Lorg/opencv/core/KeyPoint;->class_id:I

    int-to-float v4, v4

    aput v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v1, v3}, Lorg/opencv/core/MatOfKeyPoint;->put(II[F)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/KeyPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/opencv/core/KeyPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/opencv/core/KeyPoint;

    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfKeyPoint;->fromArray([Lorg/opencv/core/KeyPoint;)V

    return-void
.end method

.method public toArray()[Lorg/opencv/core/KeyPoint;
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/opencv/core/MatOfKeyPoint;->total()J

    move-result-wide v2

    long-to-int v10, v2

    new-array v8, v10, [Lorg/opencv/core/KeyPoint;

    if-nez v10, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v1, v10, 0x7

    new-array v11, v1, [F

    invoke-virtual {p0, v0, v0, v11}, Lorg/opencv/core/MatOfKeyPoint;->get(II[F)I

    move v9, v0

    :goto_1
    if-ge v9, v10, :cond_1

    new-instance v0, Lorg/opencv/core/KeyPoint;

    mul-int/lit8 v1, v9, 0x7

    aget v1, v11, v1

    mul-int/lit8 v2, v9, 0x7

    add-int/lit8 v2, v2, 0x1

    aget v2, v11, v2

    mul-int/lit8 v3, v9, 0x7

    add-int/lit8 v3, v3, 0x2

    aget v3, v11, v3

    mul-int/lit8 v4, v9, 0x7

    add-int/lit8 v4, v4, 0x3

    aget v4, v11, v4

    mul-int/lit8 v5, v9, 0x7

    add-int/lit8 v5, v5, 0x4

    aget v5, v11, v5

    mul-int/lit8 v6, v9, 0x7

    add-int/lit8 v6, v6, 0x5

    aget v6, v11, v6

    float-to-int v6, v6

    mul-int/lit8 v7, v9, 0x7

    add-int/lit8 v7, v7, 0x6

    aget v7, v11, v7

    float-to-int v7, v7

    invoke-direct/range {v0 .. v7}, Lorg/opencv/core/KeyPoint;-><init>(FFFFFII)V

    aput-object v0, v8, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_1
    move-object v0, v8

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/KeyPoint;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/opencv/core/MatOfKeyPoint;->toArray()[Lorg/opencv/core/KeyPoint;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
