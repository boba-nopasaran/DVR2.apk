.class public Lorg/opencv/imgproc/Moments;
.super Ljava/lang/Object;
.source "Moments.java"


# instance fields
.field public m00:D

.field public m01:D

.field public m02:D

.field public m03:D

.field public m10:D

.field public m11:D

.field public m12:D

.field public m20:D

.field public m21:D

.field public m30:D

.field public mu02:D

.field public mu03:D

.field public mu11:D

.field public mu12:D

.field public mu20:D

.field public mu21:D

.field public mu30:D

.field public nu02:D

.field public nu03:D

.field public nu11:D

.field public nu12:D

.field public nu20:D

.field public nu21:D

.field public nu30:D


# direct methods
.method public constructor <init>()V
    .locals 22

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v21}, Lorg/opencv/imgproc/Moments;-><init>(DDDDDDDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDDDDDDD)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m00:D

    iput-wide p3, p0, Lorg/opencv/imgproc/Moments;->m10:D

    iput-wide p5, p0, Lorg/opencv/imgproc/Moments;->m01:D

    iput-wide p7, p0, Lorg/opencv/imgproc/Moments;->m20:D

    iput-wide p9, p0, Lorg/opencv/imgproc/Moments;->m11:D

    iput-wide p11, p0, Lorg/opencv/imgproc/Moments;->m02:D

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m30:D

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m21:D

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m12:D

    move-wide/from16 v0, p19

    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m03:D

    invoke-virtual {p0}, Lorg/opencv/imgproc/Moments;->completeState()V

    return-void
.end method

