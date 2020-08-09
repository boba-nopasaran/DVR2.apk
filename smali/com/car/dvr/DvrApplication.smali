.class public Lcom/car/dvr/DvrApplication;
.super Landroid/app/Application;
.source "DvrApplication.java"


# static fields
.field public static final ACTION_SPEECH_TIPS:Ljava/lang/String; = "action_speech_tips"

.field public static final KEY_TTS_STRING:Ljava/lang/String; = "key_tts_string"

.field public static final TAG:Ljava/lang/String; = "DVR.Application"

.field private static instance:Lcom/car/dvr/DvrApplication;

.field public static spLock:Landroid/content/SharedPreferences;


# instance fields
.field private mActivity:Lcom/car/dvr/CameraActivity;

.field private mService:Lcom/car/dvr/CameraService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceIntent:Landroid/content/Intent;

.field private mTTSBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Lcom/car/dvr/DvrApplication$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/DvrApplication$1;-><init>(Lcom/car/dvr/DvrApplication;)V

    iput-object v0, p0, Lcom/car/dvr/DvrApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/car/dvr/DvrApplication$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/DvrApplication$2;-><init>(Lcom/car/dvr/DvrApplication;)V

    iput-object v0, p0, Lcom/car/dvr/DvrApplication;->mTTSBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DvrApplication;->mActivity:Lcom/car/dvr/CameraActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraService;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DvrApplication;->mService:Lcom/car/dvr/CameraService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/car/dvr/DvrApplication;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DvrApplication;->mService:Lcom/car/dvr/CameraService;

    return-object p1
.end method

.method public static appendSpeechTips(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static appendSpeechTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/car/dvr/DvrApplication;
    .locals 1

    sget-object v0, Lcom/car/dvr/DvrApplication;->instance:Lcom/car/dvr/DvrApplication;

    return-object v0
.end method

.method public static speechTips(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static speechTips(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/car/common/TipPlayerHelper;->instance()Lcom/car/common/TipPlayerHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/car/common/TipPlayerHelper;->playSpeech(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getCameraService()Lcom/car/dvr/CameraService;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DvrApplication;->mService:Lcom/car/dvr/CameraService;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/car/dvr/DvrApplication;->instance:Lcom/car/dvr/DvrApplication;

    new-instance v2, Lcom/car/common/TipPlayerHelper;

    invoke-direct {v2}, Lcom/car/common/TipPlayerHelper;-><init>()V

    invoke-virtual {v2, p0}, Lcom/car/common/TipPlayerHelper;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/car/dvr/BaseCamera;->adasIsDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {v2, p0}, Lcom/car/dvr/ADAS/ADAS;-><init>(Landroid/content/Context;)V

    :cond_0
    const-string v2, "lock_modle"

    invoke-virtual {p0, v2, v4}, Lcom/car/dvr/DvrApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isLock"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/car/dvr/CameraService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/car/dvr/DvrApplication;->mServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/car/dvr/DvrApplication;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/car/dvr/DvrApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v2, "DVR.Application"

    const-string v3, "bind CameraService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/DvrApplication;->mServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/car/dvr/DvrApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/car/dvr/DvrApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.car.carback_state"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.camera_state"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.wakeup"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/car/dvr/CameraReceiver;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraReceiver;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v0}, Lcom/car/dvr/DvrApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "action_speech_tips"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/dvr/DvrApplication;->mTTSBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/car/dvr/DvrApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/car/dvr/CameraReceiver;->checkAndStartCameraService(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getShowFloatButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DVR.Application"

    const-string v3, "==== show FloatView ===="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/car/dvr/FloatService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/car/dvr/DvrApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_1
    const-string v2, "DVR.Application"

    const-string v3, "==== no FloatView ===="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/car/dvr/DvrApplication;->mTTSBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/DvrApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/dvr/DvrApplication;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/DvrApplication;->mService:Lcom/car/dvr/CameraService;

    const-string v0, "DVR.Application"

    const-string v1, "unbind CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/DvrApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/car/dvr/DvrApplication;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public setCameraActivity(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DvrApplication;->mActivity:Lcom/car/dvr/CameraActivity;

    return-void
.end method
