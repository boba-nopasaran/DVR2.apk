.class public Lcom/car/dvr/CameraService;
.super Landroid/app/Service;
.source "CameraService.java"

# interfaces
.implements Lcom/car/dvr/BaseCamera$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/CameraService$SavePictureTask;,
        Lcom/car/dvr/CameraService$MyPictureCallback;,
        Lcom/car/dvr/CameraService$MyLock;,
        Lcom/car/dvr/CameraService$CameraThread;,
        Lcom/car/dvr/CameraService$SoundThread;,
        Lcom/car/dvr/CameraService$StorageReceiver;,
        Lcom/car/dvr/CameraService$LocalReceiver;,
        Lcom/car/dvr/CameraService$CounterThread;,
        Lcom/car/dvr/CameraService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ACTION_CAMERA_LIVING:Ljava/lang/String; = "com.car.camera.living"

.field private static final ACTION_CAMERA_SNAPSHOT:Ljava/lang/String; = "com.car.camera.snapshot"

.field private static final ACTION_CAMERA_SNAPSHOT_CALLBACK:Ljava/lang/String; = "com.car.camera.snapshot.callback"

.field private static final ACTION_CAMERA_SWITCH_RECORD_FILE:Ljava/lang/String; = "com.car.camera.switchfile"

.field public static final ACTION_CAR_TRUN:Ljava/lang/String; = "com.car.trun"

.field public static final ACTION_CAR_TRUN_CAMID:Ljava/lang/String; = "com.car.trun_camid"

.field public static final ACTION_CAR_TRUN_STATE:Ljava/lang/String; = "com.car.trun_state"

.field public static final ACTION_DELETE_FILE:Ljava/lang/String; = "com.car.delete.file"

.field public static final ACTION_DMS_AUTHORIZED:Ljava/lang/String; = "com.car.dms.authorized"

.field public static final ACTION_EXTERNAL_START_RECORD:Ljava/lang/String; = "com.car.ext.startrec"

.field public static final ACTION_EXTERNAL_STOP_RECORD:Ljava/lang/String; = "com.car.ext.stoprec"

.field public static final ACTION_PAUSE_MIC:Ljava/lang/String; = "com.car.btphone.pause.mic"

.field public static final ACTION_RECORDING2RAM_START:Ljava/lang/String; = "com.car.videorecorder.recording2ram_start"

.field public static final ACTION_RECORDING2RAM_STOP:Ljava/lang/String; = "com.car.videorecorder.recording2ram_stop"

.field public static final ACTION_RECORDING_START:Ljava/lang/String; = "com.car.videorecorder.recording_start"

.field public static final ACTION_RECORDING_STOP:Ljava/lang/String; = "com.car.videorecorder.recording_stop"

.field public static final ACTION_RECORDING_STORAGE_READ_ONLY:Ljava/lang/String; = "com.car.writestorage.read_only"

.field public static final ACTION_RECORDING_STORAGE_SLOW:Ljava/lang/String; = "com.car.writestorage.slow"

.field public static final ACTION_RECORDING_TIME_CHANGED:Ljava/lang/String; = "com.car.videorecorder.recording_time_changed"

.field public static final ACTION_RECORD_FILE:Ljava/lang/String; = "com.car.record.file"

.field private static final ACTION_REMOTE_FILE_PLAYBACK_CALLBACK:Ljava/lang/String; = "com.remote.video.playback.callback"

.field public static final ACTION_RESTART_RECORD:Ljava/lang/String; = "com.car.dvr.restart.recording"

.field public static final ACTION_RESUME_MIC:Ljava/lang/String; = "com.car.btphone.resume.mic"

.field public static final ACTION_SHOW_ALERT_SD:Ljava/lang/String; = "action_show_alert_sd"

.field public static final ACTION_SHOW_FORMAT_SD:Ljava/lang/String; = "action_show_format_sd"

.field public static final ACTION_VOICE_KAN_QUAN_BU:Ljava/lang/String; = "com.car.voice.kanquanbu"

