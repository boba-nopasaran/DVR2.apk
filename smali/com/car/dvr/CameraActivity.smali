.class public Lcom/car/dvr/CameraActivity;
.super Lcom/car/dvr/BaseActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/car/dvr/MyHorizontalScrollView$Listener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;,
        Lcom/car/dvr/CameraActivity$SwitchCameraTask;,
        Lcom/car/dvr/CameraActivity$GestureListener;,
        Lcom/car/dvr/CameraActivity$MyReceiver;,
        Lcom/car/dvr/CameraActivity$StorageReceiver;,
        Lcom/car/dvr/CameraActivity$MyHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ADAS_OK:Ljava/lang/String; = "com.car.adas.ok"

.field public static final ACTION_COLLISION:Ljava/lang/String; = "com.car.collision"

.field public static final ACTION_MONITOR_NOTIFY:Ljava/lang/String; = "com.car.monitor.notify"

.field public static final ACTION_PREVIEW_EXIT:Ljava/lang/String; = "com.car.preview.exit"

.field private static final ACTION_RECORDING_START:Ljava/lang/String; = "com.car.videorecorder.recording_start"

.field private static final ACTION_RECORDING_STOP:Ljava/lang/String; = "com.car.videorecorder.recording_stop"

.field private static final ACTION_RECORDING_TIME_CHANGED:Ljava/lang/String; = "com.car.videorecorder.recording_time_changed"

.field public static final ACTION_TURN_EXIT:Ljava/lang/String; = "com.car.turn.exit"

.field private static ANIM_DURATION:I = 0x0

.field private static final BACK_CAM_NO_TIPS:Z

.field public static final BOOT_MODE_BACK:I = 0x1

.field public static final BOOT_MODE_NORMAL:I = 0x0

.field public static final BOOT_MODE_TURN:I = 0x2

.field private static final BTN_LIST:Ljava/lang/String;

.field private static final DEFAULT_MODE:I

.field private static final DIALOG_BACK_CAMERA_REMOVED:I = 0x8

.field private static final DIALOG_CAMERA_SERVICE_ERROR:I = 0x5

.field private static final DIALOG_ERROR_MODE:I = 0x4

.field private static final DIALOG_FRONT_CAMERA_REMOVED:I = 0x7

.field private static final DIALOG_NO_CAMERA:I = 0x1

.field private static final DIALOG_OPEN_BACK_CAMERA_FAILED:I = 0x3

.field private static final DIALOG_OPEN_FRONT_CAMERA_FAILED:I = 0x2

.field private static final DIALOG_STORAGE_NOT_EXIST:I = 0x6

.field protected static final EXTRA_CAMERA_CAR_BACK:Ljava/lang/String; = "camera_car_back"

.field protected static final EXTRA_CAMERA_FULLSCREEN:Ljava/lang/String; = "camera_fullscreen"

.field protected static final EXTRA_CAMERA_MODE:Ljava/lang/String; = "camera_mode"

.field protected static final EXTRA_CAMERA_NAME:Ljava/lang/String; = "camera_name"

.field private static final FLAG_DUAL_CAM_PREVIEW:I

.field private static final FLING_MIN_DISTANCE:I = 0x32

.field private static final FLING_MIN_VELOCITY:I = 0x32

.field public static final HTCFUN_ACCIDENT_BACK_HAPPEN_PROP:Ljava/lang/String; = "sys.car.dvr.accident.b"

.field public static final HTCFUN_ACCIDENT_FRONT_HAPPEN_PROP:Ljava/lang/String; = "sys.car.dvr.accident.f"

.field private static final LARGE_SURFACE_CAMERA:Ljava/lang/String; = "large_surface_camera"

.field public static final LEFT_BAR_WIDTH:I

.field private static final MSG_ANMATION:I = 0x9

.field private static final MSG_AUTO_START:I = 0x7

.field private static final MSG_CAM_PLUGIN:I = 0xd

.field private static final MSG_CAM_PLUGOUT:I = 0xc

.field private static final MSG_CHECK_BACK_STATUS:I = 0xf

.field private static final MSG_CHECK_CAMERA_OPENED:I = 0x10

.field private static final MSG_DISMISS_DIALOG:I = 0x8

.field private static final MSG_ENSURE_CAM_SURFACE:I = 0x12

.field private static final MSG_HIDE_CONTROL:I = 0xb

.field private static final MSG_NO_CAMERAS:I = 0x4

.field private static final MSG_ON_CLICK:I = 0x13

.field private static final MSG_SCROLL_DOWN:I = 0x6

.field private static final MSG_SCROLL_UP:I = 0x5

.field private static final MSG_SHOW_CONTROL:I = 0xa

.field private static final MSG_START_RECORDING:I = 0x1

.field private static final MSG_STOP_PREVIEW:I = 0xe

.field private static final MSG_STOP_RECORDING:I = 0x2

.field private static final MSG_STORAGE_CHECK_FINISHED:I = 0x11

.field private static final MSG_UPDATE_TIME:I = 0x3

.field private static final NO_REVERSE_GEAR_UI:Z

.field private static final PANO_VIEW:Z

.field private static final PREVIEW_MODE:Ljava/lang/String; = "preview_mode"

.field private static final RECORDING_TIME:Ljava/lang/String; = "recording_time"

.field public static final RIGHT_BAR_WIDTH:I

.field private static final SCROLL_FIRST_Y:Ljava/lang/String; = "scroll_first_y"

.field private static final SCROLL_LEFT_X:Ljava/lang/String; = "scroll_left_x"

.field private static SCROLL_LEFT_X_DEFAULT_VALUE:F = 0.0f

.field private static final SCROLL_RIGHT_X:Ljava/lang/String; = "scroll_right_x"

.field private static SCROLL_RIGHT_X_DEFAULT_VALUE:F = 0.0f

.field private static final SCROLL_SECOND_Y:Ljava/lang/String; = "scroll_second_y"

.field private static final SCROLL_THIRD_Y:Ljava/lang/String; = "scroll_third_y"

.field private static final TAG:Ljava/lang/String; = "DVR.CameraActivity"

.field public static final VIDEO_CAPTURE_NOW_ACTION:Ljava/lang/String; = "com.car.video.capturenow"

.field private static mBootFrom:I

.field private static mInstance:Lcom/car/dvr/CameraActivity;

.field private static mIsCarBacking:Z

.field private static sAlwaysShowControlBar:Z

.field private static sDoubleTapFullscreenNotified:Z

.field private static sIsRunningForeground:Z

.field private static sIsWideScreen:Z

.field private static sNonRectScreen:Z

.field private static sScreenSplit:Z

.field private static sSideCameraPreviewMaxWidth:I


# instance fields
.field private ivGsensor:Landroid/widget/ImageView;

.field private ivMic:Landroid/widget/ImageView;

.field private lock_model:Landroid/content/SharedPreferences$Editor;

.field private mADAS:Lcom/car/dvr/ADAS/ADAS;

.field private mAdasView:Lcom/car/dvr/ADAS/SVDraw;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBackOpen:Z

.field private mBrightnessBeforeCarBacking:I

.field private mCamSelector:Landroid/view/View;

.field private mCameraManager:Lcom/car/dvr/CameraManager;

.field private mContainer23:Landroid/view/View;

.field private mContainerFirst:Landroid/widget/ScrollView;

.field private mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

.field private mContainerLeftSide:Landroid/view/View;

.field private mContainerPano:Landroid/view/View;

.field private mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

.field private mContainerRightSide:Landroid/view/View;

.field private mContainerSecond:Landroid/widget/ScrollView;

.field private mContainerThird:Landroid/widget/ScrollView;

.field private mControlContainer:Landroid/view/View;

.field private mControlContainerShow:Z

.field private mControlContainerW:I

.field private mDoubleTapTime:J

.field private mFrontAndBackContainerResizer:Ljava/lang/Runnable;

.field private mFrontAndBackScrollPosInitialiser:Ljava/lang/Runnable;

.field private mFrontAndBackScrollPosSaver:Ljava/lang/Runnable;

.field private mFrontOpen:Z

.field private mGesture:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFocus1st:Z

.field private mImgHistory:Landroid/widget/ImageButton;

.field private mImgMenu:Landroid/widget/ImageButton;

.field private mImgRecording:Landroid/widget/ImageButton;

.field private mInAction:Z

.field private mInsideCameraGesture:Landroid/view/GestureDetector;

.field private mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

.field private mInsideOpen:Z

.field private mIsFullScreenBeforeCarBacking:Z

.field private mLargeId:I

.field private mLargeTime:Lcom/car/dvr/RecordTimeView;

.field private mLastClickTime:J

.field private mLineControl:Landroid/view/View;

.field private mLineImageView:Lcom/car/dvr/LineImageView;

.field private mLockImageButton:Landroid/widget/ImageButton;

.field private mLowerLeftBtns:Landroid/view/View;

.field private mMode:I

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mOpenretry:I

.field private mPanoView:Lcom/car/dvr/PanoView;

.field private mPhotoUI:Lcom/car/dvr/PhotoUI;

.field private mPreLargeId:I

.field private mPreMode:I

.field private mPreviewModeBeforeTurnLeftRight:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

.field private mRemovableCamState:I

.field private mRootView:Landroid/view/View;

.field private mScrollPosInitialiser:Ljava/lang/Runnable;

.field private mService:Lcom/car/dvr/CameraService;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mSmallSurfaceH:I

.field private mSmallSurfaceW:I

.field private mSmallSurfaceX:I

.field private mSmallSurfaceY:I

.field private mStartAnimationTime:J

.field private mStopPreviewTime:I

.field private mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

.field private mSurfaceFirst:Landroid/view/TextureView;

.field private mSurfaceLeft:Landroid/view/TextureView;

.field private mSurfaceRight:Landroid/view/TextureView;

.field private mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

.field private mSurfaceThird:Lcom/car/dvr/MySurfaceView;

.field private mSwitchButton:Landroid/widget/ImageButton;

.field private mTabBack:Lcom/car/dvr/IconTextView;

.field private mTabDouble:Lcom/car/dvr/IconTextView;

