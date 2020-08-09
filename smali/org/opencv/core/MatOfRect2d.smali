.class public Lorg/opencv/core/MatOfRect2d;
.super Lorg/opencv/core/Mat;
.source "MatOfRect2d.java"


# static fields
.field private static final _channels:I = 0x4

.field private static final _depth:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfRect2d;->checkVector(II)I

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

    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfRect2d;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/opencv/core/Rect2d;)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfRect2d;->fromArray([Lorg/opencv/core/Rect2d;)V

    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfRect2d;
    .locals 2

    new-instance v0, Lorg/opencv/core/MatOfRect2d;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfRect2d;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v1

    invoke-super {p0, p1, v0, v1}, Lorg/opencv/core/Mat;->create(III)V

    :cond_0
    return-void
.end method

.method public varargs fromArray([Lorg/opencv/core/Rect2d;)V
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

    invoke-virtual {p0, v2}, Lorg/opencv/core/MatOfRect2d;->alloc(I)V

    shl-int/lit8 v0, v2, 0x2

    new-array v3, v0, [D

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v4, p1, v0

    mul-int/lit8 v5, v0, 0x4

    iget-wide v6, v4, Lorg/opencv/core/Rect2d;->x:D

    aput-wide v6, v3, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    iget-wide v6, v4, Lorg/opencv/core/Rect2d;->y:D

    aput-wide v6, v3, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    iget-wide v6, v4, Lorg/opencv/core/Rect2d;->width:D

    aput-wide v6, v3, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    iget-wide v6, v4, Lorg/opencv/core/Rect2d;->height:D

    aput-wide v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v1, v3}, Lorg/opencv/core/MatOfRect2d;->put(II[D)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/opencv/core/Rect2d;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/opencv/core/Rect2d;

    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfRect2d;->fromArray([Lorg/opencv/core/Rect2d;)V

    return-void
.end method

.method public toArray()[Lorg/opencv/core/Rect2d;
    .locals 13

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->total()J

    move-result-wide v2

    long-to-int v11, v2

    new-array v0, v11, [Lorg/opencv/core/Rect2d;

    if-nez v11, :cond_1

    :cond_0
    return-object v0

    :cond_1
    shl-int/lit8 v2, v11, 0x2

    new-array v12, v2, [D

    invoke-virtual {p0, v1, v1, v12}, Lorg/opencv/core/MatOfRect2d;->get(II[D)I

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_0

    new-instance v1, Lorg/opencv/core/Rect2d;

    shl-int/lit8 v2, v10, 0x2

    aget-wide v2, v12, v2

    shl-int/lit8 v4, v10, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v12, v4

    shl-int/lit8 v6, v10, 0x2

    add-int/lit8 v6, v6, 0x2

    aget-wide v6, v12, v6

    shl-int/lit8 v8, v10, 0x2

    add-int/lit8 v8, v8, 0x3

    aget-wide v8, v12, v8

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Rect2d;-><init>(DDDD)V

    aput-object v1, v0, v10

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/opencv/core/Rect2d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/opencv/core/MatOfRect2d;->toArray()[Lorg/opencv/core/Rect2d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
