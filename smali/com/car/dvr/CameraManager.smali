.class public Lcom/car/dvr/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/CameraManager$BuildinCamera;,
        Lcom/car/dvr/CameraManager$CVBSCamera;,
        Lcom/car/dvr/CameraManager$USBCamera;
    }
.end annotation


# static fields
.field public static final ACTION_CAMERA_ONOFF:Ljava/lang/String; = "com.car.dvr.camera_onoff"

.field public static final ACTION_CHANGE_CAMERA_STATUS:Ljava/lang/String; = "com.car.dvr.camera_status"

.field public static final ACTION_GO_TO_SLEEP:Ljava/lang/String; = "com.car.gotosleep"

.field private static final AUTO_MODE:Ljava/lang/String; = "checkwhenboot"

.field public static final CAMERA_ALL:I = 0xffff

.field public static final CAMERA_BUILDIN1:I

.field public static final CAMERA_BUILDIN2:I = 0x1

.field public static final CAMERA_CVBS:I

.field public static final CAMERA_LEFT:I = 0x3

.field public static final CAMERA_RIGHT:I = 0x4

.field public static final CAMERA_UNKNOWN:I = -0x1

.field public static final CAMERA_USB:I

.field private static final DEVICE_MODE:Ljava/lang/String; = "device"

.field public static final EXTRA_AUTO_START:Ljava/lang/String; = "auto_start"

.field public static final EXTRA_ONOFF:Ljava/lang/String; = "state"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "state"

.field public static final HEADLESS:Z

.field private static final HOST_MODE:Ljava/lang/String; = "host"

.field public static final HW_SUPPORT_CVBS:Z

.field private static final INSIDE_CAMERA_TYPE:Ljava/lang/String;

.field private static final LAST_REMOVABLE_CAMERA:Ljava/lang/String; = "last_removable_camera"

.field private static final REAR_CAMERA_TYPE:Ljava/lang/String;

.field public static final REVERSE_GEAR_DELAY_MS:I

.field private static final TAG:Ljava/lang/String; = "DVR.CameraManager"

.field public static final TURN_SIGNAL_INTERVAL_MS:I

.field private static USB_MODE:Ljava/lang/String;

.field public static final USB_NO_NODE_RESET_DELAY:I

.field public static final USB_REDO_POWER_ON_INTERVAL:I

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/car/dvr/CameraManager;

.field private static sLastRemovableCamera:I


# instance fields
.field private final mCameraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/BaseCamera;",
            ">;"
        }
    .end annotation
.end field

