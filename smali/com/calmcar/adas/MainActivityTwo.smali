.class public Lcom/calmcar/adas/MainActivityTwo;
.super Landroid/app/Activity;
.source "MainActivityTwo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;
.implements Lcom/calmcar/adas/g;


# static fields
.field private static final a:Ljava/lang/String; = "MainActivity"


# instance fields
.field private A:Landroid/widget/ToggleButton;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Landroid/widget/TextView;

.field private E:Lcom/calmcar/adas/apiserver/AdasServer;

.field private F:Lcom/calmcar/adas/apiserver/view/AdasDrawView;

.field private G:Landroid/widget/TextView;

.field private H:J

.field private I:I

.field private J:Lcom/calmcar/adas/gps/LocationTickListener;

.field private K:F

.field private L:F

.field private b:Lcom/calmcar/adas/CameraBridgeViewBase;

.field private c:Lcom/calmcar/adas/CameraDataProcess;

.field private d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/widget/RelativeLayout;

.field private r:I

.field private s:I

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/opencv/videoio/VideoWriter;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Landroid/widget/LinearLayout;

.field private w:Z

.field private x:Landroid/widget/TextView;

.field private y:Landroid/content/Context;

.field private z:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/calmcar/adas/MainActivityTwo;->H:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->I:I

    new-instance v0, Lcom/calmcar/adas/MainActivityTwo$3;

    invoke-direct {v0, p0}, Lcom/calmcar/adas/MainActivityTwo$3;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->J:Lcom/calmcar/adas/gps/LocationTickListener;

    return-void
.end method

.method static synthetic a(Lcom/calmcar/adas/MainActivityTwo;I)I
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/MainActivityTwo;->k:I

    return p1
.end method

.method static synthetic a(Lcom/calmcar/adas/MainActivityTwo;)Lcom/calmcar/adas/CameraBridgeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->F:Lcom/calmcar/adas/apiserver/view/AdasDrawView;

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/view/AdasDrawView;->setVisibility(I)V

    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->carOutLine()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->frontCarSafeDistance()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->frontCarCrash()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->frontCarLaunchWarn()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lorg/opencv/core/Mat;)V
    .locals 6

    const/4 v2, 0x3

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->SAVE_TEST_VIDEO:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    invoke-static {p1, v1, v2, v2}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/calmcar/adas/MainActivityTwo;->H:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/calmcar/adas/MainActivityTwo;->c()V

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/videoio/VideoWriter;

    invoke-virtual {v0}, Lorg/opencv/videoio/VideoWriter;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->I:I

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->I:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->I:I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/videoio/VideoWriter;

    invoke-virtual {v0, v1}, Lorg/opencv/videoio/VideoWriter;->write(Lorg/opencv/core/Mat;)V

    :cond_2
    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/calmcar/adas/MainActivityTwo;I)I
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    return p1
.end method

