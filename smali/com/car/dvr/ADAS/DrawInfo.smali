.class public Lcom/car/dvr/ADAS/DrawInfo;
.super Ljava/lang/Object;
.source "DrawInfo.java"


# instance fields
.field private config:Lcom/adasplus/data/AdasConfig;

.field private fcwResults:Lcom/adasplus/data/FcwInfo;

.field private ldwResults:Lcom/adasplus/data/LdwInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/adasplus/data/AdasConfig;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    return-object v0
.end method

.method public getFcwResults()Lcom/adasplus/data/FcwInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    return-object v0
.end method

.method public getLdwResults()Lcom/adasplus/data/LdwInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    return-object v0
.end method

.method public setConfig(Lcom/adasplus/data/AdasConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/DrawInfo;->config:Lcom/adasplus/data/AdasConfig;

    return-void
.end method

.method public setFcwResults(Lcom/adasplus/data/FcwInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/DrawInfo;->fcwResults:Lcom/adasplus/data/FcwInfo;

    return-void
.end method

.method public setLdwResults(Lcom/adasplus/data/LdwInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/DrawInfo;->ldwResults:Lcom/adasplus/data/LdwInfo;

    return-void
.end method
