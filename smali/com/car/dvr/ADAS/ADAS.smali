.class public Lcom/car/dvr/ADAS/ADAS;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;,
        Lcom/car/dvr/ADAS/ADAS$MyReceiver;
    }
.end annotation


# static fields
.field private static ADAS_INDOOR_TEST:Z = false

.field private static ADAS_INFO_BROADCAST:Z = false

.field public static ADAS_TYPE_ID:I = 0x0

.field private static final DEBUG:Z = true

.field public static DEFAULT_ADAS_TYPE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DVR.ADAS"

.field private static final USE_TIAN_TONG_VIEW:Z = true

.field private static mAdasInstance:Lcom/car/dvr/ADAS/ADAS;


# instance fields
.field private final ADAS_FRAME_INTERVAL:I

.field private final RELAY_WEBCAMERA_PORT:I

.field private locationTickListener:Lcom/calmcar/adas/gps/LocationTickListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCallBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

.field private mCameraFrame:Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field mContext:Landroid/content/Context;

.field private mFcwBeep:I

.field private mFcwCnt:J

.field private mFcwResults:Lcom/adasplus/data/FcwInfo;

.field private mFrameChain:Lorg/opencv/core/Mat;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAdasInit:I

.field private mIsCarBacking:Z

.field private mKaiYiAdas:Lcom/adasplus/adas/Adas;

.field private mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

.field private mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

.field private mKaiYiAdasSpeed:F

.field private mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

.field private mLastCdwReportTime:J

.field private mLastFclReportTime:J

.field private mLastFcwState:I

.field private mLastLdwReportTime:J

.field private mLastLdwState:I

.field private mLastStgState:I

.field private mLastTime:J

.field private mLdwBeep:I

.field private mLdwCnt:J

.field private mLdwResults:Lcom/adasplus/data/LdwInfo;

.field private mListener:Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;

.field private final mLock:Ljava/lang/Object;

.field private mMyReceiver:Lcom/car/dvr/ADAS/ADAS$MyReceiver;

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

.field private mScale:F

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStgBeep:I

.field private mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

.field private mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

