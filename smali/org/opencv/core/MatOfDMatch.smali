.class public Lorg/opencv/core/MatOfDMatch;
.super Lorg/opencv/core/Mat;
.source "MatOfDMatch.java"


# static fields
.field private static final _channels:I = 0x4

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

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDMatch;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible Mat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;)V
    .locals 3

    invoke-static {}, Lorg/opencv/core/Range;->all()Lorg/opencv/core/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Range;)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfDMatch;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible Mat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/opencv/core/DMatch;)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfDMatch;->fromArray([Lorg/opencv/core/DMatch;)V

    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfDMatch;
    .locals 2

    new-instance v0, Lorg/opencv/core/MatOfDMatch;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfDMatch;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v1

    invoke-super {p0, p1, v0, v1}, Lorg/opencv/core/Mat;->create(III)V

    :cond_0
    return-void
.end method

.method public varargs fromArray([Lorg/opencv/core/DMatch;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    invoke-virtual {p0, v2}, Lorg/opencv/core/MatOfDMatch;->alloc(I)V

    shl-int/lit8 v0, v2, 0x2

    new-array v3, v0, [F

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v4, p1, v0

    mul-int/lit8 v5, v0, 0x4

    iget v6, v4, Lorg/opencv/core/DMatch;->queryIdx:I

    int-to-float v6, v6

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    iget v6, v4, Lorg/opencv/core/DMatch;->trainIdx:I

    int-to-float v6, v6

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    iget v6, v4, Lorg/opencv/core/DMatch;->imgIdx:I

    int-to-float v6, v6

    aput v6, v3, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    iget v4, v4, Lorg/opencv/core/DMatch;->distance:F

    aput v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v1, v3}, Lorg/opencv/core/MatOfDMatch;->put(II[F)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/opencv/core/DMatch;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/opencv/core/DMatch;

    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfDMatch;->fromArray([Lorg/opencv/core/DMatch;)V

    return-void
.end method

.method public toArray()[Lorg/opencv/core/DMatch;
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->total()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [Lorg/opencv/core/DMatch;

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    shl-int/lit8 v3, v2, 0x2

    new-array v3, v3, [F

    invoke-virtual {p0, v1, v1, v3}, Lorg/opencv/core/MatOfDMatch;->get(II[F)I

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v4, Lorg/opencv/core/DMatch;

    mul-int/lit8 v5, v1, 0x4

    aget v5, v3, v5

    float-to-int v5, v5

    mul-int/lit8 v6, v1, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v6, v3, v6

    float-to-int v6, v6

    mul-int/lit8 v7, v1, 0x4

    add-int/lit8 v7, v7, 0x2

    aget v7, v3, v7

    float-to-int v7, v7

    mul-int/lit8 v8, v1, 0x4

    add-int/lit8 v8, v8, 0x3

    aget v8, v3, v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/opencv/core/DMatch;-><init>(IIIF)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/DMatch;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/opencv/core/MatOfDMatch;->toArray()[Lorg/opencv/core/DMatch;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
