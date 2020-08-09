.class public Lcom/calmcar/adas/dao/DetectDataInfo;
.super Ljava/lang/Object;
.source "DetectDataInfo.java"


# instance fields
.field carData:Lcom/calmcar/adas/dao/CalmCarDetectData;

.field carType:I

.field laneData:Lcom/calmcar/adas/dao/CalmCarLdwData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarData()Lcom/calmcar/adas/dao/CalmCarDetectData;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/dao/DetectDataInfo;->carData:Lcom/calmcar/adas/dao/CalmCarDetectData;

    return-object v0
.end method

.method public getCarType()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/DetectDataInfo;->carType:I

    return v0
.end method

.method public getLaneData()Lcom/calmcar/adas/dao/CalmCarLdwData;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/dao/DetectDataInfo;->laneData:Lcom/calmcar/adas/dao/CalmCarLdwData;

    return-object v0
.end method

.method public setCarData(Lcom/calmcar/adas/dao/CalmCarDetectData;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/dao/DetectDataInfo;->carData:Lcom/calmcar/adas/dao/CalmCarDetectData;

    return-void
.end method

.method public setCarType(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/DetectDataInfo;->carType:I

    return-void
.end method

.method public setLaneData(Lcom/calmcar/adas/dao/CalmCarLdwData;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/dao/DetectDataInfo;->laneData:Lcom/calmcar/adas/dao/CalmCarLdwData;

    return-void
.end method