.method static synthetic b(Lcom/calmcar/adas/MainActivityTwo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->i:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/16 v3, 0x500

    const/16 v2, 0x2d0

    const/4 v6, 0x0

    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/CameraBridgeViewBase;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/view/AdasDrawView;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->F:Lcom/calmcar/adas/apiserver/view/AdasDrawView;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, v3, v2}, Lcom/calmcar/adas/CameraBridgeViewBase;->setFrameSize(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, v6}, Lcom/calmcar/adas/CameraBridgeViewBase;->setVisibility(I)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, p0}, Lcom/calmcar/adas/CameraBridgeViewBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, v3, v2}, Lcom/calmcar/adas/CameraBridgeViewBase;->setMaxFrameSize(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraBridgeViewBase;->enableFpsMeter()V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$1;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$1;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setDetectInitSuccessListener(Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$2;

    invoke-direct {v1}, Lcom/calmcar/adas/MainActivityTwo$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setActiveSuccessListener(Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, p0}, Lcom/calmcar/adas/apiserver/AdasServer;->setCameraDataProcessCallBack(Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, v3, v2}, Lcom/calmcar/adas/apiserver/AdasServer;->initConf(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, v6}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerRunMode(I)V

    new-instance v0, Lcom/calmcar/adas/CameraDataProcess;

    invoke-direct {v0, p0, v3, v2, p0}, Lcom/calmcar/adas/CameraDataProcess;-><init>(Landroid/content/Context;IILcom/calmcar/adas/CameraDataProcess$CameraDataArriveListener;)V

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraDataProcess;->initializeCameraForShare()Z

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    check-cast v0, Lcom/calmcar/adas/JavaCameraView3;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/JavaCameraView3;->setCameraDataProcess(Lcom/calmcar/adas/CameraDataProcess;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    const v1, 0x7f060001

    const v2, 0x7f060003

    const v3, 0x7f060004

    const v4, 0x7f060002

    const/high16 v5, 0x7f060000

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->initVideoPlayers(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->J:Lcom/calmcar/adas/gps/LocationTickListener;

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->startServer(Lcom/calmcar/adas/gps/LocationTickListener;)V

    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->z:Landroid/widget/ToggleButton;

    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->A:Landroid/widget/ToggleButton;

    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->D:Landroid/widget/TextView;

    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->z:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->x:Landroid/widget/TextView;

    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerModuleState(ZI)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setFrontCarWarnSencitivity(I)V

    sput-boolean v6, Lcom/calmcar/adas/apiserver/AdasConf;->SAVE_TEST_VIDEO:Z

    invoke-direct {p0}, Lcom/calmcar/adas/MainActivityTwo;->c()V

    return-void
.end method

.method static synthetic c(Lcom/calmcar/adas/MainActivityTwo;)I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->k:I

    return v0
.end method

.method static synthetic c(Lcom/calmcar/adas/MainActivityTwo;I)I
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/MainActivityTwo;->l:I

    return p1
.end method

.method private c()V
    .locals 12

    const/16 v7, 0x4a

    const/16 v6, 0x47

    const-wide/high16 v10, 0x4094000000000000L    # 1280.0

    const-wide v8, 0x4086800000000000L    # 720.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->SAVE_TEST_VIDEO:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/MainActivityTwo;->H:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/opencv/videoio/VideoWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/mnt/sdcard/adas_video/test/V_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".avi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x4d

    const/16 v3, 0x50

    invoke-static {v0, v7, v3, v6}, Lorg/opencv/videoio/VideoWriter;->fourcc(CCCC)I

    move-result v3

    new-instance v6, Lorg/opencv/core/Size;

    invoke-direct {v6, v10, v11, v8, v9}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-direct/range {v1 .. v6}, Lorg/opencv/videoio/VideoWriter;-><init>(Ljava/lang/String;IDLorg/opencv/core/Size;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/adas/MainActivityTwo;->H:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    const-string v0, "/mnt/sdcard/adas_video"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/opencv/videoio/VideoWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/mnt/sdcard/adas_video/V_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".avi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x4d

    const/16 v3, 0x50

    invoke-static {v0, v7, v3, v6}, Lorg/opencv/videoio/VideoWriter;->fourcc(CCCC)I

    move-result v3

    new-instance v6, Lorg/opencv/core/Size;

    invoke-direct {v6, v10, v11, v8, v9}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-direct/range {v1 .. v6}, Lorg/opencv/videoio/VideoWriter;-><init>(Ljava/lang/String;IDLorg/opencv/core/Size;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/calmcar/adas/MainActivityTwo;)I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->o:I

    return v0
.end method

.method static synthetic d(Lcom/calmcar/adas/MainActivityTwo;I)I
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    return p1
.end method

.method private d()V
    .locals 3

    const/16 v1, 0x8

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/calmcar/adas/AnimUtils;->getBottomOutAnim(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/calmcar/adas/AnimUtils;->getBottomInAnim(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/calmcar/adas/MainActivityTwo;)I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->p:I

    return v0
.end method

.method private e()V
    .locals 2

    const/16 v0, 0x8

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    return-void
.end method

.method static synthetic f(Lcom/calmcar/adas/MainActivityTwo;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->h:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/calmcar/adas/MainActivityTwo;)I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->l:I

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/calmcar/adas/AnimUtils;->getBottomOutAnim(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic h(Lcom/calmcar/adas/MainActivityTwo;)I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->r:I

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/calmcar/adas/AnimUtils;->getBottomInAnim(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic i(Lcom/calmcar/adas/MainActivityTwo;)I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->s:I

    return v0
.end method

.method private i()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->j:Landroid/widget/Button;

    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->h:Landroid/view/View;

    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraBridgeViewBase;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v1}, Lcom/calmcar/adas/CameraBridgeViewBase;->getMeasuredHeight()I

    move-result v1

    int-to-float v0, v0

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    int-to-float v0, v1

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    mul-float/2addr v1, v0

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v0, v0

    iget v2, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    mul-float/2addr v2, v0

    const/16 v0, 0x96

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->o:I

    const/high16 v0, 0x43160000    # 150.0f

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->p:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->r:I

    const/high16 v0, 0x42c80000    # 100.0f

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->s:I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v3, v1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    float-to-int v3, v2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/AdasServer;->getVPPara()[I

    move-result-object v0

    aget v3, v0, v5

    if-lez v3, :cond_0

    aget v3, v0, v5

    int-to-float v3, v3

    iget v4, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v5, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$4;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$4;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$5;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$5;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    float-to-int v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    div-float v3, v1, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-float/2addr v1, v6

    float-to-int v1, v1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v5, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    div-float v1, v2, v6

    float-to-int v1, v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$4;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$4;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$5;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$5;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public final a(DDD)V
    .locals 5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "######0.00000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/AdasServer;->isValidLocationState()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->x:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7ecf\u5ea6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u7eac\u5ea6\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u901f\u5ea6\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p5, p6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "km/h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->D:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->D:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->x:Landroid/widget/TextView;

    const-string v1, "GPS\u65e0\u4fe1\u53f7\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/CameraBridgeViewBase;->deliverAndDrawFrame(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/apiserver/AdasServer;->processDataAsyn(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/calmcar/adas/MainActivityTwo;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v2, 0x8

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->u:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/calmcar/adas/AnimUtils;->getBottomOutAnim(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/calmcar/adas/AnimUtils;->getBottomInAnim(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->j:Landroid/widget/Button;

    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->h:Landroid/view/View;

    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraBridgeViewBase;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v2}, Lcom/calmcar/adas/CameraBridgeViewBase;->getMeasuredHeight()I

    move-result v2

    int-to-float v0, v0

    sget v3, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    int-to-float v0, v2

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v0, v0

    iget v2, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    mul-float/2addr v2, v0

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v0, v0

    iget v3, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    mul-float/2addr v3, v0

    const/16 v0, 0x96

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->o:I

    const/high16 v0, 0x43160000    # 150.0f

    sub-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->p:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->r:I

    const/high16 v0, 0x42c80000    # 100.0f

    sub-float v0, v3, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->s:I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v4, v2

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    float-to-int v4, v3

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/AdasServer;->getVPPara()[I

    move-result-object v0

    aget v4, v0, v1

    if-lez v4, :cond_2

    aget v4, v0, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v4, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v4, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$4;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$4;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$5;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$5;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    float-to-int v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    div-float v4, v2, v6

    float-to-int v4, v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-float/2addr v2, v6

    float-to-int v2, v2

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v4, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    div-float v2, v3, v6

    float-to-int v2, v2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    div-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :sswitch_2
    iget v0, p0, Lcom/calmcar/adas/MainActivityTwo;->m:I

    int-to-float v0, v0

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->K:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/calmcar/adas/MainActivityTwo;->n:I

    int-to-float v1, v1

    iget v3, p0, Lcom/calmcar/adas/MainActivityTwo;->L:F

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setVPPara(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0c006e -> :sswitch_0
        0x7f0c007c -> :sswitch_2
        0x7f0c007f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v4, 0x400

    const/4 v7, 0x1

    const/16 v3, 0x500

    const/16 v2, 0x2d0

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/calmcar/adas/MainActivityTwo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v7}, Lcom/calmcar/adas/MainActivityTwo;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/calmcar/adas/MainActivityTwo;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->setContentView(I)V

    iput-object p0, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    new-instance v0, Lcom/calmcar/adas/apiserver/AdasServer;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v0, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/CameraBridgeViewBase;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/view/AdasDrawView;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->F:Lcom/calmcar/adas/apiserver/view/AdasDrawView;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, v3, v2}, Lcom/calmcar/adas/CameraBridgeViewBase;->setFrameSize(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, v6}, Lcom/calmcar/adas/CameraBridgeViewBase;->setVisibility(I)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, p0}, Lcom/calmcar/adas/CameraBridgeViewBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0, v3, v2}, Lcom/calmcar/adas/CameraBridgeViewBase;->setMaxFrameSize(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraBridgeViewBase;->enableFpsMeter()V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$1;

    invoke-direct {v1, p0}, Lcom/calmcar/adas/MainActivityTwo$1;-><init>(Lcom/calmcar/adas/MainActivityTwo;)V

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setDetectInitSuccessListener(Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    new-instance v1, Lcom/calmcar/adas/MainActivityTwo$2;

    invoke-direct {v1}, Lcom/calmcar/adas/MainActivityTwo$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setActiveSuccessListener(Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, p0}, Lcom/calmcar/adas/apiserver/AdasServer;->setCameraDataProcessCallBack(Lcom/calmcar/adas/apiserver/AdasServer$CameraDataProcessCallBack;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, v3, v2}, Lcom/calmcar/adas/apiserver/AdasServer;->initConf(II)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, v6}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerRunMode(I)V

    new-instance v0, Lcom/calmcar/adas/CameraDataProcess;

    invoke-direct {v0, p0, v3, v2, p0}, Lcom/calmcar/adas/CameraDataProcess;-><init>(Landroid/content/Context;IILcom/calmcar/adas/CameraDataProcess$CameraDataArriveListener;)V

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraDataProcess;->initializeCameraForShare()Z

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->b:Lcom/calmcar/adas/CameraBridgeViewBase;

    check-cast v0, Lcom/calmcar/adas/JavaCameraView3;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/JavaCameraView3;->setCameraDataProcess(Lcom/calmcar/adas/CameraDataProcess;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    const v1, 0x7f060001

    const v2, 0x7f060003

    const v3, 0x7f060004

    const v4, 0x7f060002

    const/high16 v5, 0x7f060000

    invoke-virtual/range {v0 .. v5}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->initVideoPlayers(IIIII)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo;->J:Lcom/calmcar/adas/gps/LocationTickListener;

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->startServer(Lcom/calmcar/adas/gps/LocationTickListener;)V

    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->z:Landroid/widget/ToggleButton;

    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->A:Landroid/widget/ToggleButton;

    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->D:Landroid/widget/TextView;

    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->B:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->C:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->z:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->A:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->x:Landroid/widget/TextView;

    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->findViewById(I)Landroid/view/View;

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0, v7, v6}, Lcom/calmcar/adas/apiserver/AdasServer;->setAdasServerModuleState(ZI)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/apiserver/AdasServer;->setFrontCarWarnSencitivity(I)V

    sput-boolean v6, Lcom/calmcar/adas/apiserver/AdasConf;->SAVE_TEST_VIDEO:Z

    invoke-direct {p0}, Lcom/calmcar/adas/MainActivityTwo;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->E:Lcom/calmcar/adas/apiserver/AdasServer;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/AdasServer;->serverStop()V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->stop()V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->c:Lcom/calmcar/adas/CameraDataProcess;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraDataProcess;->releaseCameraForShare()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/videoio/VideoWriter;

    invoke-virtual {v0}, Lorg/opencv/videoio/VideoWriter;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onProcessBack(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->carOutLine()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->F:Lcom/calmcar/adas/apiserver/view/AdasDrawView;

    invoke-virtual {v0, p1, p2}, Lcom/calmcar/adas/apiserver/view/AdasDrawView;->drawBitmap(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->frontCarSafeDistance()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->frontCarCrash()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo;->d:Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/out/WarnSpeakManager;->frontCarLaunchWarn()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/calmcar/adas/MainActivityTwo;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/MainActivityTwo;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
