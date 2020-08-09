.class public Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;
.super Ljava/lang/Object;
.source "LdwDetectInfo.java"


# instance fields
.field private ShowType:I

.field private detectResult:I

.field private detectState:I

.field private ldwType:I

.field public lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

.field private vpy0:D

.field private vpy1:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->detectState:I

    iput v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->detectResult:I

    iput v1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->ldwType:I

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/calmcar/adas/apiserver/model/AdasPoint;

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    iput v1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->ShowType:I

    return-void
.end method


# virtual methods
.method public getDetectResult()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->detectResult:I

    return v0
.end method

.method public getDetectState()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->detectState:I

    return v0
.end method

.method public getLdwType()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->ldwType:I

    return v0
.end method

.method public getShowType()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->ShowType:I

    return v0
.end method

.method public getVpy0()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->vpy0:D

    return-wide v0
.end method

.method public getVpy1()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->vpy1:D

    return-wide v0
.end method

.method public setDetectResult(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->detectResult:I

    return-void
.end method

.method public setDetectState(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->detectState:I

    return-void
.end method

.method public setLdwType(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->ldwType:I

    return-void
.end method

.method public setShowType(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->ShowType:I

    return-void
.end method

.method public setVpy0(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->vpy0:D

    return-void
.end method

.method public setVpy1(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->vpy1:D

    return-void
.end method
