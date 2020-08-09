.class public interface abstract Lcom/adasplus/adas/IAdasInterface;
.super Ljava/lang/Object;
.source "IAdasInterface.java"


# virtual methods
.method public abstract adasInit()I
.end method

.method public abstract adasProcess([B)I
.end method

.method public abstract adasProcessINC([BIII)I
.end method

.method public abstract adasRelease()V
.end method

.method public abstract entryDeviceCode()V
.end method

.method public abstract getAdasConfig()Lcom/adasplus/data/AdasConfig;
.end method

.method public abstract getDfwResults()Lcom/adasplus/data/DfwInfo;
.end method

.method public abstract getFcwResults()Lcom/adasplus/data/FcwInfo;
.end method

.method public abstract getGpsSpeed()F
.end method

.method public abstract getLdwResults()Lcom/adasplus/data/LdwInfo;
.end method

.method public abstract getPedResults()Lcom/adasplus/data/PedInfo;
.end method

.method public abstract getStopGoResults()I
.end method

.method public abstract getVerifyResult()I
.end method

.method public abstract setAdasConfig(Lcom/adasplus/data/AdasConfig;)V
.end method

.method public abstract setCallback(Lcom/adasplus/adas/AdasCollisionCallback;)V
.end method

.method public abstract setObdSpeed(ZF)V
.end method

.method public abstract setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
