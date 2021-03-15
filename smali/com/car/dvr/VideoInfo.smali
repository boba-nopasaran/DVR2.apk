.class public Lcom/car/dvr/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# static fields
.field public static final AUTO_RECORD:Z

.field private static final BCAM:Ljava/lang/String;

.field private static final BCAM_REC_RES:Ljava/lang/String;

.field private static final CVBS_CAM_REC_RES:Ljava/lang/String;

.field public static FCAM_FIXED_720P:Z = false

.field public static FCAM_FORCE_FIXED_720P:Z = false

.field public static final FRONT_PREVIEW_HEIGHT:I

.field public static final FRONT_PREVIEW_WIDTH:I

.field public static final FRONT_USB_BACK_MIPI:Z

.field public static final IS1080CVBS:Z

.field public static final IS720CVBS:Z

.field public static final ISMIPI_288P:Z

.field public static final ISMIPI_480P:Z

.field public static final ISMIPI_576P:Z

.field public static final ISMIPI_D1:Z

.field public static final IS_BACK_CAM_RECORD:Z

.field public static final IS_ENABLE_1080P_6580:I

.field public static final IS_LR_CAM_EXIST:Z

.field public static final IS_LR_CAM_RECORD:Z

.field public static final IS_L_CAM_RECORD:Z

.field public static final IS_R_CAM_RECORD:Z

.field public static final NO_FRONT_CAMERA:Z

.field public static final REAR_PREVIEW_HEIGHT:I

.field public static final REAR_PREVIEW_WIDTH:I

.field public static final forceBackCameraMute:Z

.field private static final mTAG:Ljava/lang/String; = "DVR.VideoInfo"


# instance fields
.field bitrate:I

.field duration:I

.field frate:I

.field height:I

.field mute:Z

