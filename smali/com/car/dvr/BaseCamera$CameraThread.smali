.class Lcom/car/dvr/BaseCamera$CameraThread;
.super Landroid/os/HandlerThread;
.source "BaseCamera.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/BaseCamera;


# direct methods
.method public constructor <init>(Lcom/car/dvr/BaseCamera;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14

    const-wide/16 v12, 0x7d0

    const-wide/16 v10, 0x1f4

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-virtual {v4, p1}, Lcom/car/dvr/BaseCamera;->doHandlerMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1500(Lcom/car/dvr/BaseCamera;)Landroid/media/MediaRecorder;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1600(Lcom/car/dvr/BaseCamera;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return v7

    :pswitch_0
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$700(Lcom/car/dvr/BaseCamera;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-virtual {v4}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$800(Lcom/car/dvr/BaseCamera;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$900(Lcom/car/dvr/BaseCamera;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "camera is removed? check again later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Lcom/car/dvr/Util;->delayMs(J)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-virtual {v4}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera avaliable1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    invoke-static {v10, v11}, Lcom/car/dvr/Util;->delayMs(J)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-virtual {v4}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera avaliable2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$800(Lcom/car/dvr/BaseCamera;)Z

    move-result v4

    if-eq v4, v0, :cond_3

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$900(Lcom/car/dvr/BaseCamera;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-virtual {v4, v0}, Lcom/car/dvr/BaseCamera;->changeCameraAvaliable(Z)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1000(Lcom/car/dvr/BaseCamera;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/dvr/BaseCamera$Callback;

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-interface {v1, v4}, Lcom/car/dvr/BaseCamera$Callback;->onCameraAvaliableChanged(Lcom/car/dvr/BaseCamera;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1100(Lcom/car/dvr/BaseCamera;)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "camera REQUEST_RESTART_LIVING_FROM_ONERROR startliving"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$300(Lcom/car/dvr/BaseCamera;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$400(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    iget-object v5, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v5}, Lcom/car/dvr/BaseCamera;->access$400(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Lcom/car/dvr/BaseCamera;->setLiving(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/car/common/CarUtil;->getCPUThermal()I

    move-result v4

    div-int/lit16 v2, v4, 0x3e8

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpuThermal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/car/dvr/BaseCamera;->AutoRecord720PInsteadof1080PThermal:I

    if-le v2, v4, :cond_5

    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1200(Lcom/car/dvr/BaseCamera;)Lcom/car/dvr/BaseCamera$CameraStatus;

    move-result-object v4

    iget-object v4, v4, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget v4, v4, Lcom/car/dvr/VideoInfo;->width:I

    const/16 v5, 0x780

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1200(Lcom/car/dvr/BaseCamera;)Lcom/car/dvr/BaseCamera$CameraStatus;

    move-result-object v4

    iget-object v4, v4, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget v4, v4, Lcom/car/dvr/VideoInfo;->height:I

    const/16 v5, 0x438

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1300(Lcom/car/dvr/BaseCamera;)Lcom/car/dvr/BaseCamera$CameraStatus;

    move-result-object v4

    iget-object v4, v4, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const/16 v5, 0x500

    iput v5, v4, Lcom/car/dvr/VideoInfo;->width:I

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$1300(Lcom/car/dvr/BaseCamera;)Lcom/car/dvr/BaseCamera$CameraStatus;

    move-result-object v4

    iget-object v4, v4, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const/16 v5, 0x2d0

    iput v5, v4, Lcom/car/dvr/VideoInfo;->height:I

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/car/dvr/BaseCamera;->access$1400(Lcom/car/dvr/BaseCamera;I)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpuThermal :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > AutoRecord720PInsteadof1080PThermal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/car/dvr/BaseCamera;->AutoRecord720PInsteadof1080PThermal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "auto switch from 1080P to 720P"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraThread;->this$0:Lcom/car/dvr/BaseCamera;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
