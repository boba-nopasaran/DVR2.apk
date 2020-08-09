.class public Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;
.super Ljava/lang/Object;
.source "MatDrawProcessMan.java"


# instance fields
.field private DrawLockTime:J

.field private cdwServerManager:Lcom/calmcar/adas/c/a;

.field private lastLdwDetectInfo:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;


# direct methods
.method public constructor <init>(Lcom/calmcar/adas/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->cdwServerManager:Lcom/calmcar/adas/c/a;

    return-void
.end method


# virtual methods
.method public ProcessCarValue(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;D)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->cdwServerManager:Lcom/calmcar/adas/c/a;

    invoke-virtual {v1, p3, p4}, Lcom/calmcar/adas/c/a;->a(D)V

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->lastLdwDetectInfo:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    invoke-static {p1, v0}, Lcom/calmcar/adas/c/a;->a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->cdwServerManager:Lcom/calmcar/adas/c/a;

    invoke-virtual {v1, v0, p3, p4}, Lcom/calmcar/adas/c/a;->b(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;D)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setFrontCarStateType(I)V

    :cond_1
    iget-object v1, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->cdwServerManager:Lcom/calmcar/adas/c/a;

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    invoke-virtual {v1, v0, p3, p4}, Lcom/calmcar/adas/c/a;->a(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;D)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setFrontCarStateType(I)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->setFrontCarInfo(Lcom/calmcar/adas/apiserver/model/FrontCarInfo;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    new-instance v1, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    invoke-direct {v1}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarRect(Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->setCarDis(D)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p1, v0}, Lcom/calmcar/adas/c/a;->a(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public ProcessLaneValue(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-object p1, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->lastLdwDetectInfo:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->DrawLockTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->DrawLockTime:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setShowType(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setShowType(I)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->DrawLockTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->DrawLockTime:J

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setShowType(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setShowType(I)V

    const/16 v0, 0x1e

    invoke-virtual {p1, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
