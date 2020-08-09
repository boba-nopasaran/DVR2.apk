.class Lcom/car/dvr/CameraService$StorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method private constructor <init>(Lcom/car/dvr/CameraService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/CameraService;Lcom/car/dvr/CameraService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraService$StorageReceiver;-><init>(Lcom/car/dvr/CameraService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const v9, 0x7f0a009a

    const/4 v8, 0x3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "DVR.CamService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received sdcard action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$1500(Lcom/car/dvr/CameraService;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "DVR.CamService"

    const-string v5, "exists /norecord.tip, don\'t start recording"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/car/common/CarPath;->init()V

    sget-boolean v4, Lcom/car/dvr/VideoInfo;->AUTO_RECORD:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->startRecording()V

    :cond_3
    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$1600(Lcom/car/dvr/CameraService;)V

    goto :goto_1

    :cond_4
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_5
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v4}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "DVR.CamService"

    const-string v5, "stop SDCard Recording"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->stopRecording()V

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_7
    const-string v4, "sys.mount.volume.failed"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "DVR.CamService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdcard mount failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sys.mount.volume.failed"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v9}, Lcom/car/dvr/CameraUtil;->showFormatSDCardDialog(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/car/dvr/CameraService$StorageReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4, v9}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method