.field mLastReportTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-wide/16 v12, 0x3e8

    const/4 v10, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v3, :cond_4

    const/4 v3, -0x2

    :goto_0
    sput v3, Lcom/car/dvr/CameraManager;->CAMERA_BUILDIN1:I

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6582Platform()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_1
    sput v3, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6582Platform()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    :goto_2
    sput v3, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    const-string v3, "ro.rear.camera.type"

    const-string v7, ""

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "ro.inside.camera.type"

    const-string v7, ""

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "ro.product.class"

    const-string v7, ""

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "headless"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/car/dvr/CameraManager;->HEADLESS:Z

    const-string v3, "persist.turn.signal.interval.ms"

    const/16 v7, 0x8c

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/car/dvr/CameraManager;->TURN_SIGNAL_INTERVAL_MS:I

    const-string v3, "persist.reverse.gear.delay.ms"

    const/16 v7, 0xc8

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/car/dvr/CameraManager;->REVERSE_GEAR_DELAY_MS:I

    const-string v3, "persist.usb.redo.power.on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    const-string v3, "persist.usb.no.node.reset"

    const/16 v7, 0x1388

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/car/dvr/CameraManager;->USB_NO_NODE_RESET_DELAY:I

    invoke-static {}, Lcom/car/dvr/CameraManager;->hardwareSupportsCVBS()Z

    move-result v3

    sput-boolean v3, Lcom/car/dvr/CameraManager;->HW_SUPPORT_CVBS:Z

    invoke-static {}, Lcom/car/dvr/CameraManager;->getLastRemovableCamera()I

    move-result v3

    sput v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    const-string v7, "persist.usb.mode"

    sget-boolean v3, Lcom/car/dvr/CameraManager;->HEADLESS:Z

    if-eqz v3, :cond_9

    const-string v3, "checkwhenboot"

    :goto_3
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v3, "DVR.CameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HW_SUPPORT_CVBS="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/car/dvr/CameraManager;->HW_SUPPORT_CVBS:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", USB_REDO_POWER_ON_INTERVAL="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", USB_NO_NODE_RESET_DELAY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/car/dvr/CameraManager;->USB_NO_NODE_RESET_DELAY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/car/dvr/CameraManager;->HW_SUPPORT_CVBS:Z

    if-eqz v3, :cond_0

    const-string v3, "sys.camera.cvbs.plugout"

    const-string v7, "0"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v7, "host"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v7, "checkwhenboot"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_1
    sget v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    if-eq v3, v5, :cond_2

    sget v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    sget v5, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    if-ge v3, v5, :cond_2

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v3, :cond_c

    :cond_2
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v3

    if-nez v3, :cond_3

    sget v3, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    if-lez v3, :cond_3

    invoke-static {v6}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    sget v3, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    int-to-long v8, v3

    invoke-static {v8, v9}, Lcom/car/dvr/Util;->delayMs(J)V

    invoke-static {v4}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    sget v3, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    int-to-long v8, v3

    invoke-static {v8, v9}, Lcom/car/dvr/Util;->delayMs(J)V

    :cond_3
    invoke-static {v6}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v3

    if-nez v3, :cond_b

    add-int/lit8 v1, v0, 0x1

    if-ge v0, v10, :cond_a

    const-string v3, "DVR.CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waiting for back USB Camera poweron complete, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v13}, Lcom/car/dvr/Util;->delayMs(J)V

    move v0, v1

    goto :goto_4

    :cond_4
    move v3, v4

    goto/16 :goto_0

    :cond_5
    sget-boolean v3, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v3, :cond_7

    :cond_6
    move v3, v4

    goto/16 :goto_1

    :cond_7
    move v3, v6

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_9
    const-string v3, "host"

    goto/16 :goto_3

    :cond_a
    move v0, v1

    :cond_b
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v2

    const-string v3, "DVR.CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USBCamera.isBackCameraExist="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v5, "checkwhenboot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_e

    const-string v3, "DVR.CameraManager"

    const-string v4, "set USB_MODE = HOST_MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "host"

    sput-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    :cond_c
    :goto_5
    const-string v3, "usb"

    const-string v4, "ro.cvbs.power.pin"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v6}, Lcom/car/dvr/CameraManager$CVBSCamera;->powerOn(Z)V

    :cond_d
    sget-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v4, "host"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v3, :cond_11

    invoke-static {v6}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    const/4 v0, 0x0

    :goto_6
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isLeftCameraExist()Z

    move-result v3

    if-nez v3, :cond_10

    add-int/lit8 v1, v0, 0x1

    if-ge v0, v10, :cond_f

    const-string v3, "DVR.CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "waiting for left/right USB Camera poweron complete, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v13}, Lcom/car/dvr/Util;->delayMs(J)V

    move v0, v1

    goto :goto_6

    :cond_e
    const-string v3, "DVR.CameraManager"

    const-string v5, "set USB_MODE = DEVICE_MODE"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "device"

    sput-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    invoke-static {v4}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    goto :goto_5

    :cond_f
    move v0, v1

    :cond_10
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isLeftCameraExist()Z

    move-result v2

    const-string v3, "DVR.CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USBCamera.isLeftCameraExist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/car/dvr/CameraManager;->mLastReportTime:J

    sput-object p1, Lcom/car/dvr/CameraManager;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/car/dvr/CameraManager;->mInstance:Lcom/car/dvr/CameraManager;

    invoke-direct {p0}, Lcom/car/dvr/CameraManager;->loadCameras()V

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->AUTO_RECORD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/CameraManager;->startRecording()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getBackCameraId()I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, -0x1

    sget-object v2, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "cvbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DVR.CameraManager"

    const-string v3, "***** unknown ro.rear.camera.type *****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_2
    sget v2, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    if-eq v2, v1, :cond_3

    sget v0, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    :cond_3
    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    :cond_4
    :goto_1
    sget-boolean v1, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v1, :cond_5

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    :cond_5
    const-string v1, "DVR.CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    goto :goto_1
.end method

.method public static getInsideCameraId()I
    .locals 4

    const/4 v0, -0x1

    sget-object v1, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v2, "build-in2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "DVR.CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInsideCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget-object v1, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v2, "cvbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraManager;->mInstance:Lcom/car/dvr/CameraManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/dvr/CameraManager;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraManager;-><init>(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/car/dvr/CameraManager;->mInstance:Lcom/car/dvr/CameraManager;

    return-object v0