.field public static final ACTION_WAKEUP:Ljava/lang/String; = "com.car.syswakeup"

.field public static CAMERA_ALL:I = 0x0

.field public static CAMERA_BACK:I = 0x0

.field public static CAMERA_FRONT:I = 0x0

.field public static CAMERA_INSIDE:I = 0x0

.field public static CAMERA_LEFT:I = 0x0

.field public static final CAMERA_LIVING_BROADCAST_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final CAMERA_LIVING_BROADCAST_CALLBACK:Ljava/lang/String; = "com.car.camera.living.callback"

.field public static final CAMERA_LIVING_BROADCAST_CAMERAID:Ljava/lang/String; = "camid"

.field public static final CAMERA_LIVING_BROADCAST_ERROR:Ljava/lang/String; = "error"

.field public static final CAMERA_LIVING_BROADCAST_ERROR_NUMBER:Ljava/lang/String; = "errno"

.field public static final CAMERA_LIVING_BROADCAST_RESULT:Ljava/lang/String; = "result"

.field public static final CAMERA_LIVING_RESULT_ERROR:I = 0x2

.field public static final CAMERA_LIVING_RESULT_START:I = 0x0

.field public static final CAMERA_LIVING_RESULT_STOP:I = 0x1

.field public static CAMERA_RIGHT:I = 0x0

.field private static final CHECK_SDCARD_EXISTS_INTERVAL:I = 0xdbba0

.field private static final CVBS_STATE:Ljava/lang/String; = "cvbs_state"

.field private static final MSG_ACC_ON_FULLSCREEN:I = 0x4

.field private static final MSG_CHECK_SDCARD_EXISTS:I = 0x3

.field private static final MSG_STORAGE_CHECK_FINISHED:I = 0x1

.field private static final MSG_TIPS_START_RECORD:I = 0x2

.field private static final NORECORD_FILE:Ljava/lang/String; = "/norecord.tip"

.field public static final NO_AUTO_FORMAT:I

.field private static final OEM_BEIDOU:Z

.field private static final PROP_MOUNT_FAILED:Ljava/lang/String; = "sys.mount.volume.failed"

.field public static final RECORDING_CAMERA:Ljava/lang/String; = "recording_camera"

.field public static final RECORDING_TIME:Ljava/lang/String; = "recording_time"

.field private static final TAG:Ljava/lang/String; = "DVR.CamService"

.field private static final TIMEOUT_WAIT:I = 0x1f40

.field private static mInstance:Lcom/car/dvr/CameraService;

.field private static mUsbReverseGearBak:Z

.field private static sIsUsbReverseGearLineConnected:Z

.field private static sLibraryLoadOK:Z


# instance fields
.field private mAccOnTime:J

.field private final mBinder:Landroid/os/IBinder;

.field private mCameraManager:Lcom/car/dvr/CameraManager;

.field mCameraManagerService:Lcom/car/common/ICameraManagerService$Stub;

.field private mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

.field private mDMS:Lcom/car/dvr/DMS/TianTongDMS;

.field private mHandler:Landroid/os/Handler;

.field private mLastStartRecordTime:J

.field mMyLock:Lcom/car/dvr/CameraService$MyLock;

.field private mPreviousRecordingMode:I

.field private mReceiveMicAction:Z

.field private mReceiver:Lcom/car/dvr/CameraService$LocalReceiver;

.field private mSeconds:I

