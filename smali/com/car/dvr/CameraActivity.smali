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

    const/4 v2, 0x0

    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/car/dvr/CameraActivity;->SCROLL_LEFT_X_DEFAULT_VALUE:F

    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/car/dvr/CameraActivity;->SCROLL_RIGHT_X_DEFAULT_VALUE:F

    const/16 v0, 0x2a8

    sput v0, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    const-string v0, "persist.leftbar.width"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraActivity;->LEFT_BAR_WIDTH:I

    const-string v0, "persist.rightbar.width"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraActivity;->RIGHT_BAR_WIDTH:I

    const-string v0, "ro.dvrprev.btns"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v0, "persist.acc.on.cam.fullscreen"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->BACK_CAM_NO_TIPS:Z

    const-string v0, "persist.dvr.no.reverse.gear.ui"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->NO_REVERSE_GEAR_UI:Z

    const-string v0, "persist.dvr.pano.view"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->PANO_VIEW:Z

    const-string v0, "ro.dual_cam_preview"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_0
    sput v0, Lcom/car/dvr/CameraActivity;->DEFAULT_MODE:I

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    const/16 v0, 0xfa

    sput v0, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    sput-boolean v2, Lcom/car/dvr/CameraActivity;->sDoubleTapFullscreenNotified:Z

    return-void

    :cond_0
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/car/dvr/BaseActivity;-><init>()V

    iput v1, p0, Lcom/car/dvr/CameraActivity;->mOpenretry:I

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v0, Lcom/car/dvr/CameraActivity;->DEFAULT_MODE:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    new-instance v0, Lcom/car/dvr/CameraActivity$MyReceiver;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$MyReceiver;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

    new-instance v0, Lcom/car/dvr/CameraActivity$StorageReceiver;

    invoke-direct {v0, p0, v3}, Lcom/car/dvr/CameraActivity$StorageReceiver;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

    const/16 v0, 0x7530

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    iput v2, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    iput-object v3, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    new-instance v0, Lcom/car/dvr/CameraActivity$27;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$27;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mScrollPosInitialiser:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/dvr/CameraActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$MyHandler;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_0
    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mHasFocus1st:Z

    iput v2, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    new-instance v0, Lcom/car/dvr/CameraActivity$30;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$30;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/car/dvr/CameraActivity$31;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$31;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackContainerResizer:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/dvr/CameraActivity$32;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$32;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosInitialiser:Ljava/lang/Runnable;

    new-instance v0, Lcom/car/dvr/CameraActivity$33;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$33;-><init>(Lcom/car/dvr/CameraActivity;)V

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosSaver:Ljava/lang/Runnable;

    return-void

    :cond_0
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/ADAS;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/car/dvr/CameraActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mInsideCameraGesture:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/CameraService;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/car/dvr/CameraActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/car/dvr/CameraActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->lock_model:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/car/dvr/CameraActivity;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraActivity;->lock_model:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/car/dvr/CameraActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    return v0
.end method

