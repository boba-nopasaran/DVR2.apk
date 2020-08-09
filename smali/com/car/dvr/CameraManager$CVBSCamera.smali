.class public final Lcom/car/dvr/CameraManager$CVBSCamera;
.super Lcom/car/dvr/BaseCamera;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CVBSCamera"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$100()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    sget-object v2, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/car/dvr/BaseCamera;-><init>(Landroid/content/Context;ILcom/car/dvr/BaseCamera$CameraClass;Z)V

    return-void
.end method

.method public static exists()Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "ro.hw.version"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "JLK_V2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v2, Lcom/car/dvr/CameraManager;->HW_SUPPORT_CVBS:Z

    if-eqz v2, :cond_2

    const-string v2, "sys.camera.cvbs.plugout"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static existsWithDoubleCheck()Z
    .locals 5

    :goto_0
    invoke-static {}, Lcom/car/dvr/CameraManager$CVBSCamera;->exists()Z

    move-result v0

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Lcom/car/dvr/Util;->delayMs(J)V

    invoke-static {}, Lcom/car/dvr/CameraManager$CVBSCamera;->exists()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v2, "DVR.CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CVBSCamera.existsWithDoubleCheck, return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v2, "DVR.CameraManager"

    const-string v3, "CVBSCamera.existsWithDoubleCheck, retry ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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


# virtual methods
.method public isAvaliable()Z
    .locals 1

    invoke-static {}, Lcom/car/dvr/CameraManager$CVBSCamera;->exists()Z

    move-result v0

    return v0
.end method