.field private mTianTongView:Lcom/calmcar/adas/apiserver/view/AdasDrawView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "persist.adas.info.broadcast"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/ADAS/ADAS;->ADAS_INFO_BROADCAST:Z

    const-string v0, "persist.adas.test"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/ADAS/ADAS;->ADAS_INDOOR_TEST:Z

    const-string v0, "persist.adas.type.id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/ADAS/ADAS;->DEFAULT_ADAS_TYPE_ID:I

    sget v0, Lcom/car/dvr/ADAS/ADAS;->DEFAULT_ADAS_TYPE_ID:I

    sput v0, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    const/4 v0, 0x0

    sput-object v0, Lcom/car/dvr/ADAS/ADAS;->mAdasInstance:Lcom/car/dvr/ADAS/ADAS;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    iput-object v7, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_WIDTH:I

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    sget v2, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_HEIGHT:I

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mLock:Ljava/lang/Object;

    iput-object v7, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    iput-wide v4, p0, Lcom/car/dvr/ADAS/ADAS;->mLastTime:J

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwBeep:I

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwBeep:I

    iput-wide v4, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwCnt:J

    iput-wide v4, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwCnt:J

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mStgBeep:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasSpeed:F

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mLastLdwState:I

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mLastFcwState:I

    iput v6, p0, Lcom/car/dvr/ADAS/ADAS;->mLastStgState:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundMap:Ljava/util/HashMap;

    iput-boolean v6, p0, Lcom/car/dvr/ADAS/ADAS;->mIsCarBacking:Z

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$MyReceiver;

    invoke-direct {v2, p0, v7}, Lcom/car/dvr/ADAS/ADAS$MyReceiver;-><init>(Lcom/car/dvr/ADAS/ADAS;Lcom/car/dvr/ADAS/ADAS$1;)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mMyReceiver:Lcom/car/dvr/ADAS/ADAS$MyReceiver;

    const/16 v2, 0x55

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->ADAS_FRAME_INTERVAL:I

    const/16 v2, 0x46d1

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->RELAY_WEBCAMERA_PORT:I

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$2;

    invoke-direct {v2, p0}, Lcom/car/dvr/ADAS/ADAS$2;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->locationTickListener:Lcom/calmcar/adas/gps/LocationTickListener;

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$5;

    invoke-direct {v2, p0}, Lcom/car/dvr/ADAS/ADAS$5;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mCallBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$7;

    invoke-direct {v2, p0}, Lcom/car/dvr/ADAS/ADAS$7;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$8;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/car/dvr/ADAS/ADAS$8;-><init>(Lcom/car/dvr/ADAS/ADAS;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContentObserver:Landroid/database/ContentObserver;

    const/high16 v2, 0x44200000    # 640.0f

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->mScale:F

    iput-wide v4, p0, Lcom/car/dvr/ADAS/ADAS;->mLastLdwReportTime:J

    iput-wide v4, p0, Lcom/car/dvr/ADAS/ADAS;->mLastCdwReportTime:J

    iput-wide v4, p0, Lcom/car/dvr/ADAS/ADAS;->mLastFclReportTime:J

    iput-object v7, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    sget v2, Lcom/car/dvr/ADAS/ADAS;->DEFAULT_ADAS_TYPE_ID:I

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/ADAS;->getAdasTypeIdFromPreferences()I

    move-result v1

    if-gez v1, :cond_2

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->checkAdasTypeAsync()V

    :cond_0
    :goto_0
    sget v2, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    if-nez v2, :cond_3

    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/ADAS;->initKaiYi(Landroid/content/Context;)V

    :cond_1
    :goto_1
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f050001

    invoke-virtual {v4, p1, v5, v9}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v5, 0x7f050000

    const/4 v6, 0x3

    invoke-virtual {v4, p1, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS;->mSoundPool:Landroid/media/SoundPool;

    const v5, 0x7f050002

    invoke-virtual {v4, p1, v5, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/car/dvr/ADAS/RawPreview;

    invoke-direct {v2}, Lcom/car/dvr/ADAS/RawPreview;-><init>()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mCallBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

    invoke-virtual {v2, v3}, Lcom/car/dvr/ADAS/RawPreview;->setCallBack(Lcom/car/dvr/ADAS/RawPreview$CallBack;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.car.adasconfig"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mMyReceiver:Lcom/car/dvr/ADAS/ADAS$MyReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "DVR.ADAS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init ok, ADAS_INFO_BROADCAST="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/car/dvr/ADAS/ADAS;->ADAS_INFO_BROADCAST:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/car/dvr/ADAS/ADAS;->mAdasInstance:Lcom/car/dvr/ADAS/ADAS;

    return-void

    :cond_2
    sput v1, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    goto/16 :goto_0

    :cond_3
    sget v2, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    if-ne v2, v8, :cond_1

    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/ADAS;->initTianTong(Landroid/content/Context;)V

    goto/16 :goto_1
.end method

.method static synthetic access$100(Lcom/car/dvr/ADAS/ADAS;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    return v0
.end method

.method static synthetic access$1000(Lcom/car/dvr/ADAS/ADAS;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/LdwInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/car/dvr/ADAS/ADAS;Lcom/adasplus/data/LdwInfo;)Lcom/adasplus/data/LdwInfo;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/FcwInfo;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/car/dvr/ADAS/ADAS;Lcom/adasplus/data/FcwInfo;)Lcom/adasplus/data/FcwInfo;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/car/dvr/ADAS/ADAS;)Lcom/adasplus/data/AdasConfig;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/car/dvr/ADAS/ADAS;Lcom/adasplus/data/AdasConfig;)Lcom/adasplus/data/AdasConfig;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/car/dvr/ADAS/ADAS;)F
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasSpeed:F

    return v0
.end method

.method static synthetic access$1402(Lcom/car/dvr/ADAS/ADAS;F)F
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasSpeed:F

    return p1
.end method

.method static synthetic access$1500(Lcom/car/dvr/ADAS/ADAS;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwCnt:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/car/dvr/ADAS/ADAS;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwCnt:J

    return-wide p1
.end method

.method static synthetic access$1508(Lcom/car/dvr/ADAS/ADAS;)J
    .locals 4

    iget-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwCnt:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/car/dvr/ADAS/ADAS;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwCnt:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/car/dvr/ADAS/ADAS;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwCnt:J

    return-wide p1
.end method

.method static synthetic access$1608(Lcom/car/dvr/ADAS/ADAS;)J
    .locals 4

    iget-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwCnt:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/car/dvr/ADAS/ADAS;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwBeep:I

    return v0
.end method

.method static synthetic access$1702(Lcom/car/dvr/ADAS/ADAS;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwBeep:I

    return p1
.end method

.method static synthetic access$1802(Lcom/car/dvr/ADAS/ADAS;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwBeep:I

    return p1
.end method

.method static synthetic access$1900(Lcom/car/dvr/ADAS/ADAS;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/ADAS/ADAS;->mIsCarBacking:Z

    return v0
.end method

.method static synthetic access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/car/dvr/ADAS/ADAS;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mStgBeep:I

    return v0
.end method

.method static synthetic access$2002(Lcom/car/dvr/ADAS/ADAS;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/ADAS;->mStgBeep:I

    return p1
.end method

.method static synthetic access$202(Lcom/car/dvr/ADAS/ADAS;Lcom/car/dvr/ADAS/AdasInterfaceImp;)Lcom/car/dvr/ADAS/AdasInterfaceImp;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->sendAdasInfo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/car/dvr/ADAS/ADAS;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/SVDraw;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/car/dvr/ADAS/ADAS;->isKaiYiIMEI(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/car/dvr/ADAS/ADAS;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/ADAS;->initKaiYi(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->startDetect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/car/dvr/ADAS/ADAS;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/car/dvr/ADAS/ADAS;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/ADAS;->initTianTong(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->updateTestMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/car/dvr/ADAS/ADAS;)Lorg/opencv/core/Mat;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameChain:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/car/dvr/ADAS/ADAS;)Lcom/calmcar/adas/apiserver/AdasServer;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/ADAS/ADAS;)Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mCameraFrame:Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/dvr/ADAS/ADAS;)I
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->checkADASVerirfy()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/car/dvr/ADAS/ADAS;)J
    .locals 2

    iget-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/car/dvr/ADAS/ADAS;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/ADAS/ADAS;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/car/dvr/ADAS/ADAS;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    return v0
.end method

.method private checkADASVerirfy()I
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    if-nez v3, :cond_1

    const-string v2, "Adas"

    const-string v3, "adas verify null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getVerifyResult()I

    move-result v3

    if-ne v3, v8, :cond_2

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->init()I

    move-result v3

    iput v3, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    const-string v4, "123"

    const-string v5, "13812341234"

    const-string v6, "123"

    const-string v7, "123"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->setUserData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DVR.ADAS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsAdasInit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    if-ne v3, v8, :cond_2

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getAdasConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "ro.oem.customer"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TMCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DVR.ADAS"

    const-string v4, "TMCC set highest sensitivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v9}, Lcom/adasplus/data/AdasConfig;->setDfwSensitivity(I)V

    invoke-virtual {v0, v9}, Lcom/adasplus/data/AdasConfig;->setFcwSensitivity(I)V

    invoke-virtual {v0, v9}, Lcom/adasplus/data/AdasConfig;->setLdwSensitivity(I)V

    invoke-virtual {v0, v9}, Lcom/adasplus/data/AdasConfig;->setPedSensitivity(I)V

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v3, v0}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->setAdasConfig(Lcom/adasplus/data/AdasConfig;)V

    :cond_2
    const-string v3, "sys.adas.ok"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getVerifyResult()I

    move-result v3

    if-ne v3, v8, :cond_3

    const-string v3, "sys.adas.ok"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.car.adas.ok"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getVerifyResult()I

    move-result v3

    if-eq v3, v8, :cond_0

    const-string v3, "sys.adas.ok"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private checkAdasTypeAsync()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/dvr/ADAS/ADAS$9;

    invoke-direct {v1, p0}, Lcom/car/dvr/ADAS/ADAS$9;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/car/dvr/ADAS/ADAS;
    .locals 1

    sget-object v0, Lcom/car/dvr/ADAS/ADAS;->mAdasInstance:Lcom/car/dvr/ADAS/ADAS;

    return-object v0
.end method

.method private static getMd5StrFromBytes([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getParamsData(Ljava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method private static getResultString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x400

    new-array v0, v6, [B

    const/4 v2, 0x0

    const-string v4, ""

    if-eqz p0, :cond_0

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_1
.end method

.method private initKaiYi(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DVR.ADAS"

    const-string v1, "initKaiYi()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/adasplus/adas/Adas;

    invoke-direct {v0, p1}, Lcom/adasplus/adas/Adas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdas:Lcom/adasplus/adas/Adas;

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdas:Lcom/adasplus/adas/Adas;

    new-instance v1, Lcom/car/dvr/ADAS/ADAS$1;

    invoke-direct {v1, p0, p1}, Lcom/car/dvr/ADAS/ADAS$1;-><init>(Lcom/car/dvr/ADAS/ADAS;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/Adas;->setPrepareListener(Lcom/adasplus/adas/Adas$PrepareListener;)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdas:Lcom/adasplus/adas/Adas;

    invoke-virtual {v0}, Lcom/adasplus/adas/Adas;->install()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->checkADASVerirfy()I

    return-void
.end method

.method private initTianTong(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-instance v1, Lcom/calmcar/adas/apiserver/AdasServer;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/calmcar/adas/apiserver/AdasServer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$3;

    invoke-direct {v2, p0}, Lcom/car/dvr/ADAS/ADAS$3;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    invoke-virtual {v1, v2}, Lcom/calmcar/adas/apiserver/AdasServer;->setDetectInitSuccessListener(Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v2, Lcom/car/dvr/ADAS/ADAS$4;

    invoke-direct {v2, p0}, Lcom/car/dvr/ADAS/ADAS$4;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    invoke-virtual {v1, v2}, Lcom/calmcar/adas/apiserver/AdasServer;->setActiveSuccessListener(Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v1, p0}, Lcom/calmcar/adas/apiserver/AdasServer;->setCameraDataProcessCallBack(Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/calmcar/adas/apiserver/AdasServer;->initConf(II)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->locationTickListener:Lcom/calmcar/adas/gps/LocationTickListener;

    invoke-virtual {v1, v2}, Lcom/calmcar/adas/apiserver/AdasServer;->startServer(Lcom/calmcar/adas/gps/LocationTickListener;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/AdasServer;->getVPPara()[I

    move-result-object v0

    aget v1, v0, v4

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_0

    aget v1, v0, v6

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_0

    aget v1, v0, v4

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_0

    aget v1, v0, v6

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_1

    :cond_0
    const-string v1, "DVR.ADAS"

    const-string v2, "reset VPPara"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/calmcar/adas/apiserver/AdasServer;->setVPPara(II)V

    :cond_1
    new-instance v1, Lorg/opencv/core/Mat;

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    sget v4, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v1, v2, v3, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    iput-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameChain:Lorg/opencv/core/Mat;

    new-instance v1, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameChain:Lorg/opencv/core/Mat;

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    iget v4, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    const v5, 0x32315659

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;-><init>(Lorg/opencv/core/Mat;III)V

    iput-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mCameraFrame:Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v1, v6, v6}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerModuleState(ZI)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    const/4 v2, 0x2

    invoke-virtual {v1, v6, v2}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerModuleState(ZI)V

    const-string v1, "DVR.ADAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTianTong190116: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static isKaiYiIMEI(Ljava/lang/String;)I
    .locals 18

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const-string v14, "pfd20161205"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/car/dvr/ADAS/ADAS;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/car/dvr/ADAS/ADAS;->getMd5StrFromBytes([B)Ljava/lang/String;

    move-result-object v10

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v14, "IMEIS"

    move-object/from16 v0, p0

    invoke-interface {v7, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "timestamp"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "merchantId"

    const-string v15, "pfd20161205"

    invoke-interface {v7, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "sign"

    invoke-interface {v7, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "http://androidsdk.adasplus.com/imei_test"

    invoke-static {v14, v7}, Lcom/car/dvr/ADAS/ADAS;->performPostRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    const-string v14, "DVR.ADAS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isKaiYiIMEI("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "resultCode"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v14, "data"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v9, :cond_1

    const-string v14, "0"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    return v14

    :cond_0
    const/4 v14, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v14, "DVR.ADAS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isKaiYiIMEI Exception: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v14, 0x0

    goto :goto_0
.end method

.method public static isTianTongIMEI(Ljava/lang/String;)I
    .locals 8

    const/4 v4, -0x1

    const-string v3, ""

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "imei"

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "http://cloud.calmcar.com:5002/orderform/select"

    invoke-static {v5, v2}, Lcom/car/dvr/ADAS/ADAS;->performPostRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "adas"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    or-int/lit8 v4, v4, 0x1

    :cond_1
    const-string v5, "dms"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x2

    :cond_2
    :goto_0
    const-string v5, "DVR.ADAS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTianTongIMEI("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_0
    move-exception v0

    const-string v5, "DVR.ADAS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTianTongIMEI Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private kaiyi2tiantong(DD)[I
    .locals 7

    const-wide v4, 0x3ff3333333333333L    # 1.2

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    add-double/2addr v2, p1

    div-double p1, v2, v4

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mScale:F

    float-to-double v2, v2

    div-double v2, p1, v2

    double-to-int v0, v2

    const-wide/high16 v2, 0x4042000000000000L    # 36.0

    add-double/2addr v2, p3

    div-double p3, v2, v4

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mScale:F

    float-to-double v2, v2

    div-double v2, p3, v2

    double-to-int v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    return-object v2
.end method

.method public static performPostRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v8, "POST"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-static {p1}, Lcom/car/dvr/ADAS/ADAS;->getParamsData(Ljava/util/Map;)[B

    move-result-object v2

    const-string v8, "Content-Type"

    const-string v9, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    array-length v8, v2

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v8, "Content-Length"

    array-length v9, v2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v8, 0xc8

    if-ne v8, v5, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lcom/car/dvr/ADAS/ADAS;->getResultString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_1
    return-object v6

    :cond_2
    :try_start_1
    const-string v8, "DVR.ADAS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v8
.end method

.method private reportIfNeed(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 11

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v8

    if-eq v8, v6, :cond_0

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    :cond_0
    iget-wide v8, p0, Lcom/car/dvr/ADAS/ADAS;->mLastLdwReportTime:J

    sub-long v4, v0, v8

    const-wide/16 v8, 0x1388

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    const-string v8, "DVR.ADAS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "car out line, tts report, interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLastLdwReportTime:J

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v9, "adas_report2"

    invoke-static {v8, v9, v7}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v8

    iget-object v9, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const v10, 0x7f0a00cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-string v8, "action.adas.lane.departure"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "state"

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v9

    if-le v9, v6, :cond_3

    :goto_0
    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v6, v7

    goto :goto_0

    :cond_4
    const-string v6, "DVR.ADAS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "car out line, no report, interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_0
    const-string v6, "DVR.ADAS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "front car crash, level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v8, p0, Lcom/car/dvr/ADAS/ADAS;->mLastCdwReportTime:J

    sub-long v4, v0, v8

    const-wide/16 v8, 0x1f40

    cmp-long v6, v4, v8

    if-lez v6, :cond_5

    const-string v6, "DVR.ADAS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "front car crash, tts report, interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLastCdwReportTime:J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v8, "adas_report"

    invoke-static {v6, v8, v7}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00ca

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "action.forward.collision"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    :cond_5
    const-string v6, "DVR.ADAS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "front car crash, no report, interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :sswitch_1
    iget-wide v8, p0, Lcom/car/dvr/ADAS/ADAS;->mLastFclReportTime:J

    sub-long v4, v0, v8

    const-wide/16 v8, 0x7530

    cmp-long v6, v4, v8

    if-lez v6, :cond_6

    const-string v6, "DVR.ADAS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "front car launch, tts report, interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/car/dvr/ADAS/ADAS;->mLastFclReportTime:J

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v8, "adas_report3"

    invoke-static {v6, v8, v7}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v6

    iget-object v8, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const v9, 0x7f0a00cc

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "action.forward.vehicle.moving"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2

    :cond_6
    const-string v6, "DVR.ADAS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "front car launch, no report, interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAdasInfo()V
    .locals 14

    const/4 v13, 0x1

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "f"

    const-string v12, "report"

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

    if-eqz v11, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "x"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v12}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "y"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v12}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "cr"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v12}, Lcom/adasplus/data/AdasConfig;->getIsCalibCredible()I

    move-result v12

    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "config"

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    if-eqz v11, :cond_3

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "lcr"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "rcr"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "st"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v11}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v11

    if-eq v11, v13, :cond_1

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v11}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v11

    if-ne v11, v13, :cond_2

    :cond_1
    const-string v11, "l0x"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "l0y"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "l1x"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "l1y"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "r0x"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "r0y"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "r1x"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "r1y"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v11, "ldw"

    invoke-virtual {v0, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    if-eqz v11, :cond_7

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v11}, Lcom/adasplus/data/FcwInfo;->getCarNum()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v11}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v11

    if-lez v11, :cond_4

    const-string v11, "fcwy"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "fcwh"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    const-string v11, "fcws"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "fcwn"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCarNum()I

    move-result v12

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :goto_0
    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v11}, Lcom/adasplus/data/FcwInfo;->getCarNum()I

    move-result v11

    if-ge v4, v11, :cond_5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "dis"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getDis()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "x"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "y"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "w"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "h"

    iget-object v12, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v12}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-virtual {v12}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v11}, Lcom/adasplus/data/FcwInfo;->getCarNum()I

    move-result v11

    if-lez v11, :cond_6

    const-string v11, "carinfo"

    invoke-virtual {v3, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v11, "fcw"

    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v11, "adasinfo"

    invoke-virtual {v7, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    new-instance v11, Lcom/car/dvr/ADAS/ADAS$6;

    invoke-direct {v11, p0, v10}, Lcom/car/dvr/ADAS/ADAS$6;-><init>(Lcom/car/dvr/ADAS/ADAS;[B)V

    invoke-virtual {v11}, Lcom/car/dvr/ADAS/ADAS$6;->start()V

    sget-boolean v11, Lcom/car/dvr/ADAS/ADAS;->ADAS_INFO_BROADCAST:Z

    if-eqz v11, :cond_8

    new-instance v5, Landroid/content/Intent;

    const-string v11, "action.adas.info"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "adasinfo"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private startDetect()V
    .locals 3

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DVR.ADAS"

    const-string v2, "startDetect ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/car/dvr/BaseCamera;->startADASDetect()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "DVR.ADAS"

    const-string v2, "startDetect do nothing, because camera is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tiantong2kaiyi(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)Lcom/adasplus/data/FcwInfo;
    .locals 20

    new-instance v6, Lcom/adasplus/data/FcwInfo;

    invoke-direct {v6}, Lcom/adasplus/data/FcwInfo;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    return-object v6

    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v9

    const/4 v14, 0x1

    if-eq v9, v14, :cond_2

    const/16 v14, 0xa

    if-eq v9, v14, :cond_2

    const/4 v14, 0x2

    if-eq v9, v14, :cond_2

    const/16 v14, 0x14

    if-ne v9, v14, :cond_5

    :cond_2
    :goto_0
    invoke-virtual {v6, v9}, Lcom/adasplus/data/FcwInfo;->setState(I)V

    :cond_3
    invoke-virtual {v6, v7}, Lcom/adasplus/data/FcwInfo;->setCarNum(I)V

    if-nez v7, :cond_4

    const/4 v7, 0x1

    :cond_4
    new-array v2, v7, [Lcom/adasplus/data/CarInfo;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_6

    new-instance v14, Lcom/adasplus/data/CarInfo;

    invoke-direct {v14}, Lcom/adasplus/data/CarInfo;-><init>()V

    aput-object v14, v2, v4

    new-instance v8, Lcom/adasplus/data/RectInt;

    invoke-direct {v8}, Lcom/adasplus/data/RectInt;-><init>()V

    aget-object v14, v2, v4

    invoke-virtual {v14, v8}, Lcom/adasplus/data/CarInfo;->setCarRect(Lcom/adasplus/data/RectInt;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v6, v2}, Lcom/adasplus/data/FcwInfo;->setCar([Lcom/adasplus/data/CarInfo;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->isShowDis()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v15, v0

    int-to-float v15, v15

    invoke-virtual {v14, v15}, Lcom/adasplus/data/CarInfo;->setDis(F)V

    :goto_2
    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v14

    double-to-int v10, v14

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v14

    double-to-int v12, v14

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v14

    double-to-int v11, v14

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v14

    double-to-int v13, v14

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/adasplus/data/RectInt;->setX(I)V

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/adasplus/data/RectInt;->setY(I)V

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    sub-int v15, v11, v10

    invoke-virtual {v14, v15}, Lcom/adasplus/data/RectInt;->setW(I)V

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    sub-int v15, v13, v12

    invoke-virtual {v14, v15}, Lcom/adasplus/data/RectInt;->setH(I)V

    add-int/lit8 v4, v4, 0x1

    :cond_7
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    const/4 v5, 0x0

    :goto_3
    if-ge v4, v7, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v14

    double-to-int v10, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v14

    double-to-int v12, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v14

    double-to-int v11, v14

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v14

    double-to-int v13, v14

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/adasplus/data/RectInt;->setX(I)V

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/adasplus/data/RectInt;->setY(I)V

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    sub-int v15, v11, v10

    invoke-virtual {v14, v15}, Lcom/adasplus/data/RectInt;->setW(I)V

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    invoke-virtual {v14}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    sub-int v15, v13, v12

    invoke-virtual {v14, v15}, Lcom/adasplus/data/RectInt;->setH(I)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->isShowDis()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v15, v14, v4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v14}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v14, v0

    int-to-float v14, v14

    invoke-virtual {v15, v14}, Lcom/adasplus/data/CarInfo;->setDis(F)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/adasplus/data/CarInfo;->setDis(F)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v14

    aget-object v14, v14, v4

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/adasplus/data/CarInfo;->setDis(F)V

    goto :goto_4
.end method

.method private tiantong2kaiyi(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/adasplus/data/LdwInfo;
    .locals 12

    new-instance v0, Lcom/adasplus/data/LdwInfo;

    invoke-direct {v0}, Lcom/adasplus/data/LdwInfo;-><init>()V

    new-instance v1, Lcom/adasplus/data/LaneInfo;

    invoke-direct {v1}, Lcom/adasplus/data/LaneInfo;-><init>()V

    const/4 v6, 0x2

    new-array v2, v6, [Landroid/graphics/Point;

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    aput-object v7, v2, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    aput-object v7, v2, v6

    invoke-virtual {v1, v2}, Lcom/adasplus/data/LaneInfo;->setPoints([Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/adasplus/data/LdwInfo;->setLeft(Lcom/adasplus/data/LaneInfo;)V

    new-instance v4, Lcom/adasplus/data/LaneInfo;

    invoke-direct {v4}, Lcom/adasplus/data/LaneInfo;-><init>()V

    const/4 v6, 0x2

    new-array v5, v6, [Landroid/graphics/Point;

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/adasplus/data/LaneInfo;->setPoints([Landroid/graphics/Point;)V

    invoke-virtual {v0, v4}, Lcom/adasplus/data/LdwInfo;->setRight(Lcom/adasplus/data/LaneInfo;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v7

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Lcom/adasplus/data/LaneInfo;->setIsCredible(I)V

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v7

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Lcom/adasplus/data/LaneInfo;->setIsCredible(I)V

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v0, v6}, Lcom/adasplus/data/LdwInfo;->setState(I)V

    iget-object v3, p1, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    const/4 v7, 0x2

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x5

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x5

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    const/4 v7, 0x4

    aget-object v7, v3, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v8

    double-to-int v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3
.end method

.method private tiantong2kaiyiX(D)D
    .locals 5

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mScale:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    sub-double v0, p1, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    return-wide p1
.end method

.method private tiantong2kaiyiY(D)D
    .locals 5

    iget v0, p0, Lcom/car/dvr/ADAS/ADAS;->mScale:F

    float-to-double v0, v0

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    sub-double v0, p1, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    return-wide p1
.end method

.method private updateTestMode()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "DVR.ADAS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTestMode, GpsIsEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ADAS_INDOOR_TEST="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/car/dvr/ADAS/ADAS;->ADAS_INDOOR_TEST:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    sget-boolean v2, Lcom/car/dvr/ADAS/ADAS;->ADAS_INDOOR_TEST:Z

    if-eqz v2, :cond_0

    const-string v2, "DVR.ADAS"

    const-string v3, "updateTestMode, mKaiYiAdasInterfaceImp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v3, "adas_report"

    invoke-static {v2, v3, v5}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v3, "adas_report2"

    invoke-static {v2, v3, v5}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v3, "adas_report3"

    invoke-static {v2, v3, v5}, Lcom/car/common/ProviderUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DVR.ADAS"

    const-string v3, "updateTestMode, kaiyi.setSpeed(0)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->setSpeed(F)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    if-eqz v2, :cond_1

    if-nez v0, :cond_3

    sget-boolean v2, Lcom/car/dvr/ADAS/ADAS;->ADAS_INDOOR_TEST:Z

    if-eqz v2, :cond_3

    const-string v2, "DVR.ADAS"

    const-string v3, "updateTestMode, tiantong.setAdasServerRunMode(0), indoor mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerRunMode(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v2, "DVR.ADAS"

    const-string v3, "updateTestMode, kaiyi.setSpeed(72)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-virtual {v2, v3}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->setSpeed(F)V

    goto :goto_0

    :cond_3
    const-string v2, "DVR.ADAS"

    const-string v3, "updateTestMode, tiantong.setAdasServerRunMode(1), road mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v2, v5}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerRunMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public SetSVDrawView(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast p1, Lcom/car/dvr/ADAS/SVDraw;

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "DVR.ADAS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSVDrawView, mKaiYiDrawView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DVR.ADAS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADAS_TYPE_ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsAdasInit : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mKaiYiAdasInterfaceImp.getVerifyResult() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->getVerifyResult()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public SetTTDrawView(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast p1, Lcom/car/dvr/ADAS/AdasDrawView3;

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

    if-eqz v0, :cond_0

    :cond_0
    const-string v0, "DVR.ADAS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetTTDrawView, mTianTongDrawView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method canPlay()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    :cond_0
    return-void
.end method

.method public getAdasTypeIdFromPreferences()I
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "adas_type"

    const/16 v3, -0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "DVR.ADAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdasTypeIdFromPreferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onProcessBack(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 13

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongDrawView:Lcom/car/dvr/ADAS/AdasDrawView3;

    invoke-virtual {v6, p1, p2}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawBitmap(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2}, Lcom/car/dvr/ADAS/ADAS;->reportIfNeed(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V

    if-eqz p2, :cond_2

    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    const-string v7, "DVR.ADAS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TianTong onProcessBack, cdw.carRects.size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", car0: x,y,showDis,dis,showType="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasRect;->isShowDis()Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v6, "DVR.ADAS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TianTong onProcessBack, front car state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fcar: showDis,dis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasRect;->isShowDis()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getAbsDis()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v6

    if-lez v6, :cond_3

    const-string v6, "DVR.ADAS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TianTong onProcessBack, ldw: type, x,y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    aget-object v8, v8, v12

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    aget-object v8, v8, v12

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyi(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)Lcom/adasplus/data/LdwInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-direct {p0, p2}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyi(Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)Lcom/adasplus/data/FcwInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-direct {p0}, Lcom/car/dvr/ADAS/ADAS;->sendAdasInfo()V

    iget-object v7, p0, Lcom/car/dvr/ADAS/ADAS;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v6, :cond_5

    new-instance v1, Lcom/car/dvr/ADAS/DrawInfo;

    invoke-direct {v1}, Lcom/car/dvr/ADAS/DrawInfo;-><init>()V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mLdwResults:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v1, v6}, Lcom/car/dvr/ADAS/DrawInfo;->setLdwResults(Lcom/adasplus/data/LdwInfo;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mFcwResults:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v1, v6}, Lcom/car/dvr/ADAS/DrawInfo;->setFcwResults(Lcom/adasplus/data/FcwInfo;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/AdasServer;->getVPPara()[I

    move-result-object v5

    new-instance v0, Lcom/adasplus/data/AdasConfig;

    invoke-direct {v0}, Lcom/adasplus/data/AdasConfig;-><init>()V

    const/4 v6, 0x0

    aget v6, v5, v6

    int-to-double v8, v6

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiX(D)D

    move-result-wide v8

    double-to-int v6, v8

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    const/4 v6, 0x1

    aget v6, v5, v6

    int-to-double v8, v6

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/ADAS/ADAS;->tiantong2kaiyiY(D)D

    move-result-wide v8

    double-to-int v6, v8

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/adasplus/data/AdasConfig;->setIsCalibCredible(I)V

    invoke-virtual {v1, v0}, Lcom/car/dvr/ADAS/DrawInfo;->setConfig(Lcom/adasplus/data/AdasConfig;)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandlerNoWait()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v6, "DVR.ADAS"

    const-string v8, "SVDraw\'s handler is null, do nothing"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :cond_4
    :try_start_3
    sget-boolean v6, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/4 v6, 0x2

    iput v6, v4, Landroid/os/Message;->what:I

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    :cond_6
    :try_start_4
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/4 v6, 0x1

    iput v6, v4, Landroid/os/Message;->what:I

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiDrawView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6}, Lcom/car/dvr/ADAS/SVDraw;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public saveAdasTypeIdToPreferences(I)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "adas_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "DVR.ADAS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAdasTypeIdToPreferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCarBackStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/dvr/ADAS/ADAS;->mIsCarBacking:Z

    return-void
.end method

.method public setConfigPoint(FF)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget v1, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    if-ne v1, v6, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/car/dvr/ADAS/ADAS;->kaiyi2tiantong(DD)[I

    move-result-object v0

    const-string v1, "DVR.ADAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVPPara: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")=>("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mTianTongAdas:Lcom/calmcar/adas/apiserver/AdasServer;

    aget v2, v0, v7

    aget v3, v0, v6

    invoke-virtual {v1, v2, v3}, Lcom/calmcar/adas/apiserver/AdasServer;->setVPPara(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    if-eqz v1, :cond_0

    const-string v1, "DVR.ADAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVpoint:(x,y)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mKaiYiAdasInterfaceImp:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-virtual {v1, p1, p2}, Lcom/car/dvr/ADAS/AdasInterfaceImp;->setVpoint(FF)V

    goto :goto_0
.end method

.method public setListener(Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS;->mListener:Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;

    return-void
.end method

.method public startDetect(Landroid/hardware/Camera;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    const-string v2, "private-enable-adas"

    invoke-virtual {v0, v2, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    iget v3, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    iget v4, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/car/dvr/ADAS/RawPreview;->setVideoResolution(II)V

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    invoke-virtual {v2, p1}, Lcom/car/dvr/ADAS/RawPreview;->setMemoryShareFD(Landroid/hardware/Camera;)I

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    invoke-virtual {v2}, Lcom/car/dvr/ADAS/RawPreview;->readShareBuffer()V

    :cond_0
    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_providers_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/car/dvr/ADAS/ADAS;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adas_report"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adas_report2"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adas_report3"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "DVR.ADAS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start startDetect ok mFrameWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFrameHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/ADAS;->mFrameHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsAdasInit = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopDetect()V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mRawPreview:Lcom/car/dvr/ADAS/RawPreview;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/RawPreview;->closeShareBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v0, "DVR.ADAS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDetect ok! mIsAdasInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/ADAS/ADAS;->mIsAdasInit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