.field private mTabFront:Lcom/car/dvr/IconTextView;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/car/dvr/CameraActivity;->SCROLL_LEFT_X_DEFAULT_VALUE:F

    .line 97
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/car/dvr/CameraActivity;->SCROLL_RIGHT_X_DEFAULT_VALUE:F

    .line 98
    const/16 v0, 0x2a8

    sput v0, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    .line 100
    const-string v0, "persist.leftbar.width"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraActivity;->LEFT_BAR_WIDTH:I

    .line 101
    const-string v0, "persist.rightbar.width"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraActivity;->RIGHT_BAR_WIDTH:I

    .line 103
    const-string v0, "ro.dvrprev.btns"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    .line 104
    const-string v0, "persist.acc.on.cam.fullscreen"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->BACK_CAM_NO_TIPS:Z

    .line 105
    const-string v0, "persist.dvr.no.reverse.gear.ui"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->NO_REVERSE_GEAR_UI:Z

    .line 106
    const-string v0, "persist.dvr.pano.view"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->PANO_VIEW:Z

    .line 107
    const-string v0, "ro.dual_cam_preview"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    .line 116
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_0
    sput v0, Lcom/car/dvr/CameraActivity;->DEFAULT_MODE:I

    .line 138
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    .line 139
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    .line 140
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    .line 141
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    .line 142
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    .line 169
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    .line 202
    const/16 v0, 0xfa

    sput v0, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    .line 205
    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sDoubleTapFullscreenNotified:Z

    return-void

    .line 116
    :cond_0
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/car/dvr/BaseActivity;-><init>()V

    .line 122
    iput v1, p0, Lcom/car/dvr/CameraActivity;->mOpenretry:I

    .line 127
    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    .line 129
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    .line 136
    sget v0, Lcom/car/dvr/CameraActivity;->DEFAULT_MODE:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    .line 189
    new-instance v0, Lcom/car/dvr/CameraActivity$MyReceiver;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$MyReceiver;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

    .line 190
    new-instance v0, Lcom/car/dvr/CameraActivity$StorageReceiver;

    invoke-direct {v0, p0, v3}, Lcom/car/dvr/CameraActivity$StorageReceiver;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

    .line 203
    const/16 v0, 0x7530

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    .line 204
    iput v2, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    .line 207
    iput-object v3, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    .line 1300
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    .line 1380
    new-instance v0, Lcom/car/dvr/CameraActivity$27;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$27;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mScrollPosInitialiser:Ljava/lang/Runnable;

    .line 1883
    new-instance v0, Lcom/car/dvr/CameraActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$MyHandler;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    .line 2110
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_0
    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    .line 2802
    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mHasFocus1st:Z

    .line 2834
    iput v2, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    .line 2835
    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    .line 2836
    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    .line 2915
    new-instance v0, Lcom/car/dvr/CameraActivity$30;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$30;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3182
    new-instance v0, Lcom/car/dvr/CameraActivity$31;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$31;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackContainerResizer:Ljava/lang/Runnable;

    .line 3246
    new-instance v0, Lcom/car/dvr/CameraActivity$32;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$32;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosInitialiser:Ljava/lang/Runnable;

    .line 3285
    new-instance v0, Lcom/car/dvr/CameraActivity$33;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$33;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosSaver:Ljava/lang/Runnable;

    .line 3309
    return-void

    .line 2110
    :cond_0
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/ADAS;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/dvr/CameraActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mInsideCameraGesture:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/CameraService;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/car/dvr/CameraActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/car/dvr/CameraActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->lock_model:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/car/dvr/CameraActivity;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/car/dvr/CameraActivity;->lock_model:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/car/dvr/CameraActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/IconTextView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/car/dvr/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->refreshButton()V

    return-void
.end method

.method static synthetic access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/LineImageView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    return-object v0
.end method

.method static synthetic access$2000()F
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/car/dvr/CameraActivity;->SCROLL_LEFT_X_DEFAULT_VALUE:F

    return v0
.end method

