.class public Lorg/opencv/core/TermCriteria;
.super Ljava/lang/Object;
.source "TermCriteria.java"


# static fields
.field public static final COUNT:I = 0x1

.field public static final EPS:I = 0x2

.field public static final MAX_ITER:I = 0x1


# instance fields
.field public epsilon:D

.field public maxCount:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lorg/opencv/core/TermCriteria;-><init>(IID)V

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/opencv/core/TermCriteria;->type:I

    iput p2, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iput-wide p3, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/core/TermCriteria;->set([D)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/TermCriteria;->clone()Lorg/opencv/core/TermCriteria;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/opencv/core/TermCriteria;
    .locals 6

    new-instance v0, Lorg/opencv/core/TermCriteria;

    iget v1, p0, Lorg/opencv/core/TermCriteria;->type:I

    iget v2, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget-wide v4, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/opencv/core/TermCriteria;-><init>(IID)V

    return-object v0
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
    instance-of v2, p1, Lorg/opencv/core/TermCriteria;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lorg/opencv/core/TermCriteria;

    iget v2, p0, Lorg/opencv/core/TermCriteria;->type:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->type:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iget v3, p1, Lorg/opencv/core/TermCriteria;->maxCount:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    iget-wide v4, p1, Lorg/opencv/core/TermCriteria;->epsilon:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lorg/opencv/core/TermCriteria;->type:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

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
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_1

    aget-wide v4, p1, v1

    double-to-int v0, v4

    :goto_0
    iput v0, p0, Lorg/opencv/core/TermCriteria;->type:I

    array-length v0, p1

    if-le v0, v6, :cond_0

    aget-wide v0, p1, v6

    double-to-int v1, v0

    :cond_0
    iput v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    array-length v0, p1

    if-le v0, v7, :cond_2

    aget-wide v0, p1, v7

    :goto_1
    iput-wide v0, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    :goto_2
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    iput v1, p0, Lorg/opencv/core/TermCriteria;->type:I

    iput v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    iput-wide v2, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/opencv/core/TermCriteria;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/core/TermCriteria;->maxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", epsilon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/core/TermCriteria;->epsilon:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
