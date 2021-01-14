.class public Lcom/car/dvr/CameraReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraReceiver.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_CAMERA_CHANGED:Ljava/lang/String; = "com.car.camera_state"

.field public static final ACTION_CAR_BACK:Ljava/lang/String; = "com.car.carback_state"

.field public static final ACTION_WAKEUP:Ljava/lang/String; = "com.car.wakeup"

.field private static final FLAG_AUTO_ENABLE_GSENSOR:I

.field private static final MSG_BACK_KEEP_TIMEOUT:I = 0x2

.field private static final MSG_BACK_OFF:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DVR.CameraReceiver"

.field private static mCarBackStatus:Z

.field private static mRealBackStatus:Z


# instance fields
.field mCarServiceImpl:Lcom/car/common/CarServiceImpl;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mNeedRecover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    const-class v0, Lcom/car/dvr/CameraReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/car/dvr/CameraReceiver;->$assertionsDisabled:Z

    .line 46
    const-string v0, "ro.cm.auto_collision_video"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraReceiver;->FLAG_AUTO_ENABLE_GSENSOR:I

    .line 53
    sput-boolean v1, Lcom/car/dvr/CameraReceiver;->mCarBackStatus:Z

    .line 58
    sput-boolean v1, Lcom/car/dvr/CameraReceiver;->mRealBackStatus:Z

    return-void

    :cond_0
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/CameraReceiver;->mNeedRecover:Z

    .line 69
    new-instance v0, Lcom/car/dvr/CameraReceiver$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraReceiver$1;-><init>(Lcom/car/dvr/CameraReceiver;)V

    iput-object v0, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/CameraReceiver;->mNeedRecover:Z

    .line 69
    new-instance v0, Lcom/car/dvr/CameraReceiver$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraReceiver$1;-><init>(Lcom/car/dvr/CameraReceiver;)V

    iput-object v0, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p1, p0, Lcom/car/dvr/CameraReceiver;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/car/common/CarServiceImpl;

    invoke-direct {v0, p1}, Lcom/car/common/CarServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/dvr/CameraReceiver;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;

    .line 147
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/car/dvr/CameraReceiver;->mRealBackStatus:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/car/dvr/CameraReceiver;->mRealBackStatus:Z

    return p0
.end method