.method static synthetic access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$2300()F
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/car/dvr/CameraActivity;->SCROLL_RIGHT_X_DEFAULT_VALUE:F

    return v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcom/car/dvr/CameraActivity;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/car/dvr/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/car/dvr/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->actionOnCarBack(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    return v0
.end method

.method static synthetic access$2802(Lcom/car/dvr/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    return p1
.end method

.method static synthetic access$2900(Lcom/car/dvr/CameraActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/car/dvr/CameraActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/PanoView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPanoView:Lcom/car/dvr/PanoView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/car/dvr/CameraActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    return v0
.end method

.method static synthetic access$3400(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    return v0
.end method

.method static synthetic access$3500(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    return v0
.end method

.method static synthetic access$3600(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    return v0
.end method

.method static synthetic access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    return v0
.end method

.method static synthetic access$3902(Lcom/car/dvr/CameraActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/car/dvr/CameraActivity;->mStartAnimationTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/car/dvr/CameraActivity;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mGesture:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/car/dvr/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->setControlContainerClickable(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/car/dvr/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    return-void
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/car/dvr/CameraActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/car/dvr/CameraActivity;->mDoubleTapTime:J

    return-wide p1
.end method

.method static synthetic access$4400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    return v0
.end method

.method static synthetic access$4602(Lcom/car/dvr/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    return p1
.end method

.method static synthetic access$4700(Lcom/car/dvr/CameraActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/car/dvr/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/car/dvr/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->getSecondSurfaceVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/car/dvr/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    return-void
.end method

.method static synthetic access$5200(Lcom/car/dvr/CameraActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    return v0
.end method

.method static synthetic access$5202(Lcom/car/dvr/CameraActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    return p1
.end method

.method static synthetic access$5300(Lcom/car/dvr/CameraActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/car/dvr/CameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    return-void
.end method

.method static synthetic access$5500(Lcom/car/dvr/CameraActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5600()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosInitialiser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosSaver:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/CameraActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actionOnCameraHotplug(II)V
    .locals 7
    .param p1, "cameraId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 2427
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-eqz v1, :cond_1

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, v5, :cond_1

    :cond_0
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    if-nez v1, :cond_2

    .line 2492
    :cond_1
    :goto_0
    return-void

    .line 2430
    :cond_2
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v0

    .line 2431
    .local v0, "hotplugCameraIn":Z
    const-string v3, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CameraHotplug, camera: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p2, v5, :cond_6

    const-string v1, "in"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", isHotplugCameraIn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    if-ne p2, v5, :cond_8

    .line 2435
    if-eqz v0, :cond_4

    .line 2436
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->BACK_CAM_NO_TIPS:Z

    if-nez v1, :cond_3

    .line 2438
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    .line 2441
    :cond_3
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v1, :cond_7

    .line 2442
    const-string v1, "DVR.CameraActivity"

    const-string v3, "car backing, force setMode(CAMERA_BACK)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    move-object v1, v2

    check-cast v1, Landroid/view/TextureView;

    invoke-direct {p0, v3, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2444
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    check-cast v2, Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2445
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2446
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2447
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 2478
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    .line 2481
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2484
    sget v1, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-eqz v1, :cond_5

    .line 2485
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 2487
    :cond_5
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 2431
    :cond_6
    const-string v1, "out"

    goto :goto_1

    .line 2451
    :cond_7
    iget v1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq v1, v3, :cond_4

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-ne v1, v5, :cond_4

    .line 2452
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    move-object v1, v2

    check-cast v1, Landroid/view/TextureView;

    invoke-direct {p0, v3, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2453
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    check-cast v2, Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2454
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2455
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 2456
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_2

    .line 2461
    :cond_8
    if-eqz v0, :cond_9

    .line 2462
    const-string v1, "DVR.CameraActivity"

    const-string v2, "hotplug camera still plugin, fake plugout message, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2466
    :cond_9
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    .line 2467
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isCarBacking()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2468
    const-string v1, "DVR.CameraActivity"

    const-string v2, "isCarBacking, keep CAMERA_BACK mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 2474
    :goto_3
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto/16 :goto_2

    .line 2471
    :cond_a
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_3

    .line 2489
    :cond_b
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v6}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 2490
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v6}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method private actionOnCarBack(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2361
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    .line 2424
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    const-string v1, "DVR.CameraActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarBack is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v3, :cond_2

    const-string v0, "on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    if-ne p1, v3, :cond_5

    .line 2367
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v0, :cond_3

    .line 2368
    const-string v0, "DVR.CameraActivity"

    const-string v1, "is already CarBacking, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2365
    :cond_2
    const-string v0, "off"

    goto :goto_1

    .line 2372
    :cond_3
    invoke-direct {p0, v3}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 2374
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2380
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_4

    .line 2382
    iput v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    .line 2383
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    goto :goto_0

    .line 2387
    :cond_4
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    .line 2388
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    .line 2390
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 2422
    :goto_2
    sput v4, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 2423
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    goto :goto_0

    .line 2392
    :cond_5
    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 2393
    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v0, v3, :cond_6

    .line 2394
    sput-boolean v4, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    .line 2396
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->finish()V

    goto :goto_0

    .line 2400
    :cond_6
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v0, :cond_7

    .line 2401
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0}, Lcom/car/dvr/IconTextView;->performClick()Z

    .line 2404
    :cond_7
    iput-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    .line 2405
    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V

    .line 2407
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    if-ne v0, v5, :cond_8

    .line 2409
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    goto :goto_0

    .line 2414
    :cond_8
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 2415
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    if-eq v0, v1, :cond_9

    .line 2416
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    .line 2418
    :cond_9
    iput v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    goto :goto_2
.end method

.method private alwaysShowControlBar(Z)V
    .locals 7
    .param p1, "alwaysShow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 3109
    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alwaysShowControlBar("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    const/4 v1, 0x0

    .line 3111
    .local v1, "marginRight":I
    if-eqz p1, :cond_0

    .line 3112
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 3114
    :cond_0
    const v3, 0x7f0d0001

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3115
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3116
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3117
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3119
    const v3, 0x7f0d0013

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3120
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3121
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3122
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3123
    return-void
.end method

.method private autoSetLeftRightCamPreview(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1414
    const/4 v1, 0x1

    .local v1, "leftVisible":Z
    const/4 v2, 0x1

    .line 1415
    .local v2, "rightVisible":Z
    const/4 v0, 0x0

    .line 1416
    .local v0, "camNameFromIntent":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1417
    const-string v3, "camera_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    :cond_0
    iget v3, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v3, v4, :cond_4

    .line 1420
    if-eqz v0, :cond_1

    .line 1421
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1422
    const/4 v2, 0x0

    .line 1439
    :cond_1
    :goto_0
    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoSetLeftRightCamPreview, mMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", camNameFromIntent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    .line 1441
    return-void

    .line 1423
    :cond_2
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1424
    const/4 v1, 0x0

    goto :goto_0

    .line 1425
    :cond_3
    const-string v3, "rear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1426
    const/4 v1, 0x0

    .line 1427
    const/4 v2, 0x0

    goto :goto_0

    .line 1435
    :cond_4
    const/4 v1, 0x0

    .line 1436
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cameraName2CameraID(Landroid/content/Intent;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3126
    const/4 v0, -0x1

    .line 3127
    .local v0, "camID":I
    const-string v2, "camera_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3128
    .local v1, "camName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3129
    const/4 v2, -0x1

    .line 3147
    :goto_0
    return v2

    .line 3132
    :cond_0
    const-string v2, "front"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3133
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    .line 3146
    :cond_1
    :goto_1
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cameraName2CameraID: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> camID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 3147
    goto :goto_0

    .line 3134
    :cond_2
    const-string v2, "rear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3135
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    goto :goto_1

    .line 3136
    :cond_3
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3137
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    goto :goto_1

    .line 3138
    :cond_4
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3139
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    goto :goto_1

    .line 3140
    :cond_5
    const-string v2, "inside"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3141
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    goto :goto_1

    .line 3142
    :cond_6
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3143
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_1
.end method

.method private controlContainerAnimation(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2256
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    if-eqz v1, :cond_1

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2259
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2261
    iput-boolean v4, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    .line 2262
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2265
    .local v0, "animation1":Landroid/view/animation/TranslateAnimation;
    sget v1, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2267
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2268
    new-instance v1, Lcom/car/dvr/CameraActivity$28;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$28;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2298
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2299
    .end local v0    # "animation1":Landroid/view/animation/TranslateAnimation;
    :cond_2
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    .line 2302
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2305
    .restart local v0    # "animation1":Landroid/view/animation/TranslateAnimation;
    sget v1, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2306
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2307
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2308
    new-instance v1, Lcom/car/dvr/CameraActivity$29;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$29;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2338
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private currentIsFullScreen()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3029
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 3030
    .local v0, "sysui":I
    const-string v4, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentIsFullScreen: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mControlContainer.VISIBLE="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    .line 3030
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    .line 3032
    goto :goto_2
.end method

.method private ensureCameraSurface()V
    .locals 4

    .prologue
    .line 862
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCameraSurface: mLargeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSurfaceFirst"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget v1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 869
    iget v1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v1, v2, :cond_4

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 870
    .local v0, "smallId":I
    :goto_1
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ensureCameraSurface: smallId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSurfaceSecond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v1, v0}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 872
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 881
    :goto_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 882
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 885
    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 886
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 889
    :cond_3
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v1, :cond_0

    .line 890
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto/16 :goto_0

    .line 869
    .end local v0    # "smallId":I
    :cond_4
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    goto :goto_1

    .line 875
    .restart local v0    # "smallId":I
    :cond_5
    const-string v1, "DVR.CameraActivity"

    const-string v2, "ensureCameraSurface: small view camera unvaliable,recheck"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto :goto_2
.end method

.method private enterCarBacking(Z)V
    .locals 8
    .param p1, "isCarbacking"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0xf

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 2838
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterCarBacking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NO_REVERSE_GEAR_UI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->NO_REVERSE_GEAR_UI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    invoke-static {p1}, Lcom/car/dvr/CameraActivity;->sendCarBackActivityStatusBroadcast(Z)V

    .line 2840
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    .line 2841
    :cond_0
    sput-boolean p1, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    .line 2842
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    invoke-virtual {v0, p1}, Lcom/car/dvr/ADAS/ADAS;->setCarBackStatus(Z)V

    .line 2844
    :cond_1
    if-eqz p1, :cond_7

    .line 2845
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->setBrightnessMax()V

    .line 2846
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v7, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2849
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->NO_REVERSE_GEAR_UI:Z

    if-nez v0, :cond_2

    .line 2850
    const v0, 0x7f0a009f

    invoke-static {p0, v0}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    .line 2852
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/LineImageView;->setVisibility(I)V

    .line 2853
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2855
    :cond_2
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2856
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v0, v3}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 2857
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2858
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2859
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2860
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    .line 2861
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    if-nez v0, :cond_3

    .line 2862
    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    .line 2865
    :cond_3
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2866
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->insideOfDualCVBSisWorking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    .line 2867
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    if-eqz v0, :cond_4

    .line 2868
    const-string v0, "DVR.CameraActivity"

    const-string v1, "cvbsToggle to BackCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0, v4}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    .line 2873
    :cond_4
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->PANO_VIEW:Z

    if-eqz v0, :cond_5

    .line 2874
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2907
    :cond_5
    :goto_0
#by boba 23.01.2021
#show rear cam if recording is disabled
#    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z
#
#    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v0, :cond_c

    .line 2908
    :cond_6
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2912
    :goto_1
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    .line 2913
    return-void

    .line 2877
    :cond_7
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    if-ltz v0, :cond_8

    .line 2878
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setBrightness(I)V

    .line 2879
    const/4 v0, -0x1

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    .line 2881
    :cond_8
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2882
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0, v3}, Lcom/car/dvr/LineImageView;->setVisibility(I)V

    .line 2883
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2884
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2885
    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-eq v0, v6, :cond_9

    .line 2886
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2887
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2888
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 2891
    :cond_9
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2892
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    if-nez v0, :cond_a

    .line 2893
    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    .line 2896
    :cond_a
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->insideOfDualCVBSisWorking()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2897
    const-string v0, "DVR.CameraActivity"

    const-string v1, "cvbsToggle restore to InsideCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0, v4}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    .line 2901
    :cond_b
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->PANO_VIEW:Z

    if-eqz v0, :cond_5

    .line 2902
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2910
    :cond_c
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getBootMode()I
    .locals 1

    .prologue
    .line 2939
    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    return v0
.end method

.method public static getInstance()Lcom/car/dvr/CameraActivity;
    .locals 1

    .prologue
    .line 3155
    sget-object v0, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    return-object v0
.end method

.method private getSecondSurfaceVisibility()I
    .locals 1

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 3179
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v0}, Lcom/car/dvr/MySurfaceView;->getVisibility()I

    move-result v0

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1902
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 2075
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1904
    :pswitch_1
    const-string v17, "DVR.CameraActivity"

    const-string v18, "MSG_STORAGE_CHECK_FINISHED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1906
    const v17, 0x7f0a0095

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    goto :goto_0

    .line 1908
    :cond_1
    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1910
    new-instance v7, Landroid/content/Intent;

    const-string v17, "action_show_alert_sd"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1911
    .local v7, "it":Landroid/content/Intent;
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/car/dvr/CameraActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1913
    const v17, 0x7f0a0098

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    .line 1915
    const-string v17, "sys.car.dvr.accident.f"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v17, "sys.car.dvr.accident.b"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1922
    .end local v7    # "it":Landroid/content/Intent;
    :cond_2
    const v17, 0x7f0a0097

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    .line 1924
    const-string v17, "sys.car.dvr.accident.f"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string v17, "sys.car.dvr.accident.b"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1936
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/dvr/CameraManager;->isRecording()I

    move-result v17

    if-lez v17, :cond_3

    const/4 v6, 0x1

    .line 1937
    .local v6, "isRecording":Z
    :goto_1
    const-string v17, "DVR.CameraActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MSG_START_RECORDING, isRecording="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    if-nez v6, :cond_4

    .line 1939
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->onStopRecording()V

    goto/16 :goto_0

    .line 1936
    .end local v6    # "isRecording":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1941
    .restart local v6    # "isRecording":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->onStartRecording()V

    goto/16 :goto_0

    .line 1945
    .end local v6    # "isRecording":Z
    :pswitch_3
    const-string v17, "DVR.CameraActivity"

    const-string v18, "MSG_STOP_RECORDING"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1947
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->onStopRecording()V

    goto/16 :goto_0

    .line 1950
    :pswitch_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1951
    .local v10, "seconds":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1952
    .local v8, "mode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/car/dvr/CameraActivity;->updateRecordTime(II)V

    goto/16 :goto_0

    .line 1958
    .end local v8    # "mode":I
    .end local v10    # "seconds":I
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->scrollUp()V

    goto/16 :goto_0

    .line 1961
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->scrollDown()V

    goto/16 :goto_0

    .line 1964
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->isDestroyed()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1966
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->startRecording()V

    goto/16 :goto_0

    .line 1971
    :pswitch_8
    const/16 v17, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1972
    :catch_0
    move-exception v4

    .line 1973
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1977
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1978
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/dvr/CameraActivity;->mStartAnimationTime:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    sget v17, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gez v17, :cond_6

    .line 1979
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/car/dvr/CameraActivity;->mStartAnimationTime:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v9, v17, v18

    .line 1981
    .local v9, "per":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 1982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1984
    .local v15, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    .line 1985
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    .line 1986
    .local v14, "w":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    .line 1987
    .local v5, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    move-object/from16 v17, v0

    add-int v18, v15, v14

    add-int v19, v16, v5

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/car/dvr/MySurfaceView;->reLayout(IIII)V

    .line 1996
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1989
    .end local v5    # "h":I
    .end local v14    # "w":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v9

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1991
    .restart local v15    # "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    .line 1992
    .restart local v16    # "y":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    .line 1993
    .restart local v14    # "w":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    .line 1994
    .restart local v5    # "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    move-object/from16 v17, v0

    add-int v18, v15, v14

    add-int v19, v16, v5

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/car/dvr/MySurfaceView;->reLayout(IIII)V

    goto :goto_2

    .line 1998
    .end local v5    # "h":I
    .end local v9    # "per":F
    .end local v14    # "w":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 1999
    move-object/from16 v0, p0

    iget v15, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    .line 2000
    .restart local v15    # "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    .line 2001
    .restart local v16    # "y":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    .line 2002
    .restart local v14    # "w":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    .line 2003
    .restart local v5    # "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    move-object/from16 v17, v0

    add-int v18, v15, v14

    add-int v19, v16, v5

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/car/dvr/MySurfaceView;->reLayout(IIII)V

    goto/16 :goto_0

    .line 2005
    .end local v5    # "h":I
    .end local v14    # "w":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 2006
    .restart local v15    # "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    .line 2007
    .restart local v16    # "y":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    .line 2008
    .restart local v14    # "w":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    .line 2009
    .restart local v5    # "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    move-object/from16 v17, v0

    add-int v18, v15, v14

    add-int v19, v16, v5

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/car/dvr/MySurfaceView;->reLayout(IIII)V

    goto/16 :goto_0

    .line 2014
    .end local v5    # "h":I
    .end local v12    # "time":J
    .end local v14    # "w":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    :pswitch_a
    const-string v17, "DVR.CameraActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MSG_ON_CLICK, mPreMode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    sget-boolean v17, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v17, :cond_9

    .line 2016
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v17

    if-eqz v17, :cond_8

    sget-boolean v17, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_8

    .line 2017
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto/16 :goto_0

    .line 2020
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    move/from16 v17, v0

    if-ltz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    move/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 2021
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/dvr/CameraActivity;->mPreMode:I

    .line 2023
    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    goto/16 :goto_0

    .line 2020
    :cond_a
    sget v17, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_3

    .line 2026
    :pswitch_b
    const-string v18, "DVR.CameraActivity"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MSG_SHOW_CONTROL, mControlContainer.VISIBLE="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_b

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    sget-boolean v17, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 2029
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V

    goto/16 :goto_0

    .line 2026
    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 2033
    :pswitch_c
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V

    goto/16 :goto_0

    .line 2036
    :pswitch_d
    sget v17, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraActivity;->actionOnCameraHotplug(II)V

    goto/16 :goto_0

    .line 2039
    :pswitch_e
    sget v17, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraActivity;->actionOnCameraHotplug(II)V

    goto/16 :goto_0

    .line 2042
    :pswitch_f
    sget v17, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isTurning()Z

    move-result v17

    if-nez v17, :cond_0

    .line 2043
    const v17, 0x7f0a009d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2045
    .local v11, "tip":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    move-object/from16 v17, v0

    sget v18, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual/range {v17 .. v18}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    move-object/from16 v17, v0

    sget v18, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual/range {v17 .. v18}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 2048
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0a009e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2051
    :cond_d
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V

#by boba 17.05.2021
#hud settings
const-string v6, "persist.hud.enable"
const/16 v8, 1
invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
if-eqz v6, :nohud

#by boba 11.08.2020
#screensaver after stop preview
new-instance v6, Landroid/content/Intent;
const-string v8, "com.car.hud.dismiss"
invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v8, p0
invoke-virtual {v8, v6}, Lcom/car/dvr/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V	

:nohud

    .line 2052
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 2056
    .end local v11    # "tip":Ljava/lang/String;
    :pswitch_10
    invoke-static {}, Lcom/car/dvr/CameraReceiver;->getCarBackStatus()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    const-wide/16 v20, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2061
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 2062
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->actionOnCarBack(I)V

    goto/16 :goto_0

    .line 2066
    :pswitch_11
    monitor-enter p0

    .line 2067
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->init()V

    .line 2068
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 2071
    :pswitch_12
    const-string v17, "DVR.CameraActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MSG_ENSURE_CAM_SURFACE, sIsRunningForeground="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-boolean v19, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    sget-boolean v17, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->ensureCameraSurface()V

    goto/16 :goto_0

    .line 1902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_1
        :pswitch_12
        :pswitch_a
    .end packed-switch
.end method

.method private init()V
    .locals 18

    .prologue
    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 748
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "camera_mode"

    const/4 v14, -0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 749
    .local v9, "mode":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_2

    .line 750
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/car/dvr/CameraActivity;->cameraName2CameraID(Landroid/content/Intent;)I

    move-result v9

    .line 751
    sget v13, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-eq v9, v13, :cond_0

    sget v13, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v9, v13, :cond_1

    .line 752
    :cond_0
    sget v9, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 753
    const/4 v13, 0x2

    sput v13, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 756
    :cond_1
    sget-boolean v13, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v13, :cond_2

    sget v13, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v9, v13, :cond_2

    .line 757
    sget v9, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 761
    :cond_2
    const-string v13, "camera_fullscreen"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 762
    .local v5, "fullscreen":Z
    const/4 v13, -0x1

    if-eq v9, v13, :cond_5

    .line 763
    const-string v13, "camera_car_back"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 765
    .local v3, "carBacking":Z
    const-string v13, "DVR.CameraActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "camera is started by Broadcast, mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", fullscreen="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", carBacking="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-eqz v3, :cond_4

    .line 767
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 768
    const/4 v13, 0x1

    sput v13, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 788
    .end local v3    # "carBacking":Z
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v13, :cond_6

    .line 789
    const-string v13, "DVR.CameraActivity"

    const-string v14, "CameraService has been unbinded, cancel init"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_1
    return-void

    .line 769
    .restart local v3    # "carBacking":Z
    :cond_4
    if-eqz v5, :cond_3

    .line 770
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 771
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    goto :goto_0

    .line 779
    .end local v3    # "carBacking":Z
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 780
    const/4 v13, 0x0

    sput v13, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 782
    const-string v13, "DVR.CameraActivity"

    const-string v14, "camera is started normal."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    if-eqz v5, :cond_3

    .line 784
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    goto :goto_0

    .line 793
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v4

    .line 794
    .local v4, "frontRecording":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v2

    .line 797
    .local v2, "backRecording":Z
    if-eqz v4, :cond_b

    .line 799
    sget-boolean v13, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v13, :cond_7

    .line 800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 802
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v15}, Lcom/car/dvr/CameraService;->getRecordingTime()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Message;->sendToTarget()V

    .line 810
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    .line 811
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    .line 814
    move v8, v9

    .line 815
    .local v8, "largeId":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_8

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getLargeSurfaceCameraIdFromPreferences()I

    move-result v8

    .line 817
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v13, :cond_c

    .line 818
    const-string v13, "preview_mode"

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/car/dvr/CameraActivity;->getPreferencesInt(Ljava/lang/String;I)I

    move-result v9

    .line 819
    sget v13, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v9, v13, :cond_8

    .line 820
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    .line 827
    :cond_8
    :goto_3
    const-string v13, "DVR.CameraActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Init Status: mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Open:[Front="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Back="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Inside="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Recording:[Front="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Back="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    sget-boolean v13, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v13}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v7

    .line 832
    .local v7, "isRecording":Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/car/dvr/CameraActivity;->updateShutterMode(Z)V

    .line 836
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-nez v13, :cond_9

    sget-boolean v13, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-nez v13, :cond_e

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/car/dvr/CameraActivity;->mOpenretry:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/car/dvr/CameraActivity;->mOpenretry:I

    const/16 v14, 0xa

    if-ge v13, v14, :cond_e

    .line 838
    const-string v13, "DVR.CameraActivity"

    const-string v14, "Both Camera not open, try again 1s later"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x10

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 845
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080016

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080015

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    .line 852
    .local v12, "wm":Landroid/view/WindowManager;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 853
    .local v11, "size":Landroid/graphics/Point;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 854
    iget v10, v11, Landroid/graphics/Point;->x:I

    .line 855
    .local v10, "screen_width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    sub-int v13, v10, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    sub-int/2addr v13, v14

    sget v14, Lcom/car/dvr/CameraActivity;->LEFT_BAR_WIDTH:I

    sub-int/2addr v13, v14

    sget v14, Lcom/car/dvr/CameraActivity;->RIGHT_BAR_WIDTH:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    .line 856
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    .line 858
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/car/dvr/CameraActivity;->autoSetLeftRightCamPreview(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 806
    .end local v7    # "isRecording":Z
    .end local v8    # "largeId":I
    .end local v10    # "screen_width":I
    .end local v11    # "size":Landroid/graphics/Point;
    .end local v12    # "wm":Landroid/view/WindowManager;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    goto/16 :goto_2

    .line 823
    .restart local v8    # "largeId":I
    :cond_c
    sget v9, Lcom/car/dvr/CameraActivity;->DEFAULT_MODE:I

    goto/16 :goto_3

    :cond_d
    move v7, v4

    .line 831
    goto/16 :goto_4

    .line 842
    .restart local v7    # "isRecording":Z
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/car/dvr/CameraActivity;->initModeAndTextureView(II)V

    goto :goto_5
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    new-instance v1, Lcom/car/dvr/CameraActivity$18;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$18;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    new-instance v1, Lcom/car/dvr/CameraActivity$19;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$19;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    return-void
.end method

.method private initModeAndTextureView(II)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "largeId"    # I

    .prologue
    const-wide/16 v6, 0x1388

    const/4 v0, 0x4

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1207
    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v3, :cond_9

    .line 1208
    const-string v3, "DVR.CameraActivity"

    const-string v4, "initModeAndTextureView: mFrontOpen && mBackOpen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v3, :cond_3

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p1, v3, :cond_0

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p2, v3, :cond_0

    sget v3, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v3, v5, :cond_3

    .line 1210
    :cond_0
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1211
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1212
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v3, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    .line 1219
    :goto_0
    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v3, :cond_4

    .line 1220
    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    .line 1221
    invoke-direct {p0, v1, p1}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    .line 1228
    :goto_1
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    .line 1229
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v2, :cond_1

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v0, v5, :cond_1

    .line 1230
    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 1232
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 1235
    sget v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-nez v0, :cond_8

    .line 1236
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 1240
    :goto_2
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 1286
    :cond_2
    :goto_3
    const/4 v0, -0x1

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->updateTab(II)V

    .line 1287
    :goto_4
    return-void

    .line 1214
    :cond_3
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1215
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1216
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v3, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    goto :goto_0

    .line 1223
    :cond_4
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v3, :cond_6

    move v0, v1

    :cond_5
    :goto_5
    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto :goto_1

    :cond_6
    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v3, :cond_5

    :cond_7
    move v0, v2

    goto :goto_5

    .line 1238
    :cond_8
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto :goto_2

    .line 1241
    :cond_9
    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v3, :cond_f

    .line 1242
    const-string v3, "DVR.CameraActivity"

    const-string v4, "initModeAndTextureView: mFrontOpen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1245
    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v3, :cond_b

    :cond_a
    move v0, v2

    :cond_b
    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    .line 1246
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    .line 1247
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    .line 1249
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v0, :cond_d

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v0, :cond_d

    .line 1250
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v0, :cond_c

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v0, :cond_e

    .line 1252
    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->showDialog(I)V

    .line 1253
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1261
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 1262
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_3

    .line 1255
    :cond_e
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->BACK_CAM_NO_TIPS:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-nez v0, :cond_d

    .line 1256
    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    goto :goto_6

    .line 1263
    :cond_f
    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v3, :cond_14

    .line 1264
    const-string v1, "DVR.CameraActivity"

    const-string v3, "initModeAndTextureView: mFrontOpen && mBackOpen"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v3}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1267
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v1, :cond_11

    :cond_10
    move v0, v2

    :cond_11
    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    .line 1268
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    .line 1269
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    .line 1270
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_12

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v0, v5, :cond_12

    .line 1271
    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 1274
    :cond_12
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v0, :cond_13

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v0, :cond_2

    .line 1275
    :cond_13
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->showDialog(I)V

    .line 1276
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1279
    :cond_14
    const-string v0, "DVR.CameraActivity"

    const-string v2, "init failed! no camera existes!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 1282
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_4
.end method

.method private initView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 626
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    .line 627
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    .line 629
    sget-object v0, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v1, "gsensor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    :goto_0
    sget-object v0, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v1, "mic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    :goto_1
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->refreshButton()V

    .line 642
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static isCarBacking()Z
    .locals 1

    .prologue
    .line 2931
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    return v0
.end method

.method public static isHotplugCameraIn()Z
    .locals 1

    .prologue
    .line 1767
    invoke-static {}, Lcom/car/dvr/CameraService;->isHotplugCameraIn()Z

    move-result v0

    return v0
.end method

.method public static isLockType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1055
    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRunningForeground()Z
    .locals 1

    .prologue
    .line 2935
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    return v0
.end method

.method private isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1605
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 1606
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 1607
    .local v6, "y":I
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 1608
    .local v2, "location":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1609
    aget v1, v2, v8

    .line 1610
    .local v1, "left":I
    aget v4, v2, v7

    .line 1611
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v3, v1, v9

    .line 1612
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v0, v4, v9

    .line 1613
    .local v0, "bottom":I
    if-lt v6, v4, :cond_0

    if-gt v6, v0, :cond_0

    if-lt v5, v1, :cond_0

    if-gt v5, v3, :cond_0

    .line 1616
    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private static isTurning()Z
    .locals 1

    .prologue
    .line 3151
    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isTurning()Z

    move-result v0

    return v0
.end method

.method private refreshButton()V
    .locals 6

    .prologue
    const v5, 0x7f0a00a2

    const v4, 0x7f02003f

    const v3, 0x7f070017

    .line 680
    const/4 v1, 0x1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 681
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    invoke-static {p0, v4, v3}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    :goto_0
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    const v2, 0x7f020041

    invoke-static {p0, v2, v3}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 699
    :goto_1
    sget-object v1, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    const-string v2, "isLock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 700
    const-string v1, "DVR.CameraActivity"

    const-string v2, "refreshButton: isLock=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-boolean v1, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v1}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v0

    .line 704
    .local v0, "isRecording":Z
    :goto_2
    if-nez v0, :cond_3

    .line 705
    invoke-virtual {p0, v5}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    .line 706
    invoke-static {p0, v5}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    .line 715
    .end local v0    # "isRecording":Z
    :goto_3
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    const v2, 0x7f07001c

    invoke-static {p0, v4, v2}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    const v2, 0x7f020040

    invoke-static {p0, v2, v3}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 702
    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    goto :goto_2

    .line 708
    .restart local v0    # "isRecording":Z
    :cond_3
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 711
    .end local v0    # "isRecording":Z
    :cond_4
    const-string v1, "DVR.CameraActivity"

    const-string v2, "refreshButton: isLock=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3
.end method

.method private resetAutoStopPreviewTimer()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 2813
    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getStopPreviewTime(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    .line 2814
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2815
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v0, :cond_0

    .line 2816
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2818
    :cond_0
    return-void
.end method

.method private resizeFrontAndBackContainerAsync()V
    .locals 4

    .prologue
    .line 3304
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackContainerResizer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3305
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackContainerResizer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3306
    return-void
.end method

.method private scrollDown()V
    .locals 2

    .prologue
    .line 2519
    const-string v0, "DVR.CameraActivity"

    const-string v1, "scroll down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    .line 2522
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/SVDraw;->isCalibration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    :cond_0
    :goto_0
    return-void

    .line 2526
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0}, Lcom/car/dvr/LineImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v1, :cond_2

    .line 2530
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    .line 2531
    :cond_2
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v1, :cond_3

    .line 2532
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    .line 2533
    :cond_3
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_0

    .line 2534
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0
.end method

.method private scrollUp()V
    .locals 2

    .prologue
    .line 2498
    const-string v0, "DVR.CameraActivity"

    const-string v1, "scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/SVDraw;->isCalibration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2513
    :cond_0
    :goto_0
    return-void

    .line 2503
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0}, Lcom/car/dvr/LineImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2506
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_2

    .line 2507
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    .line 2508
    :cond_2
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v1, :cond_3

    .line 2509
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    .line 2510
    :cond_3
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v1, :cond_0

    .line 2511
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0
.end method

.method public static sendCarBackActivityStatusBroadcast(Z)V
    .locals 5
    .param p0, "isCarbackingUIPopuped"    # Z

    .prologue
    .line 2822
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send carback activity status broadcast: isCarbackingUIPopuped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.dvr.reverse.gear.popup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2826
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "is.reverse.gear"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2828
    :try_start_0
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/car/dvr/DvrApplication;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    :goto_0
    return-void

    .line 2829
    :catch_0
    move-exception v0

    .line 2830
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setControlContainerClickable(Z)V
    .locals 5
    .param p1, "clickable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 2343
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2344
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2345
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2346
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, p1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 2347
    sget v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-eqz v0, :cond_1

    .line 2348
    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 2350
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    if-eqz p1, :cond_5

    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    .line 2351
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    if-eqz v0, :cond_2

    .line 2352
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/car/dvr/PhotoUI;->enablePhotoUI(Z)V

    .line 2353
    :cond_2
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v0, :cond_3

    .line 2354
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/IconTextView;->setVisibility(I)V

    .line 2355
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/IconTextView;->setVisibility(I)V

    .line 2356
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/IconTextView;->setVisibility(I)V

    .line 2358
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 2348
    goto :goto_0

    :cond_5
    move v1, v2

    .line 2350
    goto :goto_1
.end method

.method private setFullScreen(Z)V
    .locals 9
    .param p1, "fullScreen"    # Z

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3036
    const-string v2, "DVR.CameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFullScreen("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), mMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    const-string v2, "ro.ban_front_full"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3039
    .local v0, "banFrontFull":I
    sget-boolean v2, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-nez v2, :cond_0

    if-ne v3, v0, :cond_1

    .line 3040
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v2, v5, :cond_1

    .line 3041
    const/4 p1, 0x0

    .line 3045
    :cond_1
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 3048
    .local v1, "newUiOptions":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_2

    .line 3049
    if-eqz p1, :cond_7

    .line 3050
    or-int/lit8 v1, v1, 0x2

    .line 3057
    :cond_2
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_3

    .line 3058
    if-eqz p1, :cond_8

    .line 3059
    or-int/lit8 v1, v1, 0x4

    .line 3065
    :cond_3
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_4

    .line 3066
    if-eqz p1, :cond_9

    .line 3067
    or-int/lit16 v1, v1, 0x1000

    .line 3068
    or-int/lit16 v1, v1, 0x200

    .line 3069
    or-int/lit16 v1, v1, 0x400

    .line 3077
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3079
    if-eqz p1, :cond_a

    .line 3080
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3081
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3083
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v2, :cond_5

    .line 3084
    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    .line 3087
    :cond_5
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    if-eqz v2, :cond_6

    .line 3088
    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->alwaysShowControlBar(Z)V

    .line 3089
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3104
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    .line 3105
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v2}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_4
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_d

    :goto_5
    invoke-direct {p0, v2, v3}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    .line 3106
    return-void

    .line 3052
    :cond_7
    and-int/lit8 v1, v1, -0x3

    goto :goto_0

    .line 3061
    :cond_8
    and-int/lit8 v1, v1, -0x5

    goto :goto_1

    .line 3071
    :cond_9
    and-int/lit16 v1, v1, -0x1001

    .line 3072
    and-int/lit16 v1, v1, -0x201

    .line 3073
    and-int/lit16 v1, v1, -0x401

    goto :goto_2

    .line 3092
    :cond_a
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3094
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v2, v5, :cond_b

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v2, :cond_b

    .line 3095
    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    .line 3098
    :cond_b
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    if-eqz v2, :cond_6

    .line 3099
    invoke-direct {p0, v3}, Lcom/car/dvr/CameraActivity;->alwaysShowControlBar(Z)V

    .line 3100
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    move v2, v4

    .line 3105
    goto :goto_4

    :cond_d
    move v3, v4

    goto :goto_5
.end method

.method private setLargeContainerVisibility(Z)V
    .locals 3
    .param p1, "visiable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3014
    if-eqz p1, :cond_1

    .line 3015
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3016
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3017
    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->adasIsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3018
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    .line 3025
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->ensureCameraSurface()V

    .line 3026
    return-void

    .line 3021
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3022
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3023
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0, v2}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLeftRightCamPreview(ZZ)V
    .locals 11
    .param p1, "leftVisible"    # Z
    .param p2, "rightVisible"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1324
    sget-boolean v5, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-nez v5, :cond_0

    .line 1378
    :goto_0
    return-void

    .line 1328
    :cond_0
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1331
    const-string v5, "DVR.CameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setLeftRightCamPreview, mMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", leftVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rightVisible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    if-nez p1, :cond_2

    .line 1334
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v10}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    .line 1335
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeftSide:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1336
    sget v7, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    move-object v5, v6

    check-cast v5, Landroid/view/TextureView;

    invoke-direct {p0, v7, v5}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1343
    :goto_1
    if-nez p2, :cond_3

    .line 1344
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v10}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    .line 1345
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRightSide:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    check-cast v6, Landroid/view/TextureView;

    invoke-direct {p0, v5, v6}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1353
    :goto_2
    sget v5, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    div-int/lit8 v1, v5, 0x2

    .line 1354
    .local v1, "halfOfMaxWidth":I
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    .line 1355
    .local v0, "baseWidth":I
    :goto_3
    move v2, v0

    .local v2, "leftWidth":I
    move v4, v0

    .line 1356
    .local v4, "rightWidth":I
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1357
    move v2, v0

    .line 1358
    move v4, v0

    .line 1370
    :cond_1
    :goto_4
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1371
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1372
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v3}, Lcom/car/dvr/MyHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1373
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1374
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1375
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v3}, Lcom/car/dvr/MyHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mScrollPosInitialiser:Ljava/lang/Runnable;

    const-wide/16 v8, 0x32

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1338
    .end local v0    # "baseWidth":I
    .end local v1    # "halfOfMaxWidth":I
    .end local v2    # "leftWidth":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "rightWidth":I
    :cond_2
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v9}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    .line 1339
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeftSide:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1340
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-direct {p0, v5, v7}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto :goto_1

    .line 1348
    :cond_3
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v9}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    .line 1349
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRightSide:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-direct {p0, v5, v6}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto :goto_2

    .line 1354
    .restart local v1    # "halfOfMaxWidth":I
    :cond_4
    add-int/lit8 v0, v1, -0x5a

    goto :goto_3

    .line 1359
    .restart local v0    # "baseWidth":I
    .restart local v2    # "leftWidth":I
    .restart local v4    # "rightWidth":I
    :cond_5
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 1360
    mul-int/lit8 v2, v0, 0x2

    .line 1361
    const/4 v4, 0x0

    goto :goto_4

    .line 1362
    :cond_6
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 1363
    const/4 v2, 0x0

    .line 1364
    mul-int/lit8 v4, v0, 0x2

    goto :goto_4

    .line 1365
    :cond_7
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    goto/16 :goto_0
.end method

.method private setMode(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x12

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

#by boba 23.01.2021
#show rear cam if recording is disabled
#    .line 1504
#    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z
#
#    if-nez v2, :cond_0
#
#    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z
#
#    if-nez v2, :cond_0
#
#    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I
#
#    if-eq p1, v2, :cond_0
#
#    .line 1506
#    const-string v2, "DVR.CameraActivity"
#
#    const-string v3, "back camera is disabled, force setMode(CAMERA_FRONT)"
#
#    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
#
#    .line 1507
#    sget p1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    .line 1510
    :cond_0
    sget-boolean v2, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v2, :cond_1

    .line 1511
    const-string v2, "DVR.CameraActivity"

    const-string v3, "front camera is no exists, force setMode(CAMERA_BACK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    sget p1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 1515
    :cond_1
    iget v1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    .line 1516
    .local v1, "preMode":I
    move v0, p1

    .line 1518
    .local v0, "curMode":I
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], mInAction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    if-eqz v2, :cond_2

    .line 1521
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, because it\'s in changing mode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :goto_0
    return-void

    .line 1525
    :cond_2
    if-ne v1, v0, :cond_3

    .line 1526
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, because mode not changed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->autoSetLeftRightCamPreview(Landroid/content/Intent;)V

    goto :goto_0

    .line 1532
    :cond_3
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    .line 1533
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    .line 1534
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    .line 1535
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMode: mFrontOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBackOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mInsideOpen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-nez v2, :cond_5

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v2, :cond_4

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v2, :cond_5

    .line 1538
    :cond_4
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, because Front Camera not opened!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1542
    :cond_5
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-nez v2, :cond_8

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p1, v2, :cond_6

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v2, :cond_8

    .line 1544
    :cond_6
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    if-eqz v2, :cond_7

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq p1, v2, :cond_8

    .line 1545
    :cond_7
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, because Back Camera not opened!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1550
    :cond_8
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    if-nez v2, :cond_9

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne p1, v2, :cond_9

    .line 1551
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, because Inside Camera not opened!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1557
    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/car/dvr/CameraActivity;->updateTab(II)V

    .line 1559
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v2, :cond_a

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne v0, v2, :cond_f

    .line 1560
    :cond_a
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v2, :cond_b

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isTurning()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1562
    :cond_b
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v2, :cond_d

    .line 1564
    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    .line 1565
    invoke-direct {p0, v5, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    .line 1597
    :cond_c
    :goto_1
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    .line 1598
    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->autoSetLeftRightCamPreview(Landroid/content/Intent;)V

    .line 1599
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    .line 1600
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1601
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1567
    :cond_d
    iget v2, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v2, v3, :cond_e

    .line 1568
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v2}, Lcom/car/dvr/CameraActivity;->switchPreviewView(I)V

    .line 1570
    :cond_e
    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto :goto_1

    .line 1572
    :cond_f
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v2, :cond_12

    .line 1573
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v2, :cond_10

    .line 1575
    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    .line 1576
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    goto :goto_1

    .line 1578
    :cond_10
    iget v2, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v2, v3, :cond_11

    .line 1579
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", curMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v2}, Lcom/car/dvr/CameraActivity;->switchPreviewView(I)V

    .line 1582
    :cond_11
    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto :goto_1

    .line 1584
    :cond_12
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v2, :cond_c

    .line 1585
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1587
    :cond_13
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v2, :cond_14

    .line 1589
    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    .line 1590
    invoke-direct {p0, v5, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    goto :goto_1

    .line 1592
    :cond_14
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v2, :cond_c

    .line 1593
    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto/16 :goto_1
.end method

.method private setPreviewView(ILandroid/view/TextureView;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "view"    # Landroid/view/TextureView;

    .prologue
    .line 2998
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewView: cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TextureView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0, p1, p2}, Lcom/car/dvr/CameraService;->setPreviewView(ILandroid/view/TextureView;)V

    .line 3001
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3002
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->adasIsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3003
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    .line 3004
    const-string v0, "DVR.CameraActivity"

    const-string v1, "show ADAS view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :cond_0
    :goto_0
    return-void

    .line 3006
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    .line 3007
    const-string v0, "DVR.CameraActivity"

    const-string v1, "hide ADAS view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSecondSurfaceVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 3159
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    .line 3160
    return-void
.end method

.method private setSecondSurfaceVisibility(II)V
    .locals 4
    .param p1, "visible"    # I
    .param p2, "mode"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 3163
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3164
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3165
    if-nez p1, :cond_4

    if-ltz p2, :cond_4

    .line 3166
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 3167
    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq p2, v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p2, v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3169
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    .line 3170
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq p2, v3, :cond_2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne p2, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 3174
    :cond_4
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v0, p1}, Lcom/car/dvr/MySurfaceView;->setVisibility(I)V

    .line 3175
    return-void

    :cond_5
    move v0, v1

    .line 3167
    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1062
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    .line 1063
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1064
    return-void
.end method

.method private startRecording()V
    .locals 3

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    const-string v0, "DVR.CameraActivity"

    const-string v1, "startRecording failed, it\'s recording already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_0
    :goto_0
    return-void

    .line 1814
    :cond_1
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->checkStorageDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click Recording: start Recording Camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    .line 1820
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->startRecording()V

    .line 1821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    goto :goto_0
.end method

.method private stopRecording()V
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1826
    const-string v0, "DVR.CameraActivity"

    const-string v1, "stopRecording failed, it\'s not recording."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :goto_0
    return-void

    .line 1830
    :cond_0
    const-string v0, "DVR.CameraActivity"

    const-string v1, "click Recording: stop Recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    .line 1832
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->stopRecording()V

    goto :goto_0
.end method

.method private switchPreviewView()V
    .locals 3

    .prologue
    .line 1447
    const-string v1, "DVR.CameraActivity"

    const-string v2, "switch preview view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1449
    new-instance v0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;-><init>(Lcom/car/dvr/CameraActivity;)V

    .line 1450
    .local v0, "task":Lcom/car/dvr/CameraActivity$SwitchCameraTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1451
    return-void
.end method

.method private switchPreviewView(I)V
    .locals 4
    .param p1, "largeId"    # I

    .prologue
    .line 1454
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch preview view, switch large surface to camere:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1456
    new-instance v0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;

    invoke-direct {v0, p0, p1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;-><init>(Lcom/car/dvr/CameraActivity;I)V

    .line 1457
    .local v0, "task":Lcom/car/dvr/CameraActivity$SwitchCameraTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1458
    return-void
.end method

.method private updateRecordTime(II)V
    .locals 7
    .param p1, "seconds"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 1776
    if-ne p2, v3, :cond_3

    .line 1777
    const v2, 0x7f0a006a

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, "strCam":Ljava/lang/String;
    :goto_0
    sget-boolean v2, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v2, :cond_1

    .line 1788
    :cond_0
    const-string v0, ""

    .line 1790
    :cond_1
    const v2, 0x7f0a0069

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/car/dvr/Util;->secondsToTime(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1792
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v2, v1}, Lcom/car/dvr/RecordTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    if-eqz v2, :cond_2

    .line 1794
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v2, v6}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 1796
    :cond_2
    return-void

    .line 1778
    .end local v0    # "strCam":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 1779
    const v2, 0x7f0a006b

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "strCam":Ljava/lang/String;
    goto :goto_0

    .line 1780
    .end local v0    # "strCam":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_5

    .line 1781
    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "strCam":Ljava/lang/String;
    goto :goto_0

    .line 1782
    .end local v0    # "strCam":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 1783
    const v2, 0x7f0a006d

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "strCam":Ljava/lang/String;
    goto :goto_0

    .line 1785
    .end local v0    # "strCam":Ljava/lang/String;
    :cond_6
    const v2, 0x7f0a006c

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "strCam":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateShutterMode(Z)V
    .locals 3
    .param p1, "isRecording"    # Z

    .prologue
    .line 1462
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShutterMode, isRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    if-eqz p1, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateTab(II)V
    .locals 3
    .param p1, "preMode"    # I
    .param p2, "curMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1474
    if-ne p1, p2, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v0, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    .line 1485
    :goto_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p2, v0, :cond_4

    .line 1486
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_0

    .line 1479
    :cond_2
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_1

    .line 1482
    :cond_3
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_1

    .line 1487
    :cond_4
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p2, v0, :cond_5

    .line 1488
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_0

    .line 1490
    :cond_5
    sget v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method checkStorageDevice()Z
    .locals 1

    .prologue
    .line 1799
    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1800
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->showDialog(I)V

    .line 1801
    const v0, 0x7f0a0095

    invoke-static {p0, v0}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    .line 1802
    const/4 v0, 0x0

    .line 1805
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1020
    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    .line 1022
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->finish()V

    .line 1023
    return-void
.end method

.method public getBrightness()I
    .locals 6

    .prologue
    .line 3348
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 3349
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    .line 3350
    .local v1, "maximumBacklight":I
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3353
    .local v0, "curV":I
    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    return v0
.end method

.method protected getHistoryView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected getInAction()Z
    .locals 1

    .prologue
    .line 2679
    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    return v0
.end method

.method protected getLargeId()I
    .locals 1

    .prologue
    .line 2659
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    return v0
.end method

.method public getLargeSurfaceCameraIdFromPreferences()I
    .locals 4

    .prologue
    .line 2949
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "large_surface_camera"

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2950
    .local v0, "camId":I
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v1, :cond_0

    .line 2951
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    .line 2953
    :cond_0
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLargeSurfaceCameraIdFromPreferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    return v0
.end method

.method public getPreferencesInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 2964
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2965
    .local v0, "value":I
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferences: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    return v0
.end method

.method public getPreferencesScrollX(Ljava/lang/String;II)I
    .locals 5
    .param p1, "scrollViewName"    # Ljava/lang/String;
    .param p2, "scrollViewWidth"    # I
    .param p3, "defaultScrollX"    # I

    .prologue
    .line 2977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2978
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2979
    .local v1, "value":I
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferencesScrollX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    return v1
.end method

.method public getPreferencesScrollY(Ljava/lang/String;II)I
    .locals 5
    .param p1, "scrollViewName"    # Ljava/lang/String;
    .param p2, "scrollViewHeight"    # I
    .param p3, "defaultScrollY"    # I

    .prologue
    .line 2991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2992
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2993
    .local v1, "value":I
    const-string v2, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferencesScrollY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    return v1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2764
    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2765
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

    .line 2770
    :goto_0
    return-void

    .line 2769
    :cond_0
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1622
    .local v0, "currentTime":J
    iget-wide v10, p0, Lcom/car/dvr/CameraActivity;->mDoubleTapTime:J

    sub-long v4, v0, v10

    .line 1623
    .local v4, "interval":J
    const-wide/16 v10, 0x12c

    cmp-long v9, v4, v10

    if-gez v9, :cond_1

    .line 1624
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "eated this click event, DoubleTap interval "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    :goto_0
    return-void

    .line 1627
    :cond_1
    sget-boolean v9, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v9, :cond_2

    .line 1628
    const-string v9, "DVR.CameraActivity"

    const-string v10, "IsCarBacking, eated this click event"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1631
    :cond_2
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1632
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1633
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    .line 1635
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1763
    :cond_3
    :goto_1
    :pswitch_0
    iput-wide v0, p0, Lcom/car/dvr/CameraActivity;->mLastClickTime:J

    goto :goto_0

    .line 1637
    :pswitch_1
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click front tab, mControlContainerShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v9, :cond_3

    .line 1639
    sget v9, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_1

    .line 1644
    :pswitch_2
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click double tab, mControlContainerShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v9, :cond_3

    .line 1646
    sget v9, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_1

    .line 1651
    :pswitch_3
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click back tab, mControlContainerShow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v9, :cond_3

    .line 1653
    sget v9, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_1

    .line 1658
    :pswitch_4
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click smallSurface"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget v9, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v10, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v9, v10, :cond_3

    .line 1660
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    goto :goto_1

    .line 1668
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0d000a

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v9, :cond_4

    .line 1669
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click ADAS_SVDraw"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->getSecondSurfaceVisibility()I

    move-result v9

    if-nez v9, :cond_5

    .line 1671
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v9}, Lcom/car/dvr/ADAS/SVDraw;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    .line 1672
    .local v2, "event":Landroid/view/MotionEvent;
    if-eqz v2, :cond_5

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v9, v2}, Lcom/car/dvr/CameraActivity;->isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1673
    const-string v9, "DVR.CameraActivity"

    const-string v10, "call mSurfaceSecond.performClick()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v9}, Lcom/car/dvr/MySurfaceView;->performClick()Z

    goto/16 :goto_1

    .line 1679
    .end local v2    # "event":Landroid/view/MotionEvent;
    :cond_4
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click largeSurface, mPreMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_5
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1682
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x13

    const-wide/16 v12, 0x12c

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1685
    :cond_6
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-nez v9, :cond_7

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1686
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1687
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    const-wide/16 v12, 0x12c

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1688
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1689
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1691
    :cond_7
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1693
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1698
    :pswitch_6
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v9}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    const/4 v8, 0x1

    .line 1699
    .local v8, "rightIsVisible":Z
    :goto_2
    iget-wide v10, p0, Lcom/car/dvr/CameraActivity;->mLastClickTime:J

    sub-long v4, v0, v10

    .line 1700
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click surfaceLeft, rightIsVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", interval="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const-wide/16 v10, 0x12c

    cmp-long v9, v4, v10

    if-lez v9, :cond_a

    .line 1702
    const/4 v10, 0x1

    if-nez v8, :cond_9

    const/4 v9, 0x1

    :goto_3
    invoke-direct {p0, v10, v9}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto/16 :goto_1

    .line 1698
    .end local v8    # "rightIsVisible":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 1702
    .restart local v8    # "rightIsVisible":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 1704
    :cond_a
    const-string v9, "DVR.CameraActivity"

    const-string v10, "eated surfaceLeft click event"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1709
    .end local v8    # "rightIsVisible":Z
    :pswitch_7
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v9}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b

    const/4 v7, 0x1

    .line 1710
    .local v7, "leftIsVisible":Z
    :goto_4
    iget-wide v10, p0, Lcom/car/dvr/CameraActivity;->mLastClickTime:J

    sub-long v4, v0, v10

    .line 1711
    const-string v9, "DVR.CameraActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "click surfaceRight, leftIsVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", interval="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-wide/16 v10, 0x12c

    cmp-long v9, v4, v10

    if-lez v9, :cond_d

    .line 1713
    if-nez v7, :cond_c

    const/4 v9, 0x1

    :goto_5
    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto/16 :goto_1

    .line 1709
    .end local v7    # "leftIsVisible":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    .line 1713
    .restart local v7    # "leftIsVisible":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_5

    .line 1715
    :cond_d
    const-string v9, "DVR.CameraActivity"

    const-string v10, "eated surfaceRight click event"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1720
    .end local v7    # "leftIsVisible":Z
    :pswitch_8
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v9, :cond_f

    .line 1721
    :cond_e
    const-string v9, "DVR.CameraActivity"

    const-string v10, "mInAction"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1726
    :cond_f
    sget-boolean v9, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v9}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v6

    .line 1728
    .local v6, "isRecording":Z
    :goto_6
    if-nez v6, :cond_11

    .line 1729
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->startRecording()V

    goto/16 :goto_1

    .line 1726
    .end local v6    # "isRecording":Z
    :cond_10
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v10, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v9, v10}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v6

    goto :goto_6

    .line 1731
    .restart local v6    # "isRecording":Z
    :cond_11
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->stopRecording()V

    goto/16 :goto_1

    .line 1736
    .end local v6    # "isRecording":Z
    :pswitch_9
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/car/dvr/CameraActivity;->setFloatView(Z)V

    .line 1737
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click menu"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/car/dvr/CameraSetting;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/car/dvr/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1742
    :pswitch_a
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click adas"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/car/dvr/CameraSetting;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1744
    .local v3, "i":Landroid/content/Intent;
    const-string v9, "adas"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1745
    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1749
    .end local v3    # "i":Landroid/content/Intent;
    :pswitch_b
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->checkStorageDevice()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1752
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/car/dvr/CameraActivity;->setFloatView(Z)V

    .line 1753
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click history, start FileBrowser"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-static {}, Lcom/car/common/CarPath;->getVideoPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/car/dvr/browser/FileBrowser;->startFileBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1635
    :pswitch_data_0
    .packed-switch 0x7f0d0003
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v12, 0x5a

    const v13, 0x7f0d001a

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 216
    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const-string v6, "DVR.CameraActivity"

    const-string v10, "onCreate"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sput-object p0, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    .line 219
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v10, 0x80

    const/16 v11, 0x80

    invoke-virtual {v6, v10, v11}, Landroid/view/Window;->setFlags(II)V

    .line 221
    const v6, 0x7f030003

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->setContentView(I)V

    .line 223
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 224
    sput v8, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 226
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 227
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-static {}, Lcom/car/dvr/CameraReceiver;->getCarBackStatus()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraService;->isReverseGear()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 230
    :cond_0
    const-string v6, "DVR.CameraActivity"

    const-string v10, "CarBacking"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/car/dvr/ADAS/ADAS;->getInstance(Landroid/content/Context;)Lcom/car/dvr/ADAS/ADAS;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    .line 241
    const v6, 0x7f0d000a

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/ADAS/SVDraw;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    .line 242
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v6, :cond_2

    .line 243
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6, p0}, Lcom/car/dvr/ADAS/SVDraw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    if-eqz v6, :cond_2

    .line 245
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    iget-object v10, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6, v10}, Lcom/car/dvr/ADAS/ADAS;->SetSVDrawView(Landroid/view/View;)V

    .line 246
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    new-instance v10, Lcom/car/dvr/CameraActivity$1;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$1;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Lcom/car/dvr/ADAS/SVDraw;->setListener(Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;)V

    .line 257
    :cond_2
    const v6, 0x7f0d0024

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const-string v6, "sys.adas.ok"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 259
    const v6, 0x7f0d0024

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 262
    :cond_3
    invoke-static {p0}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    .line 263
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 265
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 266
    .local v5, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 267
    .local v4, "size":Landroid/graphics/Point;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 268
    iget v6, v4, Landroid/graphics/Point;->x:I

    sget v10, Lcom/car/dvr/CameraActivity;->LEFT_BAR_WIDTH:I

    sub-int/2addr v6, v10

    sget v10, Lcom/car/dvr/CameraActivity;->RIGHT_BAR_WIDTH:I

    sub-int/2addr v6, v10

    iget v10, v4, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v10

    const/4 v10, 0x2

    if-lt v6, v10, :cond_16

    move v6, v7

    :goto_1
    sput-boolean v6, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    .line 271
    iget v6, v4, Landroid/graphics/Point;->x:I

    const/16 v10, 0x500

    if-gt v6, v10, :cond_4

    iget v6, v4, Landroid/graphics/Point;->x:I

    const/16 v10, 0x500

    if-ne v6, v10, :cond_5

    iget v6, v4, Landroid/graphics/Point;->y:I

    const/16 v10, 0x140

    if-ne v6, v10, :cond_5

    .line 272
    :cond_4
    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    .line 275
    :cond_5
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    if-eqz v6, :cond_6

