.class public Lcom/adasplus/adas/adas/AdasInterface;
.super Ljava/lang/Object;
.source "AdasInterface.java"


# instance fields
.field private mAdasInterface:Lcom/adasplus/adas/IAdasInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "com.adasplus.adas.AdasInterface"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adasplus/adas/IAdasInterface;

    iput-object v3, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public adasInit()I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->adasInit()I

    move-result v0

    return v0
.end method

.method public adasProcess([B)I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0, p1}, Lcom/adasplus/adas/IAdasInterface;->adasProcess([B)I

    move-result v0

    return v0
.end method

.method public adasProcessINC([BIII)I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/adasplus/adas/IAdasInterface;->adasProcessINC([BIII)I

    move-result v0

    return v0
.end method

.method public adasRelease()V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->adasRelease()V

    return-void
.end method

.method public entryDeviceCode()V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->entryDeviceCode()V

    return-void
.end method

.method public getAdasConfig()Lcom/adasplus/data/AdasConfig;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    return-object v0
.end method

.method public getFcwResults()Lcom/adasplus/data/FcwInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->getFcwResults()Lcom/adasplus/data/FcwInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGpsSpeed()F
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->getGpsSpeed()F

    move-result v0

    return v0
.end method

.method public getLdwResults()Lcom/adasplus/data/LdwInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->getLdwResults()Lcom/adasplus/data/LdwInfo;

    move-result-object v0

    return-object v0
.end method

.method public getStopGoResults()I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->getStopGoResults()I

    move-result v0

    return v0
.end method

.method public getVerifyResult()I
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0}, Lcom/adasplus/adas/IAdasInterface;->getVerifyResult()I

    move-result v0

    return v0
.end method

.method public setAdasConfig(Lcom/adasplus/data/AdasConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0, p1}, Lcom/adasplus/adas/IAdasInterface;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    return-void
.end method

.method public setCallback(Lcom/adasplus/adas/AdasCollisionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0, p1}, Lcom/adasplus/adas/IAdasInterface;->setCallback(Lcom/adasplus/adas/AdasCollisionCallback;)V

    return-void
.end method

.method public setObdSpeed(ZF)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0, p1, p2}, Lcom/adasplus/adas/IAdasInterface;->setObdSpeed(ZF)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasInterface;->mAdasInterface:Lcom/adasplus/adas/IAdasInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/adasplus/adas/IAdasInterface;->setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
