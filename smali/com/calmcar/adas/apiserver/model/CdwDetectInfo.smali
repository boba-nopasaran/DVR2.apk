.class public Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;
.super Ljava/lang/Object;
.source "CdwDetectInfo.java"


# instance fields
.field public carRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/apiserver/model/AdasRect;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:J

.field frontCarInfo:Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

.field private showType:I

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->showType:I

    return-void
.end method


# virtual methods
.method public getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->frontCarInfo:Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->showType:I

    return v0
.end method

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->endTime:J

    return-void
.end method

.method public setFrontCarInfo(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->frontCarInfo:Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->showType:I

    return-void
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->startTime:J

    return-void
.end method
