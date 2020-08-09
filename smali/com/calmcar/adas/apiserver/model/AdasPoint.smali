.class public Lcom/calmcar/adas/apiserver/model/AdasPoint;
.super Ljava/lang/Object;
.source "AdasPoint.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->x:D

    iput-wide p3, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->y:D

    return-void
.end method


# virtual methods
.method public convertPoint()Lorg/opencv/core/Point;
    .locals 6

    new-instance v0, Lorg/opencv/core/Point;

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->x:D

    iget-wide v4, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public getX()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->y:D

    return-wide v0
.end method

.method public setX(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/AdasPoint;->y:D

    return-void
.end method