.method static synthetic access$1600(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/IconTextView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->refreshButton()V

    return-void
.end method

.method static synthetic access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/LineImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    return-object v0
.end method

.method static synthetic access$2000()F
    .locals 1

    sget v0, Lcom/car/dvr/CameraActivity;->SCROLL_LEFT_X_DEFAULT_VALUE:F

    return v0
.end method

.method static synthetic access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$2300()F
    .locals 1

    sget v0, Lcom/car/dvr/CameraActivity;->SCROLL_RIGHT_X_DEFAULT_VALUE:F

    return v0
.end method

.method static synthetic access$2400()I
    .locals 1

    sget v0, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcom/car/dvr/CameraActivity;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/car/dvr/CameraActivity;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/car/dvr/CameraActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->actionOnCarBack(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    return v0
.end method

.method static synthetic access$2802(Lcom/car/dvr/CameraActivity;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    return p1
.end method

.method static synthetic access$2900(Lcom/car/dvr/CameraActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/car/dvr/CameraActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/PanoView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPanoView:Lcom/car/dvr/PanoView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/car/dvr/CameraActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    return v0
.end method

.method static synthetic access$3400(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    return v0
.end method

.method static synthetic access$3500(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    return v0
.end method

.method static synthetic access$3600(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    return v0
.end method

.method static synthetic access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    return v0
.end method

.method static synthetic access$3902(Lcom/car/dvr/CameraActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/CameraActivity;->mStartAnimationTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/car/dvr/CameraActivity;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mGesture:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/car/dvr/CameraActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->setControlContainerClickable(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    return-void
.end method

.method static synthetic access$4200()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/car/dvr/CameraActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/car/dvr/CameraActivity;->mDoubleTapTime:J

    return-wide p1
.end method

.method static synthetic access$4400()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    return v0
.end method

.method static synthetic access$4602(Lcom/car/dvr/CameraActivity;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    return p1
.end method

.method static synthetic access$4700(Lcom/car/dvr/CameraActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/car/dvr/CameraActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/car/dvr/CameraActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->getSecondSurfaceVisibility()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    return-void
.end method

.method static synthetic access$5200(Lcom/car/dvr/CameraActivity;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    return v0
.end method

.method static synthetic access$5202(Lcom/car/dvr/CameraActivity;I)I
    .locals 0

    iput p1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    return p1
.end method

.method static synthetic access$5300(Lcom/car/dvr/CameraActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    return-void
.end method

.method static synthetic access$5500(Lcom/car/dvr/CameraActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5600()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    return v0
.end method

.method static synthetic access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosInitialiser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackScrollPosSaver:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private actionOnCameraHotplug(II)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-eqz v1, :cond_1

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, v5, :cond_1

    :cond_0
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v0

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

    if-ne p2, v5, :cond_8

    if-eqz v0, :cond_4

    sget-boolean v1, Lcom/car/dvr/CameraActivity;->BACK_CAM_NO_TIPS:Z

    if-nez v1, :cond_3

    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v1, :cond_7

    const-string v1, "DVR.CameraActivity"

    const-string v3, "car backing, force setMode(CAMERA_BACK)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    move-object v1, v2

    check-cast v1, Landroid/view/TextureView;

    invoke-direct {p0, v3, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    check-cast v2, Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    :cond_5
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "out"

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq v1, v3, :cond_4

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-ne v1, v5, :cond_4

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    move-object v1, v2

    check-cast v1, Landroid/view/TextureView;

    invoke-direct {p0, v3, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    check-cast v2, Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    const-string v1, "DVR.CameraActivity"

    const-string v2, "hotplug camera still plugin, fake plugout message, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isCarBacking()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "DVR.CameraActivity"

    const-string v2, "isCarBacking, keep CAMERA_BACK mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :goto_3
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto/16 :goto_2

    :cond_a
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v6}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v1, v6}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method private actionOnCarBack(I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

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

    if-ne p1, v3, :cond_5

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v0, :cond_3

    const-string v0, "DVR.CameraActivity"

    const-string v1, "is already CarBacking, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v0, "off"

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_4

    iput v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :goto_2
    sput v4, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v0, v3, :cond_6

    sput-boolean v4, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->finish()V

    goto :goto_0

    :cond_6
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0}, Lcom/car/dvr/IconTextView;->performClick()Z

    :cond_7
    iput-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    if-ne v0, v5, :cond_8

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    if-eq v0, v1, :cond_9

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    :cond_9
    iput v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    goto :goto_2
.end method

.method private alwaysShowControlBar(Z)V
    .locals 7

    const/4 v6, 0x0

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

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    :cond_0
    const v3, 0x7f0d0001

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0d0013

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private autoSetLeftRightCamPreview(Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v3, "camera_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v3, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_1

    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

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

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    return-void

    :cond_2
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "rear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private cameraName2CameraID(Landroid/content/Intent;)I
    .locals 5

    const/4 v0, -0x1

    const-string v2, "camera_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const-string v2, "front"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

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

    goto :goto_0

    :cond_2
    const-string v2, "rear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    goto :goto_1

    :cond_3
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    goto :goto_1

    :cond_4
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    goto :goto_1

    :cond_5
    const-string v2, "inside"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    goto :goto_1

    :cond_6
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_1
.end method

.method private controlContainerAnimation(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sget v1, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/car/dvr/CameraActivity$28;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$28;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sget v1, Lcom/car/dvr/CameraActivity;->ANIM_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/car/dvr/CameraActivity$29;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$29;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private currentIsFullScreen()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

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

    and-int/lit8 v1, v0, 0x4

    if-lez v1, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private ensureCameraSurface()V
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v1, v2, :cond_4

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

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

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v1, v0}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    :goto_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    :cond_3
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v1, :cond_0

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto/16 :goto_0

    :cond_4
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    goto :goto_1

    :cond_5
    const-string v1, "DVR.CameraActivity"

    const-string v2, "ensureCameraSurface: small view camera unvaliable,recheck"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto :goto_2
.end method

.method private enterCarBacking(Z)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0xf

    const/4 v3, 0x4

    const/4 v4, 0x0

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

    invoke-static {p1}, Lcom/car/dvr/CameraActivity;->sendCarBackActivityStatusBroadcast(Z)V

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getBrightness()I

    move-result v0

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    :cond_0
    sput-boolean p1, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    invoke-virtual {v0, p1}, Lcom/car/dvr/ADAS/ADAS;->setCarBackStatus(Z)V

    :cond_1
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->setBrightnessMax()V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1, v7, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->NO_REVERSE_GEAR_UI:Z

    if-nez v0, :cond_2

    const v0, 0x7f0a009f

    invoke-static {p0, v0}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/LineImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v0, v3}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    :cond_3
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->insideOfDualCVBSisWorking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInsideOfDualCVBSisWorkingBeforeCarBacking:Z

    if-eqz v0, :cond_4

    const-string v0, "DVR.CameraActivity"

    const-string v1, "cvbsToggle to BackCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0, v4}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    :cond_4
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->PANO_VIEW:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v0, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    return-void

    :cond_7
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setBrightness(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mBrightnessBeforeCarBacking:I

    :cond_8
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0, v3}, Lcom/car/dvr/LineImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-eq v0, v6, :cond_9

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mIsFullScreenBeforeCarBacking:Z

    if-nez v0, :cond_a

    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

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

    const-string v0, "DVR.CameraActivity"

    const-string v1, "cvbsToggle restore to InsideCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0, v4}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    :cond_b
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->PANO_VIEW:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static getBootMode()I
    .locals 1

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    return v0
.end method

.method public static getInstance()Lcom/car/dvr/CameraActivity;
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    return-object v0
.end method

.method private getSecondSurfaceVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

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

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v17, "DVR.CameraActivity"

    const-string v18, "MSG_STORAGE_CHECK_FINISHED"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const v17, 0x7f0a0095

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    goto :goto_0

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

    new-instance v7, Landroid/content/Intent;

    const-string v17, "action_show_alert_sd"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Lcom/car/dvr/CameraActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const v17, 0x7f0a0098

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    const-string v17, "sys.car.dvr.accident.f"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "sys.car.dvr.accident.b"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v17, 0x7f0a0097

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    const-string v17, "sys.car.dvr.accident.f"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "sys.car.dvr.accident.b"

    const-string v18, "1"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/car/dvr/CameraManager;->isRecording()I

    move-result v17

    if-lez v17, :cond_3

    const/4 v6, 0x1

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

    if-nez v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->onStopRecording()V

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->onStartRecording()V

    goto/16 :goto_0

    :pswitch_3
    const-string v17, "DVR.CameraActivity"

    const-string v18, "MSG_STOP_RECORDING"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->onStopRecording()V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/car/dvr/CameraActivity;->updateRecordTime(II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->scrollUp()V

    goto/16 :goto_0

    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->scrollDown()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->isDestroyed()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->startRecording()V

    goto/16 :goto_0

    :pswitch_8
    const/16 v17, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

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

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

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

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

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

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    move/from16 v18, v0

    add-int v15, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

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

    sget-boolean v17, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v17, :cond_9

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

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto/16 :goto_0

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

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/car/dvr/CameraActivity;->mPreMode:I

    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    goto/16 :goto_0

    :cond_a
    sget v17, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_3

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

    sget-boolean v17, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    :pswitch_c
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V

    goto/16 :goto_0

    :pswitch_d
    sget v17, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraActivity;->actionOnCameraHotplug(II)V

    goto/16 :goto_0

    :pswitch_e
    sget v17, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraActivity;->actionOnCameraHotplug(II)V

    goto/16 :goto_0

    :pswitch_f
    sget v17, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isTurning()Z

    move-result v17

    if-nez v17, :cond_0

    const v17, 0x7f0a009d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

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

    :cond_d
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;Ljava/lang/String;)V
	
#by boba 11.08.2020
#screensave after stoppreview
new-instance v6, Landroid/content/Intent;
const-string v8, "com.car.hud.dismiss"
invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
move-object/from16 v8, p0
invoke-virtual {v8, v6}, Lcom/car/dvr/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V	

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->finish()V

    goto/16 :goto_0

    :pswitch_10
    invoke-static {}, Lcom/car/dvr/CameraReceiver;->getCarBackStatus()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/car/dvr/CameraActivity;->actionOnCarBack(I)V

    goto/16 :goto_0

    :pswitch_11
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->init()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

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

    sget-boolean v17, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    if-eqz v17, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->ensureCameraSurface()V

    goto/16 :goto_0

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

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v13, "camera_mode"

    const/4 v14, -0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/car/dvr/CameraActivity;->cameraName2CameraID(Landroid/content/Intent;)I

    move-result v9

    sget v13, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-eq v9, v13, :cond_0

    sget v13, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v9, v13, :cond_1

    :cond_0
    sget v9, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    const/4 v13, 0x2

    sput v13, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    :cond_1
    sget-boolean v13, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v13, :cond_2

    sget v13, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v9, v13, :cond_2

    sget v9, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :cond_2
    const-string v13, "camera_fullscreen"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v13, -0x1

    if-eq v9, v13, :cond_5

    const-string v13, "camera_car_back"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

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

    if-eqz v3, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    const/4 v13, 0x1

    sput v13, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v13, :cond_6

    const-string v13, "DVR.CameraActivity"

    const-string v14, "CameraService has been unbinded, cancel init"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    const/4 v13, 0x0

    sput v13, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    const-string v13, "DVR.CameraActivity"

    const-string v14, "camera is started normal."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v2

    if-eqz v4, :cond_b

    sget-boolean v13, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

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

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v13, v14}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    move v8, v9

    const/4 v13, -0x1

    if-ne v9, v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getLargeSurfaceCameraIdFromPreferences()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v13, :cond_c

    const-string v13, "preview_mode"

    sget v14, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/car/dvr/CameraActivity;->getPreferencesInt(Ljava/lang/String;I)I

    move-result v9

    sget v13, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v9, v13, :cond_8

    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

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

    sget-boolean v13, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v13}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v7

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/car/dvr/CameraActivity;->updateShutterMode(Z)V

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

    const-string v13, "DVR.CameraActivity"

    const-string v14, "Both Camera not open, try again 1s later"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x10

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080016

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mControlContainerW:I

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080014

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceW:I

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080015

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceH:I

    invoke-virtual/range {p0 .. p0}, Lcom/car/dvr/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v10, v11, Landroid/graphics/Point;->x:I

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

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/car/dvr/CameraActivity;->mSmallSurfaceY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/car/dvr/CameraActivity;->autoSetLeftRightCamPreview(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    sget v9, Lcom/car/dvr/CameraActivity;->DEFAULT_MODE:I

    goto/16 :goto_3

    :cond_d
    move v7, v4

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/car/dvr/CameraActivity;->initModeAndTextureView(II)V

    goto :goto_5
.end method

.method private initEvent()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    new-instance v1, Lcom/car/dvr/CameraActivity$18;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$18;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    new-instance v1, Lcom/car/dvr/CameraActivity$19;

    invoke-direct {v1, p0}, Lcom/car/dvr/CameraActivity$19;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initModeAndTextureView(II)V
    .locals 8

    const-wide/16 v6, 0x1388

    const/4 v0, 0x4

    const/16 v2, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v3, :cond_9

    const-string v3, "DVR.CameraActivity"

    const-string v4, "initModeAndTextureView: mFrontOpen && mBackOpen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v3, :cond_3

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p1, v3, :cond_0

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p2, v3, :cond_0

    sget v3, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v3, v5, :cond_3

    :cond_0
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v3, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    :goto_0
    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v3, :cond_4

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    invoke-direct {p0, v1, p1}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    :goto_1
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v2, :cond_1

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v0, v5, :cond_1

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    sget v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    :goto_2
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    :cond_2
    :goto_3
    const/4 v0, -0x1

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->updateTab(II)V

    :goto_4
    return-void

    :cond_3
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v3, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    goto :goto_0

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

    :cond_8
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v5}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto :goto_2

    :cond_9
    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v3, :cond_f

    const-string v3, "DVR.CameraActivity"

    const-string v4, "initModeAndTextureView: mFrontOpen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v3, v4}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget-boolean v3, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v3, :cond_b

    :cond_a
    move v0, v2

    :cond_b
    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v0, :cond_d

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v0, :cond_c

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_3

    :cond_e
    sget-boolean v0, Lcom/car/dvr/CameraActivity;->BACK_CAM_NO_TIPS:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-nez v0, :cond_d

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v3, :cond_14

    const-string v1, "DVR.CameraActivity"

    const-string v3, "initModeAndTextureView: mFrontOpen && mBackOpen"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-direct {p0, v1, v3}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v1, :cond_11

    :cond_10
    move v0, v2

    :cond_11
    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_12

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    if-ne v0, v5, :cond_12

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    :cond_12
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v0, :cond_13

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v0, :cond_2

    :cond_13
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->showDialog(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    :cond_14
    const-string v0, "DVR.CameraActivity"

    const-string v2, "init failed! no camera existes!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    goto/16 :goto_4
.end method

.method private initView()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    sget-object v0, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v1, "gsensor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    sget-object v0, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v1, "mic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->refreshButton()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static isCarBacking()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    return v0
.end method

.method public static isHotplugCameraIn()Z
    .locals 1

    invoke-static {}, Lcom/car/dvr/CameraService;->isHotplugCameraIn()Z

    move-result v0

    return v0
.end method

.method public static isLockType(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRunningForeground()Z
    .locals 1

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    return v0
.end method

.method private isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    const/4 v9, 0x2

    new-array v2, v9, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v2, v8

    aget v4, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v3, v1, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v0, v4, v9

    if-lt v6, v4, :cond_0

    if-gt v6, v0, :cond_0

    if-lt v5, v1, :cond_0

    if-gt v5, v3, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private static isTurning()Z
    .locals 1

    invoke-static {}, Lcom/car/dvr/CameraManager$USBCamera;->isTurning()Z

    move-result v0

    return v0
.end method

.method private refreshButton()V
    .locals 6

    const v5, 0x7f0a00a2

    const v4, 0x7f02003f

    const v3, 0x7f070017

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getVideoLockEnbale(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    invoke-static {p0, v4, v3}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    const v2, 0x7f020041

    invoke-static {p0, v2, v3}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    sget-object v1, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    const-string v2, "isLock"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DVR.CameraActivity"

    const-string v2, "refreshButton: isLock=true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v1}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    invoke-static {p0, v5}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    :goto_3
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivGsensor:Landroid/widget/ImageView;

    const v2, 0x7f07001c

    invoke-static {p0, v4, v2}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->ivMic:Landroid/widget/ImageView;

    const v2, 0x7f020040

    invoke-static {p0, v2, v3}, Lcom/car/util/ViewUtil;->getColorStateListTintedDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    :cond_4
    const-string v1, "DVR.CameraActivity"

    const-string v2, "refreshButton: isLock=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3
.end method

.method private resetAutoStopPreviewTimer()V
    .locals 5

    const/16 v4, 0xe

    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getStopPreviewTime(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/car/dvr/CameraActivity;->mStopPreviewTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private resizeFrontAndBackContainerAsync()V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackContainerResizer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mFrontAndBackContainerResizer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollDown()V
    .locals 2

    const-string v0, "DVR.CameraActivity"

    const-string v1, "scroll down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/SVDraw;->isCalibration()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0}, Lcom/car/dvr/LineImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0
.end method

.method private scrollUp()V
    .locals 2

    const-string v0, "DVR.CameraActivity"

    const-string v1, "scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/SVDraw;->isCalibration()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    invoke-virtual {v0}, Lcom/car/dvr/LineImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_0
.end method

.method public static sendCarBackActivityStatusBroadcast(Z)V
    .locals 5

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

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.dvr.reverse.gear.popup"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "is.reverse.gear"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

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

.method private setControlContainerClickable(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, p1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    sget v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-eqz v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    if-eqz p1, :cond_5

    iget-boolean v3, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v0, p1}, Lcom/car/dvr/PhotoUI;->enablePhotoUI(Z)V

    :cond_2
    sget-boolean v0, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/IconTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/IconTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v4}, Lcom/car/dvr/IconTextView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private setFullScreen(Z)V
    .locals 9

    const/16 v8, 0x12

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

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

    const-string v2, "ro.ban_front_full"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->FRONT_USB_BACK_MIPI:Z

    if-nez v2, :cond_0

    if-ne v3, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v2, v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_2

    if-eqz p1, :cond_7

    or-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v2, v5, :cond_3

    if-eqz p1, :cond_8

    or-int/lit8 v1, v1, 0x4

    :cond_3
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v8, :cond_4

    if-eqz p1, :cond_9

    or-int/lit16 v1, v1, 0x1000

    or-int/lit16 v1, v1, 0x200

    or-int/lit16 v1, v1, 0x400

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-eqz p1, :cond_a

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v2, :cond_5

    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    :cond_5
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->alwaysShowControlBar(Z)V

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

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

    return-void

    :cond_7
    and-int/lit8 v1, v1, -0x3

    goto :goto_0

    :cond_8
    and-int/lit8 v1, v1, -0x5

    goto :goto_1

    :cond_9
    and-int/lit16 v1, v1, -0x1001

    and-int/lit16 v1, v1, -0x201

    and-int/lit16 v1, v1, -0x401

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v2, v5, :cond_b

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, v4}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    :cond_b
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v3}, Lcom/car/dvr/CameraActivity;->alwaysShowControlBar(Z)V

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_c
    move v2, v4

    goto :goto_4

    :cond_d
    move v3, v4

    goto :goto_5
.end method

.method private setLargeContainerVisibility(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->adasIsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->ensureCameraSurface()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0, v2}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLeftRightCamPreview(ZZ)V
    .locals 11

    const/4 v6, 0x0

    const/16 v10, 0x8

    const/4 v9, 0x0

    sget-boolean v5, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

    if-nez p1, :cond_2

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v10}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeftSide:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    sget v7, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    move-object v5, v6

    check-cast v5, Landroid/view/TextureView;

    invoke-direct {p0, v7, v5}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    :goto_1
    if-nez p2, :cond_3

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v10}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRightSide:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    check-cast v6, Landroid/view/TextureView;

    invoke-direct {p0, v5, v6}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    :goto_2
    sget v5, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    div-int/lit8 v1, v5, 0x2

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    :goto_3
    move v2, v0

    move v4, v0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    move v2, v0

    move v4, v0

    :cond_1
    :goto_4
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v3}, Lcom/car/dvr/MyHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v3}, Lcom/car/dvr/MyHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mScrollPosInitialiser:Ljava/lang/Runnable;

    const-wide/16 v8, 0x32

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v9}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerLeftSide:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-direct {p0, v5, v7}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v5, v9}, Lcom/car/dvr/MyHorizontalScrollView;->setVisibility(I)V

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mContainerRightSide:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-direct {p0, v5, v6}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, -0x5a

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    mul-int/lit8 v2, v0, 0x2

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    const/4 v2, 0x0

    mul-int/lit8 v4, v0, 0x2

    goto :goto_4

    :cond_7
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    goto/16 :goto_0
.end method

.method private setMode(I)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x12

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v2, :cond_0

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v2, :cond_0

    const-string v2, "DVR.CameraActivity"

    const-string v3, "back camera is disabled, force setMode(CAMERA_FRONT)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    :cond_0
    sget-boolean v2, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v2, :cond_1

    const-string v2, "DVR.CameraActivity"

    const-string v3, "front camera is no exists, force setMode(CAMERA_BACK)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :cond_1
    iget v1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    move v0, p1

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

    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    if-eqz v2, :cond_2

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

    :goto_0
    return-void

    :cond_2
    if-ne v1, v0, :cond_3

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

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->autoSetLeftRightCamPreview(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

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

    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mFrontOpen:Z

    if-nez v2, :cond_5

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq p1, v2, :cond_4

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v2, :cond_5

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

    :cond_5
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-nez v2, :cond_8

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq p1, v2, :cond_6

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne p1, v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    if-eqz v2, :cond_7

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq p1, v2, :cond_8

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

    :cond_8
    iget-boolean v2, p0, Lcom/car/dvr/CameraActivity;->mInsideOpen:Z

    if-nez v2, :cond_9

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne p1, v2, :cond_9

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

    :cond_9
    invoke-direct {p0, v1, v0}, Lcom/car/dvr/CameraActivity;->updateTab(II)V

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v2, :cond_a

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne v0, v2, :cond_f

    :cond_a
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v2, :cond_b

    invoke-static {}, Lcom/car/dvr/CameraActivity;->isTurning()Z

    move-result v2

    if-nez v2, :cond_b

    :cond_b
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v2, :cond_d

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    invoke-direct {p0, v5, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    :cond_c
    :goto_1
    iput p1, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->autoSetLeftRightCamPreview(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v2, v3, :cond_e

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v2}, Lcom/car/dvr/CameraActivity;->switchPreviewView(I)V

    :cond_e
    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto :goto_1

    :cond_f
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v2, :cond_12

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v2, :cond_10

    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    goto :goto_1

    :cond_10
    iget v2, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v2, v3, :cond_11

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

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v2}, Lcom/car/dvr/CameraActivity;->switchPreviewView(I)V

    :cond_11
    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto :goto_1

    :cond_12
    sget v2, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v0, v2, :cond_c

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_13
    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v2, :cond_14

    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->setLargeContainerVisibility(Z)V

    invoke-direct {p0, v5, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    goto :goto_1

    :cond_14
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v2, :cond_c

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    goto/16 :goto_1
.end method

.method private setPreviewView(ILandroid/view/TextureView;)V
    .locals 3

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

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0, p1, p2}, Lcom/car/dvr/CameraService;->setPreviewView(ILandroid/view/TextureView;)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->adasIsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    const-string v0, "DVR.CameraActivity"

    const-string v1, "show ADAS view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    const-string v0, "DVR.CameraActivity"

    const-string v1, "hide ADAS view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSecondSurfaceVisibility(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(II)V

    return-void
.end method

.method private setSecondSurfaceVisibility(II)V
    .locals 4

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_4

    if-ltz p2, :cond_4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq p2, v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p2, v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-eq p2, v3, :cond_2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne p2, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v0, p1}, Lcom/car/dvr/MySurfaceView;->setVisibility(I)V

    return-void

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startRecording()V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DVR.CameraActivity"

    const-string v1, "startRecording failed, it\'s recording already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->checkStorageDevice()Z

    move-result v0

    if-eqz v0, :cond_0

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

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->startRecording()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    goto :goto_0
.end method

.method private stopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v0}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DVR.CameraActivity"

    const-string v1, "stopRecording failed, it\'s not recording."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "DVR.CameraActivity"

    const-string v1, "click Recording: stop Recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->stopRecording()V

    goto :goto_0
.end method

.method private switchPreviewView()V
    .locals 3

    const-string v1, "DVR.CameraActivity"

    const-string v2, "switch preview view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;

    invoke-direct {v0, p0}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;-><init>(Lcom/car/dvr/CameraActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private switchPreviewView(I)V
    .locals 4

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

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;

    invoke-direct {v0, p0, p1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;-><init>(Lcom/car/dvr/CameraActivity;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private updateRecordTime(II)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x0

    if-ne p2, v3, :cond_3

    const v2, 0x7f0a006a

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-boolean v2, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v2, :cond_1

    :cond_0
    const-string v0, ""

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

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v2, v1}, Lcom/car/dvr/RecordTimeView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v2, v6}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_4

    const v2, 0x7f0a006b

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_5

    const v2, 0x7f0a006e

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    const v2, 0x7f0a006d

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const v2, 0x7f0a006c

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateShutterMode(Z)V
    .locals 3

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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateTab(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    :goto_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v1}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/car/dvr/CameraActivity;->FLAG_DUAL_CAM_PREVIEW:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    goto :goto_0
.end method


# virtual methods
.method checkStorageDevice()Z
    .locals 1

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->showDialog(I)V

    const v0, 0x7f0a0095

    invoke-static {p0, v0}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->finish()V

    return-void
.end method

.method public getBrightness()I
    .locals 6

    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

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

    return v0
.end method

.method protected getHistoryView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    return-object v0
.end method

.method protected getInAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    return v0
.end method

.method protected getLargeId()I
    .locals 1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    return v0
.end method

.method public getLargeSurfaceCameraIdFromPreferences()I
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "large_surface_camera"

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v1, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

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

    return v0
.end method

.method public getPreferencesInt(Ljava/lang/String;I)I
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

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

    return v0
.end method

.method public getPreferencesScrollX(Ljava/lang/String;II)I
    .locals 5

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

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

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

    return v1
.end method

.method public getPreferencesScrollY(Ljava/lang/String;II)I
    .locals 5

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

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

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

    return v1
.end method

.method public onBackPressed()V
    .locals 1

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/car/dvr/CameraActivity;->mDoubleTapTime:J

    sub-long v4, v0, v10

    const-wide/16 v10, 0x12c

    cmp-long v9, v4, v10

    if-gez v9, :cond_1

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v9, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v9, :cond_2

    const-string v9, "DVR.CameraActivity"

    const-string v10, "IsCarBacking, eated this click event"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iput-wide v0, p0, Lcom/car/dvr/CameraActivity;->mLastClickTime:J

    goto :goto_0

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

    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_1

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

    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_1

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

    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-eqz v9, :cond_3

    sget v9, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    goto :goto_1

    :pswitch_4
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click smallSurface"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v10, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v9, v10, :cond_3

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    const v10, 0x7f0d000a

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v9, :cond_4

    const-string v9, "DVR.CameraActivity"

    const-string v10, "click ADAS_SVDraw"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->getSecondSurfaceVisibility()I

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v9}, Lcom/car/dvr/ADAS/SVDraw;->getLastMotionEvent()Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-direct {p0, v9, v2}, Lcom/car/dvr/CameraActivity;->isTouchPointInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "DVR.CameraActivity"

    const-string v10, "call mSurfaceSecond.performClick()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v9}, Lcom/car/dvr/MySurfaceView;->performClick()Z

    goto/16 :goto_1

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

    :cond_5
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x13

    const-wide/16 v12, 0x12c

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_6
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

    if-nez v9, :cond_7

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    const-wide/16 v12, 0x12c

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_7
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_6
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v9}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_8

    const/4 v8, 0x1

    :goto_2
    iget-wide v10, p0, Lcom/car/dvr/CameraActivity;->mLastClickTime:J

    sub-long v4, v0, v10

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

    const-wide/16 v10, 0x12c

    cmp-long v9, v4, v10

    if-lez v9, :cond_a

    const/4 v10, 0x1

    if-nez v8, :cond_9

    const/4 v9, 0x1

    :goto_3
    invoke-direct {p0, v10, v9}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto/16 :goto_1

    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    const-string v9, "DVR.CameraActivity"

    const-string v10, "eated surfaceLeft click event"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_7
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v9}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b

    const/4 v7, 0x1

    :goto_4
    iget-wide v10, p0, Lcom/car/dvr/CameraActivity;->mLastClickTime:J

    sub-long v4, v0, v10

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

    const-wide/16 v10, 0x12c

    cmp-long v9, v4, v10

    if-lez v9, :cond_d

    if-nez v7, :cond_c

    const/4 v9, 0x1

    :goto_5
    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto/16 :goto_1

    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    goto :goto_5

    :cond_d
    const-string v9, "DVR.CameraActivity"

    const-string v10, "eated surfaceRight click event"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_8
    iget-boolean v9, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    if-nez v9, :cond_e

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v9, :cond_f

    :cond_e
    const-string v9, "DVR.CameraActivity"

    const-string v10, "mInAction"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    sget-boolean v9, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v9}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v6

    :goto_6
    if-nez v6, :cond_11

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->startRecording()V

    goto/16 :goto_1

    :cond_10
    iget-object v9, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v10, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v9, v10}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v6

    goto :goto_6

    :cond_11
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->stopRecording()V

    goto/16 :goto_1

    :pswitch_9
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/car/dvr/CameraActivity;->setFloatView(Z)V

    const-string v9, "DVR.CameraActivity"

    const-string v10, "click menu"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/car/dvr/CameraSetting;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Lcom/car/dvr/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_a
    const-string v9, "DVR.CameraActivity"

    const-string v10, "click adas"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/car/dvr/CameraSetting;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "adas"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->checkStorageDevice()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/car/dvr/CameraActivity;->setFloatView(Z)V

    const-string v9, "DVR.CameraActivity"

    const-string v10, "click history, start FileBrowser"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/common/CarPath;->getVideoPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/car/dvr/browser/FileBrowser;->startFileBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

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

    const/16 v12, 0x5a

    const v13, 0x7f0d001a

    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "DVR.CameraActivity"

    const-string v10, "onCreate"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v10, 0x80

    const/16 v11, 0x80

    invoke-virtual {v6, v10, v11}, Landroid/view/Window;->setFlags(II)V

    const v6, 0x7f030003

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    sput v8, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/car/dvr/CameraReceiver;->getCarBackStatus()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraService;->isReverseGear()Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_0
    const-string v6, "DVR.CameraActivity"

    const-string v10, "CarBacking"

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/car/dvr/ADAS/ADAS;->getInstance(Landroid/content/Context;)Lcom/car/dvr/ADAS/ADAS;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    const v6, 0x7f0d000a

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/ADAS/SVDraw;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6, p0}, Lcom/car/dvr/ADAS/SVDraw;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    iget-object v10, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6, v10}, Lcom/car/dvr/ADAS/ADAS;->SetSVDrawView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    new-instance v10, Lcom/car/dvr/CameraActivity$1;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$1;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Lcom/car/dvr/ADAS/SVDraw;->setListener(Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;)V

    :cond_2
    const v6, 0x7f0d0024

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v6, "sys.adas.ok"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    const v6, 0x7f0d0024

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-static {p0}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mCameraManager:Lcom/car/dvr/CameraManager;

    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

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

    iget v6, v4, Landroid/graphics/Point;->x:I

    const/16 v10, 0x500

    if-gt v6, v10, :cond_4

    iget v6, v4, Landroid/graphics/Point;->x:I

    const/16 v10, 0x500

    if-ne v6, v10, :cond_5

    iget v6, v4, Landroid/graphics/Point;->y:I

    const/16 v10, 0x140

    if-ne v6, v10, :cond_5

    :cond_4
    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    :cond_5
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v6, :cond_6

    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    const-string v6, "DVR.CameraActivity"

    const-string v10, "onCreate: sScreenSplit = true 1"

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v6, :cond_7

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_7

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v6, :cond_7

    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    const-string v6, "DVR.CameraActivity"

    const-string v10, "onCreate: sScreenSplit = true 2"

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/car/dvr/CameraActivity;->isHotplugCameraIn()Z

    move-result v6

    if-eqz v6, :cond_17

    move v6, v7

    :goto_2
    iput v6, p0, Lcom/car/dvr/CameraActivity;->mRemovableCamState:I

    const/high16 v6, 0x7f0d0000

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mRootView:Landroid/view/View;

    const v6, 0x7f0d001d

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/IconTextView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabFront:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d001e

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/IconTextView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d001f

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/IconTextView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/IconTextView;->setFocus(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabBack:Lcom/car/dvr/IconTextView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d001c

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-eqz v6, :cond_8

    sget-boolean v6, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mCamSelector:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const v6, 0x7f0d0020

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0021

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0023

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgMenu:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgMenu:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v6, Lcom/car/dvr/GenericFragment;->OEM_BEIDOU:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_a
    const v6, 0x7f0d0013

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MySurfaceView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v9}, Lcom/car/dvr/MySurfaceView;->setVisibility(I)V

    const v6, 0x7f0d000b

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainer23:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0d000c

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    const v6, 0x7f0d000d

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MySurfaceView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/MySurfaceView;->reLayoutEnable(Z)V

    :cond_b
    const v6, 0x7f0d0005

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerPano:Landroid/view/View;

    const v6, 0x7f0d0007

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/PanoView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mPanoView:Lcom/car/dvr/PanoView;

    const v6, 0x7f0d0004

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerLeftSide:Landroid/view/View;

    const v6, 0x7f0d0002

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MyHorizontalScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MyHorizontalScrollView;->setListener(Lcom/car/dvr/MyHorizontalScrollView$Listener;)V

    const v6, 0x7f0d0003

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    const v6, 0x7f0d0010

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerRightSide:Landroid/view/View;

    const v6, 0x7f0d0011

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MyHorizontalScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MyHorizontalScrollView;->setListener(Lcom/car/dvr/MyHorizontalScrollView$Listener;)V

    const v6, 0x7f0d0012

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-virtual {v6, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceRight:Landroid/view/TextureView;

    invoke-virtual {v6, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f080013

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/car/dvr/CameraActivity;->sSideCameraPreviewMaxWidth:I

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MySurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0008

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    const v6, 0x7f0d0009

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/TextureView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v6, p0}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0059

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/LineImageView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineImageView:Lcom/car/dvr/LineImageView;

    const v6, 0x7f0d001b

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mControlContainer:Landroid/view/View;

    const v6, 0x7f0d005a

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    const v6, 0x7f0d0015

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sNonRectScreen:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v12, v8, v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLineControl:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f08003e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v1, v8, v8, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLowerLeftBtns:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0d0006

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sIsWideScreen:Z

    if-eqz v6, :cond_d

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-nez v6, :cond_d

    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    invoke-direct {p0, v7}, Lcom/car/dvr/CameraActivity;->alwaysShowControlBar(Z)V

    :cond_d
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_e

    const v6, 0x7f0d000e

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    const v6, 0x7f0d000f

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/MySurfaceView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v8}, Lcom/car/dvr/MySurfaceView;->reLayoutEnable(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, p0}, Lcom/car/dvr/MySurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_18

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v6, :cond_18

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-direct {v10, v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mTabDouble:Lcom/car/dvr/IconTextView;

    const v10, 0x7f0a000b

    invoke-virtual {v6, v10}, Lcom/car/dvr/IconTextView;->setText(I)V

    :cond_f
    :goto_3
    const v6, 0x7f0d005d

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$2;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$2;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d005e

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$3;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$3;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d005c

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$4;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$4;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d005b

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$5;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$5;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d005f

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$6;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$6;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0060

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$7;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$7;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/car/dvr/Util;->isBidoApkInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p0, v13}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {p0, v13}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v13}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v10, Lcom/car/dvr/CameraActivity$8;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$8;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    new-instance v6, Landroid/view/GestureDetector;

    new-instance v10, Lcom/car/dvr/CameraActivity$GestureListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/car/dvr/CameraActivity$GestureListener;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V

    invoke-direct {v6, p0, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mGesture:Landroid/view/GestureDetector;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    invoke-virtual {v6, v7}, Landroid/view/TextureView;->setClickable(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceFirst:Landroid/view/TextureView;

    new-instance v10, Lcom/car/dvr/CameraActivity$9;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$9;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v6, v7}, Lcom/car/dvr/ADAS/SVDraw;->setClickable(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    new-instance v10, Lcom/car/dvr/CameraActivity$10;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$10;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Lcom/car/dvr/ADAS/SVDraw;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerFirst:Landroid/widget/ScrollView;

    new-instance v10, Lcom/car/dvr/CameraActivity$11;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$11;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    new-instance v10, Lcom/car/dvr/CameraActivity$12;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$12;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_11
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    new-instance v10, Lcom/car/dvr/CameraActivity$13;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$13;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_12
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sScreenSplit:Z

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v7}, Lcom/car/dvr/MySurfaceView;->setClickable(Z)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    new-instance v10, Lcom/car/dvr/CameraActivity$14;

    invoke-direct {v10, p0}, Lcom/car/dvr/CameraActivity$14;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v10}, Lcom/car/dvr/MySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v6, v7}, Lcom/car/dvr/MySurfaceView;->setClickable(Z)V

    new-instance v6, Landroid/view/GestureDetector;

    new-instance v7, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V

    invoke-direct {v6, p0, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mInsideCameraGesture:Landroid/view/GestureDetector;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSurfaceThird:Lcom/car/dvr/MySurfaceView;

    new-instance v7, Lcom/car/dvr/CameraActivity$15;

    invoke-direct {v7, p0}, Lcom/car/dvr/CameraActivity$15;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v7}, Lcom/car/dvr/MySurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_13
    const v6, 0x7f0d0019

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    sget-object v6, Lcom/car/dvr/CameraActivity;->BTN_LIST:Ljava/lang/String;

    const-string v7, "lock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_14
    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLockImageButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/car/dvr/CameraActivity$16;

    invoke-direct {v7, p0}, Lcom/car/dvr/CameraActivity$16;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0016

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mSwitchButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mSwitchButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/car/dvr/CameraActivity$17;

    invoke-direct {v7, p0}, Lcom/car/dvr/CameraActivity$17;-><init>(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d0014

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/car/dvr/RecordTimeView;

    iput-object v6, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/DvrApplication;->getCameraService()Lcom/car/dvr/CameraService;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->setService(Lcom/car/dvr/CameraService;)V

    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/car/dvr/DvrApplication;->setCameraActivity(Lcom/car/dvr/CameraActivity;)V

    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/car/dvr/browser/FileCacheService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/car/dvr/CameraActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.videorecorder.recording_time_changed"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.adas.ok"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.preview.exit"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.turn.exit"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.monitor.notify"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.dvr.camera_status"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.dvr.camera_onoff"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.gotosleep"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.pano.cali"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.pano.show"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.pano.cali.done"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.car.collision"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/car/dvr/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "file"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/car/dvr/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sAlwaysShowControlBar:Z

    iput-boolean v6, p0, Lcom/car/dvr/CameraActivity;->mControlContainerShow:Z

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

    invoke-static {p0, v8}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

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

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->initView()V

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->initEvent()V

    return-void

    :cond_15
    sget-boolean v6, Lcom/car/dvr/CameraActivity;->sDoubleTapFullscreenNotified:Z

    if-nez v6, :cond_1

    sput-boolean v7, Lcom/car/dvr/CameraActivity;->sDoubleTapFullscreenNotified:Z

    const-string v6, "sys.tp.available"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0a00d7

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/car/dvr/CameraActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    move v6, v8

    goto/16 :goto_1

    :cond_17
    move v6, v8

    goto/16 :goto_2

    :cond_18
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v6, :cond_19

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-gez v6, :cond_19

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerSecond:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_19
    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ltz v6, :cond_f

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-gez v6, :cond_f

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/car/dvr/CameraActivity;->mContainerThird:Landroid/widget/ScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_1a
    move v6, v9

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const v4, 0x7f0a002b

    const v3, 0x1040014

    const v6, 0x104000a

    const v2, 0x108009b

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

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

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

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

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onDestroy()V

    const-string v0, "DVR.CameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/car/dvr/CameraActivity;->mInstance:Lcom/car/dvr/CameraActivity;

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mReceiver:Lcom/car/dvr/CameraActivity$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mStorageReceiver:Lcom/car/dvr/CameraActivity$StorageReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v3, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mAdasView:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0, v2}, Lcom/car/dvr/ADAS/SVDraw;->setListener(Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;)V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mADAS:Lcom/car/dvr/ADAS/ADAS;

    invoke-virtual {v0, v2}, Lcom/car/dvr/ADAS/ADAS;->SetSVDrawView(Landroid/view/View;)V

    :cond_1
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ltz v0, :cond_2

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-direct {p0, v0, v2}, Lcom/car/dvr/CameraActivity;->setPreviewView(ILandroid/view/TextureView;)V

    :cond_2
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/car/dvr/DvrApplication;->setCameraActivity(Lcom/car/dvr/CameraActivity;)V

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v3}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 11

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    if-nez v5, :cond_1

    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: mService = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, -0x1

    const-string v5, "camera_mode"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_2

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity;->cameraName2CameraID(Landroid/content/Intent;)I

    move-result v3

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v3, v5, :cond_b

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    sput v6, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    :cond_2
    :goto_1
    const-string v5, "camera_fullscreen"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "camera_car_back"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v5, v6}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

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

    if-eq v3, v10, :cond_3

    iget-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-nez v5, :cond_5

    :cond_3
    sget-boolean v5, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-eqz v5, :cond_4

    invoke-direct {p0, v8}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    :cond_4
    sput v8, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    :cond_5
    if-eq v3, v10, :cond_7

    iget-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->enterCarBacking(Z)V

    sput v9, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v5, v6, :cond_6

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :cond_6
    if-eqz v2, :cond_7

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    if-eq v5, v3, :cond_7

    invoke-direct {p0, v3}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-direct {p0, v9}, Lcom/car/dvr/CameraActivity;->setFullScreen(Z)V

    :cond_8
    if-ne v3, v10, :cond_a

    iget-boolean v5, p0, Lcom/car/dvr/CameraActivity;->mBackOpen:Z

    if-eqz v5, :cond_a

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

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    invoke-direct {p0, v5}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    sget v6, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    iget v6, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    if-eq v5, v6, :cond_9

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->switchPreviewView()V

    :cond_9
    iput v10, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    :cond_a
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_LEFT:I

    if-ne v4, v5, :cond_d

    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: show left"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9, v8}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    :goto_2
    const-string v5, "auto_start"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v3, v5, :cond_c

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    sput v6, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    goto/16 :goto_1

    :cond_c
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v3, v5, :cond_2

    sget-boolean v5, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_EXIST:Z

    if-eqz v5, :cond_2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto/16 :goto_1

    :cond_d
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_RIGHT:I

    if-ne v4, v5, :cond_e

    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: show right"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, v9}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto :goto_2

    :cond_e
    sget v5, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v4, v5, :cond_f

    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: show left&right"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9, v9}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto :goto_2

    :cond_f
    const-string v5, "DVR.CameraActivity"

    const-string v6, "onNewIntent: hide left&right"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, v8}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    goto :goto_2
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DVR.CameraActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onPause()V

    sget v0, Lcom/car/dvr/CameraActivity;->mBootFrom:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->saveLargeSurfaceCameraIdToPreferences(I)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->savePreviewPreferences()V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreMode:I

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mLargeId:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreLargeId:I

    return-void
