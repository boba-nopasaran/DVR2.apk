.class public abstract Lcom/car/dvr/BaseCamera;
.super Ljava/lang/Object;
.source "BaseCamera.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/BaseCamera$CameraThread;,
        Lcom/car/dvr/BaseCamera$CaptureAction;,
        Lcom/car/dvr/BaseCamera$SwitchFileAction;,
        Lcom/car/dvr/BaseCamera$SnapshotAction;,
        Lcom/car/dvr/BaseCamera$LiveAction;,
        Lcom/car/dvr/BaseCamera$RecordMode;,
        Lcom/car/dvr/BaseCamera$StatusType;,
        Lcom/car/dvr/BaseCamera$CameraAction;,
        Lcom/car/dvr/BaseCamera$ActionStatus;,
        Lcom/car/dvr/BaseCamera$CameraStatus;,
        Lcom/car/dvr/BaseCamera$CameraClass;,
        Lcom/car/dvr/BaseCamera$Callback;
    }
.end annotation


# static fields
.field public static final AutoRecord720PInsteadof1080PThermal:I

.field private static final BG_RECORDING_DURATION:I = 0x4e20

.field public static final BG_RECORDING_PATH:Ljava/lang/String; = "/dev/tmp"

.field private static final CAMERA_WATERMARK_LOGO_CONFIG:Ljava/lang/String; = "sys.camera.logo.config"

.field private static final CAMERA_WATERMARK_LOGO_PATH:Ljava/lang/String; = "sys.camera.logo.path"

.field private static final CAMERA_WATERMARK_TEXT_CONFIG:Ljava/lang/String; = "sys.camera.text.config"

.field private static final CHECK_CAMERA_AVALIABLE:I = 0x2

.field private static final CHECK_CPU_THERMAL:I = 0x4

.field private static final CHECK_INTERVAL:I = 0x7d0

.field public static final CVBS_RECORD_RES:Ljava/lang/String; = "sys.bcam.res"

.field private static final PROP_ENCODER_ERROR:Ljava/lang/String; = "sys.dvr.encoder.error"

.field private static final REQUEST_RESTART_LIVING_FROM_ONERROR:I = 0x3

.field private static final REQUEST_STATUS_CHANGED:I = 0x1

.field public static final Use480PLiving:Z

.field private static final isMPEG2TSRecorder:Z

.field private static mContext:Landroid/content/Context;

.field private static mLastShowTime:J

.field private static final timelapsefps:I


# instance fields
.field private final mActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/BaseCamera$CameraAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAddedView:Landroid/view/TextureView;

.field private mAvaliable:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/BaseCamera$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraId:I

.field private final mClass:Lcom/car/dvr/BaseCamera$CameraClass;

.field private final mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

.field private final mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

.field protected mHandler:Landroid/os/Handler;

.field private mInSleeping:Z

.field private mLivingStatus:Z

.field private mLivingURL:Ljava/lang/String;

.field private mMuteStartRecordAudio:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRecordStartTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRemovable:Z

.field private final mTAG:Ljava/lang/String;

.field private mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.camera.record.mpeg2ts"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/BaseCamera;->isMPEG2TSRecorder:Z

    const-string v0, "sys.camera.timelapse.fps"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/BaseCamera;->timelapsefps:I

    const-string v0, "ro.camera.living.480p"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/BaseCamera;->Use480PLiving:Z

    const-string v0, "sys.camera.use720P.thermal"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/BaseCamera;->AutoRecord720PInsteadof1080PThermal:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/car/dvr/BaseCamera$CameraClass;Z)V
    .locals 6

    const-wide/16 v4, 0x7d0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    iput v3, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    iput-boolean v3, p0, Lcom/car/dvr/BaseCamera;->mMuteStartRecordAudio:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    sput-object p1, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    iput-object p3, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    iput-boolean p4, p0, Lcom/car/dvr/BaseCamera;->mRemovable:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVR.Cam."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/car/dvr/BaseCamera$CameraClass;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v1, Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-direct {v1, p0}, Lcom/car/dvr/BaseCamera$CameraStatus;-><init>(Lcom/car/dvr/BaseCamera;)V

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    new-instance v1, Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-direct {v1, p0}, Lcom/car/dvr/BaseCamera$CameraStatus;-><init>(Lcom/car/dvr/BaseCamera;)V

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mCallbacks:Ljava/util/List;

    invoke-static {}, Lcom/car/dvr/BaseCamera$CaptureAction;->initSoundPlayer()V

    iput-boolean v3, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    new-instance v0, Lcom/car/dvr/BaseCamera$CameraThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CamThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/car/dvr/BaseCamera$CameraClass;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/BaseCamera$CameraThread;-><init>(Lcom/car/dvr/BaseCamera;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera$CameraThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera$CameraThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v3}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v1, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-nez v1, :cond_1

    sget v1, Lcom/car/dvr/BaseCamera;->AutoRecord720PInsteadof1080PThermal:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new camera, isAvaliable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/dvr/BaseCamera;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/car/dvr/BaseCamera;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/car/dvr/BaseCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->workaround4EncoderError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/car/dvr/BaseCamera;)Lcom/car/dvr/BaseCamera$CameraStatus;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/car/dvr/BaseCamera;)Lcom/car/dvr/BaseCamera$CameraStatus;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/car/dvr/BaseCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/car/dvr/BaseCamera;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/car/dvr/BaseCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/dvr/BaseCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mLivingStatus:Z

    return v0
