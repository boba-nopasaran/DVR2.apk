.class public final Lcom/calmcar/adas/d/c;
.super Ljava/lang/Object;
.source "FrameSplitProcess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DD)Lcom/calmcar/adas/apiserver/model/AdasPoint;
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-object v7, Lcom/calmcar/adas/apiserver/AdasConf;->WIDTH_HEIGHT:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    :goto_1
    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    mul-double v8, v2, v0

    div-double v8, p0, v8

    int-to-double v10, v5

    div-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double/2addr v0, v2

    div-double v0, p2, v0

    int-to-double v4, v4

    div-double v2, v4, v2

    add-double/2addr v0, v2

    invoke-direct {v6, v8, v9, v0, v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    return-object v6

    :sswitch_0
    const-string v8, "1920*1088"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string v8, "1600*1200"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :sswitch_2
    const-string v8, "1600*960"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v8, "1440*1080"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string v8, "1440*960"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :sswitch_5
    const-string v8, "1280*720"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :sswitch_6
    const-string v8, "1280*600"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string v8, "1280*480"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x7

    goto :goto_0

    :sswitch_8
    const-string v8, "960*640"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x8

    goto :goto_0

    :sswitch_9
    const-string v8, "960*540"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0x9

    goto :goto_0

    :sswitch_a
    const-string v8, "864*480"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v8, "800*600"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "800*480"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v6, 0xc

    goto/16 :goto_0

    :pswitch_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/16 v5, 0x78

    const/4 v4, 0x2

    const-wide v0, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    goto/16 :goto_1

    :pswitch_1
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    :pswitch_2
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/16 v5, 0x50

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto/16 :goto_1

    :pswitch_3
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide v0, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    goto/16 :goto_1

    :pswitch_4
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/16 v5, 0x28

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto/16 :goto_1

    :pswitch_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0xa0

    const/4 v4, 0x0

    const-wide v0, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    goto/16 :goto_1

    :pswitch_6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0xf0

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    :pswitch_7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0x140

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto/16 :goto_1

    :pswitch_8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0x50

    const/16 v4, 0x14

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    :pswitch_9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0x78

    const/4 v4, 0x0

    const-wide v0, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    goto/16 :goto_1

    :pswitch_a
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0x70

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto/16 :goto_1

    :pswitch_b
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    :pswitch_c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/16 v5, 0x50

    const/4 v4, 0x0

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x75ecacba -> :sswitch_1
        -0x72161ffe -> :sswitch_3
        -0x66a729e5 -> :sswitch_7
        -0x66a7235b -> :sswitch_6
        -0x66a71f5c -> :sswitch_5
        -0x19022206 -> :sswitch_c
        -0x19021b7c -> :sswitch_b
        -0xe8cb048 -> :sswitch_a
        -0x3ae0358 -> :sswitch_4
        0x2621303a -> :sswitch_9
        0x262133fb -> :sswitch_8
        0x2b8349e3 -> :sswitch_0
        0x5f4b10ae -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static a(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 15

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/16 v6, 0x280

    const/16 v4, 0x1e0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    sget-object v8, Lcom/calmcar/adas/apiserver/AdasConf;->WIDTH_HEIGHT:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v7, :pswitch_data_0

    move-wide v2, v0

    move v4, v5

    move v6, v5

    move v7, v5

    :goto_1
    new-instance v8, Lorg/opencv/core/Rect;

    int-to-double v10, v7

    div-double/2addr v10, v2

    double-to-int v7, v10

    int-to-double v10, v6

    div-double/2addr v10, v2

    double-to-int v6, v10

    invoke-direct {v8, v7, v6, v5, v4}, Lorg/opencv/core/Rect;-><init>(IIII)V

    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4, p0, v8}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;)V

    new-instance v5, Lorg/opencv/core/Mat;

    invoke-direct {v5}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {v4, v5}, Lorg/opencv/core/Mat;->copyTo(Lorg/opencv/core/Mat;)V

    invoke-virtual {v4}, Lorg/opencv/core/Mat;->release()V

    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v6, Lorg/opencv/core/Size;

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->width()I

    move-result v7

    int-to-double v8, v7

    mul-double/2addr v8, v2

    mul-double/2addr v8, v0

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->height()I

    move-result v7

    int-to-double v10, v7

    mul-double/2addr v2, v10

    mul-double/2addr v0, v2

    invoke-direct {v6, v8, v9, v0, v1}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v5, v4, v6}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    invoke-virtual {v5}, Lorg/opencv/core/Mat;->release()V

    return-object v4

    :sswitch_0
    const-string v9, "1920*1088"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v5

    goto :goto_0

    :sswitch_1
    const-string v9, "1600*1200"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "1600*960"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "1440*1080"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :sswitch_4
    const-string v9, "1440*960"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :sswitch_5
    const-string v9, "1280*720"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "1280*600"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string v9, "1280*480"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string v9, "960*640"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "960*540"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v9, "864*480"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "800*600"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v9, "800*480"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v7, 0xc

    goto/16 :goto_0

    :pswitch_0
    const/16 v7, 0x78

    const/4 v6, 0x2

    const-wide v0, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    const/16 v5, 0x2d0

    const/16 v4, 0x21c

    goto/16 :goto_1

    :pswitch_1
    const/16 v6, 0x320

    const/16 v4, 0x258

    move v7, v5

    move v12, v5

    move v5, v6

    move v6, v12

    goto/16 :goto_1

    :pswitch_2
    const/16 v7, 0x50

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    move v12, v6

    move v6, v5

    move v5, v12

    goto/16 :goto_1

    :pswitch_3
    const-wide v0, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    const/16 v6, 0x2d0

    const/16 v4, 0x21c

    move v7, v5

    move v12, v5

    move v5, v6

    move v6, v12

    goto/16 :goto_1

    :pswitch_4
    const/16 v7, 0x28

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    move v12, v6

    move v6, v5

    move v5, v12

    goto/16 :goto_1

    :pswitch_5
    const/16 v7, 0xa0

    const-wide v2, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    const/16 v6, 0x3c0

    const/16 v4, 0x2d0

    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    move v14, v6

    move v6, v5

    move v5, v14

    goto/16 :goto_1

    :pswitch_6
    const/16 v4, 0xf0

    const/16 v3, 0x320

    const/16 v2, 0x258

    move v6, v5

    move v7, v4

    move v5, v3

    move v4, v2

    move-wide v2, v0

    goto/16 :goto_1

    :pswitch_7
    const/16 v7, 0x140

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    move v14, v6

    move v6, v5

    move v5, v14

    goto/16 :goto_1

    :pswitch_8
    const/16 v4, 0x50

    const/16 v3, 0x14

    const/16 v5, 0x320

    const/16 v2, 0x258

    move v6, v3

    move v7, v4

    move v4, v2

    move-wide v2, v0

    goto/16 :goto_1

    :pswitch_9
    const/16 v7, 0x78

    const-wide v2, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    const/16 v6, 0x2d0

    const/16 v4, 0x21c

    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    move v14, v6

    move v6, v5

    move v5, v14

    goto/16 :goto_1

    :pswitch_a
    const/16 v7, 0x70

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    move v14, v6

    move v6, v5

    move v5, v14

    goto/16 :goto_1

    :pswitch_b
    move-wide v2, v0

    move v7, v5

    move v12, v5

    move v5, v6

    move v6, v12

    goto/16 :goto_1

    :pswitch_c
    const/16 v7, 0x50

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    move-wide v12, v2

    move-wide v2, v0

    move-wide v0, v12

    move v14, v6

    move v6, v5

    move v5, v14

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75ecacba -> :sswitch_1
        -0x72161ffe -> :sswitch_3
        -0x66a729e5 -> :sswitch_7
        -0x66a7235b -> :sswitch_6
        -0x66a71f5c -> :sswitch_5
        -0x19022206 -> :sswitch_c
        -0x19021b7c -> :sswitch_b
        -0xe8cb048 -> :sswitch_a
        -0x3ae0358 -> :sswitch_4
        0x2621303a -> :sswitch_9
        0x262133fb -> :sswitch_8
        0x2b8349e3 -> :sswitch_0
        0x5f4b10ae -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static a(DDDD)V
    .locals 0

    sput-wide p0, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_LEFT_X:D

    sput-wide p2, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_LEFT_Y:D

    sput-wide p4, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_WIDTH:D

    sput-wide p6, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_HEIGHT:D

    return-void
