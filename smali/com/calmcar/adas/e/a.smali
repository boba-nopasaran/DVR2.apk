.class public final Lcom/calmcar/adas/e/a;
.super Ljava/lang/Object;
.source "CarSafeDistanceUtil.java"


# instance fields
.field private a:D

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x407f400000000000L    # 500.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/a;->a:D

    const-wide v0, 0x4076800000000000L    # 360.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/a;->b:D

    const-wide v0, 0x4062c00000000000L    # 150.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/a;->c:D

    return-void
.end method

.method public static b(DD)I
    .locals 4

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double v0, p2, v0

    div-double v0, p0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRETIME:I

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    sget v2, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRETIME:I

    mul-int/lit8 v2, v2, 0x64

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(DD)I
    .locals 9

    const/4 v0, 0x0

    const-wide v6, 0x4076800000000000L    # 360.0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v4, v1

    sub-double/2addr v2, v4

    add-double/2addr v2, v6

    iput-wide v2, p0, Lcom/calmcar/adas/e/a;->b:D

    :goto_0
    const-wide v2, 0x400ccccccccccccdL    # 3.6

    div-double v2, p3, v2

    iget-wide v4, p0, Lcom/calmcar/adas/e/a;->b:D

    sub-double/2addr v4, p1

    div-double v2, v4, v2

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_LEVEL_ONE_TIME:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    iget-wide v2, p0, Lcom/calmcar/adas/e/a;->a:D

    cmpl-double v1, p1, v2

    if-lez v1, :cond_2

    iput-wide p1, p0, Lcom/calmcar/adas/e/a;->a:D

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iput-wide v6, p0, Lcom/calmcar/adas/e/a;->b:D

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/calmcar/adas/e/a;->a:D

    goto :goto_1

    :cond_3
    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_LEVEL_TWO_TIME:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    iget-wide v2, p0, Lcom/calmcar/adas/e/a;->a:D

    cmpl-double v1, p1, v2

    if-lez v1, :cond_4

    iput-wide p1, p0, Lcom/calmcar/adas/e/a;->a:D

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    iput-wide p1, p0, Lcom/calmcar/adas/e/a;->a:D

    goto :goto_1
.end method

.method private static d(DD)I
    .locals 8

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double v0, p2, v0

    div-double v0, p0, v0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_ONE_TIME:D

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    int-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_TWO_TIME:D

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    int-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(DD)I
    .locals 9

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double v0, p3, v0

    div-double v0, p1, v0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_ONE_TIME:D

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    int-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    iget-wide v0, p0, Lcom/calmcar/adas/e/a;->c:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide v0, 0x4062c00000000000L    # 150.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/a;->c:D

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput-wide p1, p0, Lcom/calmcar/adas/e/a;->c:D

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_TWO_TIME:D

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    int-to-double v4, v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    iget-wide v0, p0, Lcom/calmcar/adas/e/a;->c:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    const-wide v0, 0x4062c00000000000L    # 150.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/a;->c:D

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lcom/calmcar/adas/e/a;->c:D

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
