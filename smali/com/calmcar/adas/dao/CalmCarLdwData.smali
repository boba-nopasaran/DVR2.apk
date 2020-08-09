.class public Lcom/calmcar/adas/dao/CalmCarLdwData;
.super Ljava/lang/Object;
.source "CalmCarLdwData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;
    }
.end annotation


# instance fields
.field private currentZone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation
.end field

.field private leftZone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation
.end field

.field private rightZone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation
.end field

.field private sDepartureOrientation:I

.field private sLaneDetectionResult:I

.field private time:D

.field private virtaulPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation
.end field

.field private vpy0:I

.field private vpy1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentZone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->currentZone:Ljava/util/List;

    return-object v0
.end method

.method public getLeftZone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->leftZone:Ljava/util/List;

    return-object v0
.end method

.method public getRightZone()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->rightZone:Ljava/util/List;

    return-object v0
.end method

.method public getSDepartureOrientation()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->sDepartureOrientation:I

    return v0
.end method

.method public getSLaneDetectionResult()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->sLaneDetectionResult:I

    return v0
.end method

.method public getTime()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->time:D

    return-wide v0
.end method

.method public getVirtaulPoint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->virtaulPoint:Ljava/util/List;

    return-object v0
.end method

.method public getVpy0()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->vpy0:I

    return v0
.end method

.method public getVpy1()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->vpy1:I

    return v0
.end method

.method public setCurrentZone(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->currentZone:Ljava/util/List;

    return-void
.end method

.method public setLeftZone(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->leftZone:Ljava/util/List;

    return-void
.end method

.method public setRightZone(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->rightZone:Ljava/util/List;

    return-void
.end method

.method public setSDepartureOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->sDepartureOrientation:I

    return-void
.end method

.method public setSLaneDetectionResult(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->sLaneDetectionResult:I

    return-void
.end method

.method public setTime(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->time:D

    return-void
.end method

.method public setVirtaulPoint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->virtaulPoint:Ljava/util/List;

    return-void
.end method

.method public setVpy0(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->vpy0:I

    return-void
.end method

.method public setVpy1(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/dao/CalmCarLdwData;->vpy1:I

    return-void
.end method