#by boba 23.01.2021
#show rear cam if recording is disabled
#    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z
#
#    if-eqz v6, :cond_6

    .line 276
    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    .line 277
    const-string v6, "DVR.CameraActivity"

    const-string v10, "onCreate: sScreenSplit = true 1"

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_6
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v6, :cond_7

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_7

#by boba 23.01.2021
#show rear cam if recording is disabled
#    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z
#
#    if-eqz v6, :cond_7

    .line 281
    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    .line 282
    const-string v6, "DVR.CameraActivity"

    const-string v10, "onCreate: sScreenSplit = true 2"

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_7
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v7

    :goto_2
    iput v6, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    .line 287
    const/high16 v6, 0x7f0d0000

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mRootView:Landroid/view/View;

    .line 289
    const v6, 0x7f0d001d

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/IconTextView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    .line 290
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    .line 291
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v6, 0x7f0d001e

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/IconTextView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    .line 293
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    .line 294
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v6, 0x7f0d001f

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/IconTextView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    .line 296
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    .line 297
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v6, 0x7f0d001c

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

#by boba 23.01.2021
#show rear cam if recording is disabled
#    .line 300
#    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z
#
#    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v6, :cond_9

    .line 301
    :cond_8
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_9
    const v6, 0x7f0d0020

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    .line 306
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v6, 0x7f0d0021

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    .line 308
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v6, 0x7f0d0023

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgMenu:Landroid/widget/ImageButton;

    .line 310
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgMenu:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    sget-boolean v6, Lcom/car/dvr/GenericFragment;->OEM_BEIDOU:Z

    if-eqz v6, :cond_a

    .line 313
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 317
    :cond_a
    const v6, 0x7f0d0013

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MySurfaceView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    .line 318
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v6, :cond_b

    .line 319
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v9}, Lcom/car/dvr/MySurfaceView;->setVisibility(I)V

    .line 320
    const v6, 0x7f0d000b

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    .line 321
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 322
    const v6, 0x7f0d000c

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    .line 323
    const v6, 0x7f0d000d

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MySurfaceView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    .line 324
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/MySurfaceView;->reLayoutEnable(Z)V

    .line 327
    :cond_b
    const v6, 0x7f0d0005

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    .line 328
    const v6, 0x7f0d0007

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/PanoView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mPanoView:Lcom/car/dvr/PanoView;

    .line 329
    const v6, 0x7f0d0004

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerLeftSide:Landroid/view/View;

    .line 330
    const v6, 0x7f0d0002

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MyHorizontalScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    .line 331
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MyHorizontalScrollView;->setListener(Lcom/car/dvr/MyHorizontalScrollView$Listener;)V

    .line 332
    const v6, 0x7f0d0003

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    .line 333
    const v6, 0x7f0d0010

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerRightSide:Landroid/view/View;

    .line 334
    const v6, 0x7f0d0011

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MyHorizontalScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    .line 335
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MyHorizontalScrollView;->setListener(Lcom/car/dvr/MyHorizontalScrollView$Listener;)V

    .line 336
    const v6, 0x7f0d0012

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    .line 337
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-virtual {v6, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-virtual {v6, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f080013

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    .line 341
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MySurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    const v6, 0x7f0d0008

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    .line 343
    const v6, 0x7f0d0009

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    .line 344
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v6, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    const v6, 0x7f0d0059

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/LineImageView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    .line 346
    const v6, 0x7f0d001b

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    .line 347
    const v6, 0x7f0d005a

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    .line 348
    const v6, 0x7f0d0015

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    .line 350
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    if-eqz v6, :cond_c

    .line 351
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 352
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v12, v8, v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 353
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f08003e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 356
    .local v1, "leftBtnsMargin":I
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 357
    .restart local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 358
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    const v6, 0x7f0d0006

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .end local v1    # "leftBtnsMargin":I
    .end local v2    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_c
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    if-eqz v6, :cond_d

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v6, :cond_d

    .line 364
    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    .line 365
    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->alwaysShowControlBar(Z)V

    .line 368
    :cond_d
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_e

    .line 369
    const v6, 0x7f0d000e

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    .line 370
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 371
    const v6, 0x7f0d000f

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MySurfaceView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    .line 372
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/MySurfaceView;->reLayoutEnable(Z)V

    .line 373
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MySurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_e
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_18

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v6, :cond_18

    .line 379
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {v10, v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    const v10, 0x7f0a000b

    invoke-virtual {v6, v10}, Lcom/car/dvr/IconTextView;->setText(I)V

    .line 388
    :cond_f
    :goto_3
    const v6, 0x7f0d005d

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$2;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$2;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const v6, 0x7f0d005e

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$3;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$3;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v6, 0x7f0d005c

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$4;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$4;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v6, 0x7f0d005b

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$5;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$5;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v6, 0x7f0d005f

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$6;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$6;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v6, 0x7f0d0060

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$7;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$7;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-static {p0}, Lcom/car/dvr/Util;->isBidoApkInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p0, v13}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 432
    invoke-virtual {p0, v13}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-virtual {p0, v13}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$8;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$8;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    :cond_10
    new-instance v6, Landroid/view/GestureDetector;

    new-instance v10, Lcom/car/dvr/CameraActivity$GestureListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/car/dvr/CameraActivity$GestureListener;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V

    invoke-direct {v6, p0, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mGesture:Landroid/view/GestureDetector;

    .line 449
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v6, v7}, Landroid/view/TextureView;->setClickable(Z)V

    .line 450
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    new-instance v10, Lcom/car/dvr/CameraActivity$9;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$9;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6, v7}, Lcom/car/dvr/ADAS/SVDraw;->setClickable(Z)V

    .line 458
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    new-instance v10, Lcom/car/dvr/CameraActivity$10;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$10;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Lcom/car/dvr/ADAS/SVDraw;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    new-instance v10, Lcom/car/dvr/CameraActivity$11;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$11;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 482
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    if-eqz v6, :cond_11

    .line 483
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    new-instance v10, Lcom/car/dvr/CameraActivity$12;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$12;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 494
    :cond_11
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    if-eqz v6, :cond_12

    .line 495
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    new-instance v10, Lcom/car/dvr/CameraActivity$13;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$13;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    :cond_12
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v6, :cond_13

    .line 507
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v7}, Lcom/car/dvr/MySurfaceView;->setClickable(Z)V

    .line 508
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    new-instance v10, Lcom/car/dvr/CameraActivity$14;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$14;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Lcom/car/dvr/MySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 515
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    if-eqz v6, :cond_13

    .line 516
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v7}, Lcom/car/dvr/MySurfaceView;->setClickable(Z)V

    .line 517
    new-instance v6, Landroid/view/GestureDetector;

    new-instance v7, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V

    invoke-direct {v6, p0, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mInsideCameraGesture:Landroid/view/GestureDetector;

    .line 518
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    new-instance v7, Lcom/car/dvr/CameraActivity$15;

    invoke-direct {v7, p0}, Lcom/car/dvr/CameraActivity$15;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v7}, Lcom/car/dvr/MySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 527
    :cond_13
    const v6, 0x7f0d0019

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    .line 528
    sget-object v6, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v7, "lock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 529
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 531
    :cond_14
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/car/dvr/CameraActivity$16;

    invoke-direct {v7, p0}, Lcom/car/dvr/CameraActivity$16;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    const v6, 0x7f0d0016

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSwitchButton:Landroid/widget/ImageButton;

    .line 570
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSwitchButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/car/dvr/CameraActivity$17;

    invoke-direct {v7, p0}, Lcom/car/dvr/CameraActivity$17;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    const v6, 0x7f0d0014

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/RecordTimeView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    .line 582
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 584
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/DvrApplication;->getCameraService()Lcom/car/dvr/CameraService;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->setService(Lcom/car/dvr/CameraService;)V

    .line 585
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/car/dvr/DvrApplication;->setCameraActivity(Lcom/car/dvr/CameraActivity;)V

    .line 587
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/car/dvr/browser/FileCacheService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .local v3, "mCacheIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 591
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string v6, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string v6, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    const-string v6, "com.car.adas.ok"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 595
    const-string v6, "com.car.preview.exit"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    const-string v6, "com.car.turn.exit"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    const-string v6, "com.car.monitor.notify"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 599
    const-string v6, "com.car.dvr.camera_status"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    const-string v6, "com.car.dvr.camera_onoff"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v6, "com.car.gotosleep"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v6, "com.pano.cali"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string v6, "com.pano.show"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    const-string v6, "com.pano.cali.done"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v6, "com.car.collision"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/car/dvr/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 609
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v6, "file"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 612
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/car/dvr/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 613
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    iput-boolean v6, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    .line 614
    iget-object v7, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    iget-boolean v6, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v6, :cond_1a

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v6, :cond_1a

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v6

    if-nez v6, :cond_1a

    move v6, v8

    :goto_4
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 616
    invoke-static {p0, v8}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

    .line 618
    const-string v6, "DVR.CameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sIsWideScreen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sNonRectScreen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->initView()V

    .line 621
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->initEvent()V

    .line 623
    return-void

    .line 232
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "mCacheIntent":Landroid/content/Intent;
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "wm":Landroid/view/WindowManager;
    :cond_15
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sDoubleTapFullscreenNotified:Z

    if-nez v6, :cond_1

    .line 233
    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sDoubleTapFullscreenNotified:Z

    .line 234
    const-string v6, "sys.tp.available"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    const v6, 0x7f0a00d7

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v4    # "size":Landroid/graphics/Point;
    .restart local v5    # "wm":Landroid/view/WindowManager;
    :cond_16
    move v6, v8

    .line 268
    goto/16 :goto_1

    :cond_17
    move v6, v8

    .line 285
    goto/16 :goto_2

    .line 382
    :cond_18
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_19

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-gez v6, :cond_19

    .line 383
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_3

    .line 384
    :cond_19
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v6, :cond_f

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-gez v6, :cond_f

    .line 385
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_3

    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "mCacheIntent":Landroid/content/Intent;
    :cond_1a
    move v6, v9

    .line 614
    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0a002b

    const v3, 0x1040014

    const v6, 0x104000a

    const v2, 0x108009b

    .line 1077
    packed-switch p1, :pswitch_data_0

    .line 1200
    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1079
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$20;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$20;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1091
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1094
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1098
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1101
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$21;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$21;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1114
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1117
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0018

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$22;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$22;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1130
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1133
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$23;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$23;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1146
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1150
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$24;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$24;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1163
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1166
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$25;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$25;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1179
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1182
    .end local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    :pswitch_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/car/dvr/CameraActivity$26;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$26;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1195
    .restart local v0    # "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1027
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onDestroy()V

    .line 1029
    const-string v0, "DVR.CameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    sput-object v2, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    .line 1032
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1035
    sput-boolean v3, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    .line 1036
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1039
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0, v2}, Lcom/car/dvr/ADAS/SVDraw;->setListener(Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;)V

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    invoke-virtual {v0, v2}, Lcom/car/dvr/ADAS/ADAS;->SetSVDrawView(Landroid/view/View;)V

    .line 1042
    :cond_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1043
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1044
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v0, :cond_2

    .line 1045
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-direct {p0, v0, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    .line 1047
    :cond_2
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/car/dvr/DvrApplication;->setCameraActivity(Lcom/car/dvr/CameraActivity;)V

    .line 1049
    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1050
    invoke-static {p0, v3}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

    .line 1052
    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 932
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v5, :cond_1

    .line 933
    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: mService = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    const/4 v4, -0x1

    .line 937
    .local v4, "toLeftRightCamPreview":I
    const-string v5, "camera_mode"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 938
    .local v3, "mode":I
    if-ne v3, v10, :cond_2

    .line 939
    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->cameraName2CameraID(Landroid/content/Intent;)I

    move-result v3

    .line 940
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v3, v5, :cond_b

    .line 941
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 942
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    .line 943
    sput v6, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 955
    :cond_2
    :goto_1
    const-string v5, "camera_fullscreen"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 956
    .local v2, "fullscreen":Z
    const-string v5, "camera_car_back"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 958
    .local v1, "carBacking":Z
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    .line 959
    const-string v5, "DVR.CameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent: intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", activity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBootFrom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fullscreen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", carBacking="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBackOpen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sAlwaysShowControlBar="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-eq v3, v10, :cond_3

    iget-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-nez v5, :cond_5

    .line 963
    :cond_3
    sget-boolean v5, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v5, :cond_4

    .line 964
    invoke-direct {p0, v8}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 966
    :cond_4
    sput v8, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 969
    :cond_5
    if-eq v3, v10, :cond_7

    .line 970
    iget-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    .line 971
    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    .line 972
    sput v9, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    .line 973
    iget v5, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v5, v6, :cond_6

    .line 974
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 978
    :cond_6
    if-eqz v2, :cond_7

    .line 979
    iget v5, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    if-eq v5, v3, :cond_7

    .line 980
    invoke-direct {p0, v3}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 985
    :cond_7
    if-eqz v2, :cond_8

    .line 986
    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    .line 989
    :cond_8
    if-ne v3, v10, :cond_a

    iget-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v5, :cond_a

    .line 990
    const-string v5, "DVR.CameraActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewIntent: mPreMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 992
    iget v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    iget v6, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    if-eq v5, v6, :cond_9

    .line 993
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    .line 995
    :cond_9
    iput v10, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    .line 998
    :cond_a
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v4, v5, :cond_d

    .line 999
    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: show left"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-direct {p0, v9, v8}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    .line 1012
    :goto_2
    const-string v5, "auto_start"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1014
    .local v0, "auto":Z
    if-eqz v0, :cond_0

    .line 1015
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 944
    .end local v0    # "auto":Z
    .end local v1    # "carBacking":Z
    .end local v2    # "fullscreen":Z
    :cond_b
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v3, v5, :cond_c

    .line 945
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 946
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    .line 947
    sput v6, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    goto/16 :goto_1

    .line 948
    :cond_c
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v3, v5, :cond_2

    .line 949
    sget-boolean v5, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v5, :cond_2

    .line 950
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    .line 951
    sget v4, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto/16 :goto_1

    .line 1001
    .restart local v1    # "carBacking":Z
    .restart local v2    # "fullscreen":Z
    :cond_d
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v4, v5, :cond_e

    .line 1002
    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: show right"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-direct {p0, v8, v9}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto :goto_2

    .line 1004
    :cond_e
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v4, v5, :cond_f

    .line 1005
    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: show left&right"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-direct {p0, v9, v9}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto :goto_2

    .line 1008
    :cond_f
    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: hide left&right"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-direct {p0, v8, v8}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 2744
    const-string v0, "DVR.CameraActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    .line 2746
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onPause()V

    .line 2748
    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2749
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->saveLargeSurfaceCameraIdToPreferences(I)V

    .line 2750
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->savePreviewPreferences()V

    .line 2753
    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2754
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2755
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2758
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    .line 2759
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    .line 2760
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 896
    const-string v0, "DVR.CameraActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->refreshButton()V

    .line 901
    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    .line 902
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onResume()V

    .line 904
    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 914
    :goto_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v0}, Lcom/car/dvr/PhotoUI;->isLastPhotoExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 918
    :cond_1
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->ensureCameraSurface()V

    .line 919
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 921
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

