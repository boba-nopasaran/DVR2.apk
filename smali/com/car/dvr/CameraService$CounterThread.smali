.class public Lcom/car/dvr/CameraService$CounterThread;
.super Ljava/lang/Thread;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CounterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method public constructor <init>(Lcom/car/dvr/CameraService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/car/dvr/CameraService;->access$102(Lcom/car/dvr/CameraService;I)I

    :goto_0
    invoke-virtual {p0}, Lcom/car/dvr/CameraService$CounterThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v3

    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-nez v3, :cond_0

    if-eqz v0, :cond_8

    :cond_0
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    :goto_1
    sget-boolean v5, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_RECORD:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_7

    const/4 v1, 0x2

    :cond_3
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.car.videorecorder.recording_time_changed"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "recording_time"

    iget-object v6, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v6}, Lcom/car/dvr/CameraService;->access$100(Lcom/car/dvr/CameraService;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "recording_camera"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    iget-object v5, p0, Lcom/car/dvr/CameraService$CounterThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v5}, Lcom/car/dvr/CameraService;->access$108(Lcom/car/dvr/CameraService;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "DVR.CamService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/car/dvr/CameraService$CounterThread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") catch InterruptedException."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    if-eqz v3, :cond_6

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
