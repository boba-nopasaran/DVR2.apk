.class public Lcom/calmcar/adas/apiserver/AdasServer;
.super Ljava/lang/Object;
.source "AdasServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;
    }
.end annotation


# static fields
.field private static adasServer:Lcom/calmcar/adas/apiserver/AdasServer;


# instance fields
.field activeSuccessListener:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

.field private adasLocManager:Lcom/calmcar/adas/gps/a;

.field private adasServicePool:Lcom/calmcar/adas/d/a;

.field private cameraDataProcessCallBack:Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;

.field currentTime:J

.field detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

.field private laneCarServerManager:Lcom/calmcar/adas/c/b;

.field private lisenceManager:Lcom/lisence/util/a;

.field private mContext:Landroid/content/Context;

.field private matDrawProcess:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

.field netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

.field sepTime:J

.field private spf:Landroid/content/SharedPreferences;

.field tickNumber:I

.field tickNumber2:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "opencv_java3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "calmcar_adas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/calmcar/adas/apiserver/AdasServer;->adasServer:Lcom/calmcar/adas/apiserver/AdasServer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    iput-wide v4, p0, Lcom/calmcar/adas/apiserver/AdasServer;->currentTime:J

    iput v3, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    iput v3, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber2:I

    iput-wide v4, p0, Lcom/calmcar/adas/apiserver/AdasServer;->sepTime:J

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/calmcar/adas/d/a;

    invoke-direct {v0}, Lcom/calmcar/adas/d/a;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasServicePool:Lcom/calmcar/adas/d/a;

    new-instance v0, Lcom/calmcar/adas/gps/a;

    invoke-direct {v0, p1}, Lcom/calmcar/adas/gps/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    new-instance v0, Lcom/calmcar/adas/c/b;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasServicePool:Lcom/calmcar/adas/d/a;

    invoke-direct {v0, p1, v1}, Lcom/calmcar/adas/c/b;-><init>(Landroid/content/Context;Lcom/calmcar/adas/d/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    new-instance v0, Lcom/lisence/util/a;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-direct {v0, v1, p1}, Lcom/lisence/util/a;-><init>(Lcom/calmcar/adas/c/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->lisenceManager:Lcom/lisence/util/a;

    new-instance v0, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v1}, Lcom/calmcar/adas/c/b;->b()Lcom/calmcar/adas/c/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;-><init>(Lcom/calmcar/adas/c/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->matDrawProcess:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

    const-string v0, "adas_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk_version:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/calmcar/adas/apiserver/AdasConf;->SDK_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "adas_vp"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->initVPPara()V

    invoke-direct {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->initModuleState()V

    sput-object p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasServer:Lcom/calmcar/adas/apiserver/AdasServer;

    return-void
.end method

.method public static getInstance()Lcom/calmcar/adas/apiserver/AdasServer;
    .locals 1

    sget-object v0, Lcom/calmcar/adas/apiserver/AdasServer;->adasServer:Lcom/calmcar/adas/apiserver/AdasServer;

    return-object v0
.end method

.method private getModuleState(I)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initModuleState()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v2, "mode1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRESPEED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_SENVAL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRETIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v3, "mode2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRESPEED:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_SENVAL:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_FREQVAL:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRETIME:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v4, "mode3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRESPEED:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_SENVAL:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRETIME:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v4, "adas_mode1_state"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "adas_mode2_state"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "adas_mode3_state"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    aget-object v2, v5, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v5, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    aget-object v0, v7, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v7, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v0, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v0, v7, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    aget-object v2, v8, v11

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v8, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    return-void
.end method

.method private initVPPara()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v1, "mv_x"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v1, "mv_y"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v1, "fcw_warn_level"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v1, "fcw_launch_level"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_LAUNCH_LEVEL:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processCallBackData()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0}, Lcom/calmcar/adas/c/b;->a()Lcom/calmcar/adas/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/c/d;->a()Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v1}, Lcom/calmcar/adas/c/b;->b()Lcom/calmcar/adas/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/c/a;->a()Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v2

    if-ne v2, v5, :cond_0

    sget-boolean v2, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    iget v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    iput v4, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    sput-boolean v5, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v2

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber2:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber2:I

    iget v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber2:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    iput v4, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber2:I

    iget-object v2, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    iget-object v4, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x406e000000000000L    # 240.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    const-wide v4, 0x4086800000000000L    # 720.0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    double-to-int v4, v2

    int-to-double v4, v4

    sput-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getVpy1()D

    move-result-wide v4

    double-to-int v4, v4

    int-to-double v4, v4

    sput-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    double-to-int v2, v2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getVpy1()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/calmcar/adas/apiserver/AdasServer;->setVPParaAuto(II)V

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V

    :cond_2
    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->matDrawProcess:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

    invoke-virtual {v2, v0}, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->ProcessLaneValue(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)V

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->matDrawProcess:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

    iget-object v3, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v3}, Lcom/calmcar/adas/gps/a;->a()D

    move-result-wide v4

    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;->ProcessCarValue(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;D)V

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->cameraDataProcessCallBack:Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->cameraDataProcessCallBack:Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;

    invoke-interface {v2, v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;->onProcessBack(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V

    :cond_3
    return-void

    :cond_4
    iput v4, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber2:I

    goto :goto_0
.end method

.method private setVPInit()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    double-to-int v1, v2

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/calmcar/adas/c/b;->a(III)V

    :cond_0
    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    iput v4, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    return-void
.end method


# virtual methods
.method public getActiveState()Z
    .locals 1

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    return v0
.end method

.method public getActiveSuccessListener()Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->activeSuccessListener:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    return-object v0
.end method

.method public getAdasServerRunMode(I)I
    .locals 1

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    return v0
.end method

.method public getCameraDataProcessCallBack()Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->cameraDataProcessCallBack:Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;

    return-object v0
.end method

.method public getDetectInitSuccessListener()Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

    return-object v0
.end method

.method public getFrontCarWarnSencitivity()I
    .locals 1

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    return v0
.end method

.method public getRate()D
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0}, Lcom/calmcar/adas/gps/a;->a()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/calmcar/adas/apiserver/AdasConf;->SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVPPara()[I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v2, "mv_x"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v3, "mv_y"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1

    aget v1, v0, v4

    if-nez v1, :cond_0

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-double v2, v1

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    :cond_0
    return-object v0
.end method

.method public initConf(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/calmcar/adas/apiserver/AdasServer;->setInputFrameWidthHeight(II)V

    return-void
.end method

.method public initLocationService(Landroid/content/Context;Lcom/calmcar/adas/gps/LocationTickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0, p2}, Lcom/calmcar/adas/gps/a;->a(Lcom/calmcar/adas/gps/LocationTickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0}, Lcom/calmcar/adas/gps/a;->c()V

    return-void
.end method

.method public isValidLocationState()Z
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0}, Lcom/calmcar/adas/gps/a;->b()I

    move-result v0

    sget v1, Lcom/calmcar/adas/a/a;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processDataAsyn(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V
    .locals 4

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/lisence/util/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->sepTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lisence/util/a;->a:Z

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->lisenceManager:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->sepTime:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->currentTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf;->DETECT_SEQUENCE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->currentTime:J

    invoke-virtual {p0, p1}, Lcom/calmcar/adas/apiserver/AdasServer;->sendDataForDetect(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    :cond_1
    invoke-direct {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->processCallBackData()V

    return-void
.end method

.method public registerServer()V
    .locals 3

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lisence/util/NetWorkStateReceiver;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->lisenceManager:Lcom/lisence/util/a;

    invoke-direct {v0, v1}, Lcom/lisence/util/NetWorkStateReceiver;-><init>(Lcom/lisence/util/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendDataForDetect(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/c/b;->a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    return-void
.end method

.method public serverStop()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->unregisterServer()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0}, Lcom/calmcar/adas/c/b;->d()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0}, Lcom/calmcar/adas/gps/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setActiveSuccessListener(Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->lisenceManager:Lcom/lisence/util/a;

    invoke-virtual {v0, p1}, Lcom/lisence/util/a;->a(Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;)V

    return-void
.end method

.method public setAdasServerModuleState(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setAdasServerModuleState(ZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sput-boolean p1, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_DETECT_OPEN:Z

    sput-boolean p1, Lcom/calmcar/adas/apiserver/AdasConf;->LANE_DETECT_OPEN:Z

    sput-boolean p1, Lcom/calmcar/adas/apiserver/AdasConf;->PEO_DETECT_OPEN:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v3, v3, v3}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v2, v2, v2}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :pswitch_1
    sput-boolean p1, Lcom/calmcar/adas/apiserver/AdasConf;->LANE_DETECT_OPEN:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v3, v1, v1}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v2, v1, v1}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :pswitch_2
    sput-boolean p1, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_DETECT_OPEN:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v1, v3, v1}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v1, v2, v1}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :pswitch_3
    sput-boolean p1, Lcom/calmcar/adas/apiserver/AdasConf;->PEO_DETECT_OPEN:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v1, v1, v3}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, v1, v1, v2}, Lcom/calmcar/adas/c/b;->b(III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAdasServerRunMode(I)V
    .locals 4

    sput p1, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    if-eqz v0, :cond_0

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    const-wide v2, 0x40497fffac1d29dcL    # 50.99999

    invoke-virtual {v0, v2, v3}, Lcom/calmcar/adas/gps/a;->a(D)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    invoke-virtual {v0, v2, v3}, Lcom/calmcar/adas/gps/a;->a(D)V

    goto :goto_0
.end method

.method public setCameraDataProcessCallBack(Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->cameraDataProcessCallBack:Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;

    return-void
.end method

.method public setDetectInitSuccessListener(Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

    return-void
.end method

.method public setFrontCarWarnSencitivity(I)V
    .locals 7

    sput p1, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v1, "mode2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRESPEED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_SENVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_FREQVAL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRETIME:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v2, "mode3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRESPEED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_SENVAL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRETIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x3

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x3

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x3

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/c/b;->a(IIIII)V

    goto :goto_0
.end method

.method public setInputFrameWidthHeight(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/calmcar/adas/apiserver/AdasConf;->WIDTH_HEIGHT:Ljava/lang/String;

    sput p1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    sput p2, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v0, p1, 0x2

    int-to-double v0, v0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->centerX:D

    div-int/lit8 v0, p2, 0x2

    int-to-double v0, v0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->centerY:D

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    :cond_0
    return-void
.end method

.method public setLaneDetectRate(I)V
    .locals 6

    const/4 v1, 0x1

    sput p1, Lcom/calmcar/adas/a/a;->a:I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    const-string v2, "mode1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRESPEED:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_SENVAL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRETIME:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "adas_mode1_state"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerModuleState(IIIII)V

    return-void
.end method

.method public setVPPara(II)V
    .locals 3

    const/4 v2, 0x0

    int-to-double v0, p1

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    int-to-double v0, p2

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0, p1, p2, v2}, Lcom/calmcar/adas/c/b;->a(III)V

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mv_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mv_y"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    sput-boolean v2, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    iput v2, p0, Lcom/calmcar/adas/apiserver/AdasServer;->tickNumber:I

    return-void
.end method

.method public setVPParaAuto(II)V
    .locals 2

    int-to-double v0, p1

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    int-to-double v0, p2

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/calmcar/adas/c/b;->a(III)V

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mv_x"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->spf:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mv_y"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public startDetectThread()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0}, Lcom/calmcar/adas/c/b;->e()V

    return-void
.end method

.method public startServer()V
    .locals 2

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->registerServer()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->lisenceManager:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0}, Lcom/calmcar/adas/c/b;->c()V

    invoke-direct {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->setVPInit()V

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->startDetectThread()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->initLocationService(Landroid/content/Context;Lcom/calmcar/adas/gps/LocationTickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

    invoke-interface {v0}, Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;->onInitSuccess()V

    :cond_0
    return-void
.end method

.method public startServer(Lcom/calmcar/adas/gps/LocationTickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->registerServer()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->lisenceManager:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->laneCarServerManager:Lcom/calmcar/adas/c/b;

    invoke-virtual {v0}, Lcom/calmcar/adas/c/b;->c()V

    invoke-direct {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->setVPInit()V

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/AdasServer;->startDetectThread()V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/calmcar/adas/apiserver/AdasServer;->initLocationService(Landroid/content/Context;Lcom/calmcar/adas/gps/LocationTickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->detectInitSuccessListener:Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;

    invoke-interface {v0}, Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;->onInitSuccess()V

    :cond_0
    return-void
.end method

.method public unregisterServer()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->netWorkStateReceiver:Lcom/lisence/util/NetWorkStateReceiver;

    :cond_0
    return-void
.end method

.method public updateCarSpeed(D)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/AdasServer;->adasLocManager:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0, p1, p2}, Lcom/calmcar/adas/gps/a;->a(D)V

    :cond_0
    return-void
.end method