.end method

.method public static getLastRemovableCamera()I
    .locals 6

    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_removable_camera"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "DVR.CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get LAST_REMOVABLE_CAMERA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static hardwareSupportsCVBS()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/car/common/CarUtil;->isMT6735Platform()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6753Platform()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/car/common/CarUtil;->isMT3562Platform()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/car/dvr/VideoInfo;->IS720CVBS:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/car/dvr/VideoInfo;->IS1080CVBS:Z

    if-nez v4, :cond_0

    const-string v4, "ro.hw.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "JLK_V2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/proc/driver/camera_info"

    invoke-static {v4}, Lcom/car/dvr/Util;->readSysValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "gm7150"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "rn6753"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    invoke-static {}, Lcom/car/dvr/CameraManager;->getLastRemovableCamera()I

    move-result v4

    sget v5, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private loadCameras()V
    .locals 6

    const/4 v2, 0x1

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$CVBSCamera;

    invoke-direct {v4}, Lcom/car/dvr/CameraManager$CVBSCamera;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    sget-object v3, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v4, "build-in2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$BuildinCamera;

    invoke-direct {v4, v2}, Lcom/car/dvr/CameraManager$BuildinCamera;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    sget-object v2, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "cvbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v3, Lcom/car/dvr/CameraManager$CVBSCamera;

    invoke-direct {v3}, Lcom/car/dvr/CameraManager$CVBSCamera;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$BuildinCamera;

    sget v5, Lcom/car/dvr/CameraManager;->CAMERA_BUILDIN1:I

    invoke-direct {v4, v5}, Lcom/car/dvr/CameraManager$BuildinCamera;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "cvbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v3, Lcom/car/dvr/CameraManager$CVBSCamera;

    invoke-direct {v3}, Lcom/car/dvr/CameraManager$CVBSCamera;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/car/dvr/CameraManager;->INSIDE_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v3, Lcom/car/dvr/CameraManager$USBCamera;

    invoke-direct {v3}, Lcom/car/dvr/CameraManager$USBCamera;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v3, Lcom/car/dvr/CameraManager$USBCamera;

    invoke-direct {v3}, Lcom/car/dvr/CameraManager$USBCamera;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6735Platform()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6753Platform()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/car/common/CarUtil;->isMT3562Platform()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    invoke-static {}, Lcom/car/dvr/CameraManager$CVBSCamera;->existsWithDoubleCheck()Z

    move-result v0

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v1

    if-nez v1, :cond_9

    sget-boolean v3, Lcom/car/dvr/CameraManager;->HW_SUPPORT_CVBS:Z

    if-eqz v3, :cond_f

    sget v3, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    invoke-static {v3}, Lcom/car/dvr/CameraManager;->setLastRemovableCamera(I)V

    :cond_9
    :goto_3
    sget-object v3, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez v1, :cond_b

    if-nez v0, :cond_a

    sget v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    sget v4, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    if-ne v3, v4, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$CVBSCamera;

    invoke-direct {v4}, Lcom/car/dvr/CameraManager$CVBSCamera;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_4
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v1

    if-eqz v1, :cond_c

    sget v3, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    invoke-static {v3}, Lcom/car/dvr/CameraManager;->setLastRemovableCamera(I)V

    :cond_c
    sget-boolean v3, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isLeftCameraExist()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$USBCamera;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/car/dvr/CameraManager$USBCamera;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isRightCameraExist()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$USBCamera;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/car/dvr/CameraManager$USBCamera;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_5
    if-nez v1, :cond_13

    if-nez v0, :cond_13

    :goto_6
    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraManager;->setRemovableCameraBadFlag(Z)V

    goto/16 :goto_2

    :cond_f
    sget v3, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    invoke-static {v3}, Lcom/car/dvr/CameraManager;->setLastRemovableCamera(I)V

    goto :goto_3

    :cond_10
    sget-object v3, Lcom/car/dvr/CameraManager;->REAR_CAMERA_TYPE:Ljava/lang/String;

    const-string v4, "cvbs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$CVBSCamera;

    invoke-direct {v4}, Lcom/car/dvr/CameraManager$CVBSCamera;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    if-nez v1, :cond_12

    sget v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    sget v4, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    if-eq v3, v4, :cond_12

    sget v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    :cond_12
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    new-instance v4, Lcom/car/dvr/CameraManager$USBCamera;

    invoke-direct {v4}, Lcom/car/dvr/CameraManager$USBCamera;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public static setLastRemovableCamera(I)V
    .locals 6

    sget v3, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    if-ne v3, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "DVR.CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set LAST_REMOVABLE_CAMERA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_removable_camera"

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput p0, Lcom/car/dvr/CameraManager;->sLastRemovableCamera:I

    goto :goto_0