.method static synthetic access$100(Lcom/car/dvr/CameraReceiver;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/car/dvr/CameraReceiver;->sendCameraStatusBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/car/dvr/CameraReceiver;->mCarBackStatus:Z

    return p0
.end method

.method static synthetic access$300(Lcom/car/dvr/CameraReceiver;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraReceiver;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/car/dvr/CameraReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraReceiver;->startCamera(Landroid/content/Context;)V

    return-void
.end method

.method public static checkAndStartCameraService(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    invoke-static {p0}, Lcom/car/dvr/CameraReceiver;->isCameraServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-static {p0}, Lcom/car/dvr/CameraReceiver;->startCameraService(Landroid/content/Context;)V

    .line 280
    :cond_0
    return-void
.end method

.method public static getCarBackStatus()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/car/dvr/CameraReceiver;->mCarBackStatus:Z

    return v0
.end method

.method public static isCameraActivityRunningForeground(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isRunningForeground()Z

    move-result v0

    return v0
.end method

.method public static isCameraServiceRunning(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 296
    .local v1, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 297
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v3, "com.car.dvr.CameraService"

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    const/4 v3, 0x1

    .line 302
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sendCameraStatusBroadcast(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # I

    .prologue
    .line 252
    const-string v2, "DVR.CameraReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send internal carback broadcast: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.dvr.camera_status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startCamera(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/dvr/CameraActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "camera_mode"

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v1, "camera_car_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    const-string v1, "DVR.CameraReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start CameraActivity from CameraReceiver, and putExtra:camera_mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method public static startCameraService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    const-string v1, "DVR.CameraReceiver"

    const-string v2, "start CameraService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/dvr/CameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "service":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 289
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    const-string v6, "DVR.CameraReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 157
    .local v4, "pm":Landroid/os/PowerManager;
    const-string v6, "DVR.CameraReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pm.isInteractive = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-boolean v6, Lcom/car/dvr/CameraReceiver;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v0, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v6, v7

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 239
    invoke-static {p1}, Lcom/car/dvr/CameraReceiver;->checkAndStartCameraService(Landroid/content/Context;)V

    .line 242
    :cond_2
    :goto_1
    return-void

    .line 160
    :sswitch_0
    const-string v6, "com.car.carback_state"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :sswitch_1
    const-string v6, "com.car.camera_state"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :sswitch_2
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_0

    :sswitch_3
    const-string v6, "com.car.wakeup"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_0

    .line 162
    :pswitch_0
    const-string v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 163
    .local v5, "state":I
    const-string v6, "DVR.CameraReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "car back state = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", REVERSE_GEAR_DELAY_MS="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v10, Lcom/car/dvr/CameraManager;->REVERSE_GEAR_DELAY_MS:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-ne v5, v8, :cond_4

#by boba 07.01.2020
#delay for P->D->P
#    .line 166
#    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;
#
#    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z
#
#    move-result v6
#
#    if-eqz v6, :cond_3
#
#    .line 167
#    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;
#
#    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V
#
#    goto :goto_1

    .line 170
    :cond_3
    sput-boolean v8, Lcom/car/dvr/CameraReceiver;->mCarBackStatus:Z

    .line 171
    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 172
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

#by boba 07.01.2020
#delay for P->D->P
invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/car/dvr/CameraManager;->REVERSE_GEAR_DELAY_MS:I

    int-to-long v10, v7

    invoke-virtual {v6, v3, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    const-string v6, "DVR.CameraReceiver"

    const-string v7, "broadcast SCREEN_REQUEST_ON"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

#by boba 07.01.2020
#delay for P->D->P
#    .line 175
#    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mCarServiceImpl:Lcom/car/common/CarServiceImpl;
#
#    invoke-virtual {v6, v8, v8, v12}, Lcom/car/common/CarServiceImpl;->requestScreen(ZZLjava/lang/String;)Z
#
#    move-result v6
#
#    iput-boolean v6, p0, Lcom/car/dvr/CameraReceiver;->mNeedRecover:Z

    goto/16 :goto_1

    .line 177
    .end local v3    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

#by boba 07.01.2020
#delay for P->D->P
invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v6, p0, Lcom/car/dvr/CameraReceiver;->mHandler:Landroid/os/Handler;

    const-string v7, "persist.backcar.timeout"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v10, v7

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 196
    .end local v5    # "state":I
    :pswitch_1
    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_5

    .line 200
    :cond_5
    const-string v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 201
    .restart local v5    # "state":I
    const-string v6, "camnode"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "camnode":Ljava/lang/String;
    const-string v6, "DVR.CameraReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "camnode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_6

    .end local v1    # "camnode":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-ne v5, v8, :cond_2

    invoke-static {}, Lcom/car/dvr/CameraService;->isUsbReverseGearLineConnected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 214
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.car.carback_state"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p2

    .line 218
    if-eqz p2, :cond_7

    const-string v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_7

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isCarBacking()Z

    move-result v6

    if-nez v6, :cond_7

    .line 220
    const-string v6, "DVR.CameraReceiver"

    const-string v7, "switch to carback mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/car/dvr/CameraReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 202
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "camnode":Ljava/lang/String;
    :cond_6
    const-string v1, "null"

    goto :goto_2

    .line 223
    .end local v1    # "camnode":Ljava/lang/String;
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :cond_7
    const-string v8, "DVR.CameraReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no carback: state="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p2, :cond_8

    const-string v6, "null"

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isCarBacking="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isCarBacking()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const-string v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    .line 230
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "state":I
    :pswitch_2
    invoke-static {p1}, Lcom/car/dvr/CameraReceiver;->checkAndStartCameraService(Landroid/content/Context;)V

    .line 232
    :pswitch_3
    sget v6, Lcom/car/dvr/CameraReceiver;->FLAG_AUTO_ENABLE_GSENSOR:I

    if-ne v6, v8, :cond_2

    .line 233
    invoke-static {p1, v8}, Lcom/car/common/ProviderUtils;->setVideoLockEnbale(Landroid/content/Context;Z)V

    .line 234
    const v6, 0x7f0a0026

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a424c62 -> :sswitch_1
        -0x7290f9ba -> :sswitch_0
        0x5e38926 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
