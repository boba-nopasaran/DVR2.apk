.class public Lcom/calmcar/adas/apiserver/model/FrontCarInfo;
.super Ljava/lang/Object;
.source "FrontCarInfo.java"


# instance fields
.field private absDis:D

.field private carDis:D

.field private carRect:Lcom/calmcar/adas/apiserver/model/AdasRect;

.field private frontCarStateType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->frontCarStateType:I

    return-void
.end method


# virtual methods
.method public getAbsDis()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->absDis:D

    return-wide v0
.end method

.method public getCarDis()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->carDis:D

    return-wide v0
.end method

.method public getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->carRect:Lcom/calmcar/adas/apiserver/model/AdasRect;

    return-object v0
.end method

.method public getFrontCarStateType()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->frontCarStateType:I

    return v0
.end method

.method public setAbsDis(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->absDis:D

    return-void
.end method

.method public setCarDis(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->carDis:D

    return-void
.end method

.method public setCarRect(Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->carRect:Lcom/calmcar/adas/apiserver/model/AdasRect;

    return-void
.end method

.method public setFrontCarStateType(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->frontCarStateType:I

    return-void
.end method