.method public constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/opencv/imgproc/Moments;->set([D)V

    return-void
.end method


# virtual methods
.method protected completeState()V
    .locals 20

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/opencv/imgproc/Moments;->m00:D

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/opencv/imgproc/Moments;->m00:D

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/opencv/imgproc/Moments;->m10:D

    mul-double v6, v4, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/opencv/imgproc/Moments;->m01:D

    mul-double/2addr v4, v2

    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/opencv/imgproc/Moments;->m20:D

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/opencv/imgproc/Moments;->m10:D

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/opencv/imgproc/Moments;->m11:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/opencv/imgproc/Moments;->m10:D

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/opencv/imgproc/Moments;->m02:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/opencv/imgproc/Moments;->m01:D

    mul-double/2addr v14, v4

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/opencv/imgproc/Moments;->mu20:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/opencv/imgproc/Moments;->mu11:D

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/opencv/imgproc/Moments;->mu02:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/opencv/imgproc/Moments;->m30:D

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    mul-double v16, v16, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m10:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    add-double v16, v16, v18

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/opencv/imgproc/Moments;->mu30:D

    add-double/2addr v10, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/opencv/imgproc/Moments;->m21:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/opencv/imgproc/Moments;->m01:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v6

    add-double v16, v16, v10

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    mul-double/2addr v8, v4

    sub-double v8, v14, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/opencv/imgproc/Moments;->mu21:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/opencv/imgproc/Moments;->m12:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/opencv/imgproc/Moments;->m10:D

    mul-double/2addr v14, v4

    add-double/2addr v10, v14

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    mul-double/2addr v6, v12

    sub-double v6, v8, v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/opencv/imgproc/Moments;->mu12:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/opencv/imgproc/Moments;->m03:D

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/opencv/imgproc/Moments;->m01:D

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/opencv/imgproc/Moments;->mu03:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v2

    mul-double/2addr v4, v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/opencv/imgproc/Moments;->mu20:D

    mul-double/2addr v6, v2

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/opencv/imgproc/Moments;->nu20:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/opencv/imgproc/Moments;->mu11:D

    mul-double/2addr v6, v2

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/opencv/imgproc/Moments;->nu11:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/opencv/imgproc/Moments;->mu02:D

    mul-double/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/imgproc/Moments;->nu02:D

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/imgproc/Moments;->mu30:D

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/imgproc/Moments;->nu30:D

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/imgproc/Moments;->mu21:D

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/imgproc/Moments;->nu21:D

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/imgproc/Moments;->mu12:D

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/imgproc/Moments;->nu12:D

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/opencv/imgproc/Moments;->mu03:D

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/opencv/imgproc/Moments;->nu03:D

    return-void
.end method

.method public get_m00()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m00:D

    return-wide v0
.end method

.method public get_m01()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m01:D

    return-wide v0
.end method

.method public get_m02()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m02:D

    return-wide v0
.end method

.method public get_m03()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m03:D

    return-wide v0
.end method

.method public get_m10()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m10:D

    return-wide v0
.end method

.method public get_m11()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m11:D

    return-wide v0
.end method

.method public get_m12()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m12:D

    return-wide v0
.end method

.method public get_m20()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m20:D

    return-wide v0
.end method

.method public get_m21()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m21:D

    return-wide v0
.end method

.method public get_m30()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->m30:D

    return-wide v0
.end method

.method public get_mu02()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    return-wide v0
.end method

.method public get_mu03()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    return-wide v0
.end method

.method public get_mu11()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    return-wide v0
.end method

.method public get_mu12()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    return-wide v0
.end method

.method public get_mu20()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    return-wide v0
.end method

.method public get_mu21()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    return-wide v0
.end method

.method public get_mu30()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    return-wide v0
.end method

.method public get_nu02()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    return-wide v0
.end method

.method public get_nu03()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    return-wide v0
.end method

.method public get_nu11()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    return-wide v0
.end method

.method public get_nu12()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    return-wide v0
.end method

.method public get_nu20()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    return-wide v0
.end method

.method public get_nu21()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    return-wide v0
.end method

.method public get_nu30()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    return-wide v0
.end method

.method public set([D)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_a

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    :goto_0
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m00:D

    array-length v0, p1

    if-le v0, v4, :cond_2

    aget-wide v0, p1, v4

    :goto_1
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m10:D

    array-length v0, p1

    if-le v0, v5, :cond_3

    aget-wide v0, p1, v5

    :goto_2
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m01:D

    array-length v0, p1

    if-le v0, v6, :cond_4

    aget-wide v0, p1, v6

    :goto_3
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m20:D

    array-length v0, p1

    if-le v0, v7, :cond_5

    aget-wide v0, p1, v7

    :goto_4
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m11:D

    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    const/4 v0, 0x5

    aget-wide v0, p1, v0

    :goto_5
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m02:D

    array-length v0, p1

    const/4 v1, 0x6

    if-le v0, v1, :cond_7

    const/4 v0, 0x6

    aget-wide v0, p1, v0

    :goto_6
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m30:D

    array-length v0, p1

    const/4 v1, 0x7

    if-le v0, v1, :cond_8

    const/4 v0, 0x7

    aget-wide v0, p1, v0

    :goto_7
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m21:D

    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_9

    const/16 v0, 0x8

    aget-wide v0, p1, v0

    :goto_8
    iput-wide v0, p0, Lorg/opencv/imgproc/Moments;->m12:D

    array-length v0, p1

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    const/16 v0, 0x9

    aget-wide v2, p1, v0

    :cond_0
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m03:D

    invoke-virtual {p0}, Lorg/opencv/imgproc/Moments;->completeState()V

    :goto_9
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
    move-wide v0, v2

    goto :goto_3

    :cond_5
    move-wide v0, v2

    goto :goto_4

    :cond_6
    move-wide v0, v2

    goto :goto_5

    :cond_7
    move-wide v0, v2

    goto :goto_6

    :cond_8
    move-wide v0, v2

    goto :goto_7

    :cond_9
    move-wide v0, v2

    goto :goto_8

    :cond_a
    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m00:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m10:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m01:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m20:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m11:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m02:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m30:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m21:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m12:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->m03:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    iput-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    goto :goto_9
.end method

.method public set_m00(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m00:D

    return-void
.end method

.method public set_m01(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m01:D

    return-void
.end method

.method public set_m02(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m02:D

    return-void
.end method

.method public set_m03(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m03:D

    return-void
.end method

.method public set_m10(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m10:D

    return-void
.end method

.method public set_m11(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m11:D

    return-void
.end method

.method public set_m12(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m12:D

    return-void
.end method

.method public set_m20(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m20:D

    return-void
.end method

.method public set_m21(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m21:D

    return-void
.end method

.method public set_m30(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->m30:D

    return-void
.end method

.method public set_mu02(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    return-void
.end method

.method public set_mu03(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    return-void
.end method

.method public set_mu11(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    return-void
.end method

.method public set_mu12(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    return-void
.end method

.method public set_mu20(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    return-void
.end method

.method public set_mu21(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    return-void
.end method

.method public set_mu30(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    return-void
.end method

.method public set_nu02(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    return-void
.end method

.method public set_nu03(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    return-void
.end method

.method public set_nu11(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    return-void
.end method

.method public set_nu12(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    return-void
.end method

.method public set_nu20(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    return-void
.end method

.method public set_nu21(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    return-void
.end method

.method public set_nu30(D)V
    .locals 1

    iput-wide p1, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moments [ \nm00="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m00:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nm10="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m10:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m01="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m01:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nm20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nm30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m03="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->m03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nmu20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nmu30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mu03="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->mu03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nnu20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu20:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu11="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu11:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu02:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \nnu30="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu30:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu21="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu21:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu12="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu12:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nu03="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/opencv/imgproc/Moments;->nu03:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
