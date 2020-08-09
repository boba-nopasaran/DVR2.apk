.class Lcom/car/dvr/ADAS/ADAS$5;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Lcom/car/dvr/ADAS/RawPreview$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/ADAS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processData([B)V
    .locals 10

    sget v6, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$400(Lcom/car/dvr/ADAS/ADAS;)Lorg/opencv/core/Mat;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$500(Lcom/car/dvr/ADAS/ADAS;)Lcom/calmcar/adas/apiserver/AdasServer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$400(Lcom/car/dvr/ADAS/ADAS;)Lorg/opencv/core/Mat;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$500(Lcom/car/dvr/ADAS/ADAS;)Lcom/calmcar/adas/apiserver/AdasServer;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$600(Lcom/car/dvr/ADAS/ADAS;)Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/calmcar/adas/apiserver/AdasServer;->processDataAsyn(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v6, "Adas"

    const-string v7, "mKaiYiAdasInterfaceImp null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$700(Lcom/car/dvr/ADAS/ADAS;)I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$100(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getVerifyResult()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v8}, Lcom/car/dvr/ADAS/ADAS;->access$800(Lcom/car/dvr/ADAS/ADAS;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x55

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$100(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->access$802(Lcom/car/dvr/ADAS/ADAS;J)J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$900(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v7

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v8}, Lcom/car/dvr/ADAS/ADAS;->access$1000(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->process([BIII)I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getLdwResults()Lcom/adasplus/data/LdwInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1102(Lcom/car/dvr/ADAS/ADAS;Lcom/adasplus/data/LdwInfo;)Lcom/adasplus/data/LdwInfo;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getFcwResults()Lcom/adasplus/data/FcwInfo;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1202(Lcom/car/dvr/ADAS/ADAS;Lcom/adasplus/data/FcwInfo;)Lcom/adasplus/data/FcwInfo;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1302(Lcom/car/dvr/ADAS/ADAS;Lcom/adasplus/data/AdasConfig;)Lcom/adasplus/data/AdasConfig;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getAdasSpeed()F

    move-result v7

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1402(Lcom/car/dvr/ADAS/ADAS;F)F

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1508(Lcom/car/dvr/ADAS/ADAS;)J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1608(Lcom/car/dvr/ADAS/ADAS;)J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1100(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/LdwInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1100(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/LdwInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1100(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/LdwInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    :cond_3
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1700(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1500(Lcom/car/dvr/ADAS/ADAS;)J

    move-result-wide v6

    const-wide/16 v8, 0x14

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->access$1502(Lcom/car/dvr/ADAS/ADAS;J)J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1702(Lcom/car/dvr/ADAS/ADAS;I)I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1400(Lcom/car/dvr/ADAS/ADAS;)F

    move-result v6

    const v7, 0x41055556

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v7, "adas_report2"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, v7, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00cb

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    new-instance v4, Landroid/content/Intent;

    const-string v6, "action.adas.lane.departure"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "state"

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v7}, Lcom/car/dvr/ADAS/ADAS;->access$1100(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/LdwInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1600(Lcom/car/dvr/ADAS/ADAS;)J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x41c80000    # 25.0f

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v8}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/adasplus/data/CarInfo;->getT()F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v8}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/adasplus/data/CarInfo;->getT()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->access$1602(Lcom/car/dvr/ADAS/ADAS;J)J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1400(Lcom/car/dvr/ADAS/ADAS;)F

    move-result v6

    const v7, 0x40b1c71d

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v7, "adas_report"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, v7, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    new-instance v4, Landroid/content/Intent;

    const-string v6, "action.forward.collision"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1802(Lcom/car/dvr/ADAS/ADAS;I)I

    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getStopGoResults()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1900(Lcom/car/dvr/ADAS/ADAS;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2000(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$2002(Lcom/car/dvr/ADAS/ADAS;I)I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v7, "adas_report3"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v7, v7, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const v8, 0x7f0a00cc

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    new-instance v4, Landroid/content/Intent;

    const-string v6, "action.forward.vehicle.moving"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_7
    :goto_3
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2100(Lcom/car/dvr/ADAS/ADAS;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2200(Lcom/car/dvr/ADAS/ADAS;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v0, Lcom/car/dvr/ADAS/DrawInfo;

    invoke-direct {v0}, Lcom/car/dvr/ADAS/DrawInfo;-><init>()V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1100(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/LdwInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/car/dvr/ADAS/DrawInfo;->setLdwResults(Lcom/adasplus/data/LdwInfo;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1300(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/AdasConfig;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/car/dvr/ADAS/DrawInfo;->setConfig(Lcom/adasplus/data/AdasConfig;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/car/dvr/ADAS/DrawInfo;->setFcwResults(Lcom/adasplus/data/FcwInfo;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandlerNoWait()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v6, "DVR.ADAS"

    const-string v8, "SVDraw\'s handler is null, do nothing"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_8
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1702(Lcom/car/dvr/ADAS/ADAS;I)I

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    :cond_a
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$1802(Lcom/car/dvr/ADAS/ADAS;I)I

    goto/16 :goto_2

    :cond_b
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->access$2002(Lcom/car/dvr/ADAS/ADAS;I)I

    goto/16 :goto_3

    :cond_c
    :try_start_1
    sget-boolean v6, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x2

    iput v6, v5, Landroid/os/Message;->what:I

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    :goto_4
    monitor-exit v7

    goto/16 :goto_0

    :cond_e
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/4 v6, 0x1

    iput v6, v5, Landroid/os/Message;->what:I

    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$5;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