.end method

.method private static b(DD)Lcom/calmcar/adas/apiserver/model/AdasPoint;
    .locals 8

    new-instance v0, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_SCALE:D

    mul-double/2addr v2, p0

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    div-int/lit8 v1, v1, 0x3

    int-to-double v4, v1

    add-double/2addr v2, v4

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_SCALE:D

    mul-double/2addr v4, p2

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x3

    int-to-double v6, v1

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    return-object v0
.end method

.method private static b(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 10

    new-instance v0, Lorg/opencv/core/Rect;

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->height()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    div-int/lit8 v4, v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-double v2, v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-double v4, v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-double v6, v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x8

    int-to-double v8, v1

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_LEFT_X:D

    sput-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_LEFT_Y:D

    sput-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_WIDTH:D

    sput-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_HEIGHT:D

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1, p0, v0}, Lorg/opencv/core/Mat;-><init>(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;)V

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual {v1, v0}, Lorg/opencv/core/Mat;->copyTo(Lorg/opencv/core/Mat;)V

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v2, Lorg/opencv/core/Size;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->width()I

    move-result v3

    int-to-double v4, v3

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_SCALE:D

    div-double/2addr v4, v6

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->height()I

    move-result v3

    int-to-double v6, v3

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_SCALE:D

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {v0, v1, v2}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    return-object v1
.end method