.end method

.method public onResume()V
    .locals 5

    const/16 v4, 0xb

    const-string v0, "DVR.CameraActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->refreshButton()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/dvr/CameraActivity;->sIsRunningForeground:Z

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v0}, Lcom/car/dvr/PhotoUI;->isLastPhotoExist()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mImgHistory:Landroid/widget/ImageButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->ensureCameraSurface()V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resetAutoStopPreviewTimer()V

    sget-boolean v0, Lcom/car/dvr/VideoInfo;->IS_BACK_CAM_RECORD:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setSecondSurfaceVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onScrollChanged(Lcom/car/dvr/MyHorizontalScrollView;I)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSurfaceLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "scroll_left_x"

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v2}, Lcom/car/dvr/MyHorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollX(Ljava/lang/String;II)V

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

    const-string v0, "scroll_right_x"

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v1}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v2}, Lcom/car/dvr/MyHorizontalScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollX(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public onStartRecording()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->updateShutterMode(Z)V

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    sget-boolean v0, Lcom/car/dvr/CameraActivity;->mIsCarBacking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    invoke-virtual {v0, v2}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :cond_0
    return-void
.end method

.method public onStopRecording()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DVR.CameraActivity"

    const-string v1, "onStopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/car/dvr/CameraActivity;->updateShutterMode(Z)V

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mLargeTime:Lcom/car/dvr/RecordTimeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/car/dvr/RecordTimeView;->setVisibility(I)V

    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->currentIsFullScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x500

    if-gt v5, v6, :cond_0

    const/16 v6, 0x4b0

    if-le v5, v6, :cond_1

    const/16 v6, 0x140

    if-gt v0, v6, :cond_1

    :cond_0
    const/16 v2, 0xa0

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

    const v6, 0x7f0d0014

    invoke-virtual {p0, v6}, Lcom/car/dvr/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v6, 0x1a

    invoke-virtual {v1, v2, v6, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mHasFocus1st:Z

    if-nez v0, :cond_0

    const-string v0, "DVR.CameraActivity"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/CameraActivity;->mHasFocus1st:Z

    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->resizeFrontAndBackContainerAsync()V

    :cond_0
    return-void
.end method

.method public saveLargeSurfaceCameraIdToPreferences(I)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "large_surface_camera"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

    return-void
.end method

.method public savePreviewPreferences()V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "preview_mode"

    iget v2, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

    return-void
.end method

.method public setBrightness(I)V
    .locals 3

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

    invoke-static {p1}, Lcom/car/dvr/Platform;->setTemporaryScreenBrightnessSettingOverride(I)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setBrightnessMax()V
    .locals 3

    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/car/dvr/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraActivity;->setBrightness(I)V

    return-void
.end method

.method public setFrontPreview()V
    .locals 1

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    return-void
.end method

.method protected setInAction(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/car/dvr/CameraActivity;->mInAction:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSurfaceSecond:Lcom/car/dvr/MySurfaceView;

    invoke-virtual {v1, v0}, Lcom/car/dvr/MySurfaceView;->setClickable(Z)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mImgRecording:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v1, v0}, Lcom/car/dvr/PhotoUI;->enablePhotoUI(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferencesScrollX(Ljava/lang/String;II)V
    .locals 4

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

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

    return-void
.end method

.method public setPreferencesScrollY(Ljava/lang/String;II)V
    .locals 4

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

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

    return-void
.end method

.method public setService(Lcom/car/dvr/CameraService;)V
    .locals 7

    const/4 v6, 0x0

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

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    new-instance v1, Lcom/car/dvr/PhotoUI;

    iget-object v2, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    iget-object v3, p0, Lcom/car/dvr/CameraActivity;->mRootView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/car/dvr/PhotoUI;-><init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraService;Landroid/view/View;)V

    iput-object v1, p0, Lcom/car/dvr/CameraActivity;->mPhotoUI:Lcom/car/dvr/PhotoUI;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/car/dvr/CameraActivity;->init()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/car/dvr/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "auto_start"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mService:Lcom/car/dvr/CameraService;

    invoke-virtual {v1}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity;->mSwitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

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

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    goto :goto_0
.end method

.method public turnRight()V
    .locals 2

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/car/dvr/CameraActivity;->mMode:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-direct {p0, v0}, Lcom/car/dvr/CameraActivity;->setMode(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/CameraActivity;->setLeftRightCamPreview(ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerLeft:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity;->mContainerRight:Lcom/car/dvr/MyHorizontalScrollView;

    invoke-virtual {v0}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    iput v0, p0, Lcom/car/dvr/CameraActivity;->mPreviewModeBeforeTurnLeftRight:I

    goto :goto_0
.end method
