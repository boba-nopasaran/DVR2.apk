.class public Lcom/car/dvr/FloatService;
.super Landroid/app/Service;
.source "FloatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/FloatService$MyHandler;
    }
.end annotation


# static fields
.field public static final CLOSE_VIEW:Ljava/lang/String; = "com.car.videorecorder.FloatService.closeview"

.field private static final MSG_CREATEVIEW:I = 0x0

.field private static final MSG_STARTCAMERA:I = 0x1

.field public static final POSX:Ljava/lang/String; = "posx"

.field public static final POSY:Ljava/lang/String; = "posy"

.field public static final SHARED_FILENAME:Ljava/lang/String; = "com.car.dvr_preferences"

.field private static final TAG:Ljava/lang/String; = "DVR.FloatService"


# instance fields
.field private btn_close:Landroid/widget/ImageView;

.field private flowViewParent:Landroid/widget/RelativeLayout;

.field private mDefaultCameraId:I

.field mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFloatView:Lcom/car/dvr/FloatView;

.field private mImageView:Landroid/widget/ImageView;

.field private mLastTime:J

.field private mMyHandler:Lcom/car/dvr/FloatService$MyHandler;

.field mParentView:Landroid/view/View;

.field mPreviewRecover:Z

.field private mRawX:F

.field private mRawY:F

.field private mRecording:Z

.field private mService:Lcom/car/dvr/CameraService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldOpen:Z

.field private mSpeechOnce:Z

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartX:F

.field private mStartY:F

.field private mStarted:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field receiver:Landroid/content/BroadcastReceiver;

.field private rect:Landroid/graphics/Rect;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 64
    iput-boolean v1, p0, Lcom/car/dvr/FloatService;->mStarted:Z

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/FloatService;->mShouldOpen:Z

    .line 66
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/FloatService;->mDefaultCameraId:I

    .line 75
    iput-boolean v1, p0, Lcom/car/dvr/FloatService;->mRecording:Z

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/FloatService;->rect:Landroid/graphics/Rect;

    .line 77
    iput-boolean v1, p0, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

    .line 78
    new-instance v0, Lcom/car/dvr/FloatService$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/FloatService$1;-><init>(Lcom/car/dvr/FloatService;)V

    iput-object v0, p0, Lcom/car/dvr/FloatService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 98
    new-instance v0, Lcom/car/dvr/FloatService$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/FloatService$2;-><init>(Lcom/car/dvr/FloatService;)V

    iput-object v0, p0, Lcom/car/dvr/FloatService;->receiver:Landroid/content/BroadcastReceiver;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/FloatService;)Lcom/car/dvr/CameraService;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/car/dvr/FloatService;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # Lcom/car/dvr/CameraService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/car/dvr/FloatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/car/dvr/FloatService;->mStarted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/car/dvr/FloatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/car/dvr/FloatService;->mStarted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/car/dvr/FloatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/car/dvr/FloatService;->mRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/car/dvr/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/car/dvr/FloatService;->createView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatService$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mMyHandler:Lcom/car/dvr/FloatService$MyHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/car/dvr/FloatService;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/car/dvr/FloatService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget v0, p0, Lcom/car/dvr/FloatService;->mRawX:F

    return v0
.end method

