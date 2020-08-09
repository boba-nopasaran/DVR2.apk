.class public Lorg/opencv/utils/Converters;
.super Ljava/lang/Object;
.source "Converters.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Mat_to_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_64FC4 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [D

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[D)I

    :goto_0
    if-ge v0, v1, :cond_3

    new-instance v3, Lorg/opencv/core/DMatch;

    mul-int/lit8 v4, v0, 0x4

    aget-wide v4, v2, v4

    double-to-int v4, v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v2, v5

    double-to-int v5, v6

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v2, v6

    double-to-int v6, v6

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x3

    aget-wide v8, v2, v7

    double-to-float v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/DMatch;-><init>(IIIF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/KeyPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v9

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/opencv/core/CvType;->CV_64FC(I)I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_64FC(7) != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    mul-int/lit8 v1, v9, 0x7

    new-array v10, v1, [D

    invoke-virtual {p0, v0, v0, v10}, Lorg/opencv/core/Mat;->get(II[D)I

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_3

    new-instance v0, Lorg/opencv/core/KeyPoint;

    mul-int/lit8 v1, v8, 0x7

    aget-wide v2, v10, v1

    double-to-float v1, v2

    mul-int/lit8 v2, v8, 0x7

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v10, v2

    double-to-float v2, v2

    mul-int/lit8 v3, v8, 0x7

    add-int/lit8 v3, v3, 0x2

    aget-wide v4, v10, v3

    double-to-float v3, v4

    mul-int/lit8 v4, v8, 0x7

    add-int/lit8 v4, v4, 0x3

    aget-wide v4, v10, v4

    double-to-float v4, v4

    mul-int/lit8 v5, v8, 0x7

    add-int/lit8 v5, v5, 0x4

    aget-wide v6, v10, v5

    double-to-float v5, v6

    mul-int/lit8 v6, v8, 0x7

    add-int/lit8 v6, v6, 0x5

    aget-wide v6, v10, v6

    double-to-int v6, v6

    mul-int/lit8 v7, v8, 0x7

    add-int/lit8 v7, v7, 0x6

    aget-wide v12, v10, v7

    double-to-int v7, v12

    invoke-direct/range {v0 .. v7}, Lorg/opencv/core/KeyPoint;-><init>(FFFFFII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mats == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_32SC2:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_32SC2 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [I

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[I)I

    :goto_0
    if-ge v0, v1, :cond_3

    shl-int/lit8 v3, v0, 0x1

    aget v3, v2, v3

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, v2, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3, v4, v5}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v2

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input Mat should have one column\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget v3, Lorg/opencv/core/CvType;->CV_32SC2:I

    if-ne v2, v3, :cond_2

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[I)I

    :goto_0
    if-ge v0, v1, :cond_5

    new-instance v3, Lorg/opencv/core/Point;

    shl-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    int-to-double v4, v4

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, v2, v6

    int-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget v3, Lorg/opencv/core/CvType;->CV_32FC2:I

    if-ne v2, v3, :cond_3

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[F)I

    :goto_1
    if-ge v0, v1, :cond_5

    new-instance v3, Lorg/opencv/core/Point;

    shl-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    float-to-double v4, v4

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v6, v2, v6

    float-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget v3, Lorg/opencv/core/CvType;->CV_64FC2:I

    if-ne v2, v3, :cond_4

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [D

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[D)I

    :goto_2
    if-ge v0, v1, :cond_5

    new-instance v3, Lorg/opencv/core/Point;

    shl-int/lit8 v4, v0, 0x1

    aget-wide v4, v2, v4

    shl-int/lit8 v6, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v2, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input Mat should be of CV_32SC2, CV_32FC2 or CV_64FC2 type\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public static Mat_to_vector_Point2d(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-void
.end method

.method public static Mat_to_vector_Point2f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-void
.end method

.method public static Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v8

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input Mat should have one column\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    sget v2, Lorg/opencv/core/CvType;->CV_32SC3:I

    if-ne v1, v2, :cond_2

    mul-int/lit8 v1, v8, 0x3

    new-array v9, v1, [I

    invoke-virtual {p0, v0, v0, v9}, Lorg/opencv/core/Mat;->get(II[I)I

    :goto_0
    if-ge v0, v8, :cond_5

    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v0, 0x3

    aget v2, v9, v2

    int-to-double v2, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    int-to-double v4, v4

    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v9, v6

    int-to-double v6, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget v2, Lorg/opencv/core/CvType;->CV_32FC3:I

    if-ne v1, v2, :cond_3

    mul-int/lit8 v1, v8, 0x3

    new-array v9, v1, [F

    invoke-virtual {p0, v0, v0, v9}, Lorg/opencv/core/Mat;->get(II[F)I

    :goto_1
    if-ge v0, v8, :cond_5

    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v0, 0x3

    aget v2, v9, v2

    float-to-double v2, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v9, v4

    float-to-double v4, v4

    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v6, v9, v6

    float-to-double v6, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget v2, Lorg/opencv/core/CvType;->CV_64FC3:I

    if-ne v1, v2, :cond_4

    mul-int/lit8 v1, v8, 0x3

    new-array v9, v1, [D

    invoke-virtual {p0, v0, v0, v9}, Lorg/opencv/core/Mat;->get(II[D)I

    :goto_2
    if-ge v0, v8, :cond_5

    new-instance v1, Lorg/opencv/core/Point3;

    mul-int/lit8 v2, v0, 0x3

    aget-wide v2, v9, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v9, v4

    mul-int/lit8 v6, v0, 0x3

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v9, v6

    invoke-direct/range {v1 .. v7}, Lorg/opencv/core/Point3;-><init>(DDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input Mat should be of CV_32SC3, CV_32FC3 or CV_64FC3 type\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method public static Mat_to_vector_Point3d(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-void
.end method

.method public static Mat_to_vector_Point3f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-void
.end method

.method public static Mat_to_vector_Point3i(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Point3(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-void
.end method

.method public static Mat_to_vector_Rect(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_32SC4:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_32SC4 != m.type() ||  m.rows()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [I

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[I)I

    :goto_0
    if-ge v0, v1, :cond_3

    new-instance v3, Lorg/opencv/core/Rect;

    mul-int/lit8 v4, v0, 0x4

    aget v4, v2, v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    aget v6, v2, v6

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x3

    aget v7, v2, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Rect;-><init>(IIII)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_Rect2d(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v10

    sget v1, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_64FC4 != m.type() ||  m.rows()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    mul-int/lit8 v1, v10, 0x4

    new-array v11, v1, [D

    invoke-virtual {p0, v0, v0, v11}, Lorg/opencv/core/Mat;->get(II[D)I

    :goto_0
    if-ge v0, v10, :cond_3

    new-instance v1, Lorg/opencv/core/Rect2d;

    mul-int/lit8 v2, v0, 0x4

    aget-wide v2, v11, v2

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v11, v4

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v11, v6

    mul-int/lit8 v8, v0, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-wide v8, v11, v8

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_char(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_8SC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_8SC1 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-array v2, v1, [B

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[B)I

    :goto_0
    if-ge v0, v1, :cond_3

    aget-byte v3, v2, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_double(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ds == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_64FC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_64FC1 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-array v2, v1, [D

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[D)I

    :goto_0
    if-ge v0, v1, :cond_3

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_float(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_32FC1 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-array v2, v1, [F

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[F)I

    :goto_0
    if-ge v0, v1, :cond_3

    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_int(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_32SC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_32SC1 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-array v2, v1, [I

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[I)I

    :goto_0
    if-ge v0, v1, :cond_3

    aget v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_uchar(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    sget v2, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->type()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CvType.CV_8UC1 != m.type() ||  m.cols()!=1\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-array v2, v1, [B

    invoke-virtual {p0, v0, v0, v2}, Lorg/opencv/core/Mat;->get(II[B)I

    :goto_0
    if-ge v0, v1, :cond_3

    aget-byte v3, v2, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static Mat_to_vector_vector_DMatch(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input Mat can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    new-instance v3, Lorg/opencv/core/MatOfDMatch;

    invoke-direct {v3, v0}, Lorg/opencv/core/MatOfDMatch;-><init>(Lorg/opencv/core/Mat;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static Mat_to_vector_vector_KeyPoint(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input Mat can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    new-instance v3, Lorg/opencv/core/MatOfKeyPoint;

    invoke-direct {v3, v0}, Lorg/opencv/core/MatOfKeyPoint;-><init>(Lorg/opencv/core/Mat;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static Mat_to_vector_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input Mat can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    new-instance v3, Lorg/opencv/core/MatOfPoint;

    invoke-direct {v3, v0}, Lorg/opencv/core/MatOfPoint;-><init>(Lorg/opencv/core/Mat;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static Mat_to_vector_vector_Point2f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input Mat can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    new-instance v3, Lorg/opencv/core/MatOfPoint2f;

    invoke-direct {v3, v0}, Lorg/opencv/core/MatOfPoint2f;-><init>(Lorg/opencv/core/Mat;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static Mat_to_vector_vector_Point3f(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input Mat can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    new-instance v3, Lorg/opencv/core/MatOfPoint3f;

    invoke-direct {v3, v0}, Lorg/opencv/core/MatOfPoint3f;-><init>(Lorg/opencv/core/Mat;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static Mat_to_vector_vector_char(Lorg/opencv/core/Mat;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output List can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input Mat can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lorg/opencv/utils/Converters;->Mat_to_vector_char(Lorg/opencv/core/Mat;Ljava/util/List;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static vector_DMatch_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    shl-int/lit8 v0, v4, 0x2

    new-array v5, v0, [D

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/DMatch;

    mul-int/lit8 v6, v2, 0x4

    iget v7, v0, Lorg/opencv/core/DMatch;->queryIdx:I

    int-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Lorg/opencv/core/DMatch;->trainIdx:I

    int-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    iget v7, v0, Lorg/opencv/core/DMatch;->imgIdx:I

    int-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    iget v0, v0, Lorg/opencv/core/DMatch;->distance:F

    float-to-double v8, v0

    aput-wide v8, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[D)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_KeyPoint_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/KeyPoint;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/opencv/core/CvType;->CV_64FC(I)I

    move-result v2

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v0, v4, 0x7

    new-array v5, v0, [D

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/KeyPoint;

    mul-int/lit8 v6, v2, 0x7

    iget-object v7, v0, Lorg/opencv/core/KeyPoint;->pt:Lorg/opencv/core/Point;

    iget-wide v8, v7, Lorg/opencv/core/Point;->x:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v0, Lorg/opencv/core/KeyPoint;->pt:Lorg/opencv/core/Point;

    iget-wide v8, v7, Lorg/opencv/core/Point;->y:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x2

    iget v7, v0, Lorg/opencv/core/KeyPoint;->size:F

    float-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x3

    iget v7, v0, Lorg/opencv/core/KeyPoint;->angle:F

    float-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x4

    iget v7, v0, Lorg/opencv/core/KeyPoint;->response:F

    float-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x5

    iget v7, v0, Lorg/opencv/core/KeyPoint;->octave:I

    int-to-double v8, v7

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x7

    add-int/lit8 v6, v6, 0x6

    iget v0, v0, Lorg/opencv/core/KeyPoint;->class_id:I

    int-to-double v8, v0

    aput-wide v8, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[D)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_32SC2:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [I

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Mat;

    iget-wide v6, v0, Lorg/opencv/core/Mat;->nativeObj:J

    shl-int/lit8 v0, v2, 0x1

    const/16 v8, 0x20

    shr-long v8, v6, v8

    long-to-int v8, v8

    aput v8, v5, v0

    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    long-to-int v6, v6

    aput v6, v5, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[I)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_Point2d_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point2f_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;I)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'typeDepth\' can be CV_32S, CV_32F or CV_64F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v4, v3

    goto :goto_0

    :pswitch_0
    new-instance v1, Lorg/opencv/core/Mat;

    sget v0, Lorg/opencv/core/CvType;->CV_32SC3:I

    invoke-direct {v1, v4, v2, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v0, v4, 0x3

    new-array v5, v0, [I

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point3;

    mul-int/lit8 v6, v2, 0x3

    iget-wide v8, v0, Lorg/opencv/core/Point3;->x:D

    double-to-int v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point3;->y:D

    double-to-int v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v0, Lorg/opencv/core/Point3;->z:D

    double-to-int v0, v8

    aput v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[I)I

    move-object v0, v1

    :goto_2
    return-object v0

    :pswitch_1
    new-instance v1, Lorg/opencv/core/Mat;

    sget v0, Lorg/opencv/core/CvType;->CV_32FC3:I

    invoke-direct {v1, v4, v2, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v0, v4, 0x3

    new-array v5, v0, [F

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point3;

    mul-int/lit8 v6, v2, 0x3

    iget-wide v8, v0, Lorg/opencv/core/Point3;->x:D

    double-to-float v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point3;->y:D

    double-to-float v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v0, Lorg/opencv/core/Point3;->z:D

    double-to-float v0, v8

    aput v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[F)I

    move-object v0, v1

    goto :goto_2

    :pswitch_2
    new-instance v1, Lorg/opencv/core/Mat;

    sget v0, Lorg/opencv/core/CvType;->CV_64FC3:I

    invoke-direct {v1, v4, v2, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v0, v4, 0x3

    new-array v5, v0, [D

    move v2, v3

    :goto_4
    if-ge v2, v4, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point3;

    mul-int/lit8 v6, v2, 0x3

    iget-wide v8, v0, Lorg/opencv/core/Point3;->x:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point3;->y:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v0, Lorg/opencv/core/Point3;->z:D

    aput-wide v8, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[D)I

    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static vector_Point3d_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point3f_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point3i_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point3;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point3_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/opencv/utils/Converters;->vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public static vector_Point_to_Mat(Ljava/util/List;I)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Point;",
            ">;I)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_4

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'typeDepth\' can be CV_32S, CV_32F or CV_64F"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v4, v3

    goto :goto_0

    :pswitch_0
    new-instance v1, Lorg/opencv/core/Mat;

    sget v0, Lorg/opencv/core/CvType;->CV_32SC2:I

    invoke-direct {v1, v4, v2, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [I

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    shl-int/lit8 v6, v2, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point;->x:D

    double-to-int v7, v8

    aput v7, v5, v6

    shl-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point;->y:D

    double-to-int v0, v8

    aput v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[I)I

    move-object v0, v1

    :goto_2
    return-object v0

    :pswitch_1
    new-instance v1, Lorg/opencv/core/Mat;

    sget v0, Lorg/opencv/core/CvType;->CV_32FC2:I

    invoke-direct {v1, v4, v2, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [F

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    shl-int/lit8 v6, v2, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v8

    aput v7, v5, v6

    shl-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v0, v8

    aput v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[F)I

    move-object v0, v1

    goto :goto_2

    :pswitch_2
    new-instance v1, Lorg/opencv/core/Mat;

    sget v0, Lorg/opencv/core/CvType;->CV_64FC2:I

    invoke-direct {v1, v4, v2, v0}, Lorg/opencv/core/Mat;-><init>(III)V

    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [D

    move v2, v3

    :goto_4
    if-ge v2, v4, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    shl-int/lit8 v6, v2, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point;->x:D

    aput-wide v8, v5, v6

    shl-int/lit8 v6, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Point;->y:D

    aput-wide v8, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[D)I

    move-object v0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static vector_Rect2d_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_64FC4:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v0, v4, 0x4

    new-array v5, v0, [D

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Rect2d;

    mul-int/lit8 v6, v2, 0x4

    iget-wide v8, v0, Lorg/opencv/core/Rect2d;->x:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    iget-wide v8, v0, Lorg/opencv/core/Rect2d;->y:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    iget-wide v8, v0, Lorg/opencv/core/Rect2d;->width:D

    aput-wide v8, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    iget-wide v8, v0, Lorg/opencv/core/Rect2d;->height:D

    aput-wide v8, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[D)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_Rect_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_32SC4:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    mul-int/lit8 v0, v4, 0x4

    new-array v5, v0, [I

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Rect;

    mul-int/lit8 v6, v2, 0x4

    iget v7, v0, Lorg/opencv/core/Rect;->x:I

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Lorg/opencv/core/Rect;->y:I

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x2

    iget v7, v0, Lorg/opencv/core/Rect;->width:I

    aput v7, v5, v6

    mul-int/lit8 v6, v2, 0x4

    add-int/lit8 v6, v6, 0x3

    iget v0, v0, Lorg/opencv/core/Rect;->height:I

    aput v0, v5, v6

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[I)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_char_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_8SC1:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    new-array v5, v4, [B

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[B)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_double_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_64FC1:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    new-array v5, v4, [D

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[D)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_float_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_32FC1:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    new-array v5, v4, [F

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[F)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_int_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_32SC1:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    new-array v5, v4, [I

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[I)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_uchar_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v0

    :goto_0
    if-lez v4, :cond_2

    new-instance v1, Lorg/opencv/core/Mat;

    const/4 v0, 0x1

    sget v2, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v1, v4, v0, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    new-array v5, v4, [B

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3, v3, v5}, Lorg/opencv/core/Mat;->put(II[B)I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_vector_DMatch_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfDMatch;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/MatOfDMatch;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_vector_KeyPoint_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfKeyPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/MatOfKeyPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_vector_Point2f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint2f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/MatOfPoint2f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_vector_Point3f_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint3f;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/MatOfPoint3f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_vector_Point_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/MatOfPoint;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method

.method public static vector_vector_char_to_Mat(Ljava/util/List;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/MatOfByte;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/MatOfByte;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    goto :goto_2
.end method
