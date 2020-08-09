.class public final Lcom/calmcar/adas/b/a;
.super Ljava/lang/Object;
.source "CarLaneServer.java"


# instance fields
.field private a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/calmcar/adas/b/a;->b:Landroid/content/Context;

    new-instance v0, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-direct {v0}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/b/a;->c:Lcom/google/gson/Gson;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "config.txt"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0, p3}, Lcom/a/a/a/b;->a(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "car_lbp_init_config_big.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "car_lbp_init_config_small.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "car_filter.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "car_lbp_init_config_half.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p1, p2, p3}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->passNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lcom/calmcar/adas/dao/DetectDataInfo;
    .locals 10

    :try_start_0
    invoke-interface {p1}, Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;->gray()Lorg/opencv/core/Mat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    iget-wide v2, v0, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->height()I

    move-result v4

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->width()I

    move-result v5

    invoke-static {}, Lcom/calmcar/adas/apiserver/AdasServer;->getInstance()Lcom/calmcar/adas/apiserver/AdasServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/AdasServer;->getRate()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual/range {v1 .. v6}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->laneCarDetectNew2(JIIF)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/b/a;->c:Lcom/google/gson/Gson;

    const-class v2, Lcom/calmcar/adas/dao/DetectDataInfo;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/DetectDataInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LaneCar Detect time  :*****"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "----"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->getKimiStrNew()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/b/a;->b:Landroid/content/Context;

    const-string v2, "config.txt"

    const-string v3, "/mnt/sdcard/test"

    invoke-static {v2, v3, v1, v0}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/calmcar/adas/b/a;->b:Landroid/content/Context;

    const-string v2, "car_lbp_init_config_big.xml"

    const-string v3, "/mnt/sdcard/test"

    invoke-static {v2, v3, v1, v0}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "car_lbp_init_config_small.xml"

    const-string v3, "/mnt/sdcard/test"

    invoke-static {v2, v3, v1, v0}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "car_filter.xml"

    const-string v3, "/mnt/sdcard/test"

    invoke-static {v2, v3, v1, v0}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/calmcar/adas/b/a;->b:Landroid/content/Context;

    const-string v2, "car_lbp_init_config_half.xml"

    const-string v3, "/mnt/sdcard/test"

    invoke-static {v2, v3, v1, v0}, Lcom/calmcar/adas/b/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(III)V
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setVPParaNew(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setVPParaLaneNew(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setVPParaNew(FF)V

    goto :goto_0
.end method

.method public final a(IIIII)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p2, p3, p4, p5}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setLaneSwitchConf(IIII)V

    sput p2, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->SWITCH_PRESPEED:I

    sput p3, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->SWITCH_SENVAL:I

    sput p4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->SWITCH_FREQVAL:I

    sput p5, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->SWITCH_PRETIME:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p2, p3, p4, p5}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setLaneOutConf(IIII)V

    sput p2, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRESPEED:I

    sput p3, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_SENVAL:I

    sput p4, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_FREQVAL:I

    sput p5, Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;->OUT_PRETIME:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p2, p3, p4, p5}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setCarDisConf(IIII)V

    sput p2, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRESPEED:I

    sput p3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_SENVAL:I

    sput p4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_FREQVAL:I

    sput p5, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->DIS_PRETIME:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p2, p3, p4, p5}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setCarCrashConf(IIII)V

    sput p2, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRESPEED:I

    sput p3, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_SENVAL:I

    sput p4, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_FREQVAL:I

    sput p5, Lcom/calmcar/adas/apiserver/AdasConf$CarConf;->CRASH_PRETIME:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p2, p3, p4, p5}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setPeoDisConf(IIII)V

    sput p2, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_PRESPEED:I

    sput p3, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_SENVAL:I

    sput p4, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_FREQVAL:I

    sput p5, Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;->CRASH_PRETIME:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    invoke-virtual {v0, v1, v2}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->laneInitNew(II)I

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    const/16 v1, 0x1e

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1, v2}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setLDWParameterNew(SF)V

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->carInitNew()I

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->carStartNew()V

    return-void
.end method

.method public final b(III)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0, p1, p2, p3}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->setDetectStateNew(III)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/b/a;->a:Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;

    invoke-virtual {v0}, Ltianjin/calmcar/calmcar_adas/AdasCarLaneWarper;->laneReleaseNew()V

    return-void
.end method
