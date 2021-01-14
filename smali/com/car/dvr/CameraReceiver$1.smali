.class Lcom/car/dvr/CameraReceiver$1;
.super Landroid/os/Handler;
.source "CameraReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraReceiver;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraReceiver;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 73
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 75
    :pswitch_0
    invoke-static {}, Lcom/car/dvr/CameraReceiver;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v2, v2, Lcom/car/dvr/CameraReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/dvr/Util;->is3rdBackApkInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v2, v2, Lcom/car/dvr/CameraReceiver;->mContext:Landroid/content/Context;

    const-string v3, "vr_back_enable"

    invoke-static {v2, v3, v4}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 78
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "VR back exit ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->sendCarBackActivityStatusBroadcast(Z)V

    .line 84
    :goto_1
    invoke-static {v5}, Lcom/car/dvr/CameraReceiver;->access$002(Z)Z

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-boolean v2, v2, Lcom/car/dvr/CameraReceiver;->mNeedRecover:Z

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v2, v2, Lcom/car/dvr/CameraReceiver;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    invoke-virtual {v2, v4}, Lcom/car/common/CarServiceImpl;->screenRecover(Z)V

    .line 88
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iput-boolean v5, v2, Lcom/car/dvr/CameraReceiver;->mNeedRecover:Z

    .line 90
    :cond_2
    invoke-static {v5}, Lcom/car/dvr/CameraReceiver;->access$202(Z)Z

    goto :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v3, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v3, v3, Lcom/car/dvr/CameraReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v5}, Lcom/car/dvr/CameraReceiver;->access$100(Lcom/car/dvr/CameraReceiver;Landroid/content/Context;I)V

    .line 82
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "CameraActivity is forground, change mode back!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :pswitch_1

#by boba 07.01.2020
#delay for P->D->P
iget-object v3, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;
iget-object v2, v3, Lcom/car/dvr/CameraReceiver;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;
invoke-virtual {v2, v4, v4, v5}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z
move-result v2
iput-boolean v2, v3, Lcom/car/dvr/CameraReceiver;->mNeedRecover:Z	
	
    invoke-static {}, Lcom/car/dvr/CameraReceiver;->getCarBackStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 96
    .local v0, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/car/dvr/CameraReceiver;->access$002(Z)Z

    .line 98
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/dvr/DvrApplication;->getCameraService()Lcom/car/dvr/CameraService;

    move-result-object v1

    .line 99
    .local v1, "service":Lcom/car/dvr/CameraService;
    if-nez v1, :cond_4

    .line 100
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "CameraService is disconnected, delay 1s to re-check car back status."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 102
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 107
    :cond_4
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 108
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "CAMERA_BACK is closed, delay 2s to re-check car back status."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 110
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 115
    :cond_5
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v2, v2, Lcom/car/dvr/CameraReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/car/dvr/Util;->is3rdBackApkInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    iget-object v2, v2, Lcom/car/dvr/CameraReceiver;->mContext:Landroid/content/Context;

    const-string v3, "vr_back_enable"

    invoke-static {v2, v3, v4}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 117
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isRecordInit(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 118
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "CAMERA_BACK is not record, delay 1s to re-check car back status."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 120
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2}, Lcom/car/dvr/CameraReceiver;->access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 124
    :cond_6
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "VR back start ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->sendCarBackActivityStatusBroadcast(Z)V

    goto/16 :goto_0

    .line 127
    :cond_7
    invoke-static {v0}, Lcom/car/dvr/CameraReceiver;->isCameraActivityRunningForeground(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 128
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "CameraActivity is not forground, start CameraActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2, v0}, Lcom/car/dvr/CameraReceiver;->access$400(Lcom/car/dvr/CameraReceiver;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 131
    :cond_8
    const-string v2, "DVR.CameraReceiver"

    const-string v3, "CameraActivity is forground, just change mode!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/car/dvr/CameraReceiver$1;->this$0:Lcom/car/dvr/CameraReceiver;

    invoke-static {v2, v0, v4}, Lcom/car/dvr/CameraReceiver;->access$100(Lcom/car/dvr/CameraReceiver;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
