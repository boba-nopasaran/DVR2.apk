.class public final Lcom/calmcar/adas/c/a;
.super Ljava/lang/Object;
.source "CdwServerManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/calmcar/adas/e/b;

.field private c:Lcom/calmcar/adas/e/a;

.field private d:Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

.field private e:J

.field private f:J

.field private g:D

.field private h:D

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/calmcar/adas/c/a;->e:J

    iput-wide v2, p0, Lcom/calmcar/adas/c/a;->f:J

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->g:D

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->h:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/calmcar/adas/c/a;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->j:J

    new-instance v0, Lcom/calmcar/adas/e/b;

    invoke-direct {v0}, Lcom/calmcar/adas/e/b;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/c/a;->b:Lcom/calmcar/adas/e/b;

    new-instance v0, Lcom/calmcar/adas/e/a;

    invoke-direct {v0}, Lcom/calmcar/adas/e/a;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/c/a;->c:Lcom/calmcar/adas/e/a;

    return-void
.end method

.method private constructor <init>(B)V
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

.method private static a(Lcom/calmcar/adas/dao/CalmCarDetectData;)Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    invoke-direct {v3}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/calmcar/adas/dao/CalmCarDetectData;->getCarPoint()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;

    new-instance v5, Lcom/calmcar/adas/apiserver/model/AdasRect;

    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX0()I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getY0()I

    move-result v7

    int-to-double v10, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    new-instance v7, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX1()I

    move-result v8

    int-to-double v8, v8

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getY1()I

    move-result v10

    int-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    invoke-direct {v5, v6, v7}, Lcom/calmcar/adas/apiserver/model/AdasRect;-><init>(Lcom/calmcar/adas/apiserver/model/AdasPoint;Lcom/calmcar/adas/apiserver/model/AdasPoint;)V

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX1()I

    move-result v6

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX0()I

    move-result v0

    sub-int v0, v6, v0

    int-to-double v6, v0

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->CONVERT_PARA:D

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    div-double v6, v10, v6

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_HEAD:D

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/calmcar/adas/apiserver/model/AdasRect;->setAbsDis(D)V

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    if-nez v0, :cond_2

    invoke-virtual {v5, v2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->setShowDis(Z)V

    :goto_2
    iget-object v0, v3, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->setShowDis(Z)V

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/FrontCarInfo;
    .locals 4

    invoke-static {p0, p1}, Lcom/calmcar/adas/e/b;->a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    invoke-direct {v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarRect(Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarDis(D)V

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setAbsDis(D)V

    goto :goto_0
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

.method private a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/c/a;->d:Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    return-void
.end method

.method private static b(D)D
    .locals 4

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CONVERT_PARA:D

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v2, p0

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_HEAD:D

    sub-double/2addr v0, v2

    return-wide v0
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

.method private static b(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/FrontCarInfo;
    .locals 4

    invoke-static {p0}, Lcom/calmcar/adas/e/b;->a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    invoke-direct {v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarRect(Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarDis(D)V

    goto :goto_0
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

.method private c(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;D)I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/calmcar/adas/a/a;->b:I

    int-to-double v2, v1

    cmpg-double v1, p2, v2

    if-lez v1, :cond_0

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    div-double v4, p2, v4

    div-double/2addr v2, v4

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_ONE_TIME:D

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    int-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_TWO_TIME:D

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    int-to-double v6, v1

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/calmcar/adas/c/a;->c:Lcom/calmcar/adas/e/a;

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/calmcar/adas/e/a;->a(DD)I

    move-result v0

    goto :goto_0
.end method

.method private static c(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/FrontCarInfo;
    .locals 4

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    new-instance v1, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    invoke-direct {v1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarRect(Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarDis(D)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/c/a;->d:Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    return-object v0
.end method

.method public final a(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;D)Ljava/lang/Boolean;
    .locals 12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const-wide v8, 0x408f400000000000L    # 1000.0

    const/4 v6, 0x0

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/calmcar/adas/c/a;->h:D

    cmpl-double v0, v0, v8

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->h:D

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    double-to-int v2, v0

    iget-wide v4, p0, Lcom/calmcar/adas/c/a;->h:D

    double-to-int v3, v4

    if-ne v2, v3, :cond_2

    iput-boolean v7, p0, Lcom/calmcar/adas/c/a;->i:Z

    :cond_2
    iget-wide v2, p0, Lcom/calmcar/adas/c/a;->h:D

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    add-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/calmcar/adas/c/a;->i:Z

    if-eqz v0, :cond_3

    iput-wide v8, p0, Lcom/calmcar/adas/c/a;->h:D

    iput-boolean v6, p0, Lcom/calmcar/adas/c/a;->i:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide v0, 0x400ccccccccccccdL    # 3.6

    cmpl-double v0, p2, v0

    if-nez v0, :cond_5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    cmpl-double v0, p2, v10

    if-lez v0, :cond_8

    iget-wide v0, p0, Lcom/calmcar/adas/c/a;->j:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->j:J

    :cond_6
    :goto_1
    cmpl-double v0, p2, v10

    if-lez v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/c/a;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    iget-wide v0, p0, Lcom/calmcar/adas/c/a;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->f:J

    :cond_7
    if-nez p1, :cond_9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_8
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->j:J

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/calmcar/adas/c/a;->b:Lcom/calmcar/adas/e/b;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/e/b;->a(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iput-wide v4, p0, Lcom/calmcar/adas/c/a;->f:J

    iput-wide v8, p0, Lcom/calmcar/adas/c/a;->g:D

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    iget-wide v0, p0, Lcom/calmcar/adas/c/a;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->f:J

    :cond_d
    if-nez p1, :cond_e

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/c/a;->g:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_f

    iput-wide v8, p0, Lcom/calmcar/adas/c/a;->g:D

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/c/a;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2af8

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_10

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->g:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->f:J

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/c/a;->f:J

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_11

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/calmcar/adas/c/a;->b:Lcom/calmcar/adas/e/b;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/e/b;->a(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final a(D)V
    .locals 3

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/c/a;->b:Lcom/calmcar/adas/e/b;

    invoke-virtual {v0}, Lcom/calmcar/adas/e/b;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/calmcar/adas/dao/CalmCarDetectData;I)V
    .locals 12

    new-instance v2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    invoke-direct {v2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;-><init>()V

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/calmcar/adas/c/a;->e:J

    iput-object v0, p0, Lcom/calmcar/adas/c/a;->d:Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    iget-object v0, p0, Lcom/calmcar/adas/c/a;->d:Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    invoke-virtual {v0, p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->setShowType(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/calmcar/adas/dao/CalmCarDetectData;->getCarPoint()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;

    new-instance v4, Lcom/calmcar/adas/apiserver/model/AdasRect;

    new-instance v5, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX0()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getY0()I

    move-result v8

    int-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX1()I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getY1()I

    move-result v7

    int-to-double v10, v7

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    invoke-direct {v4, v5, v6}, Lcom/calmcar/adas/apiserver/model/AdasRect;-><init>(Lcom/calmcar/adas/apiserver/model/AdasPoint;Lcom/calmcar/adas/apiserver/model/AdasPoint;)V

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX1()I

    move-result v5

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarDetectData$CarPointBean;->getX0()I

    move-result v0

    sub-int v0, v5, v0

    int-to-double v6, v0

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->CONVERT_PARA:D

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    div-double v6, v10, v6

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_HEAD:D

    sub-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/calmcar/adas/apiserver/model/AdasRect;->setAbsDis(D)V

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->setShowDis(Z)V

    :goto_3
    iget-object v0, v2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->setShowDis(Z)V

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/c/a;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/adas/c/a;->d:Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    goto :goto_1
.end method

.method public final b(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;D)I
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v3, 0xa

    const/4 v8, 0x2

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRESPEED:I

    int-to-double v4, v0

    cmpl-double v0, p2, v4

    if-lez v0, :cond_9

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v4

    invoke-static {v4, v5, p2, p3}, Lcom/calmcar/adas/e/a;->b(DD)I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-wide v4, p0, Lcom/calmcar/adas/c/a;->n:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/calmcar/adas/c/a;->n:J

    iget-wide v4, p0, Lcom/calmcar/adas/c/a;->n:J

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/calmcar/adas/c/a;->m:J

    sub-long/2addr v4, v6

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/calmcar/adas/c/a;->m:J

    iput-wide v10, p0, Lcom/calmcar/adas/c/a;->n:J

    :cond_2
    :goto_1
    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRESPEED:I

    int-to-double v4, v4

    cmpl-double v4, p2, v4

    if-lez v4, :cond_3

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v4

    invoke-static {v4, v5, p2, p3}, Lcom/calmcar/adas/e/a;->b(DD)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    iget-wide v4, p0, Lcom/calmcar/adas/c/a;->n:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/calmcar/adas/c/a;->n:J

    iget-wide v4, p0, Lcom/calmcar/adas/c/a;->n:J

    const-wide/16 v6, 0x3

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/calmcar/adas/c/a;->l:J

    sub-long/2addr v4, v6

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_FREQVAL:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/calmcar/adas/c/a;->l:J

    iput-wide v10, p0, Lcom/calmcar/adas/c/a;->n:J

    :cond_3
    :goto_2
    if-eq v0, v8, :cond_4

    if-ne v0, v1, :cond_0

    :cond_4
    move v2, v0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_1
.end method
