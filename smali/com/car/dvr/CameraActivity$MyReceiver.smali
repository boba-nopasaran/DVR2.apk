.class public Lcom/car/dvr/CameraActivity$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/car/dvr/CameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/car/dvr/CameraActivity$MyReceiver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    sget-boolean v4, Lcom/car/dvr/CameraActivity$MyReceiver;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v11, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_0
    const-string v4, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "DVR.CameraActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "receive action="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_1
    return-void

    :sswitch_0
    const-string v21, "com.car.videorecorder.recording_start"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v21, "com.car.videorecorder.recording_stop"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v21, "com.car.videorecorder.recording_time_changed"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v21, "com.car.dvr.camera_onoff"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_4
    const-string v21, "com.car.dvr.camera_status"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v21, "com.car.gotosleep"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v21, "com.car.adas.ok"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_7
    const-string v21, "com.car.preview.exit"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/4 v4, 0x7

    goto :goto_0

    :sswitch_8
    const-string v21, "com.car.turn.exit"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v4, 0x8

    goto :goto_0

    :sswitch_9
    const-string v21, "com.pano.cali"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_a
    const-string v21, "com.pano.cali.done"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v21, "com.pano.show"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v21, "com.car.monitor.notify"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v21, "com.car.collision"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v4, 0xd

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0x1

    const-wide/16 v22, 0x1f4

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0x2

    const-wide/16 v22, 0x1f4

    move/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_2
    const-string v4, "recording_time"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string v4, "recording_camera"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0x3

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :pswitch_3
    const-string v4, "state"

    const/16 v21, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string v4, "DVR.CameraActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: state="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$2600(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_4

    const-string v4, "DVR.CameraActivity"

    const-string v21, "RemovableCamState no change, skip ..."

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/car/dvr/CameraActivity;->access$2602(Lcom/car/dvr/CameraActivity;I)I

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v21, 0xc

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_4
    const-string v4, "state"

    const/16 v21, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/car/dvr/CameraActivity;->access$2700(Lcom/car/dvr/CameraActivity;I)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v4}, Lcom/car/dvr/CameraActivity;->finish()V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    const v21, 0x7f0d0024

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v4}, Lcom/car/dvr/CameraActivity;->finish()V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    sget v21, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    move/from16 v0, v21

    if-ne v4, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$2800(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    sget v21, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    move/from16 v0, v21

    if-eq v4, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/car/dvr/CameraActivity;->access$2900(Lcom/car/dvr/CameraActivity;ZZ)V

    :cond_6
    const-string v4, "DVR.CameraActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ACTION_TURN_EXIT: mPreviewModeBeforeTurnLeftRight="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/car/dvr/CameraActivity;->access$2800(Lcom/car/dvr/CameraActivity;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$2800(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/car/dvr/CameraActivity;->access$2800(Lcom/car/dvr/CameraActivity;)I

    move-result v21

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/car/dvr/CameraActivity;->access$3000(Lcom/car/dvr/CameraActivity;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$2800(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    sget v21, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    move/from16 v0, v21

    if-ne v4, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/car/dvr/CameraActivity;->access$2900(Lcom/car/dvr/CameraActivity;ZZ)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/car/dvr/CameraActivity;->access$2802(Lcom/car/dvr/CameraActivity;I)I

    goto/16 :goto_1

    :pswitch_9
    const-string v4, "cw"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v4, "ch"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v4, "c2cw"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "c2gh"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "c2bh"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "c2bw"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/PanoView;

    move-result-object v4

    invoke-virtual/range {v4 .. v10}, Lcom/car/dvr/PanoView;->startCali(IIIIII)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    new-instance v21, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    move-object/from16 v21, v0

    const v22, 0x7f0a00dc

    invoke-virtual/range {v21 .. v22}, Lcom/car/dvr/CameraActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, v4, Lcom/car/dvr/CameraActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_9
    const-string v4, "err"

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v4, "DVR.CameraActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Pano cali err="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v4}, Lcom/car/dvr/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a00d8

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-eqz v14, :cond_d

    const/4 v4, -0x1

    if-ne v14, v4, :cond_a

    const v4, 0x7f0a00de

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    const v4, 0x7f0a0078

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v12, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v21, 0x7d3

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_a
    const/4 v4, -0x2

    if-ne v14, v4, :cond_b

    const v4, 0x7f0a00df

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_b
    const/4 v4, -0x3

    if-ne v14, v4, :cond_c

    const v4, 0x7f0a00e0

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_c
    const v4, 0x7f0a00dd

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_d
    const v4, 0x7f0a00e1

    invoke-virtual {v12, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const-string v4, "ctl.stop"

    const-string v21, "monoserv"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ctl.start"

    const-string v21, "monoserv"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3200(Lcom/car/dvr/CameraActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3200(Lcom/car/dvr/CameraActivity;)Landroid/view/View;

    move-result-object v4

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_c
    const-string v4, "operation"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v4, "percent"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v4, "result"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v4, "DVR.CameraActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onReceive: op="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " percent"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " jsonstr"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "capd"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v21, "isLock"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1400(Lcom/car/dvr/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v4

    const v21, 0x7f020054

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    :pswitch_d
    sget-object v4, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v21, "isLock"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/CameraActivity$MyReceiver;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1700(Lcom/car/dvr/CameraActivity;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7c6b7949 -> :sswitch_4
        -0x77db4435 -> :sswitch_3
        -0x6d6ab0d6 -> :sswitch_9
        -0x6d635034 -> :sswitch_b
        -0x5f554bf3 -> :sswitch_5
        -0x5d411815 -> :sswitch_d
        -0x4b466ebc -> :sswitch_c
        -0x2439083a -> :sswitch_a
        0x47f1518 -> :sswitch_0
        0x281ad8a8 -> :sswitch_8
        0x28d3d5cc -> :sswitch_2
        0x2f5b75ce -> :sswitch_6
        0x52b9c88c -> :sswitch_1
        0x5502a42b -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
