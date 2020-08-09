.class public Lcom/car/dvr/DMS/TianTongDMS;
.super Ljava/lang/Object;
.source "TianTongDMS.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;,
        Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static DEFAULT_DMS_TYPE_ID:I = 0x0

.field private static DMS_SOUND:[I = null

.field private static final REQUEST_FRAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DVR.TianTongDMS"

.field private static mChecked:Z


# instance fields
.field private mBuffer:[B

.field protected mCamera:Landroid/hardware/Camera;

.field protected mCameraFrame:[Lcom/car/dvr/DMS/JavaCameraFrame;

.field private mCameraFrameReady:Z

.field private mChainIdx:I

.field private mContext:Landroid/content/Context;

.field mDmsCallBack:Lcom/calmcar/dms/DmsCallBack;

.field private mFrameChain:[Lorg/opencv/core/Mat;

.field protected mFrameHeight:I

.field protected mFrameWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/calmcar/dms/DmsService;

.field private mStopThread:Z

.field private mThread:Ljava/lang/Thread;

.field private reduceLog:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.dms.type.id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/DMS/TianTongDMS;->DEFAULT_DMS_TYPE_ID:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/car/dvr/DMS/TianTongDMS;->DMS_SOUND:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/DMS/TianTongDMS;->mChecked:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a00d5
        0x7f0a00d4
        0x7f0a00d0
        0x7f0a00cf
        0x7f0a00ce
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;II)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mChainIdx:I

    const/16 v1, 0x280

    iput v1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    const/16 v1, 0x1e0

    iput v1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    iput-boolean v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrameReady:Z

    new-instance v1, Lcom/car/dvr/DMS/TianTongDMS$1;

    invoke-direct {v1, p0}, Lcom/car/dvr/DMS/TianTongDMS$1;-><init>(Lcom/car/dvr/DMS/TianTongDMS;)V

    iput-object v1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mDmsCallBack:Lcom/calmcar/dms/DmsCallBack;

    iput v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->reduceLog:I

    const-string v1, "DVR.TianTongDMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TianTongDMS, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "opencv_java3"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    iput p4, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    new-instance v0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;

    const-string v1, "dms-preview"

    invoke-direct {v0, p0, v1}, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;-><init>(Lcom/car/dvr/DMS/TianTongDMS;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/car/dvr/DMS/TianTongDMS;->connectCamera(Landroid/hardware/Camera;)Z

    invoke-virtual {p0}, Lcom/car/dvr/DMS/TianTongDMS;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/car/dvr/DMS/TianTongDMS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrameReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/car/dvr/DMS/TianTongDMS;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrameReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/car/dvr/DMS/TianTongDMS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mStopThread:Z

    return v0
.end method

.method static synthetic access$300(Lcom/car/dvr/DMS/TianTongDMS;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mChainIdx:I

    return v0
.end method

.method static synthetic access$302(Lcom/car/dvr/DMS/TianTongDMS;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mChainIdx:I

    return p1
.end method

.method static synthetic access$400(Lcom/car/dvr/DMS/TianTongDMS;)[Lorg/opencv/core/Mat;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/dvr/DMS/TianTongDMS;Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lorg/opencv/core/Mat;
    .locals 1

    invoke-direct {p0, p1}, Lcom/car/dvr/DMS/TianTongDMS;->processFrame(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/DMS/TianTongDMS;)[B
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mBuffer:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/dvr/DMS/TianTongDMS;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static checkAuthorizeAsync(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/dvr/DMS/TianTongDMS$2;

    invoke-direct {v1, p0}, Lcom/car/dvr/DMS/TianTongDMS$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private connectCamera(Landroid/hardware/Camera;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DVR.TianTongDMS"

    const-string v2, "Connecting to camera"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/car/dvr/DMS/TianTongDMS;->CameraInit(Landroid/hardware/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrameReady:Z

    const-string v1, "DVR.TianTongDMS"

    const-string v2, "Starting processing thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mStopThread:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;-><init>(Lcom/car/dvr/DMS/TianTongDMS;Lcom/car/dvr/DMS/TianTongDMS$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static enabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    sget v2, Lcom/car/dvr/DMS/TianTongDMS;->DEFAULT_DMS_TYPE_ID:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v2, Lcom/car/dvr/DMS/TianTongDMS;->DEFAULT_DMS_TYPE_ID:I

    if-ge v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/car/dvr/DMS/TianTongDMS;->getDmsTypeIdFromPreferences(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v0, :cond_0

    sget v2, Lcom/car/dvr/DMS/TianTongDMS;->DEFAULT_DMS_TYPE_ID:I

    if-ne v2, v3, :cond_3

    sget-boolean v2, Lcom/car/dvr/DMS/TianTongDMS;->mChecked:Z

    if-nez v2, :cond_3

    sput-boolean v0, Lcom/car/dvr/DMS/TianTongDMS;->mChecked:Z

    invoke-static {p0}, Lcom/car/dvr/DMS/TianTongDMS;->checkAuthorizeAsync(Landroid/content/Context;)V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static getDmsTypeIdFromPreferences(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dms_type"

    const/16 v3, -0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private playTts(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    return-void
.end method

.method private processFrame(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lorg/opencv/core/Mat;
    .locals 4

    iget v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->reduceLog:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->reduceLog:I

    iget v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->reduceLog:I

    rem-int/lit8 v2, v2, 0x64

    if-nez v2, :cond_0

    const-string v2, "DVR.TianTongDMS"

    const-string v3, "processFrame"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;->rgba()Lorg/opencv/core/Mat;

    move-result-object v1

    check-cast p1, Lcom/car/dvr/DMS/JavaCameraFrame;

    iget-object v0, p1, Lcom/car/dvr/DMS/JavaCameraFrame;->mYuvFrameData:Lorg/opencv/core/Mat;

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v0, v3}, Lcom/calmcar/dms/DmsService;->dmsSetInput(Lorg/opencv/core/Mat;F)I

    return-object v1
.end method

.method public static saveDmsTypeIdToPreferences(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dms_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "DVR.TianTongDMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDmsTypeIdToPreferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected CameraInit(Landroid/hardware/Camera;)Z
    .locals 9

    const-string v3, "DVR.TianTongDMS"

    const-string v4, "Initialize java camera"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    iget v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    iget v4, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x3

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mBuffer:[B

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/opencv/core/Mat;

    iput-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v4, 0x0

    new-instance v5, Lorg/opencv/core/Mat;

    iget v6, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    iget v7, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    sget v8, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v5, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    aput-object v5, v3, v4

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v4, 0x1

    new-instance v5, Lorg/opencv/core/Mat;

    iget v6, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    iget v7, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    sget v8, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v5, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    aput-object v5, v3, v4

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/car/dvr/DMS/JavaCameraFrame;

    iput-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrame:[Lcom/car/dvr/DMS/JavaCameraFrame;

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrame:[Lcom/car/dvr/DMS/JavaCameraFrame;

    const/4 v4, 0x0

    new-instance v5, Lcom/car/dvr/DMS/JavaCameraFrame;

    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v7, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    iget v8, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    invoke-direct {v5, v6, v7, v8}, Lcom/car/dvr/DMS/JavaCameraFrame;-><init>(Lorg/opencv/core/Mat;II)V

    aput-object v5, v3, v4

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrame:[Lcom/car/dvr/DMS/JavaCameraFrame;

    const/4 v4, 0x1

    new-instance v5, Lcom/car/dvr/DMS/JavaCameraFrame;

    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v7, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameWidth:I

    iget v8, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameHeight:I

    invoke-direct {v5, v6, v7, v8}, Lcom/car/dvr/DMS/JavaCameraFrame;-><init>(Lorg/opencv/core/Mat;II)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v3, "DVR.TianTongDMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CameraInit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dealDmsResult(I)V
    .locals 5

    const-string v0, ""

    if-lez p1, :cond_0

    sget-object v2, Lcom/car/dvr/DMS/TianTongDMS;->DMS_SOUND:[I

    array-length v2, v2

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/car/dvr/DMS/TianTongDMS;->DMS_SOUND:[I

    add-int/lit8 v4, p1, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "DVR.TianTongDMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/car/dvr/DMS/TianTongDMS;->playTts(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.dms.state"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public deinit()V
    .locals 2

    const-string v0, "DVR.TianTongDMS"

    const-string v1, "deInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 8

    const/4 v7, 0x1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const/high16 v6, 0x41f00000    # 30.0f

    new-instance v2, Lcom/calmcar/dms/DmsService;

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/calmcar/dms/DmsService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    invoke-virtual {v2, v7}, Lcom/calmcar/dms/DmsService;->dmsInit(I)I

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS;->mDmsCallBack:Lcom/calmcar/dms/DmsCallBack;

    invoke-virtual {v2, v3}, Lcom/calmcar/dms/DmsService;->setDmsCallBack(Lcom/calmcar/dms/DmsCallBack;)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    invoke-virtual {v2, v0}, Lcom/calmcar/dms/DmsService;->dmsSetAlarmLevel(I)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    invoke-virtual {v2, v7, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mService:Lcom/calmcar/dms/DmsService;

    const/4 v3, 0x7

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/calmcar/dms/DmsService;->dmsSetConfig(IFD)I

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mFrameChain:[Lorg/opencv/core/Mat;

    iget v1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mChainIdx:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/opencv/core/Mat;->put(II[B)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrameReady:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reinit(Landroid/hardware/Camera;)Z
    .locals 5

    const-string v2, "DVR.TianTongDMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reinit camera="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "DVR.TianTongDMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reinit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