#by boba 23.01.2021
#show rear cam if recording is disabled
#    .line 923
#    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z
#
#    if-nez v0, :cond_2
#
#    .line 924
#    const/4 v0, 0x4
#
#    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    .line 927
    :cond_2
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    .line 928
    return-void

    .line 910
    :cond_3
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onScrollChanged(Lcom/car/dvr/MyHorizontalScrollView;I)V
    .locals 3
    .param p1, "view"    # Lcom/car/dvr/MyHorizontalScrollView;
    .param p2, "x"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1292
    const-string v0, "scroll_left_x"

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v2}, Lcom/car/dvr/MyHorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollX(Ljava/lang/String;II)V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1296
    const-string v0, "scroll_right_x"

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v2}, Lcom/car/dvr/MyHorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollX(Ljava/lang/String;II)V

    .line 1298
    :cond_1
    return-void
.end method

.method public onStartRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1839
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->updateShutterMode(Z)V

    .line 1840
    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    .line 1843
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1845
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 1848
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 1852
    :cond_0
    return-void
.end method

.method public onStopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1855
    const-string v0, "DVR.CameraActivity"

    const-string v1, "onStopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-direct {p0, v2}, Lcom/car/dvr/CameraActivity;->updateShutterMode(Z)V

    .line 1857
    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    .line 1860
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    .line 1861
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 10
    .param p1, "visibility"    # I

    .prologue
    const/4 v9, 0x0

    .line 2774
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 2775
    .local v2, "marginLeft":I
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2776
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 2777
    .local v5, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2779
    .local v0, "height":I
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x500

    if-gt v5, v6, :cond_0

    const/16 v6, 0x4b0

    if-le v5, v6, :cond_1

    const/16 v6, 0x140

    if-gt v0, v6, :cond_1

    .line 2780
    :cond_0
    const/16 v2, 0xa0

    .line 2783
    :cond_1
    const-string v6, "DVR.CameraActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSystemUiVisibilityChange, visibility="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time marginLeft="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    const v6, 0x7f0d0014

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2787
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2789
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v6, 0x1a

    invoke-virtual {v1, v2, v6, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2790
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2791
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2804
    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onWindowFocusChanged(Z)V

    .line 2805
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mHasFocus1st:Z

    if-nez v0, :cond_0

    .line 2806
    const-string v0, "DVR.CameraActivity"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mHasFocus1st:Z

    .line 2808
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    .line 2810
    :cond_0
    return-void
.end method

.method public saveLargeSurfaceCameraIdToPreferences(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "large_surface_camera"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2944
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2945
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLargeSurfaceCameraIdToPreferences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    return-void
.end method

.method public savePreviewPreferences()V
    .locals 3

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "preview_mode"

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2959
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2960
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePreviewPreferences: mMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    return-void
.end method

.method public setBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 3364
    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    invoke-static {p1}, Lcom/car/dvr/Platform;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 3367
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3370
    return-void
.end method

.method public setBrightnessMax()V
    .locals 3

    .prologue
    .line 3358
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3359
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    .line 3360
    .local v0, "maximumBacklight":I
    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setBrightness(I)V

    .line 3361
    return-void
.end method

.method public setFrontPreview()V
    .locals 1

    .prologue
    .line 3373
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 3374
    return-void
.end method

.method protected setInAction(Z)V
    .locals 2
    .param p1, "isInAction"    # Z

    .prologue
    .line 2667
    iput-boolean p1, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    .line 2668
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 2671
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v1, v0}, Lcom/car/dvr/MySurfaceView;->setClickable(Z)V

    .line 2672
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 2673
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    if-eqz v1, :cond_0

    .line 2674
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v1, v0}, Lcom/car/dvr/PhotoUI;->enablePhotoUI(Z)V

    .line 2676
    :cond_0
    return-void

    .line 2668
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferencesScrollX(Ljava/lang/String;II)V
    .locals 4
    .param p1, "scrollViewName"    # Ljava/lang/String;
    .param p2, "scrollViewWidth"    # I
    .param p3, "scrollX"    # I

    .prologue
    .line 2970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2971
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2972
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2973
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferencesScrollX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    return-void
.end method

