.class public Lorg/opencv/core/MatOfByte;
.super Lorg/opencv/core/Mat;
.source "MatOfByte.java"


# static fields
.field private static final _channels:I = 0x1

.field private static final _depth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    return-void
.end method

.method public varargs constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/opencv/core/MatOfByte;->fromArray(II[B)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfByte;->checkVector(II)I

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

    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/opencv/core/MatOfByte;->checkVector(II)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incompatible Mat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/MatOfByte;->fromArray([B)V

    return-void
.end method

.method public static fromNativeAddr(J)Lorg/opencv/core/MatOfByte;
    .locals 2

    new-instance v0, Lorg/opencv/core/MatOfByte;

    invoke-direct {v0, p0, p1}, Lorg/opencv/core/MatOfByte;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public alloc(I)V
    .locals 2

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lorg/opencv/core/CvType;->makeType(II)I

    move-result v0

    invoke-super {p0, p1, v1, v0}, Lorg/opencv/core/Mat;->create(III)V

    :cond_0
    return-void
.end method

.method public varargs fromArray(II[B)V
    .locals 6

    const/4 v1, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p1

    array-length v2, p3

    if-le v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid \'length\' parameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p3

    if-nez v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0, p2}, Lorg/opencv/core/MatOfByte;->alloc(I)V

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/opencv/core/MatOfByte;->put(II[BII)I

    goto :goto_0
.end method

.method public varargs fromArray([B)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/opencv/core/MatOfByte;->alloc(I)V

    invoke-virtual {p0, v1, v1, p1}, Lorg/opencv/core/MatOfByte;->put(II[B)I

    goto :goto_0
.end method

.method public fromList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Byte;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Byte;

    array-length v2, v0

    new-array v2, v2, [B

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lorg/opencv/core/MatOfByte;->fromArray([B)V

    goto :goto_0
.end method

.method public toArray()[B
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/opencv/core/MatOfByte;->checkVector(II)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native Mat has unexpected type or size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v1, [B

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v2, v2, v0}, Lorg/opencv/core/MatOfByte;->get(II[B)I

    goto :goto_0
.end method

.method public toList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/opencv/core/MatOfByte;->toArray()[B

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/lang/Byte;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-byte v3, v1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
