.class public Lorg/opencv/core/Scalar;
.super Ljava/lang/Object;
.source "Scalar.java"


# instance fields
.field public val:[D


# direct methods
.method public constructor <init>(D)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    iput-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    iput-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    const/4 v1, 0x2

    aput-wide p5, v0, v1

    const/4 v1, 0x3

    aput-wide p7, v0, v1

    iput-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    :goto_0
    return-void

    :cond_0
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    invoke-virtual {p0, p1}, Lorg/opencv/core/Scalar;->set([D)V

    goto :goto_0
.end method

.method public static all(D)Lorg/opencv/core/Scalar;
    .locals 10

    new-instance v1, Lorg/opencv/core/Scalar;

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p0

    move-wide v8, p0

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Scalar;->clone()Lorg/opencv/core/Scalar;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/Scalar;
    .locals 2

    new-instance v0, Lorg/opencv/core/Scalar;

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public conj()Lorg/opencv/core/Scalar;
    .locals 10

    new-instance v1, Lorg/opencv/core/Scalar;

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    neg-double v4, v4

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    neg-double v6, v6

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v8, 0x3

    aget-wide v8, v0, v8

    neg-double v8, v8

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    return-object v1
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
    instance-of v2, p1, Lorg/opencv/core/Scalar;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/Scalar;

    iget-object v2, p0, Lorg/opencv/core/Scalar;->val:[D

    iget-object v3, p1, Lorg/opencv/core/Scalar;->val:[D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public isReal()Z
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v2, v1, v0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x3

    aget-wide v2, v1, v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mul(Lorg/opencv/core/Scalar;)Lorg/opencv/core/Scalar;
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, v0, v1}, Lorg/opencv/core/Scalar;->mul(Lorg/opencv/core/Scalar;D)Lorg/opencv/core/Scalar;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lorg/opencv/core/Scalar;D)Lorg/opencv/core/Scalar;
    .locals 12

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    new-instance v1, Lorg/opencv/core/Scalar;

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v2, v0, v4

    iget-object v0, p1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v4, v0, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, p2

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v4, v0, v6

    iget-object v0, p1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v6, v0, v6

    mul-double/2addr v4, v6

    mul-double/2addr v4, p2

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v6, v0, v8

    iget-object v0, p1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v8, v0, v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, p2

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v8, v0, v10

    iget-object v0, p1, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v10, v0, v10

    mul-double/2addr v8, v10

    mul-double/2addr v8, p2

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    return-object v1
.end method

.method public set([D)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    iget-object v4, p0, Lorg/opencv/core/Scalar;->val:[D

    array-length v0, p1

    if-lez v0, :cond_1

    aget-wide v0, p1, v9

    :goto_0
    aput-wide v0, v4, v9

    iget-object v4, p0, Lorg/opencv/core/Scalar;->val:[D

    array-length v0, p1

    if-le v0, v6, :cond_2

    aget-wide v0, p1, v6

    :goto_1
    aput-wide v0, v4, v6

    iget-object v4, p0, Lorg/opencv/core/Scalar;->val:[D

    array-length v0, p1

    if-le v0, v7, :cond_3

    aget-wide v0, p1, v7

    :goto_2
    aput-wide v0, v4, v7

    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    array-length v1, p1

    if-le v1, v8, :cond_0

    aget-wide v2, p1, v8

    :cond_0
    aput-wide v2, v0, v8

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
    iget-object v0, p0, Lorg/opencv/core/Scalar;->val:[D

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    iget-object v4, p0, Lorg/opencv/core/Scalar;->val:[D

    iget-object v5, p0, Lorg/opencv/core/Scalar;->val:[D

    aput-wide v2, v5, v8

    aput-wide v2, v4, v7

    aput-wide v2, v1, v6

    aput-wide v2, v0, v9

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x3

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