.end method

.method static synthetic access$302(Lcom/car/dvr/BaseCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/dvr/BaseCamera;->mLivingStatus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mLivingURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/car/dvr/BaseCamera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/BaseCamera;->mLivingURL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/car/dvr/BaseCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->guardProcessStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/car/dvr/BaseCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/car/dvr/BaseCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    return v0
.end method

.method private acquireWakeLock()V
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    sget-object v1, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DVR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "acquire WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static adasIsDisabled()Z
    .locals 2

    const-string v0, "ro.adas.disable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private changeCameraView(Landroid/view/TextureView;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeCameraView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mAddedView:Landroid/view/TextureView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mAddedView:Landroid/view/TextureView;

    if-eq p1, v2, :cond_0

    iput-object v5, p0, Lcom/car/dvr/BaseCamera;->mAddedView:Landroid/view/TextureView;

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mAddedView:Landroid/view/TextureView;

    if-eq v2, p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p1, p0, Lcom/car/dvr/BaseCamera;->mAddedView:Landroid/view/TextureView;

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iput-object p1, v2, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewTexture(null) error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change view failed, retry later: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    const/16 v2, 0x1f4

    invoke-direct {p0, v2}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto :goto_1

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPreviewTexture() error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method private close()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/car/dvr/BaseCamera;->changeCameraView(Landroid/view/TextureView;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "BUG, camera is null but recorder not"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v4, "close ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/car/dvr/BaseCamera;->stopRecording(Landroid/media/MediaRecorder;)V

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->stopADASDetect()V

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    invoke-direct {p0, v6}, Lcom/car/dvr/BaseCamera;->sendCameraStatusBroadcast(Z)V

    iget-boolean v3, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v3, :cond_1

    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v4, "delay 1s to close the usb power"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {p0, v6}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v4, "enablePower poweroff usb!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private guardProcessStatus()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->processStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "processStatus error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/car/dvr/BaseCamera;->scheduleRestart(I)V

    goto :goto_0
.end method

.method private initRecorder(Lcom/car/dvr/VideoInfo;)Landroid/media/MediaRecorder;
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmss"

    invoke-direct {v4, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget v10, p1, Lcom/car/dvr/VideoInfo;->width:I

    iget v5, p1, Lcom/car/dvr/VideoInfo;->height:I

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MediaRecord Info: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/car/dvr/VideoInfo;->frate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bitrate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Lcom/car/dvr/VideoInfo;->bitrate:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v12}, Lcom/car/dvr/VideoInfo;->getPrefix(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "00000000000000"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "S.ts"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/car/dvr/VideoInfo;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {p0, v11}, Lcom/car/dvr/BaseCamera;->getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;

    move-result-object v11

    sget-object v12, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    if-ne v11, v12, :cond_6

    iget v3, p1, Lcom/car/dvr/VideoInfo;->duration:I

    :goto_0
    new-instance v9, Landroid/media/MediaRecorder;

    invoke-direct {v9}, Landroid/media/MediaRecorder;-><init>()V

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->reset()V

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v11}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    const-string v11, "private-live-camera"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v11, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v11}, Lcom/car/dvr/BaseCamera;->setCameraWaterMark(Landroid/hardware/Camera;)V

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v11}, Landroid/hardware/Camera;->unlock()V

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-boolean v11, p1, Lcom/car/dvr/VideoInfo;->mute:Z

    if-nez v11, :cond_1

    iget v11, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-eqz v11, :cond_0

    sget-boolean v11, Lcom/car/dvr/VideoInfo;->forceBackCameraMute:Z

    if-nez v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_1
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    sget-boolean v11, Lcom/car/dvr/BaseCamera;->isMPEG2TSRecorder:Z

    if-eqz v11, :cond_7

    iget v11, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-direct {p0, v11}, Lcom/car/dvr/BaseCamera;->isCameraUseMPEG4(I)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v9}, Lcom/car/dvr/Platform;->setOutputFormatMPEG2TS(Landroid/media/MediaRecorder;)V

    :goto_1
    iget-boolean v11, p1, Lcom/car/dvr/VideoInfo;->mute:Z

    if-nez v11, :cond_3

    iget v11, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-eqz v11, :cond_2

    sget-boolean v11, Lcom/car/dvr/VideoInfo;->forceBackCameraMute:Z

    if-nez v11, :cond_3

    :cond_2
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    const/16 v11, 0x3e80

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "video-param-camera-id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/car/dvr/Platform;->mediarecorder_setparameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_2
    iget v11, p1, Lcom/car/dvr/VideoInfo;->bitrate:I

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    invoke-virtual {v9, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget v11, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    sget v12, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v11, v12, :cond_9

    const-wide/32 v12, 0x12c00000

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_3
    invoke-virtual {v9, v10, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget v11, p1, Lcom/car/dvr/VideoInfo;->frate:I

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    const-string v11, "sys.dvr.slow"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    sget v11, Lcom/car/dvr/BaseCamera;->timelapsefps:I

    int-to-double v12, v11

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_4
    invoke-virtual {v9, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initRecorder size:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", duration="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v12, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v11, v12, :cond_5

    const-string v11, "sys.bcam.res"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v9

    :cond_6
    const/16 v3, 0x4e20

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const-string v11, "_Rotate_Fake_File_"

    invoke-virtual {p1, v11}, Lcom/car/dvr/VideoInfo;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_8
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_2

    :cond_9
    const-wide/32 v12, 0x1f400000

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    goto/16 :goto_3
.end method

.method private isCameraRecordEnable(I)Z
    .locals 2

    const/4 v0, 0x0

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v1, :cond_1

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ge p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_RECORD:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne p1, v1, :cond_3

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_L_CAM_RECORD:Z

    goto :goto_0

    :cond_3
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne p1, v1, :cond_0

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_R_CAM_RECORD:Z

    goto :goto_0
.end method

.method private isCameraUseMPEG4(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/car/common/CarUtil;->isBackCameraMJPEG()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/car/dvr/CameraManager;->CAMERA_USB:I

    if-lt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needStartRecord(Lcom/car/dvr/BaseCamera$LiveAction;)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/car/dvr/BaseCamera;->isCameraRecordEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v3, v3, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v3, v3, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dev/tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const-string v2, "/dev/tmp"

    iput-object v2, v1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method private needStopRecord(Lcom/car/dvr/BaseCamera$LiveAction;)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/car/dvr/BaseCamera;->isCameraRecordEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget v1, p1, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyNeedChangeStatus(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->acquireWakeLock()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private open()Z
    .locals 7

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open ... mCameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget v4, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const-string v4, "jpeg-quality"

    const/16 v5, 0x55

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v4, "private-live-camera-dir"

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->getCameraDir()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v5, Lcom/car/dvr/BaseCamera$CameraClass;->BuildIn:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v4, v5, :cond_1

    sget-boolean v4, Lcom/car/dvr/VideoInfo;->ISMIPI_480P:Z

    if-eqz v4, :cond_6

    const/16 v4, 0x280

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    const/16 v4, 0x1e0

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v5, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v4, v5, :cond_2

    sget v4, Lcom/car/dvr/VideoInfo;->REAR_PREVIEW_WIDTH:I

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    sget v4, Lcom/car/dvr/VideoInfo;->REAR_PREVIEW_HEIGHT:I

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    :cond_2
    iget v4, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne v4, v5, :cond_4

    :cond_3
    sget-object v4, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/dvr/DMS/TianTongDMS;->enabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x280

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    const/16 v4, 0x1e0

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    :cond_4
    iget v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    iget v5, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    mul-int/2addr v4, v5

    if-lez v4, :cond_5

    iget v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    iget v5, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :cond_5
    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->setCameraWaterMark(Landroid/hardware/Camera;)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/car/dvr/BaseCamera;->sendCameraStatusBroadcast(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->startADASDetect()V

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Lcom/car/dvr/Util;->delayMs(J)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    sget v4, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_WIDTH:I

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    sget v4, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_HEIGHT:I

    iput v4, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v4, "openCamera failed!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_7
    const/16 v3, 0x3e8

    invoke-virtual {p0, v3}, Lcom/car/dvr/BaseCamera;->scheduleRestart(I)V

    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private processStatus()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x1

    const/16 v9, 0x3e8

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/car/dvr/BaseCamera$CameraAction;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/car/dvr/BaseCamera$CameraAction;->isDeadTime()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/car/dvr/BaseCamera$CameraAction;->status:Lcom/car/dvr/BaseCamera$ActionStatus;

    sget-object v6, Lcom/car/dvr/BaseCamera$ActionStatus;->Running:Lcom/car/dvr/BaseCamera$ActionStatus;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waiting for first action done:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x7d0

    invoke-direct {p0, v5}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v5, v1, Lcom/car/dvr/BaseCamera$CameraAction;->status:Lcom/car/dvr/BaseCamera$ActionStatus;

    sget-object v6, Lcom/car/dvr/BaseCamera$ActionStatus;->Done:Lcom/car/dvr/BaseCamera$ActionStatus;

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v5, v1, Lcom/car/dvr/BaseCamera$CameraAction;->needCamera:Z

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    :cond_4
    iget-boolean v5, v1, Lcom/car/dvr/BaseCamera$CameraAction;->needRecord:Z

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    :cond_5
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action list size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",first="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processStatus: copy mExpectedStatus view="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v7, v7, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    if-nez v5, :cond_f

    new-instance v5, Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-direct {v5, p0, v6}, Lcom/car/dvr/BaseCamera$CameraStatus;-><init>(Lcom/car/dvr/BaseCamera;Lcom/car/dvr/BaseCamera$CameraStatus;)V

    iput-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v5, v1, Lcom/car/dvr/BaseCamera$LiveAction;

    if-eqz v5, :cond_7

    move-object v2, v1

    check-cast v2, Lcom/car/dvr/BaseCamera$LiveAction;

    :cond_7
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    if-eqz v5, :cond_8

    const/4 v3, 0x1

    :cond_8
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v5, v5, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    const/4 v4, 0x1

    const/4 v3, 0x1

    :cond_9
    iget-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v5, :cond_b

    if-nez v3, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processStatus: needCamera="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", needRecord="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", firstAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videoInfo.path=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v7, v7, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v7, v7, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    invoke-virtual {v5, v6}, Lcom/car/dvr/VideoInfo;->equals(Lcom/car/dvr/VideoInfo;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v2}, Lcom/car/dvr/BaseCamera;->needStopRecord(Lcom/car/dvr/BaseCamera$LiveAction;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/car/dvr/BaseCamera;->stopRecording(Landroid/media/MediaRecorder;)V

    :cond_d
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    if-eq v5, v6, :cond_e

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->close()V

    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    iput v6, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    if-nez v3, :cond_10

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->close()V

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->clearActionList()V

    goto/16 :goto_1

    :cond_f
    :try_start_2
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-virtual {v5, v6}, Lcom/car/dvr/BaseCamera$CameraStatus;->copyTo(Lcom/car/dvr/BaseCamera$CameraStatus;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_10
    iget-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera is not avaliable, mInSleeping="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",firstAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v5, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    iget-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    if-nez v5, :cond_15

    invoke-direct {p0, v9}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v6, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v5, v6, :cond_13

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v5

    iput-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    iget-boolean v5, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v6, "CVBS plugin detected, do nothing"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto/16 :goto_1

    :cond_12
    sget-object v5, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {p0, v5}, Lcom/car/dvr/BaseCamera;->getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;

    move-result-object v5

    sget-object v6, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    if-ne v5, v6, :cond_15

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v6, "CVBS, never close it but recording to RAM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "/dev/tmp"

    invoke-virtual {p0, v5, v8}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    invoke-virtual {p0, v8}, Lcom/car/dvr/BaseCamera;->scheduleRestart(I)V

    goto/16 :goto_1

    :cond_13
    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->close()V

    monitor-enter p0

    :try_start_4
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_14

    const/16 v5, 0x3e8

    invoke-direct {p0, v5}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    :cond_14
    monitor-exit p0

    goto/16 :goto_1

    :catchall_2
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v5

    :cond_15
    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->open()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v2}, Lcom/car/dvr/BaseCamera;->needStartRecord(Lcom/car/dvr/BaseCamera$LiveAction;)Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v4, 0x0

    :cond_16
    if-eqz v4, :cond_17

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-direct {p0, v5}, Lcom/car/dvr/BaseCamera;->startRecording(Lcom/car/dvr/BaseCamera$CameraStatus;)V

    :cond_17
    monitor-enter p0

    :try_start_5
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    invoke-virtual {v5, v6}, Lcom/car/dvr/VideoInfo;->copyTo(Lcom/car/dvr/VideoInfo;)V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    if-ne v5, v6, :cond_18

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    if-eq v5, v6, :cond_19

    :cond_18
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    invoke-direct {p0, v5}, Lcom/car/dvr/BaseCamera;->changeCameraView(Landroid/view/TextureView;)V

    monitor-enter p0

    :try_start_6
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v6, p0, Lcom/car/dvr/BaseCamera;->mTempExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v6, v6, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    iput v6, v5, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_19
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_1a

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but camera is null, retry later"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v9}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto/16 :goto_1

    :catchall_3
    move-exception v5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v5

    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5

    :cond_1a
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v5, :cond_1b

    invoke-direct {p0, v2}, Lcom/car/dvr/BaseCamera;->needStartRecord(Lcom/car/dvr/BaseCamera$LiveAction;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", but recorder is null, retry later"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v9}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto/16 :goto_1

    :cond_1b
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runAction ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/car/dvr/BaseCamera$ActionStatus;->Running:Lcom/car/dvr/BaseCamera$ActionStatus;

    iput-object v5, v1, Lcom/car/dvr/BaseCamera$CameraAction;->status:Lcom/car/dvr/BaseCamera$ActionStatus;

    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    iget v6, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    iget-object v7, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v5, v6, v7}, Lcom/car/dvr/BaseCamera$CameraAction;->runAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V

    monitor-enter p0

    :try_start_9
    iget-object v5, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    goto/16 :goto_1

    :catchall_5
    move-exception v5

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v5
.end method

.method private releaseWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera;->isAvaliable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v1, "release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private sendCameraStatusBroadcast(Z)V
    .locals 5

    iget-object v2, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send status broadcast: opened="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.videorecorder.camera_status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "camera_id"

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "camera_opened"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/car/dvr/DvrApplication;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCameraWaterMark(Landroid/hardware/Camera;)V
    .locals 14

    iget v11, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v11, v12}, Lcom/car/dvr/VideoInfo;->infoOf(Landroid/content/Context;I)Lcom/car/dvr/VideoInfo;

    move-result-object v4

    iget v11, v4, Lcom/car/dvr/VideoInfo;->height:I

    sparse-switch v11, :sswitch_data_0

    :goto_0
    :sswitch_0
    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mCameraId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " cameraId_suffix = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sys.camera.logo.path"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sys.camera.logo.config"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CameraId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " logoPath: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " logoConfig: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x3

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CameraId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " logo offx = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " offy = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera;->setWaterMarkOffset(II)V

    invoke-virtual {p1, v9, v3}, Landroid/hardware/Camera;->setWaterMarkSize(II)V

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->drawWatermarkBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sys.camera.text.config"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v11, 0x2

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x3

    aget-object v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v11, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CameraId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " timestamp offx = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " offy = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera;->setWaterMarkTimerOffset(II)V

    invoke-virtual {p1, v9, v3}, Landroid/hardware/Camera;->setWaterMarkTimerSize(II)V

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/hardware/Camera;->isDrawWaterMarkTimer(Z)V

    :cond_1
    return-void

    :sswitch_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_576P"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_480P"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_288P"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_normal"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x120 -> :sswitch_3
        0x1e0 -> :sswitch_2
        0x240 -> :sswitch_1
        0x2d0 -> :sswitch_4
        0x438 -> :sswitch_0
    .end sparse-switch
.end method

.method private startRecording(Lcom/car/dvr/BaseCamera$CameraStatus;)V
    .locals 14

    const/16 v13, 0x3e8

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v8, v8, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v9, "expectedStatus.videoInfo.path.isEmpty(), startRecording do nothing"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v8, p1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    invoke-direct {p0, v8}, Lcom/car/dvr/BaseCamera;->initRecorder(Lcom/car/dvr/VideoInfo;)Landroid/media/MediaRecorder;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->start()V

    invoke-direct {p0}, Lcom/car/dvr/BaseCamera;->acquireWakeLock()V

    iput-object v7, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Lcom/car/dvr/Util;->delayMs(J)V

    iget-boolean v8, p0, Lcom/car/dvr/BaseCamera;->mMuteStartRecordAudio:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mCallbacks:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$Callback;

    invoke-interface {v0, p0}, Lcom/car/dvr/BaseCamera$Callback;->onStartRecording(Lcom/car/dvr/BaseCamera;)V

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v9, "StartRecording failed! release recorder and retry later(FileNotFoundException)"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v8, Lcom/car/dvr/BaseCamera;->mLastShowTime:J

    sub-long v8, v2, v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.car.writestorage.read_only"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-wide v2, Lcom/car/dvr/BaseCamera;->mLastShowTime:J

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v13}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto :goto_0

    :catch_1
    move-exception v4

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v9, "release recording error"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v9, "StartRecording failed! release recorder and retry later(Exception)"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v13}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    goto/16 :goto_0

    :catch_3
    move-exception v4

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v9, "release recording error"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/car/dvr/BaseCamera;->mMuteStartRecordAudio:Z

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startRecording: CAMERA_CVBS="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startRecording: CAMERA_FRONT="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startRecording: CAMERA_BACK="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private stopADASDetect()V
    .locals 3

    iget v1, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/car/dvr/BaseCamera;->adasIsDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "stopADASDetect ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/dvr/ADAS/ADAS;->getInstance(Landroid/content/Context;)Lcom/car/dvr/ADAS/ADAS;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/ADAS;->stopDetect()V

    goto :goto_0
.end method

.method private stopRecording(Landroid/media/MediaRecorder;)V
    .locals 5

    if-nez p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    monitor-exit p0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v3, v3, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const-string v4, ""

    iput-object v4, v3, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$Callback;

    invoke-interface {v0, p0}, Lcom/car/dvr/BaseCamera$Callback;->onStopRecording(Lcom/car/dvr/BaseCamera;)V

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v4, "stopRecording error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private switchTo480PRecorderIfNeed(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/car/dvr/BaseCamera;->Use480PLiving:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v0, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const/16 v2, 0x280

    iput v2, v0, Lcom/car/dvr/VideoInfo;->width:I

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v0, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const/16 v2, 0x1e0

    iput v2, v0, Lcom/car/dvr/VideoInfo;->height:I

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v0, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    const v2, 0x1e8480

    iput v2, v0, Lcom/car/dvr/VideoInfo;->bitrate:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mMuteStartRecordAudio:Z

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "For MT6580 start living, change to 640x480 resolution"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchToNormalRecorderIfNeed(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lcom/car/dvr/BaseCamera;->Use480PLiving:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_0

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6580Platform()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget v1, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-nez v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v0, v1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    sget-object v3, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v3, v4}, Lcom/car/dvr/VideoInfo;->infoOf(Landroid/content/Context;I)Lcom/car/dvr/VideoInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iput-object v0, v1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/car/dvr/BaseCamera;->mMuteStartRecordAudio:Z

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For MT6580 stop living, change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget v4, v4, Lcom/car/dvr/VideoInfo;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v4, v4, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget v4, v4, Lcom/car/dvr/VideoInfo;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolution"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    :cond_2
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private workaround4EncoderError()V
    .locals 3

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v2, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v1, v2, :cond_0

    const-string v1, "sys.dvr.encoder.error"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "sys.dvr.encoder.error, restart recording"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/car/dvr/BaseCamera;->scheduleRestart(I)V

    const-string v1, "sys.dvr.encoder.error"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected changeCameraAvaliable(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    if-eq v4, p1, :cond_1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "avaliable changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v5, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v5, "720CVBS, recording to SD Card"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/car/dvr/GenericFragment;->getMuteRecord(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v3}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clearActionList()V
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$CameraAction;

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v0, v4, v3, v4}, Lcom/car/dvr/BaseCamera$CameraAction;->runAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_0
    return-void
.end method

.method protected doHandlerMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected enablePower(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mRemovable:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    :cond_0
    return-void
.end method

.method public getAvaliableFlag()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mAvaliable:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCameraDir()I
    .locals 2

    iget v0, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v0}, Lcom/car/dvr/VideoInfo;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getCameraId()I
    .locals 1

    iget v0, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    return v0
.end method

.method public getLivingStatus()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mLivingStatus:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/car/dvr/BaseCamera;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/car/dvr/BaseCamera;->mPreviewWidth:I

    return v0
.end method

.method public getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v0, v1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/car/dvr/BaseCamera$RecordMode;->RecordOff:Lcom/car/dvr/BaseCamera$RecordMode;

    :goto_1
    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v0, v1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    const-string v1, "/dev/tmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/car/dvr/BaseCamera$RecordMode;->Record2Temp:Lcom/car/dvr/BaseCamera$RecordMode;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    goto :goto_1
.end method

.method public getStatus(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$CameraStatus;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/car/dvr/BaseCamera$StatusType;->Current:Lcom/car/dvr/BaseCamera$StatusType;

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/BaseCamera$CameraStatus;-><init>(Lcom/car/dvr/BaseCamera;Lcom/car/dvr/BaseCamera$CameraStatus;)V

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    new-instance v0, Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/BaseCamera$CameraStatus;-><init>(Lcom/car/dvr/BaseCamera;Lcom/car/dvr/BaseCamera$CameraStatus;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCurStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v0, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAvaliable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCurrentRecording2SD()Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    monitor-exit p0

    :cond_0
    :goto_0
    return v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/car/dvr/BaseCamera$StatusType;->Current:Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {p0, v1}, Lcom/car/dvr/BaseCamera;->getRecordingMode(Lcom/car/dvr/BaseCamera$StatusType;)Lcom/car/dvr/BaseCamera$RecordMode;

    move-result-object v1

    sget-object v2, Lcom/car/dvr/BaseCamera$RecordMode;->Record2SD:Lcom/car/dvr/BaseCamera$RecordMode;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordInit()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSleeping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    return v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 5

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...... Camera onError Callback ...... error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", restart ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/car/dvr/BaseCamera;->scheduleRestart(I)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$CameraAction;

    iget-object v1, v0, Lcom/car/dvr/BaseCamera$CameraAction;->status:Lcom/car/dvr/BaseCamera$ActionStatus;

    sget-object v2, Lcom/car/dvr/BaseCamera$ActionStatus;->Running:Lcom/car/dvr/BaseCamera$ActionStatus;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove running action when error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera$CameraAction;->done()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w,h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureDestroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w,h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    iput-boolean v2, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v1, "don\'t poweroff usb until camera close correctly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    return-void
.end method

.method public registerCallback(Lcom/car/dvr/BaseCamera$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mClass:Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v1, Lcom/car/dvr/BaseCamera$CameraClass;->USB:Lcom/car/dvr/BaseCamera$CameraClass;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    sget v0, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/car/dvr/Util;->delayMs(J)V

    invoke-virtual {p0, v2}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    sget v0, Lcom/car/dvr/CameraManager;->USB_REDO_POWER_ON_INTERVAL:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/car/dvr/Util;->delayMs(J)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    :cond_1
    return-void
.end method

.method public scheduleRestart(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    invoke-direct {p0, p1}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLiving(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/car/dvr/BaseCamera;->switchTo480PRecorderIfNeed(I)Z

    new-instance v0, Lcom/car/dvr/BaseCamera$LiveAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/car/dvr/BaseCamera$LiveAction;-><init>(Lcom/car/dvr/BaseCamera;ILjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/car/dvr/BaseCamera$CameraAction;->waitTimeout(I)Z

    invoke-direct {p0, p1}, Lcom/car/dvr/BaseCamera;->switchToNormalRecorderIfNeed(I)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRecord(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRecord: recordPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", micUsable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    sget-object v2, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v2, v3}, Lcom/car/dvr/VideoInfo;->infoOf(Landroid/content/Context;I)Lcom/car/dvr/VideoInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iput-object p1, v1, Lcom/car/dvr/VideoInfo;->path:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget-object v1, v1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    if-lez p2, :cond_2

    :goto_0
    iput-boolean v0, v1, Lcom/car/dvr/VideoInfo;->mute:Z

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextureView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iput-object p1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mExpectedStatus:Lcom/car/dvr/BaseCamera$CameraStatus;

    iget v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startADASDetect()V
    .locals 4

    iget v1, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/car/dvr/BaseCamera;->adasIsDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "ro.adas.disable = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget v1, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADAS.ADAS_TYPE_ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v2, "startADASDetect ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/car/dvr/BaseCamera;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/dvr/ADAS/ADAS;->getInstance(Landroid/content/Context;)Lcom/car/dvr/ADAS/ADAS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/ADAS;->startDetect(Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public startVideoSnapshot(IIIZZ)V
    .locals 7

    new-instance v0, Lcom/car/dvr/BaseCamera$SnapshotAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/car/dvr/BaseCamera$SnapshotAction;-><init>(Lcom/car/dvr/BaseCamera;IIIZZ)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public suspend()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v1, "suspend()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseCamera;->setTextureView(Landroid/view/TextureView;)V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    const-string v1, "don\'t poweroff usb until camera close correctly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    return-void
.end method

.method public switchRecordFile()V
    .locals 2

    new-instance v0, Lcom/car/dvr/BaseCamera$SwitchFileAction;

    invoke-direct {v0, p0}, Lcom/car/dvr/BaseCamera$SwitchFileAction;-><init>(Lcom/car/dvr/BaseCamera;)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/car/dvr/BaseCamera;->takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;Z)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takePicture: path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", waitTimeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    sget v5, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    if-ne v4, v5, :cond_0

    const-string v4, "usb"

    const-string v5, "ro.cvbs.power.pin"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v7}, Lcom/car/dvr/CameraManager$CVBSCamera;->powerOn(Z)V

    :cond_0
    invoke-virtual {p0, v7}, Lcom/car/dvr/BaseCamera;->enablePower(Z)V

    const-string v4, "/dev/tmp"

    invoke-virtual {p0, v4, v8}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    if-nez p3, :cond_3

    if-nez p1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getPhotoPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v4, ".jpg"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p1}, Lcom/car/dvr/VideoInfo;->checkFilePath(Ljava/lang/String;)V

    iget v4, p0, Lcom/car/dvr/BaseCamera;->mCameraId:I

    invoke-static {v4}, Lcom/car/dvr/VideoInfo;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "yyyy_MM_dd_HHmmss"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance v0, Lcom/car/dvr/BaseCamera$CaptureAction;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/car/dvr/BaseCamera$CaptureAction;-><init>(Lcom/car/dvr/BaseCamera;Ljava/lang/String;Landroid/hardware/Camera$PictureCallback;Z)V

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-lez p2, :cond_6

    invoke-virtual {v0, p2}, Lcom/car/dvr/BaseCamera$CaptureAction;->waitTimeout(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, v0, Lcom/car/dvr/BaseCamera$CaptureAction;->path:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera$CaptureAction;->done()V

    :goto_0
    const/16 v4, 0x1f40

    invoke-direct {p0, v4}, Lcom/car/dvr/BaseCamera;->notifyNeedChangeStatus(I)V

    iget-boolean v4, p0, Lcom/car/dvr/BaseCamera;->mInSleeping:Z

    if-eqz v4, :cond_5

    const-string v4, ""

    invoke-virtual {p0, v4, v8}, Lcom/car/dvr/BaseCamera;->setRecord(Ljava/lang/String;I)V

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    sget v5, Lcom/car/dvr/CameraManager;->CAMERA_CVBS:I

    if-ne v4, v5, :cond_5

    const-string v4, "usb"

    const-string v5, "ro.cvbs.power.pin"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v8}, Lcom/car/dvr/CameraManager$CVBSCamera;->powerOn(Z)V

    :cond_5
    iget-object v4, p0, Lcom/car/dvr/BaseCamera;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takePicture return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_6
    move-object v3, p1

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/car/dvr/BaseCamera$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