.method static synthetic access$1402(Lcom/car/dvr/FloatService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/car/dvr/FloatService;->mRawX:F

    return p1
.end method

.method static synthetic access$1500(Lcom/car/dvr/FloatService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget v0, p0, Lcom/car/dvr/FloatService;->mRawY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/car/dvr/FloatService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/car/dvr/FloatService;->mRawY:F

    return p1
.end method

.method static synthetic access$1602(Lcom/car/dvr/FloatService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/car/dvr/FloatService;->mStartX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/car/dvr/FloatService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/car/dvr/FloatService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/car/dvr/FloatService;->mStartY:F

    return p1
.end method

.method static synthetic access$1900(Lcom/car/dvr/FloatService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget v0, p0, Lcom/car/dvr/FloatService;->mStartRawX:F

    return v0
.end method

.method static synthetic access$1902(Lcom/car/dvr/FloatService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/car/dvr/FloatService;->mStartRawX:F

    return p1
.end method

.method static synthetic access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/car/dvr/FloatService;)F
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget v0, p0, Lcom/car/dvr/FloatService;->mStartRawY:F

    return v0
.end method

.method static synthetic access$2002(Lcom/car/dvr/FloatService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lcom/car/dvr/FloatService;->mStartRawY:F

    return p1
.end method

.method static synthetic access$2100(Lcom/car/dvr/FloatService;)J
    .locals 2
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/car/dvr/FloatService;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/car/dvr/FloatService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/car/dvr/FloatService;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/car/dvr/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/car/dvr/FloatService;->switchCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/car/dvr/FloatService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/car/dvr/FloatService;->mShouldOpen:Z

    return v0
.end method

.method static synthetic access$302(Lcom/car/dvr/FloatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/car/dvr/FloatService;->mShouldOpen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/car/dvr/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/car/dvr/FloatService;->closePreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mFloatView:Lcom/car/dvr/FloatView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/car/dvr/FloatService;->flowViewParent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/car/dvr/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/car/dvr/FloatService;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$800(Lcom/car/dvr/FloatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;

    .prologue
    .line 45
    iget v0, p0, Lcom/car/dvr/FloatService;->mDefaultCameraId:I

    return v0
.end method

.method static synthetic access$900(Lcom/car/dvr/FloatService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/car/dvr/FloatService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/car/dvr/FloatService;->showPreview(I)Z

    move-result v0

    return v0
.end method

.method private closePreview()V
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/FloatService;->mStarted:Z

    .line 358
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 360
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mFloatView:Lcom/car/dvr/FloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    .line 363
    :cond_0
    return-void
.end method

.method private createView()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 230
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/car/dvr/FloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 231
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    .line 232
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    const v3, 0x7f0d0046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/FloatView;

    iput-object v2, p0, Lcom/car/dvr/FloatService;->mFloatView:Lcom/car/dvr/FloatView;

    .line 233
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    const v3, 0x7f0d0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/car/dvr/FloatService;->flowViewParent:Landroid/widget/RelativeLayout;

    .line 235
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    const v3, 0x7f0d0047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/car/dvr/FloatService;->mImageView:Landroid/widget/ImageView;

    .line 236
    iget-boolean v2, p0, Lcom/car/dvr/FloatService;->mRecording:Z

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/car/dvr/FloatService;->btn_close:Landroid/widget/ImageView;

    .line 239
    new-instance v1, Lcom/car/dvr/FloatService$4;

    invoke-direct {v1, p0}, Lcom/car/dvr/FloatService$4;-><init>(Lcom/car/dvr/FloatService;)V

    .line 294
    .local v1, "listener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/car/dvr/FloatService;->btn_close:Landroid/widget/ImageView;

    new-instance v3, Lcom/car/dvr/FloatService$5;

    invoke-direct {v3, p0}, Lcom/car/dvr/FloatService$5;-><init>(Lcom/car/dvr/FloatService;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mFloatView:Lcom/car/dvr/FloatView;

    invoke-virtual {v2, v1}, Lcom/car/dvr/FloatView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 306
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 307
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 309
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 312
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 313
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/car/dvr/FloatService;->sp:Landroid/content/SharedPreferences;

    const-string v4, "posx"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 314
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/car/dvr/FloatService;->sp:Landroid/content/SharedPreferences;

    const-string v4, "posy"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 316
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 317
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    iget-object v4, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-boolean v2, p0, Lcom/car/dvr/FloatService;->mSpeechOnce:Z

    if-eqz v2, :cond_1

    .line 319
    const v2, 0x7f0a008a

    invoke-static {p0, v2}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    .line 321
    iput-boolean v5, p0, Lcom/car/dvr/FloatService;->mSpeechOnce:Z

    .line 323
    :cond_1
    return-void
.end method

.method private showPreview(I)Z
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    iget-object v2, p0, Lcom/car/dvr/FloatService;->mFloatView:Lcom/car/dvr/FloatView;

    invoke-virtual {v1, p1, v2}, Lcom/car/dvr/CameraService;->setPreviewView(ILandroid/view/TextureView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const/4 v1, 0x1

    .line 334
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DVR.FloatService"

    const-string v2, "set front camera surface failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    iget v2, p0, Lcom/car/dvr/FloatService;->mDefaultCameraId:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->changeCameraOfPreviewView(I)I

    move-result v1

    iput v1, p0, Lcom/car/dvr/FloatService;->mDefaultCameraId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    const-string v1, "DVR.FloatService"

    const-string v2, "switch Camera failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 5

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/dvr/FloatService;->mStartX:F

    iget v3, p0, Lcom/car/dvr/FloatService;->mRawX:F

    iget v4, p0, Lcom/car/dvr/FloatService;->mStartRawX:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 349
    iget-object v1, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/car/dvr/FloatService;->mStartY:F

    iget v3, p0, Lcom/car/dvr/FloatService;->mRawY:F

    iget v4, p0, Lcom/car/dvr/FloatService;->mStartRawY:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 350
    iget-object v1, p0, Lcom/car/dvr/FloatService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/car/dvr/FloatService;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/car/dvr/FloatService;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 170
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 171
    const-string v2, "com.car.dvr_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/car/dvr/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/FloatService;->sp:Landroid/content/SharedPreferences;

    .line 172
    iget-object v2, p0, Lcom/car/dvr/FloatService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/FloatService;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/car/dvr/CameraService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v1, "mServiceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/car/dvr/FloatService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v4}, Lcom/car/dvr/FloatService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.car.videorecorder.FloatService.closeview"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "com.car.dvr.camera_onoff"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/car/dvr/FloatService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/car/dvr/FloatService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    new-instance v2, Lcom/car/dvr/FloatService$MyHandler;

    invoke-direct {v2, p0}, Lcom/car/dvr/FloatService$MyHandler;-><init>(Lcom/car/dvr/FloatService;)V

    iput-object v2, p0, Lcom/car/dvr/FloatService;->mMyHandler:Lcom/car/dvr/FloatService$MyHandler;

    .line 183
    invoke-virtual {p0}, Lcom/car/dvr/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/car/dvr/FloatService;->mWindowManager:Landroid/view/WindowManager;

    .line 185
    iput-boolean v4, p0, Lcom/car/dvr/FloatService;->mSpeechOnce:Z

    .line 186
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/car/dvr/FloatService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/car/dvr/FloatService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/FloatService;->mService:Lcom/car/dvr/CameraService;

    .line 194
    const-string v0, "DVR.FloatService"

    const-string v1, "unbind CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/car/dvr/FloatService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/car/dvr/FloatService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/car/dvr/FloatService;->closePreview()V

    .line 198
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v0, 0x1

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 203
    if-nez p1, :cond_0

    .line 204
    const-string v0, "DVR.FloatService"

    const-string v1, "onStartcommand intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    .line 207
    :cond_0
    const-string v1, "camera_id"

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/car/dvr/FloatService;->mDefaultCameraId:I

    .line 209
    iput-boolean v0, p0, Lcom/car/dvr/FloatService;->mShouldOpen:Z

    .line 210
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/car/dvr/FloatService$3;

    invoke-direct {v2, p0}, Lcom/car/dvr/FloatService$3;-><init>(Lcom/car/dvr/FloatService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