.end method


# virtual methods
.method public getCamera(I)Lcom/car/dvr/BaseCamera;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v2

    if-ne v2, p1, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraDir()I

    move-result v2

    if-ne v2, p1, :cond_3

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    monitor-exit p0

    goto :goto_0

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraID(Ljava/lang/String;)I
    .locals 8

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v5

    invoke-static {v5}, Lcom/car/dvr/VideoInfo;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/car/dvr/BaseCamera$StatusType;->Current:Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {v0, v5}, Lcom/car/dvr/BaseCamera;->getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;

    move-result-object v3

    sget-object v5, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    if-eq v3, v5, :cond_1

    sget-object v5, Lcom/car/dvr/BaseCamera$RecordMode;->Record2Temp:Lcom/car/dvr/BaseCamera$RecordMode;

    if-ne v3, v5, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v2

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "DVR.CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCameraID("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public getCameraList()Ljava/lang/String;
    .locals 6

    const-string v2, ""

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v4

    invoke-static {v4}, Lcom/car/dvr/VideoInfo;->getPrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "DVR.CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraList return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getTextureView(I)Landroid/view/TextureView;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v2

    if-eq v2, p1, :cond_1

    const v2, 0xffff

    if-ne p1, v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    monitor-exit p0

    :goto_0
    return-object v2

    :cond_2
    monitor-exit p0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isRecording()I
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->isCurrentRecording2SD()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public pause()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->pause()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public registerCallback(Lcom/car/dvr/BaseCamera$Callback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0, p1}, Lcom/car/dvr/BaseCamera;->registerCallback(Lcom/car/dvr/BaseCamera$Callback;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public resume()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->resume()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    :cond_1
    return-void
.end method

.method public setMicUsable(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setRemovableCameraBadFlag(Z)V
    .locals 2

    const-string v1, "persist.usb.cam.bad"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setTextureView(ILandroid/view/TextureView;)V
    .locals 5

    const-string v2, "DVR.CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTextureView: cameraId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " view="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCameraList.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    const-string v2, "DVR.CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTextureView: camera.getCameraId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v2

    if-eq v2, p1, :cond_1

    const v2, 0xffff

    if-ne p1, v2, :cond_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public startRecording()V
    .locals 12

    const-wide/16 v10, 0x7d0

    const/4 v6, 0x1

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "DVR.CameraManager"

    const-string v8, "startRecording: no sdcard"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/car/dvr/CameraManager;->mLastReportTime:J

    sub-long v8, v2, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/car/dvr/CameraManager$1;

    invoke-direct {v8, p0}, Lcom/car/dvr/CameraManager$1;-><init>(Lcom/car/dvr/CameraManager;)V

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-wide v2, p0, Lcom/car/dvr/CameraManager;->mLastReportTime:J

    :cond_0
    const-string v5, "/dev/tmp"

    :cond_1
    sget-object v7, Lcom/car/dvr/CameraManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/car/dvr/GenericFragment;->getMuteRecord(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    move v4, v6

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->isSleeping()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->resume()V

    :cond_2
    if-eqz v4, :cond_4

    move v7, v6

    :goto_2
    invoke-virtual {v0, v5, v7}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v7, -0x1

    goto :goto_2

    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public stopRecording()V
    .locals 4

    const-string v2, "/dev/tmp"

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public suspend()V
    .locals 5

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isBackCameraExist()Z

    move-result v2

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->suspend()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lcom/car/dvr/CameraManager;->USB_MODE:Ljava/lang/String;

    const-string v4, "device"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/car/dvr/CameraManager$USBCamera;->powerOn(Z)V

    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/car/dvr/BaseCamera$Callback;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraManager;->mCameraList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera;

    invoke-virtual {v0, p1}, Lcom/car/dvr/BaseCamera;->unregisterCallback(Lcom/car/dvr/BaseCamera$Callback;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
