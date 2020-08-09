.class Lcom/car/dvr/CameraService$CameraThread;
.super Landroid/os/HandlerThread;
.source "CameraService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method public constructor <init>(Lcom/car/dvr/CameraService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    const-string v1, "DVR.CamService"

    const-string v2, "MSG_STORAGE_CHECK_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$1800(Lcom/car/dvr/CameraService;)V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1, v2, v6}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_show_alert_sd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
    new-instance v1, Lcom/car/dvr/CameraService$SoundThread;

    iget-object v2, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v6, v3}, Lcom/car/dvr/CameraService$SoundThread;-><init>(Lcom/car/dvr/CameraService;IZ)V

    invoke-virtual {v1}, Lcom/car/dvr/CameraService$SoundThread;->start()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$1900(Lcom/car/dvr/CameraService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f40

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    const-string v1, "DVR.CamService"

    const-string v2, "delay 2s to play tips"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/car/dvr/CameraService;->access$1902(Lcom/car/dvr/CameraService;J)J

    goto :goto_1

    :pswitch_1
    const-string v1, "DVR.CamService"

    const-string v2, "MSG_TIPS_START_RECORD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    const v2, 0x7f0a008c

    invoke-static {v1, v2}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    const-string v1, "DVR.CamService"

    const-string v2, "MSG_CHECK_SDCARD_EXISTS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/car/dvr/CameraService;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/car/dvr/CameraManager;->HEADLESS:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraUtil;->showSDCardNoExistDialog(Landroid/content/Context;)V

    :cond_3
    sget-boolean v1, Lcom/car/dvr/VideoInfo;->AUTO_RECORD:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    const v2, 0x7f0a0095

    invoke-static {v1, v2}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    :cond_4
    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "DVR.CamService"

    const-string v2, "MSG_ACC_ON_FULLSCREEN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$2100(Lcom/car/dvr/CameraService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/car/dvr/CameraService;->access$1202(Lcom/car/dvr/CameraService;J)J

    iget-object v1, p0, Lcom/car/dvr/CameraService$CameraThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$1300(Lcom/car/dvr/CameraService;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