.field path:Ljava/lang/String;

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    const-string v0, "ro.bcam"

    const-string v3, "gm7150"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/VideoInfo;->BCAM:Ljava/lang/String;

    .line 22
    const-string v0, "ro.bcam.rec_res"

    const-string v3, "480P"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/VideoInfo;->BCAM_REC_RES:Ljava/lang/String;

    .line 23
    const-string v0, "ro.cvbs.rec_res"

    const-string v3, "480P"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/VideoInfo;->CVBS_CAM_REC_RES:Ljava/lang/String;

    .line 24
    const-string v0, "persist.force.backcamera.mute"

    const-string v3, "true"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->forceBackCameraMute:Z

    .line 26
    const-string v0, "rn6753,pr2000"

    sget-object v3, Lcom/car/dvr/VideoInfo;->BCAM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/car/dvr/VideoInfo;->BCAM_REC_RES:Ljava/lang/String;

    const-string v3, "720P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS720CVBS:Z

    .line 27
    const-string v0, "ro.lrcam"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    .line 28
    const-string v0, "ro.lrcam.record"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_RECORD:Z

    .line 29
    const-string v0, "ro.lcam.record"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS_L_CAM_RECORD:Z

    .line 30
    const-string v0, "ro.rcam.record"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS_R_CAM_RECORD:Z

    .line 31
    const-string v0, "persist.rear.record.disable"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    .line 33
    sget-object v0, Lcom/car/dvr/VideoInfo;->BCAM_REC_RES:Ljava/lang/String;

    const-string v3, "1080P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/car/dvr/VideoInfo;->CVBS_CAM_REC_RES:Ljava/lang/String;

    const-string v3, "1080P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/car/dvr/VideoInfo;->IS1080CVBS:Z

    .line 34
    const-string v0, "ro.fcam.720p"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->FCAM_FIXED_720P:Z

    .line 35
    const-string v0, "ro.force.fcam.720p"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->FCAM_FORCE_FIXED_720P:Z

    .line 36
    const-string v0, "ro.fcam.rec_res"

    const-string v3, "1080P"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "480P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->ISMIPI_480P:Z

    .line 37
    const-string v0, "ro.fcam.rec_res"

    const-string v3, "1080P"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "D1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->ISMIPI_D1:Z

    .line 38
    const-string v0, "ro.fcam.rec_res"

    const-string v3, "1080P"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "288P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->ISMIPI_288P:Z

    .line 40
    const-string v0, "ro.fcam.rec_res"

    const-string v3, "1080P"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "576P"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->ISMIPI_576P:Z

    .line 42
    const-string v0, "persist.dvr.no.front.camera"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    .line 43
    const-string v0, "persist.dvr.auto.record"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->AUTO_RECORD:Z

    .line 44
    const-string v0, "ro.front.camera.usb"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    .line 45
    const-string v0, "sys.front.camera.prv.w"

    const/16 v2, 0x3c0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_WIDTH:I

    .line 46
    const-string v0, "sys.front.camera.prv.h"

    const/16 v2, 0x21c

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_HEIGHT:I

    .line 48
    const-string v0, "sys.rear.camera.prv.w"

    const/16 v2, 0x280

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/VideoInfo;->REAR_PREVIEW_WIDTH:I

    .line 49
    const-string v0, "sys.rear.camera.prv.h"

    const/16 v2, 0x1e0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/VideoInfo;->REAR_PREVIEW_HEIGHT:I

    .line 50
    const-string v0, "ro.6580Can1080P"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/VideoInfo;->IS_ENABLE_1080P_6580:I

    return-void

    :cond_2
    move v0, v1

    .line 26
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 31
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 33
    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public static checkFilePath(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method public static getPrefix(I)Ljava/lang/String;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 225
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne p0, v0, :cond_0

    .line 226
    const-string v0, "I"

    .line 237
    :goto_0
    return-object v0

    .line 227
    :cond_0
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p0, v0, :cond_1

    .line 228
    const-string v0, "F"

    goto :goto_0

    .line 229
    :cond_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p0, v0, :cond_2

    .line 230
    const-string v0, "B"

    goto :goto_0

    .line 231
    :cond_2
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne p0, v0, :cond_3

    .line 232
    const-string v0, "L"

    goto :goto_0

    .line 233
    :cond_3
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne p0, v0, :cond_4

    .line 234
    const-string v0, "R"

    goto :goto_0

    .line 237
    :cond_4
    const-string v0, "B"

    goto :goto_0
.end method

.method static infoOf(Landroid/content/Context;I)Lcom/car/dvr/VideoInfo;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # I

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x280

    const/16 v11, 0x2d0

    const/16 v10, 0x1e0

    const/16 v9, 0x1e

    .line 78
    new-instance v3, Lcom/car/dvr/VideoInfo;

    invoke-direct {v3}, Lcom/car/dvr/VideoInfo;-><init>()V

    .line 79
    .local v3, "info":Lcom/car/dvr/VideoInfo;
    const v0, 0xb71b00

    .line 80
    .local v0, "V1080P_br":I
    const v2, 0x4c4b40

    .line 81
    .local v2, "V720P_br":I
    const v1, 0x1e8480

    .line 82
    .local v1, "V480P_br":I
    const-string v6, "persist.video.bitrate.params"

    const-string v7, "12000000,5000000,2000000"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "params":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 84
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    aget-object v6, v4, v13

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 86
    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 89
    :cond_0
    const-string v6, "DVR.VideoInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V1080P_br = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " V720P_br = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " V480P_br = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " forceBackCameraMute = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/car/dvr/VideoInfo;->forceBackCameraMute:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v6, ""

    iput-object v6, v3, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    .line 92
    iget-object v6, v3, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/car/dvr/VideoInfo;->checkFilePath(Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    iput v6, v3, Lcom/car/dvr/VideoInfo;->duration:I

    .line 96
    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getMuteRecord(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, v3, Lcom/car/dvr/VideoInfo;->mute:Z

    .line 99
    sget v6, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    if-ne p1, v6, :cond_5

    .line 100
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS1080CVBS:Z

    if-eqz v6, :cond_3

    .line 102
    const/16 v6, 0x780

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 103
    const/16 v6, 0x438

    iput v6, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 104
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 105
    iput v0, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    .line 120
    :goto_0
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->forceBackCameraMute:Z

    if-eqz v6, :cond_1

    .line 121
    iput-boolean v13, v3, Lcom/car/dvr/VideoInfo;->mute:Z

    .line 124
    :cond_1
    invoke-static {p0}, Lcom/car/dvr/DMS/TianTongDMS;->enabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    iput v12, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 127
    iput v10, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 128
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 129
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    .line 131
    :cond_2
    const-string v6, "DVR.VideoInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "infoOf: CAMERA_CVBS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/car/dvr/VideoInfo;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/car/dvr/VideoInfo;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_1
    return-object v3

    .line 106
    :cond_3
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS720CVBS:Z

    if-eqz v6, :cond_4

    .line 108
    const/16 v6, 0x500

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 109
    iput v11, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 110
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 111
    iput v2, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_0

    .line 114
    :cond_4
    iput v12, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 115
    iput v10, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 116
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 117
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_0

    .line 135
    :cond_5
    sget v6, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    if-lt p1, v6, :cond_a

    .line 136
    sget-object v6, Lcom/car/dvr/VideoInfo;->BCAM_REC_RES:Ljava/lang/String;

    const-string v7, "1080P"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 137
    const/16 v6, 0x780

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 138
    const/16 v6, 0x438

    iput v6, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 139
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 140
    iput v0, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    .line 158
    :goto_2
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->forceBackCameraMute:Z

    if-eqz v6, :cond_6

    .line 159
    iput-boolean v13, v3, Lcom/car/dvr/VideoInfo;->mute:Z

    .line 161
    :cond_6
    const-string v6, "DVR.VideoInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "infoOf: CAMERA_USB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/car/dvr/VideoInfo;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/car/dvr/VideoInfo;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    :cond_7
    sget-object v6, Lcom/car/dvr/VideoInfo;->BCAM_REC_RES:Ljava/lang/String;

    const-string v7, "720P"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 142
    const/16 v6, 0x500

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 143
    iput v11, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 144
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 145
    iput v2, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_2

    .line 146
    :cond_8
    sget-object v6, Lcom/car/dvr/VideoInfo;->BCAM_REC_RES:Ljava/lang/String;

    const-string v7, "540P"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 147
    const/16 v6, 0x3c0

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 148
    const/16 v6, 0x21c

    iput v6, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 149
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 150
    iput v2, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_2

    .line 153
    :cond_9
    iput v12, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 154
    iput v10, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 155
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 156
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_2

    .line 165
    :cond_a
    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getFrontCameraQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "value":Ljava/lang/String;
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->ISMIPI_288P:Z

    if-eqz v6, :cond_b

    .line 168
    const/16 v6, 0x160

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 169
    const/16 v6, 0x120

    iput v6, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 170
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 171
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    .line 201
    :goto_3
    const-string v6, "DVR.VideoInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "infoOf: getFrontCameraQuality"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/car/dvr/VideoInfo;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/car/dvr/VideoInfo;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 172
    :cond_b
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->ISMIPI_576P:Z

    if-eqz v6, :cond_c

    .line 173
    iput v11, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 174
    const/16 v6, 0x240

    iput v6, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 175
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 176
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_3

    .line 177
    :cond_c
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->ISMIPI_D1:Z

    if-eqz v6, :cond_d

    .line 178
    iput v11, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 179
    iput v10, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 180
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 181
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_3

    .line 182
    :cond_d
    sget-boolean v6, Lcom/car/dvr/VideoInfo;->ISMIPI_480P:Z

    if-eqz v6, :cond_e

    .line 183
    iput v12, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 184
    iput v10, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 185
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 186
    iput v1, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_3

    .line 187
    :cond_e
    const-string v6, "high"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS1080CVBS:Z

    if-nez v6, :cond_f

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->FCAM_FIXED_720P:Z

    if-nez v6, :cond_f

    invoke-static {}, Lcom/car/dvr/VideoInfo;->isEnable1080P6580()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 190
    const/16 v6, 0x780

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 191
    const/16 v6, 0x438

    iput v6, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 192
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 193
    iput v0, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_3

    .line 196
    :cond_f
    const/16 v6, 0x500

    iput v6, v3, Lcom/car/dvr/VideoInfo;->width:I

    .line 197
    iput v11, v3, Lcom/car/dvr/VideoInfo;->height:I

    .line 198
    iput v9, v3, Lcom/car/dvr/VideoInfo;->frate:I

    .line 199
    iput v2, v3, Lcom/car/dvr/VideoInfo;->bitrate:I

    goto :goto_3
.end method

.method private static isEnable1080P6580()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    sget v1, Lcom/car/dvr/VideoInfo;->IS_ENABLE_1080P_6580:I

    if-ne v1, v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyTo(Lcom/car/dvr/VideoInfo;)V
    .locals 1
    .param p1, "other"    # Lcom/car/dvr/VideoInfo;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    iput-object v0, p1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/car/dvr/VideoInfo;->width:I

    iput v0, p1, Lcom/car/dvr/VideoInfo;->width:I

    .line 56
    iget v0, p0, Lcom/car/dvr/VideoInfo;->height:I

    iput v0, p1, Lcom/car/dvr/VideoInfo;->height:I

    .line 57
    iget v0, p0, Lcom/car/dvr/VideoInfo;->frate:I

    iput v0, p1, Lcom/car/dvr/VideoInfo;->frate:I

    .line 58
    iget v0, p0, Lcom/car/dvr/VideoInfo;->bitrate:I

    iput v0, p1, Lcom/car/dvr/VideoInfo;->bitrate:I

    .line 59
    iget v0, p0, Lcom/car/dvr/VideoInfo;->duration:I

    iput v0, p1, Lcom/car/dvr/VideoInfo;->duration:I

    .line 60
    iget-boolean v0, p0, Lcom/car/dvr/VideoInfo;->mute:Z

    iput-boolean v0, p1, Lcom/car/dvr/VideoInfo;->mute:Z

    .line 61
    return-void
.end method

.method public equals(Lcom/car/dvr/VideoInfo;)Z
    .locals 2
    .param p1, "other"    # Lcom/car/dvr/VideoInfo;

    .prologue
    .line 64
    iget-object v0, p1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/car/dvr/VideoInfo;->width:I

    iget v1, p0, Lcom/car/dvr/VideoInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/car/dvr/VideoInfo;->height:I

    iget v1, p0, Lcom/car/dvr/VideoInfo;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/car/dvr/VideoInfo;->frate:I

    iget v1, p0, Lcom/car/dvr/VideoInfo;->frate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/car/dvr/VideoInfo;->bitrate:I

    iget v1, p0, Lcom/car/dvr/VideoInfo;->bitrate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/car/dvr/VideoInfo;->duration:I

    iget v1, p0, Lcom/car/dvr/VideoInfo;->duration:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/car/dvr/VideoInfo;->mute:Z

    iget-boolean v1, p0, Lcom/car/dvr/VideoInfo;->mute:Z

    if-ne v0, v1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/VideoInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/VideoInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/VideoInfo;->frate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
