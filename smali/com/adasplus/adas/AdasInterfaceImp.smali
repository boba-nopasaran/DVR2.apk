.class public Lcom/adasplus/adas/AdasInterfaceImp;
.super Ljava/lang/Object;
.source "AdasInterfaceImp.java"


# instance fields
.field adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

.field adas_config:Lcom/adasplus/data/AdasConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/adasplus/adas/adas/AdasInterface;

    invoke-direct {v1, p1}, Lcom/adasplus/adas/adas/AdasInterface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    new-instance v2, Lcom/adasplus/adas/AdasInterfaceImp$1;

    invoke-direct {v2, p0}, Lcom/adasplus/adas/AdasInterfaceImp$1;-><init>(Lcom/adasplus/adas/AdasInterfaceImp;)V

    invoke-virtual {v1, v2}, Lcom/adasplus/adas/adas/AdasInterface;->setCallback(Lcom/adasplus/adas/AdasCollisionCallback;)V

    new-instance v1, Lcom/adasplus/data/AdasConfig;

    invoke-direct {v1}, Lcom/adasplus/data/AdasConfig;-><init>()V

    iput-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-virtual {v1, v2}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2}, Lcom/adasplus/data/AdasConfig;->setVehicleHeight(F)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    const v2, 0x3fcccccd    # 1.6f

    invoke-virtual {v1, v2}, Lcom/adasplus/data/AdasConfig;->setVehicleWidth(F)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adasplus/data/AdasConfig;->setIsCalibCredible(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1}, Lcom/adasplus/adas/adas/AdasInterface;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    return-void
.end method

.method public static entryDeviceCode(Landroid/content/Context;Lcom/adasplus/adas/IAdasEntryListener;)V
    .locals 1

    new-instance v0, Lcom/adasplus/adas/AdasInterfaceImp$2;

    invoke-direct {v0, p0, p1}, Lcom/adasplus/adas/AdasInterfaceImp$2;-><init>(Landroid/content/Context;Lcom/adasplus/adas/IAdasEntryListener;)V

    invoke-virtual {v0}, Lcom/adasplus/adas/AdasInterfaceImp$2;->start()V

    return-void
.end method


# virtual methods
.method public getAdasConfig()Lcom/adasplus/data/AdasConfig;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAdasSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->getGpsSpeed()F

    move-result v0

    return v0
.end method

.method public getFcwResults()Lcom/adasplus/data/FcwInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->getFcwResults()Lcom/adasplus/data/FcwInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLdwResults()Lcom/adasplus/data/LdwInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->getLdwResults()Lcom/adasplus/data/LdwInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStopGoResults()I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->getStopGoResults()I

    move-result v0

    return v0
.end method

.method public getVerifyResult()I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->getVerifyResult()I

    move-result v0

    return v0
.end method

.method public init()I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->adasInit()I

    move-result v0

    return v0
.end method

.method public isAdasStop()Z
    .locals 2

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getIsLdwEnable()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getIsFcwEnable()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getIsStopgoEnable()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public process([BIII)I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adasplus/adas/adas/AdasInterface;->adasProcessINC([BIII)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasInterface;->adasRelease()V

    return-void
.end method

.method public setAdasEnable(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsLdwEnable(I)V

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsFcwEnable(I)V

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/adasplus/data/AdasConfig;->setIsStopgoEnable(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public setFcwEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsFcwEnable(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIsCalibCredible()V
    .locals 2

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    const/high16 v1, 0x43a00000    # 320.0f

    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsCalibCredible(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void
.end method

.method public setLdwEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsLdwEnable(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStgEnable(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsStopgoEnable(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adasplus/adas/adas/AdasInterface;->setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVpoint(FF)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v1

    sub-float/2addr v1, p1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v1

    sub-float/2addr v1, p2

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_1

    invoke-virtual {v0}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v1

    sub-float/2addr v1, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    invoke-virtual {v0, p2}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adasplus/data/AdasConfig;->setIsCalibCredible(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    :cond_2
    return-void
.end method

.method public setWarningSpeed(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/adasplus/adas/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adas_config:Lcom/adasplus/data/AdasConfig;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/adasplus/data/AdasConfig;->setLdwMinVelocity(I)V

    invoke-virtual {v0, p2}, Lcom/adasplus/data/AdasConfig;->setFcwMinVelocity(I)V

    iget-object v1, p0, Lcom/adasplus/adas/AdasInterfaceImp;->adasInterface:Lcom/adasplus/adas/adas/AdasInterface;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/adas/AdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