.method public setPreferencesScrollY(Ljava/lang/String;II)V
    .locals 4
    .param p1, "scrollViewName"    # Ljava/lang/String;
    .param p2, "scrollViewHeight"    # I
    .param p3, "scrollY"    # I

    .prologue
    .line 2984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2985
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2986
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2987
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferencesScrollY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    return-void
.end method

.method public setService(Lcom/car/dvr/CameraService;)V
    .locals 7
    .param p1, "service"    # Lcom/car/dvr/CameraService;

    .prologue
    const/4 v6, 0x0

    .line 718
    const-string v1, "DVR.CameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-nez p1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iput-object p1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    .line 723
    new-instance v1, Lcom/car/dvr/PhotoUI;

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mRootView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/car/dvr/PhotoUI;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraService;Landroid/view/View;)V

    iput-object v1, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    .line 724
    monitor-enter p0

    .line 725
    :try_start_0
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->init()V

    .line 726
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "auto_start"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 729
    .local v0, "auto":Z
    if-eqz v0, :cond_2

    .line 730
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 732
    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v1}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 726
    .end local v0    # "auto":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public turnLeft()V
    .locals 2

    .prologue
    .line 1302
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v1, :cond_1

    .line 1303
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    .line 1304
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 1309
    :cond_0
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    .line 1310
    return-void

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    goto :goto_0
.end method

.method public turnRight()V
    .locals 2

    .prologue
    .line 1313
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v1, :cond_1

    .line 1314
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    .line 1315
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    .line 1320
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    .line 1321
    return-void

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1317
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    goto :goto_0
.end method
