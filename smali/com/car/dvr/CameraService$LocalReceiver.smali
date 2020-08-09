.class Lcom/car/dvr/CameraService$LocalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalReceiver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/car/dvr/CameraService$LocalReceiver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/car/dvr/CameraService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/CameraService;Lcom/car/dvr/CameraService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraService$LocalReceiver;-><init>(Lcom/car/dvr/CameraService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "receive action="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/car/dvr/CameraService$LocalReceiver;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v11, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const-string v4, "com.car.dvr.camera_onoff"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "state"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "receive action="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", state="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v4, "com.car.voice.kanquanbu"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    new-instance v21, Landroid/content/Intent;

    invoke-static {}, Lcom/car/dvr/CameraService;->access$300()Lcom/car/dvr/CameraService;

    move-result-object v4

    const-class v34, Lcom/car/dvr/CameraActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x30200000

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "camera_name"

    const-string v34, "all"

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "camera_fullscreen"

    const/16 v34, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/car/dvr/CameraService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v4, "com.car.collision"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v34, "isLock"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_4
    const-string v4, "com.car.monitor.notify"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "operation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v4, "percent"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v4, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "onReceive: op="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " percent"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " jsonstr"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "capd"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v34, "isLock"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_5
    const-string v4, "com.car.gotosleep"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->suspend()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$600(Lcom/car/dvr/CameraService;)Lcom/car/dvr/DMS/TianTongDMS;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$600(Lcom/car/dvr/CameraService;)Lcom/car/dvr/DMS/TianTongDMS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/DMS/TianTongDMS;->deinit()V

    goto/16 :goto_0

    :cond_6
    const-string v4, "com.car.ext.stoprec"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->pause()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "screen off. frontRecording="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    move-object/from16 v35, v0

    sget v36, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual/range {v35 .. v36}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", backRecording="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    move-object/from16 v35, v0

    sget v36, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual/range {v35 .. v36}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static/range {p2 .. p2}, Lcom/car/dvr/CameraService;->access$700(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "com.car.ext.startrec"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    const-string v4, "sys.car.sleep"

    const-string v34, "0"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sys.dvr.slow"

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "sys.dvr.slow"

    const-string v34, "0"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->stopRecording()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->resume()V

    sget-boolean v4, Lcom/car/dvr/VideoInfo;->AUTO_RECORD:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->startRecording()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v34, 0x3

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v34, 0x3

    const-wide/32 v36, 0xdbba0

    move/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    const-string v4, "com.car.btphone.pause.mic"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/car/dvr/CameraManager;->setMicUsable(Z)V

    goto/16 :goto_0

    :cond_d
    const-string v4, "com.car.btphone.resume.mic"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Lcom/car/dvr/CameraManager;->setMicUsable(Z)V

    goto/16 :goto_0

    :cond_e
    const-string v4, "action_show_alert_sd"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/car/dvr/CameraUtil;->showSDCardFullDialog(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    const v34, 0x7f0a0098

    move/from16 v0, v34

    invoke-static {v4, v0}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "action_show_format_sd"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/car/dvr/CameraUtil;->showFormatDialog(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    const v34, 0x7f0a0099

    move/from16 v0, v34

    invoke-static {v4, v0}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_10
    const-string v4, "com.car.writestorage.slow"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget v4, Lcom/car/dvr/CameraService;->NO_AUTO_FORMAT:I

    const/16 v34, 0x2

    move/from16 v0, v34

    if-ne v4, v0, :cond_11

    const-string v4, "DVR.CamService"

    const-string v34, "ro.dvr.no.auto.format=2, no dialog and no auto format"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->stopRecording()V

    const v4, 0x7f0a009a

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/car/dvr/CameraUtil;->showFormatSDCardDialog(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    const v34, 0x7f0a009a

    move/from16 v0, v34

    invoke-static {v4, v0}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_12
    const-string v4, "com.car.writestorage.read_only"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->stopRecording()V

    const-string v4, "/sys/bus/platform/drivers/mt-gpio/tfctl"

    const-string v34, "1"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const-string v4, "com.car.camera.living"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-static {v4, v0}, Lcom/car/dvr/CameraService;->access$800(Lcom/car/dvr/CameraService;I)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "DVR.CamService"

    const-string v34, "Not mobile network, just return"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    const-string v4, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v4, "action"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const-string v4, "camid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4, v5}, Lcom/car/dvr/CameraService;->access$900(Lcom/car/dvr/CameraService;I)Z

    move-result v32

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "cameraid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " status = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-static {v4, v0, v1, v5}, Lcom/car/dvr/CameraService;->access$1000(Lcom/car/dvr/CameraService;Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_16
    const-string v4, "com.car.record.file"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "duration"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Recorder report "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " duration "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const-string v4, "com.car.delete.file"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Recorder report "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " Deleted "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    const-string v4, "com.car.camera.living.callback"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "result"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    const-string v4, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "camid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "errno"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v4, "bitrate"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-nez v28, :cond_1a

    const-string v34, "DVR.CamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Living report start: "

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-nez v17, :cond_19

    const-string v4, "OK"

    :goto_1
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Failed:"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1a
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_1c

    const-string v34, "DVR.CamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Living report stop: "

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-nez v17, :cond_1b

    const-string v4, "OK"

    :goto_2
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Failed:"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1c
    const/4 v4, 0x2

    move/from16 v0, v28

    if-ne v0, v4, :cond_1e

    const-string v34, "DVR.CamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Living report error: "

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-nez v17, :cond_1d

    const-string v4, "OK"

    :goto_3
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Failed:"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_1e
    const/4 v4, 0x3

    move/from16 v0, v28

    if-ne v0, v4, :cond_1f

    const-string v4, "DVR.CamService"

    const-string v34, "Living report start living OK"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    const/4 v4, 0x4

    move/from16 v0, v28

    if-ne v0, v4, :cond_1

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "cameraid: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " bitrate: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_20
    const-string v4, "com.car.camera.snapshot"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "camid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "seqid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "starttime"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "endtime"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "compress"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v4, "picture"

    const/16 v34, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const/4 v4, 0x2

    if-gt v5, v4, :cond_21

    if-ltz v5, :cond_21

    if-ltz v7, :cond_21

    if-le v7, v8, :cond_22

    if-nez v10, :cond_22

    :cond_21
    new-instance v20, Landroid/content/Intent;

    const-string v4, "com.car.camera.snapshot.callback"

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "ret"

    const/16 v34, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "error"

    const-string v34, "Bad Parameter"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    sget-object v34, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_22
    sub-int v4, v8, v7

    const/16 v34, 0x3c

    move/from16 v0, v34

    if-le v4, v0, :cond_23

    add-int/lit8 v8, v7, 0x3c

    :cond_23
    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "camid ="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " seqid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " starttime="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " endtime="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " compress="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " picture="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static/range {v4 .. v10}, Lcom/car/dvr/CameraService;->access$1100(Lcom/car/dvr/CameraService;IIIIZZ)V

    goto/16 :goto_0

    :cond_24
    const-string v4, "com.car.camera.snapshot.callback"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "ret"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    const-string v4, "seqid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v4, "path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ret = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " seqid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " error = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " path = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_25
    const-string v4, "com.remote.video.playback.callback"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "ret"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    const-string v4, "camid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v29, :cond_26

    const-string v4, "DVR.CamService"

    const-string v34, "WebCam_ remote file playback finish"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_26
    const/4 v4, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_27

    const-string v4, "DVR.CamService"

    const-string v34, "WebCam_ can\'t find record files"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_27
    const/4 v4, -0x2

    move/from16 v0, v29

    if-ne v0, v4, :cond_1

    const-string v4, "DVR.CamService"

    const-string v34, "WebCam_ need more params"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_28
    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Lcom/car/dvr/CameraService;->access$1202(Lcom/car/dvr/CameraService;J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$1300(Lcom/car/dvr/CameraService;)V

    goto/16 :goto_0

    :cond_29
    const-string v4, "com.car.trun"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "com.car.trun_camid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v4, "com.car.trun_state"

    const/16 v34, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string v4, "DVR.CamService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "car turn: camID="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", isTurning="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ", isRunningForeground="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isRunningForeground()Z

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_2f

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isRunningForeground()Z

    move-result v4

    if-eqz v4, :cond_2c

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v13, v4, :cond_2b

    invoke-static {}, Lcom/car/dvr/CameraActivity;->getInstance()Lcom/car/dvr/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraActivity;->turnLeft()V

    :cond_2a
    :goto_4
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v13, v4, :cond_2e

    const v4, 0x7f0a00a0

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_2b
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v13, v4, :cond_2a

    invoke-static {}, Lcom/car/dvr/CameraActivity;->getInstance()Lcom/car/dvr/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraActivity;->turnRight()V

    goto :goto_4

    :cond_2c
    new-instance v23, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x30200000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v14, Landroid/content/ComponentName;

    const-string v4, "com.car.dvr"

    const-string v34, "com.car.dvr.CameraActivity"

    move-object/from16 v0, v34

    invoke-direct {v14, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v34, "camera_name"

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v13, v4, :cond_2d

    const-string v4, "left"

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "camera_fullscreen"

    const/16 v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/car/dvr/CameraService;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :cond_2d
    const-string v4, "right"

    goto :goto_5

    :cond_2e
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v13, v4, :cond_1

    const v4, 0x7f0a00a1

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_2f
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isRunningForeground()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/car/dvr/CameraActivity;->getBootMode()I

    move-result v4

    const/16 v34, 0x2

    move/from16 v0, v34

    if-ne v4, v0, :cond_30

    const-string v4, "DVR.CamService"

    const-string v34, "CameraActivity boot from turn, finish CameraActivity"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    new-instance v34, Landroid/content/Intent;

    const-string v35, "com.car.preview.exit"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v35, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_30
    const-string v4, "DVR.CamService"

    const-string v34, "CameraActivity boot from normal mode, exit turn UI"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    new-instance v34, Landroid/content/Intent;

    const-string v35, "com.car.turn.exit"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v35, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_31
    const-string v4, "com.car.camera.switchfile"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "camid"

    const/16 v34, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4, v5}, Lcom/car/dvr/CameraService;->access$1400(Lcom/car/dvr/CameraService;I)V

    goto/16 :goto_0

    :cond_32
    const-string v4, "com.car.dms.authorized"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    const-string v4, "com.car.dvr.restart.recording"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_33
    const-string v4, "DVR.CamService"

    const-string v34, "restart recording ..."

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->stopRecording()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraService$LocalReceiver;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v4}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->startRecording()V

    goto/16 :goto_0
.end method