.field private mSoundPlayer:Lcom/car/dvr/SoundClips$Player;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageReceiver:Lcom/car/dvr/CameraService$StorageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    :goto_0
    sput v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    sget-boolean v1, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    :goto_1
    sput v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-static {}, Lcom/car/dvr/CameraManager;->getInsideCameraId()I

    move-result v1

    sput v1, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    const/4 v1, 0x3

    sput v1, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    const/4 v1, 0x4

    sput v1, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    const v1, 0xffff

    sput v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    const-string v1, "ro.dvr.no.auto.format"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/car/dvr/CameraService;->NO_AUTO_FORMAT:I

    const-string v1, "ro.oem.customer"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "S_BeiDou"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/car/dvr/CameraService;->OEM_BEIDOU:Z

    sput-boolean v4, Lcom/car/dvr/CameraService;->sLibraryLoadOK:Z

    sput-boolean v4, Lcom/car/dvr/CameraService;->sIsUsbReverseGearLineConnected:Z

    :try_start_0
    const-string v1, "cardvr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/car/dvr/CameraService;->sLibraryLoadOK:Z

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstly, isReverseGear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/car/dvr/CameraService;->isReverseGear()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sput-boolean v4, Lcom/car/dvr/CameraService;->mUsbReverseGearBak:Z

    return-void

    :cond_0
    sget v1, Lcom/car/dvr/CameraManager;->CAMERA_BUILDIN1:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/car/dvr/CameraManager;->getBackCameraId()I

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t load cardvr library:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/dvr/CameraService;->mPreviousRecordingMode:I

    iput-wide v4, p0, Lcom/car/dvr/CameraService;->mLastStartRecordTime:J

    iput-wide v4, p0, Lcom/car/dvr/CameraService;->mAccOnTime:J

    iput-boolean v2, p0, Lcom/car/dvr/CameraService;->mReceiveMicAction:Z

    new-instance v0, Lcom/car/dvr/CameraService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraService$LocalBinder;-><init>(Lcom/car/dvr/CameraService;)V

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/car/dvr/CameraService$StorageReceiver;

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/CameraService$StorageReceiver;-><init>(Lcom/car/dvr/CameraService;Lcom/car/dvr/CameraService$1;)V

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mStorageReceiver:Lcom/car/dvr/CameraService$StorageReceiver;

    iput v2, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    iput-object v1, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    new-instance v0, Lcom/car/dvr/CameraService$LocalReceiver;

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/CameraService$LocalReceiver;-><init>(Lcom/car/dvr/CameraService;Lcom/car/dvr/CameraService$1;)V

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mReceiver:Lcom/car/dvr/CameraService$LocalReceiver;

    new-instance v0, Lcom/car/dvr/CameraService$MyLock;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraService$MyLock;-><init>(Lcom/car/dvr/CameraService;)V

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mMyLock:Lcom/car/dvr/CameraService$MyLock;

    new-instance v0, Lcom/car/dvr/CameraService$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraService$2;-><init>(Lcom/car/dvr/CameraService;)V

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManagerService:Lcom/car/common/ICameraManagerService$Stub;

    return-void
.end method

