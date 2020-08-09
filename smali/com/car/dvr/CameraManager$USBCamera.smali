.class public final Lcom/car/dvr/CameraManager$USBCamera;
.super Lcom/car/dvr/BaseCamera;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "USBCamera"
.end annotation


# static fields
.field private static final MSG_CHECK_REVERSE_GEAR:I = 0x3e9

.field private static final MSG_CHECK_TURN_SIGNAL:I = 0x3eb

.field private static final MSG_DOUBLE_CHECK_REVERSE_GEAR:I = 0x3ea

.field private static final MSG_USB_CAMERA_POWER_RESET:I = 0x3e8

.field private static mIsTurningLeft:Z

.field private static mIsTurningRight:Z

.field private static mSignalLeftCnt:I

.field private static mSignalRightCnt:I

.field private static mUsbReverseGearBak:Z

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/CameraManager$USBCamera;->mUsbReverseGearBak:Z

    sput-boolean v0, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningLeft:Z

    sput-boolean v0, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningRight:Z

    sput v0, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    sput v0, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraManager$USBCamera;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v4, 0xfa0

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/car/dvr/BaseCamera$CameraClass;->USB:Lcom/car/dvr/BaseCamera$CameraClass;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/car/dvr/BaseCamera;-><init>(Landroid/content/Context;ILcom/car/dvr/BaseCamera$CameraClass;Z)V

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isUsbProtocolBack()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    if-ne p1, v0, :cond_1

    const-string v0, "DVR.CameraManager"

    const-string v1, "to check usb reverse gear."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string v0, "DVR.CameraManager"

    const-string v1, "to check usb turn signal."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    sput-object v0, Lcom/car/dvr/CameraManager$USBCamera;->sHandler:Landroid/os/Handler;

    return-void

    :cond_1
    const-string v0, "DVR.CameraManager"

    const-string v1, "never check usb reverse gear."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static exists(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isLeftCameraExist()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isRightCameraExist()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v0

    goto :goto_0
.end method

.method public static exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    const-string v4, "persist.usb.mode"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "device"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "device"

    invoke-static {v4}, Lcom/car/dvr/CameraManager;->access$002(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/car/dvr/VideoInfo;->FCAM_FORCE_FIXED_720P:Z

    if-nez v4, :cond_0

    sput-boolean v1, Lcom/car/dvr/VideoInfo;->FCAM_FIXED_720P:Z

    :cond_0
    return v1

    :cond_1
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "DVR.CameraManager"

    const-string v5, "read camera status error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isBackCameraExist()Z
    .locals 2

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "sys.usb.camnode"

    const-string v1, "/dev/video0"

    invoke-static {v0, v1}, Lcom/car/dvr/CameraManager$USBCamera;->exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLeftCameraExist()Z
    .locals 2

    const-string v0, "sys.usb.camnode.l"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/CameraManager$USBCamera;->exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRightCameraExist()Z
    .locals 2

    const-string v0, "sys.usb.camnode.r"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/CameraManager$USBCamera;->exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTurning()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningLeft:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningRight:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUsbProtocolBack()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ro.usb.carback"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "DVR.CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.usb.carback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    const-string v4, "ro.hw.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    const-string v4, "cm84"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    const-string v4, "T84"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/car/common/CarUtil;->isMT6735Platform()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6753Platform()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method public static powerOn(Z)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "/sys/power/usb_switch_control"

    const-string v1, "host"

    invoke-static {v0, v1}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/sys/power/usb_switch_control"

    const-string v1, "device"

    invoke-static {v0, v1}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendCarBackStatusBroadcast(I)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.carback_state"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/car/dvr/CameraManager;->access$100()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendCarTurnStatusBroadcast(IZ)V
    .locals 5

    const-string v2, "DVR.CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "car turn: camID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isTurning="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.trun"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.car.trun_camid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.car.trun_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/car/dvr/CameraManager;->access$100()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected doHandlerMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, -0x8

    const/16 v9, -0x64

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v7, Lcom/car/dvr/CameraManager$USBCamera;->sHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/car/dvr/CameraManager$USBCamera;->exists(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/car/dvr/CameraManager$USBCamera;->isSleeping()Z

    move-result v2

    const-string v7, "DVR.CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_USB_CAMERA_POWER_RESET, camId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", USB_MODE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$000()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isSleeping="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v2, :cond_0

    invoke-static {v6}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Lcom/car/dvr/Util;->delayMs(J)V

    invoke-static {v5}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/car/dvr/CameraService;->isReverseGear()Z

    move-result v4

    sget-boolean v5, Lcom/car/dvr/CameraManager$USBCamera;->mUsbReverseGearBak:Z

    if-eq v4, v5, :cond_1

    const-string v5, "DVR.CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_CHECK_REVERSE_GEAR("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/car/dvr/CameraManager;->REVERSE_GEAR_DELAY_MS:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), isCarBack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    sget v7, Lcom/car/dvr/CameraManager;->REVERSE_GEAR_DELAY_MS:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v5, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraService;->isReverseGear()Z

    move-result v4

    sget-boolean v7, Lcom/car/dvr/CameraManager$USBCamera;->mUsbReverseGearBak:Z

    if-eq v4, v7, :cond_0

    const-string v7, "DVR.CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_DOUBLE_CHECK_REVERSE_GEAR, isCarBack: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/car/dvr/CameraManager$USBCamera;->mUsbReverseGearBak:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-direct {p0, v5}, Lcom/car/dvr/CameraManager$USBCamera;->sendCarBackStatusBroadcast(I)V

    goto/16 :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isLeftCameraExist()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "sys.usb.camnode.l"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/car/dvr/CameraService;->getTurnSignal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    if-gez v7, :cond_3

    sput v6, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    :cond_3
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    :cond_4
    :goto_2
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isRightCameraExist()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "sys.usb.camnode.r"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/car/dvr/CameraService;->getTurnSignal(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    if-gez v7, :cond_5

    sput v6, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    :cond_5
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    :cond_6
    :goto_3
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    if-lez v7, :cond_7

    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    if-lez v7, :cond_7

    sput v9, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    sput v9, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    :cond_7
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    if-lt v7, v11, :cond_8

    sget-boolean v7, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningLeft:Z

    if-nez v7, :cond_8

    sput-boolean v5, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningLeft:Z

    const/4 v7, 0x3

    invoke-direct {p0, v7, v5}, Lcom/car/dvr/CameraManager$USBCamera;->sendCarTurnStatusBroadcast(IZ)V

    :cond_8
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    if-ge v7, v10, :cond_9

    sget-boolean v7, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningLeft:Z

    if-eqz v7, :cond_9

    sput-boolean v6, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningLeft:Z

    const/4 v7, 0x3

    invoke-direct {p0, v7, v6}, Lcom/car/dvr/CameraManager$USBCamera;->sendCarTurnStatusBroadcast(IZ)V

    :cond_9
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    if-lt v7, v11, :cond_a

    sget-boolean v7, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningRight:Z

    if-nez v7, :cond_a

    sput-boolean v5, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningRight:Z

    const/4 v7, 0x4

    invoke-direct {p0, v7, v5}, Lcom/car/dvr/CameraManager$USBCamera;->sendCarTurnStatusBroadcast(IZ)V

    :cond_a
    sget v5, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    if-ge v5, v10, :cond_b

    sget-boolean v5, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningRight:Z

    if-eqz v5, :cond_b

    sput-boolean v6, Lcom/car/dvr/CameraManager$USBCamera;->mIsTurningRight:Z

    const/4 v5, 0x4

    invoke-direct {p0, v5, v6}, Lcom/car/dvr/CameraManager$USBCamera;->sendCarTurnStatusBroadcast(IZ)V

    :cond_b
    iget-object v5, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraManager$USBCamera;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    sget v7, Lcom/car/dvr/CameraManager;->TURN_SIGNAL_INTERVAL_MS:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    if-lez v7, :cond_d

    sput v6, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    :cond_d
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalLeftCnt:I

    goto/16 :goto_2

    :cond_e
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    if-lez v7, :cond_f

    sput v6, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    :cond_f
    sget v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/car/dvr/CameraManager$USBCamera;->mSignalRightCnt:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected enablePower(Z)V
    .locals 2

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    invoke-super {p0, p1}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    goto :goto_0
.end method

.method public isAvaliable()Z
    .locals 8

    invoke-virtual {p0}, Lcom/car/dvr/CameraManager$USBCamera;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/car/dvr/CameraManager$USBCamera;->exists(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/car/dvr/CameraManager$USBCamera;->isSleeping()Z

    move-result v2

    if-nez v1, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    sget-object v4, Lcom/car/dvr/CameraManager$USBCamera;->sHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/car/dvr/CameraManager$USBCamera;->sHandler:Landroid/os/Handler;

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    sget-object v4, Lcom/car/dvr/CameraManager$USBCamera;->sHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return v1
.end method
