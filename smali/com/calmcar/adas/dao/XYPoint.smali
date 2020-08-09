.class public Lcom/calmcar/adas/dao/XYPoint;
.super Ljava/lang/Object;
.source "XYPoint.java"


# instance fields
.field private br:Lorg/opencv/core/Point;

.field private t:Lorg/opencv/core/Point;

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/calmcar/adas/dao/XYPoint;->x:D

    iput-wide p3, p0, Lcom/calmcar/adas/dao/XYPoint;->y:D

    return-void
.end method

.method public constructor <init>(DDLorg/opencv/core/Point;Lorg/opencv/core/Point;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/calmcar/adas/dao/XYPoint;->x:D

    iput-wide p3, p0, Lcom/calmcar/adas/dao/XYPoint;->y:D

    iput-object p5, p0, Lcom/calmcar/adas/dao/XYPoint;->t:Lorg/opencv/core/Point;

    iput-object p6, p0, Lcom/calmcar/adas/dao/XYPoint;->br:Lorg/opencv/core/Point;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/calmcar/adas/dao/XYPoint;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/calmcar/adas/dao/XYPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/XYPoint;->getX()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/dao/XYPoint;->x:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/calmcar/adas/dao/XYPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/XYPoint;->getY()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/dao/XYPoint;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBr()Lorg/opencv/core/Point;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/dao/XYPoint;->br:Lorg/opencv/core/Point;

    return-object v0
.end method

.method public getT()Lorg/opencv/core/Point;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/dao/XYPoint;->t:Lorg/opencv/core/Point;

    return-object v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/dao/XYPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/dao/XYPoint;->y:D

    return-wide v0
.end method

.method public setBr(Lorg/opencv/core/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/dao/XYPoint;->br:Lorg/opencv/core/Point;

    return-void
.end method

.method public setT(Lorg/opencv/core/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/dao/XYPoint;->t:Lorg/opencv/core/Point;

    return-void
.end method

.method public setX(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/dao/XYPoint;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/dao/XYPoint;->y:D

    return-void
.end method