.method static synthetic access$100(Lcom/car/dvr/CameraService;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    return v0
.end method

.method static synthetic access$1000(Lcom/car/dvr/CameraService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/car/dvr/CameraService;->setLiving(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$102(Lcom/car/dvr/CameraService;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    return p1
.end method

.method static synthetic access$108(Lcom/car/dvr/CameraService;)I
    .locals 2

    iget v0, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    return v0
.end method

.method static synthetic access$1100(Lcom/car/dvr/CameraService;IIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/car/dvr/CameraService;->startVideoSnapshot(IIIIZZ)V

    return-void
.end method

.method static synthetic access$1202(Lcom/car/dvr/CameraService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/CameraService;->mAccOnTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/car/dvr/CameraService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->fullscreenPreviewWhenAccOn()V

    return-void
.end method

.method static synthetic access$1400(Lcom/car/dvr/CameraService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraService;->switchRecordFile(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/car/dvr/CameraService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->norecordExists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/car/dvr/CameraService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->checkStorageFull()V

    return-void
.end method

.method static synthetic access$1700(Lcom/car/dvr/CameraService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraService;->playSound(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/car/dvr/CameraService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->startCounterThread()V

    return-void
.end method

.method static synthetic access$1900(Lcom/car/dvr/CameraService;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/dvr/CameraService;->mLastStartRecordTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/car/dvr/CameraService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/CameraService;->mLastStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraService;->OEM_BEIDOU:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/car/dvr/CameraService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->isAccOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/car/dvr/CameraService;->sleepSeconds(J)V

    return-void
.end method

.method static synthetic access$300()Lcom/car/dvr/CameraService;
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraService;->mInstance:Lcom/car/dvr/CameraService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/CameraService;)Lcom/car/dvr/DMS/TianTongDMS;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mDMS:Lcom/car/dvr/DMS/TianTongDMS;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0}, Lcom/car/dvr/CameraService;->isWakeupIntentToStartDVR(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/car/dvr/CameraService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraService;->isValidNetworkConnected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/car/dvr/CameraService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraService;->getLiving(I)Z

    move-result v0

    return v0
.end method

.method private checkStorageFull()V
    .locals 2

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->norecordExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DVR.CamService"

    const-string v1, "exist /norecord.tip, no need to checkStorageFull"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/dvr/CameraService$3;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraService$3;-><init>(Lcom/car/dvr/CameraService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private fullscreenPreviewWhenAccOn()V
    .locals 6

    const-string v3, "persist.acc.on.cam.fullscreen"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    const-string v3, "front"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    :goto_1
    return-void

    :cond_1
    const-string v3, "rear"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    goto :goto_0

    :cond_2
    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/car/dvr/CameraActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "camera_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "camera_fullscreen"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10400000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "DVR.CamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start CameraActivity from CameraService, and putExtra: camera_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "camera_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private static native getGear()I
.end method

.method private static native getGearByName(Ljava/lang/String;)I
.end method

.method private getLiving(I)Z
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getLivingStatus()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTurnSignal(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Lcom/car/dvr/CameraService;->sLibraryLoadOK:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p0}, Lcom/car/dvr/CameraService;->getGearByName(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    and-int/lit8 v2, v0, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isAccOn()Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/car/dvr/CameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isHotplugCameraIn()Z
    .locals 4

    const/4 v2, 0x0

    sget-object v3, Lcom/car/dvr/CameraService;->mInstance:Lcom/car/dvr/CameraService;

    invoke-static {v3}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v1

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v1, v3}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getAvaliableFlag()Z

    move-result v2

    :cond_0
    return v2
.end method

.method public static isReverseGear()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/car/dvr/CameraService;->sLibraryLoadOK:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/car/dvr/CameraService;->getGear()I

    move-result v0

    if-gez v0, :cond_2

    sput-boolean v1, Lcom/car/dvr/CameraService;->sIsUsbReverseGearLineConnected:Z

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v0, 0x1

    if-lez v3, :cond_0

    sput-boolean v2, Lcom/car/dvr/CameraService;->sIsUsbReverseGearLineConnected:Z

    move v1, v2

    goto :goto_0
.end method

.method public static isUsbReverseGearLineConnected()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraService;->sIsUsbReverseGearLineConnected:Z

    return v0
.end method

.method private isValidNetworkConnected(I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/car/dvr/CameraService;->isValidNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isValidNetworkConnected(Landroid/content/Context;I)Z
    .locals 4

    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isWakeupIntentToStartDVR(Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.syswakeup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "reason"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.car.syswakeup, reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v1, "user,acc_on,gsensor,recordvideo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isWakeupIntentToStartDVR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private norecordExists()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/norecord.tip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private playSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mSoundPlayer:Lcom/car/dvr/SoundClips$Player;

    invoke-interface {v0, p1}, Lcom/car/dvr/SoundClips$Player;->play(I)V

    return-void
.end method

.method private sendCameraOnOffBroadcast(I)V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/dvr/CameraService$1;

    invoke-direct {v1, p0, p1}, Lcom/car/dvr/CameraService$1;-><init>(Lcom/car/dvr/CameraService;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLiving(Ljava/lang/String;II)V
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p3}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiving error camid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " use default camid:0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p1}, Lcom/car/dvr/BaseCamera;->setLiving(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiving failed, can\'t find camid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sleepSeconds(J)V
    .locals 4

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private startCounterThread()V
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->stopCounterThread()V

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/dvr/CameraService$CounterThread;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraService$CounterThread;-><init>(Lcom/car/dvr/CameraService;)V

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService$CounterThread;->start()V

    :cond_0
    return-void
.end method

.method private startVideoSnapshot(IIIIZZ)V
    .locals 6

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/car/dvr/BaseCamera;->startVideoSnapshot(IIIZZ)V

    :cond_0
    return-void
.end method

.method private stopCounterThread()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService$CounterThread;->interrupt()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/CameraService;->mCounterThread:Lcom/car/dvr/CameraService$CounterThread;

    :cond_0
    return-void
.end method

.method private switchRecordFile(I)V
    .locals 4

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request switch record file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->switchRecordFile()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeCameraOfPreviewView(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/dvr/CameraException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v4, :cond_1

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_0
    iget-object v4, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v4, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v2

    iget-object v4, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v4, v1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    new-instance v4, Lcom/car/dvr/CameraException;

    const-string v5, "Switch TextureView\'s Camera failed, not all camera are opened!"

    invoke-direct {v4, v5}, Lcom/car/dvr/CameraException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1
    :try_start_1
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/car/dvr/BaseCamera;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    const/4 v4, 0x0

    check-cast v4, Landroid/view/TextureView;

    invoke-virtual {v2, v4}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    invoke-virtual {v0, v3}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1
.end method

.method public cvbsSwitch(I)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "/sys/power/utxd2_switch_control"

    const-string v1, "low"

    invoke-static {v0, v1}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/sys/power/utxd2_switch_control"

    const-string v1, "high"

    invoke-static {v0, v1}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cvbsToggle(Z)V
    .locals 3

    const-string v1, "/sys/power/utxd2_switch_control"

    invoke-static {v1}, Lcom/car/dvr/Util;->readSysValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraService;->cvbsSwitch(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraService;->saveCvbsStateToPreferences(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCvbsStateFromPreferences()I
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "cvbs_state"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "DVR.CamService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCvbsStateFromPreferences: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public declared-synchronized getPreviewView(I)Landroid/view/TextureView;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0, p1}, Lcom/car/dvr/CameraManager;->getTextureView(I)Landroid/view/TextureView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRecordingTime()I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraService;->mSeconds:I

    return v0
.end method

.method public insideOfDualCVBSisWorking()Z
    .locals 2

    invoke-virtual {p0}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "/sys/power/utxd2_switch_control"

    invoke-static {v0}, Lcom/car/dvr/Util;->readSysValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCameraOpened(I)Z
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraOpened: cameraID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getAvaliableFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getAvaliableFlag()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getAvaliableFlag()Z

    move-result v1

    goto :goto_0
.end method

.method public isDualCVBS()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "ro.func.flag"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v2, v0, 0x2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRecordInit(I)Z
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->isRecordInit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->isRecording()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording(I)Z
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->isCurrentRecording2SD()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DVR.CamService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "from_outside"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "from_outside"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManagerService:Lcom/car/common/ICameraManagerService$Stub;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraService;->mBinder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public onCameraAvaliableChanged(Lcom/car/dvr/BaseCamera;)V
    .locals 8

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v0

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-eq v0, v3, :cond_0

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v0, v3, :cond_2

    :cond_0
    const-string v3, "DVR.CamService"

    const-string v4, "skip left/right plug-in/out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Lcom/car/dvr/Util;->delayMs(J)V

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-static {v0}, Lcom/car/dvr/CameraManager;->setLastRemovableCamera(I)V

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/car/dvr/CameraManager;->setRemovableCameraBadFlag(Z)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v3}, Lcom/car/dvr/CameraManager;->startRecording()V

    :cond_4
    invoke-direct {p0, v2}, Lcom/car/dvr/CameraService;->sendCameraOnOffBroadcast(I)V

    if-ne v2, v6, :cond_1

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->isAccOn()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/car/dvr/CameraService;->mAccOnTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1770

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->fullscreenPreviewWhenAccOn()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->isSleeping()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-static {}, Lcom/car/dvr/CameraManager;->getLastRemovableCamera()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v3, v6}, Lcom/car/dvr/CameraManager;->setRemovableCameraBadFlag(Z)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/car/dvr/CameraService;->mInstance:Lcom/car/dvr/CameraService;

    const-string v3, "DVR.CamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate, CAMERA_FRONT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CAMERA_BACK="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CAMERA_INSIDE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/common/CarPath;->init()V

    invoke-virtual {p0}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/CameraService;->getCvbsStateFromPreferences()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraService;->cvbsSwitch(I)V

    :cond_0
    invoke-static {p0}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v3

    iput-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->startCounterThread()V

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v3, p0}, Lcom/car/dvr/CameraManager;->registerCallback(Lcom/car/dvr/BaseCamera$Callback;)V

    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/car/dvr/CameraService;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v2, Lcom/car/dvr/CameraService$CameraThread;

    const-string v3, "for_camera_service"

    invoke-direct {v2, p0, v3}, Lcom/car/dvr/CameraService$CameraThread;-><init>(Lcom/car/dvr/CameraService;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/car/dvr/CameraService$CameraThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Lcom/car/dvr/CameraService$CameraThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/car/dvr/CameraService;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/car/dvr/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/car/dvr/SoundClips$Player;

    move-result-object v3

    iput-object v3, p0, Lcom/car/dvr/CameraService;->mSoundPlayer:Lcom/car/dvr/SoundClips$Player;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.car.dvr.camera_onoff"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.gotosleep"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.btphone.pause.mic"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.record.file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.camera.living.callback"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.btphone.resume.mic"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "action_show_alert_sd"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "action_show_format_sd"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.writestorage.slow"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.writestorage.read_only"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.camera.living"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.camera.snapshot"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.camera.snapshot.callback"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.camera.switchfile"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.remote.video.playback.callback"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.ext.startrec"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.ext.stoprec"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.syswakeup"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.dms.authorized"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.dvr.restart.recording"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.trun"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.monitor.notify"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.collision"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.car.voice.kanquanbu"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mReceiver:Lcom/car/dvr/CameraService$LocalReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/car/dvr/CameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mStorageReceiver:Lcom/car/dvr/CameraService$StorageReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/car/dvr/CameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->checkStorageFull()V

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/car/dvr/CameraService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v6, 0x3a98

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "DVR.CamService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mReceiver:Lcom/car/dvr/CameraService$LocalReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mStorageReceiver:Lcom/car/dvr/CameraService$StorageReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0, p0}, Lcom/car/dvr/CameraManager;->unregisterCallback(Lcom/car/dvr/BaseCamera$Callback;)V

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/CameraManager;->setTextureView(ILandroid/view/TextureView;)V

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->stopRecording()V

    return-void
.end method

.method public onStartRecording(Lcom/car/dvr/BaseCamera;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v0

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v4, :cond_0

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/car/dvr/DMS/TianTongDMS;->enabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/car/dvr/CameraService;->mDMS:Lcom/car/dvr/DMS/TianTongDMS;

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getPreviewWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getPreviewHeight()I

    move-result v2

    mul-int v4, v3, v2

    if-nez v4, :cond_1

    const/16 v3, 0x280

    const/16 v2, 0x1e0

    :cond_1
    new-instance v4, Lcom/car/dvr/DMS/TianTongDMS;

    invoke-direct {v4, p0, v5, v3, v2}, Lcom/car/dvr/DMS/TianTongDMS;-><init>(Landroid/content/Context;Landroid/hardware/Camera;II)V

    iput-object v4, p0, Lcom/car/dvr/CameraService;->mDMS:Lcom/car/dvr/DMS/TianTongDMS;

    :cond_2
    :goto_0
    sget-object v4, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {p1, v4}, Lcom/car/dvr/BaseCamera;->getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;

    move-result-object v4

    sget-object v5, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    if-eq v4, v5, :cond_5

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.car.videorecorder.recording2ram_start"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "recording_camera"

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v4, p0, Lcom/car/dvr/CameraService;->mDMS:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-virtual {v4, v5}, Lcom/car/dvr/DMS/TianTongDMS;->reinit(Landroid/hardware/Camera;)Z

    goto :goto_0

    :cond_5
    sget-boolean v4, Lcom/car/dvr/CameraManager;->HEADLESS:Z

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v4, v5, :cond_6

    const-string v4, "/sys/power/led_set_control"

    const-string v5, "led0blink"

    invoke-static {v4, v5}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v4, v5, :cond_7

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->isSleeping()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    sget-boolean v4, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v4, :cond_3

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.car.videorecorder.recording_start"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "recording_camera"

    iget-object v4, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v4}, Lcom/car/dvr/CameraManager;->isRecording()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_9

    const/4 v4, 0x2

    :goto_2
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/car/dvr/CameraService$4;

    invoke-direct {v5, p0}, Lcom/car/dvr/CameraService$4;-><init>(Lcom/car/dvr/CameraService;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onStopRecording(Lcom/car/dvr/BaseCamera;)V
    .locals 4

    const/4 v3, 0x2

    sget-object v1, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {p1, v1}, Lcom/car/dvr/BaseCamera;->getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;

    move-result-object v1

    sget-object v2, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    if-ne v1, v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.videorecorder.recording2ram_stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "recording_camera"

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/car/dvr/CameraManager;->HEADLESS:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v1

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v1, v2, :cond_2

    const-string v1, "/sys/power/led_set_control"

    const-string v2, "led0off"

    invoke-static {v1, v2}, Lcom/car/dvr/Util;->writeSysValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->getCameraId()I

    move-result v1

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/car/dvr/BaseCamera;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget-boolean v1, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v1, :cond_0

    :cond_4
    const v1, 0x7f0a008d

    invoke-static {p0, v1}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    new-instance v1, Lcom/car/dvr/CameraService$SoundThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/car/dvr/CameraService$SoundThread;-><init>(Lcom/car/dvr/CameraService;IZ)V

    invoke-virtual {v1}, Lcom/car/dvr/CameraService$SoundThread;->start()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.videorecorder.recording_stop"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "recording_camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/car/dvr/CameraService;->stopCounterThread()V

    goto :goto_0
.end method

.method public saveCvbsStateToPreferences(I)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cvbs_state"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public declared-synchronized setPreviewView(ILandroid/view/TextureView;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DVR.CamService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewView: cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/car/dvr/CameraManager;->setTextureView(ILandroid/view/TextureView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized switchPreview(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/dvr/CameraException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v4, :cond_0

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p2, v4, :cond_2

    :cond_0
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p2, v4, :cond_1

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p1, v4, :cond_2

    :cond_1
    new-instance v4, Lcom/car/dvr/CameraException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switch camera failed, invalidate camera index! cameraId1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cameraId2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/car/dvr/CameraException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v4, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    iget-object v4, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v4, p2}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    new-instance v4, Lcom/car/dvr/CameraException;

    const-string v5, "Switch Camera failed, not all camera are opened!"

    invoke-direct {v4, v5}, Lcom/car/dvr/CameraException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/car/dvr/BaseCamera;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    const-wide/16 v4, 0x96

    invoke-static {v4, v5}, Lcom/car/dvr/Util;->delayMs(J)V

    invoke-virtual {v0, v3}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Lcom/car/dvr/Util;->delayMs(J)V

    invoke-virtual {v1, v2}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public takePicture(ILandroid/hardware/Camera$PictureCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/car/dvr/CameraException;
        }
    .end annotation

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraService;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v1, p1}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/car/dvr/BaseCamera;->takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;)Ljava/lang/String;

    const-string v1, "DVR.CamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture ..., cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
