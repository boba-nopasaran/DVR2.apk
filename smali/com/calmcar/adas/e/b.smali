.class public final Lcom/calmcar/adas/e/b;
.super Ljava/lang/Object;
.source "FrontCarLaunchUtil.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static b:D


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private d:D

.field private e:I

.field private f:Z

.field private g:I

.field private h:D

.field private i:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/calmcar/adas/e/b;->b:D

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/b;->d:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/calmcar/adas/e/b;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/calmcar/adas/e/b;->f:Z

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/b;->h:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/calmcar/adas/e/b;->i:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/AdasRect;
    .locals 12

    iget-object v4, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    add-double/2addr v2, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v2, v8

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v10, 0x0

    cmpl-double v2, v2, v10

    if-lez v2, :cond_3

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    :goto_2
    const-wide v10, 0x4056800000000000L    # 90.0

    sub-double v10, v2, v10

    cmpl-double v7, v8, v10

    if-lez v7, :cond_4

    const-wide v10, 0x4056800000000000L    # 90.0

    add-double/2addr v2, v10

    cmpg-double v2, v8, v2

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->centerX:D

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    goto/16 :goto_0

    :cond_7
    invoke-static {v6}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    goto/16 :goto_0
.end method

.method public static a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/AdasRect;
    .locals 12

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-static {v0, p1}, Lcom/calmcar/adas/e/b;->a(Lcom/calmcar/adas/apiserver/model/AdasRect;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    goto :goto_0

    :cond_5
    invoke-static {v6}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    goto :goto_0
.end method

.method private static a(D)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    sget-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/calmcar/adas/e/b;->b:D

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sget-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    sget-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v6

    sput-wide v4, Lcom/calmcar/adas/e/b;->b:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    add-double/2addr v4, p0

    sget-wide v6, Lcom/calmcar/adas/e/b;->b:D

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/calmcar/adas/apiserver/model/AdasRect;)Z
    .locals 8

    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v0, v2

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    :goto_0
    sub-double v4, v0, v6

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    add-double/2addr v0, v6

    cmpg-double v0, v2, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->centerX:D

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static a(Lcom/calmcar/adas/apiserver/model/AdasRect;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Z
    .locals 26

    new-instance v10, Lorg/opencv/core/Point;

    invoke-virtual/range {p0 .. p0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-virtual/range {p0 .. p0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    invoke-direct {v10, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    new-instance v6, Lorg/opencv/core/Point;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v12, 0x0

    aget-object v7, v7, v12

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    sub-double/2addr v12, v14

    invoke-direct {v6, v8, v9, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/opencv/core/Point;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v12, 0x2

    aget-object v7, v7, v12

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v12

    const-wide v14, 0x4072c00000000000L    # 300.0

    add-double/2addr v12, v14

    invoke-direct {v6, v8, v9, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/opencv/core/Point;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v12, 0x3

    aget-object v7, v7, v12

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v12

    const-wide v14, 0x4072c00000000000L    # 300.0

    add-double/2addr v12, v14

    invoke-direct {v6, v8, v9, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/opencv/core/Point;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v12, 0x5

    aget-object v7, v7, v12

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    sub-double/2addr v12, v14

    invoke-direct {v6, v8, v9, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v7, 0x0

    const/4 v6, 0x0

    move v8, v6

    move v9, v7

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    if-ge v8, v6, :cond_2

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/opencv/core/Point;

    add-int/lit8 v7, v8, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    rem-int/2addr v7, v12

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/opencv/core/Point;

    iget-wide v12, v6, Lorg/opencv/core/Point;->y:D

    iget-wide v14, v7, Lorg/opencv/core/Point;->y:D

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_4

    iget-wide v12, v10, Lorg/opencv/core/Point;->y:D

    iget-wide v14, v6, Lorg/opencv/core/Point;->y:D

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-ltz v12, :cond_4

    iget-wide v12, v10, Lorg/opencv/core/Point;->y:D

    iget-wide v14, v6, Lorg/opencv/core/Point;->y:D

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-gez v12, :cond_4

    iget-wide v12, v10, Lorg/opencv/core/Point;->y:D

    iget-wide v14, v6, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v12, v14

    iget-wide v14, v7, Lorg/opencv/core/Point;->x:D

    iget-wide v0, v6, Lorg/opencv/core/Point;->x:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    iget-wide v14, v7, Lorg/opencv/core/Point;->y:D

    iget-wide v0, v6, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    iget-wide v12, v10, Lorg/opencv/core/Point;->x:D

    cmpl-double v6, v6, v12

    if-lez v6, :cond_4

    add-int/lit8 v9, v9, 0x1

    move v7, v9

    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v9, v7

    goto :goto_2

    :cond_0
    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->centerX:D

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->centerY:D

    goto/16 :goto_0

    :cond_1
    new-instance v12, Lorg/opencv/core/Point;

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    sub-double v14, v8, v14

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    add-double v16, v16, v6

    const-wide/high16 v18, 0x4054000000000000L    # 80.0

    sub-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v13, Lorg/opencv/core/Point;

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    add-double/2addr v14, v8

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    add-double v16, v16, v6

    const-wide/high16 v18, 0x4054000000000000L    # 80.0

    sub-double v16, v16, v18

    invoke-direct/range {v13 .. v17}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v14, Lorg/opencv/core/Point;

    const-wide v16, 0x4056800000000000L    # 90.0

    sub-double v16, v8, v16

    const-wide v18, 0x4062c00000000000L    # 150.0

    add-double v18, v18, v6

    const-wide v20, 0x4072c00000000000L    # 300.0

    add-double v18, v18, v20

    move-wide/from16 v0, v16

    move-wide/from16 v2, v18

    invoke-direct {v14, v0, v1, v2, v3}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v15, Lorg/opencv/core/Point;

    const-wide v16, 0x4056800000000000L    # 90.0

    add-double v16, v16, v8

    const-wide v18, 0x4062c00000000000L    # 150.0

    add-double v18, v18, v6

    const-wide v20, 0x4072c00000000000L    # 300.0

    add-double v18, v18, v20

    invoke-direct/range {v15 .. v19}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v16, Lorg/opencv/core/Point;

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    sub-double v18, v8, v18

    const-wide/high16 v20, 0x403e000000000000L    # 30.0

    add-double v20, v20, v6

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v17, Lorg/opencv/core/Point;

    const-wide/high16 v18, 0x4049000000000000L    # 50.0

    sub-double v18, v8, v18

    const-wide v20, 0x4056800000000000L    # 90.0

    add-double v20, v20, v6

    invoke-direct/range {v17 .. v21}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v18, Lorg/opencv/core/Point;

    const-wide/high16 v20, 0x4054000000000000L    # 80.0

    sub-double v20, v8, v20

    const-wide v22, 0x4062c00000000000L    # 150.0

    add-double v22, v22, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v19, Lorg/opencv/core/Point;

    const-wide/high16 v20, 0x4054000000000000L    # 80.0

    add-double v20, v20, v8

    const-wide v22, 0x4062c00000000000L    # 150.0

    add-double v22, v22, v6

    invoke-direct/range {v19 .. v23}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v20, Lorg/opencv/core/Point;

    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    add-double v22, v22, v8

    const-wide v24, 0x4056800000000000L    # 90.0

    add-double v24, v24, v6

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v21, Lorg/opencv/core/Point;

    const-wide/high16 v22, 0x4034000000000000L    # 20.0

    add-double v8, v8, v22

    const-wide/high16 v22, 0x403e000000000000L    # 30.0

    add-double v6, v6, v22

    move-object/from16 v0, v21

    invoke-direct {v0, v8, v9, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    rem-int/lit8 v6, v9, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_4
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move v7, v9

    goto/16 :goto_3
.end method

.method private static b()V
    .locals 1

    sget-object v0, Lcom/calmcar/adas/e/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private b(D)Z
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/calmcar/adas/e/b;->d()V

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_LAUNCH_DIS:D

    add-double/2addr v2, p1

    iget-wide v4, p0, Lcom/calmcar/adas/e/b;->d:D

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-wide v2, p0, Lcom/calmcar/adas/e/b;->h:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/calmcar/adas/e/b;->h:D

    iget v0, p0, Lcom/calmcar/adas/e/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/calmcar/adas/e/b;->e:I

    :cond_1
    iget v0, p0, Lcom/calmcar/adas/e/b;->e:I

    int-to-double v2, v0

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_TIMES:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/calmcar/adas/e/b;->d:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/calmcar/adas/e/b;->d:D

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/calmcar/adas/e/b;->f:Z

    return v0
.end method

.method private c(D)Z
    .locals 11

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/calmcar/adas/e/b;->d()V

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/calmcar/adas/e/b;->d:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/calmcar/adas/e/b;->d:D

    :cond_1
    iget-wide v2, p0, Lcom/calmcar/adas/e/b;->d:D

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_LAUNCH_ABS_DIS:D

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_LAUNCH_LEVEL:I

    int-to-double v6, v0

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    cmpl-double v0, p1, v2

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/calmcar/adas/e/b;->i:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_2

    iput-wide p1, p0, Lcom/calmcar/adas/e/b;->i:D

    iget v0, p0, Lcom/calmcar/adas/e/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/calmcar/adas/e/b;->e:I

    :cond_2
    iget v0, p0, Lcom/calmcar/adas/e/b;->e:I

    int-to-double v2, v0

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_ABS_TIMES:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/calmcar/adas/e/b;->f:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/calmcar/adas/e/b;->f:Z

    iget-object v0, p0, Lcom/calmcar/adas/e/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/b;->d:D

    iput v2, p0, Lcom/calmcar/adas/e/b;->e:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Lcom/calmcar/adas/e/b;->h:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/calmcar/adas/e/b;->i:D

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/calmcar/adas/e/b;->f:Z

    return-void
.end method

.method public final a(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/calmcar/adas/e/b;->d()V

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/calmcar/adas/e/b;->i:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    iput-wide v2, p0, Lcom/calmcar/adas/e/b;->i:D

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v4, p0, Lcom/calmcar/adas/e/b;->i:D

    const-wide v6, 0x3ff4f5c28f5c28f6L    # 1.31

    add-double/2addr v4, v6

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/calmcar/adas/e/b;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/calmcar/adas/e/b;->e:I

    :cond_2
    iget-wide v4, p0, Lcom/calmcar/adas/e/b;->i:D

    cmpl-double v4, v4, v2

    if-lez v4, :cond_3

    iput-wide v2, p0, Lcom/calmcar/adas/e/b;->i:D

    :cond_3
    iget v2, p0, Lcom/calmcar/adas/e/b;->e:I

    int-to-double v2, v2

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_ABS_TIMES:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    iput-boolean v1, p0, Lcom/calmcar/adas/e/b;->f:Z

    move v0, v1

    goto :goto_0
.end method
