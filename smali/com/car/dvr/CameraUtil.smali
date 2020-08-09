.class public final Lcom/car/dvr/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static final MSG_FORMAT_SDCARD_COUNTDOWN:I = 0x65

.field private static final TAG:Ljava/lang/String; = "DVR.CameraUtil"

.field private static mCountDown:I

.field private static mFormatDialog:Landroid/app/AlertDialog;

.field private static mFormatSDCardDialog:Landroid/app/AlertDialog;

.field private static mHandler:Landroid/os/Handler;

.field private static mSDCardFullDialog:Landroid/app/AlertDialog;

.field private static mSDCardNoExistDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    sput v0, Lcom/car/dvr/CameraUtil;->mCountDown:I

    new-instance v0, Lcom/car/dvr/CameraUtil$1;

    invoke-direct {v0}, Lcom/car/dvr/CameraUtil$1;-><init>()V

    sput-object v0, Lcom/car/dvr/CameraUtil;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/car/dvr/CameraUtil;->mCountDown:I

    return v0
.end method

.method static synthetic access$110()I
    .locals 2

    sget v0, Lcom/car/dvr/CameraUtil;->mCountDown:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/car/dvr/CameraUtil;->mCountDown:I

    return v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/car/dvr/CameraUtil;->mSDCardFullDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->jump2Storage(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/car/dvr/CameraUtil;->mFormatDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->formatSDCard(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->formatSDCard2(Landroid/content/Context;)V

    return-void
.end method

.method public static checkEXIFInfo(Ljava/lang/String;)V
    .locals 32

    const-string v28, "sys.current.gpsinfo"

    const-string v29, "0"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_0

    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_0

    const/16 v28, 0x1

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_1

    :cond_0
    const-string v28, "DVR.CameraUtil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No Valid GPS Info for takePicture use. gpsinfo = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_3

    :try_start_1
    const-string v28, "GPSLatitude"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v28, "GPSLongitude"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v28, "GPSProcessingMethod"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v14, :cond_2

    if-eqz v18, :cond_2

    if-eqz v22, :cond_2

    const-string v28, "DVR.CameraUtil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Original Valid GPS Info in this picture, lati = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " longi = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " method "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v28, 0x0

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x412e848000000000L    # 1000000.0

    div-double v16, v28, v30

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-static {v2, v3, v0}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v9

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x2

    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    const-wide v30, 0x40c3880000000000L    # 10000.0

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x0

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/1,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/1,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/10000"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v28, "GPSLatitude"

    move-object/from16 v0, v28

    invoke-virtual {v12, v0, v15}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "GPSLatitudeRef"

    const-wide/16 v30, 0x0

    cmpl-double v28, v16, v30

    if-lez v28, :cond_4

    const-string v28, "N"

    :goto_1
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x1

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x412e848000000000L    # 1000000.0

    div-double v20, v28, v30

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v9

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x2

    aget-object v28, v25, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    const-wide v30, 0x40c3880000000000L    # 10000.0

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v29, 0x0

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/1,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v29, v25, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/1,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/10000"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v28, "GPSLongitude"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "GPSLongitudeRef"

    const-wide/16 v30, 0x0

    cmpl-double v28, v20, v30

    if-lez v28, :cond_5

    const-string v28, "E"

    :goto_2
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v28, 0x2

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/high16 v28, 0x3fff0000    # 1.9921875f

    and-int v28, v28, v8

    shr-int/lit8 v7, v28, 0x10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const-string v28, "GPSAltitude"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v29, "GPSAltitudeRef"

    if-ltz v7, :cond_6

    const-string v28, "0"

    :goto_3
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    shr-int/lit8 v28, v8, 0x1e

    and-int/lit8 v27, v28, 0x3

    packed-switch v27, :pswitch_data_0

    const-string v28, "GPSProcessingMethod"

    const-string v29, "GPS"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v28, "DVR.CameraUtil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Combine Param = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " altitude = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " GPS type : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "GPSProcessingMethod"

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/media/ExifInterface;->saveAttributes()V

    const-string v28, "DVR.CameraUtil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "take picture Add latitudeStr = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " longitudeStr = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v11, v12

    goto/16 :goto_0

    :cond_4
    const-string v28, "S"

    goto/16 :goto_1

    :cond_5
    const-string v28, "W"

    goto/16 :goto_2

    :cond_6
    const-string v28, "1"

    goto/16 :goto_3

    :pswitch_0
    const-string v28, "GPSProcessingMethod"

    const-string v29, "BAIDU"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v10

    move-object v11, v12

    :goto_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v10

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static createFormatDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0078

    new-instance v2, Lcom/car/dvr/CameraUtil$6;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraUtil$6;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0079

    new-instance v2, Lcom/car/dvr/CameraUtil$5;

    invoke-direct {v2}, Lcom/car/dvr/CameraUtil$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/CameraUtil;->mFormatDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private static createFormatSDCardDialog(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c0

    new-instance v2, Lcom/car/dvr/CameraUtil$8;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraUtil$8;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a002a

    new-instance v2, Lcom/car/dvr/CameraUtil$7;

    invoke-direct {v2}, Lcom/car/dvr/CameraUtil$7;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private static createSDCardFullDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c1

    new-instance v2, Lcom/car/dvr/CameraUtil$3;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraUtil$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a002a

    new-instance v2, Lcom/car/dvr/CameraUtil$2;

    invoke-direct {v2}, Lcom/car/dvr/CameraUtil$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/CameraUtil;->mSDCardFullDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardFullDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private static createSDCardNoExistDialog(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a002a

    new-instance v2, Lcom/car/dvr/CameraUtil$4;

    invoke-direct {v2}, Lcom/car/dvr/CameraUtil$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/CameraUtil;->mSDCardNoExistDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardNoExistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private static formatSDCard(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.sdformat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static formatSDCard2(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->getValidVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    const-string v3, "DVR.CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatSDCard2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "android"

    const-string v5, "com.android.internal.os.storage.ExternalStorageFormatter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "storage_volume"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "DVR.CameraUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "formatSDCard2 Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPhotoPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordingPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStoragePath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/car/common/CarPath;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValidVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .locals 5

    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/car/common/CarPath;->getDVRRootPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    :goto_1
    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isStorageMounted(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/os/Environment;->isExternalStorageEmulated(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static jump2Storage(Landroid/content/Context;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.car.carsetting"

    const-string v3, "com.car.carsetting.MainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "jump2storage"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showFormatDialog(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->createFormatDialog(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static showFormatSDCardDialog(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/car/dvr/CameraUtil;->createFormatSDCardDialog(Landroid/content/Context;I)V

    :cond_0
    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/car/dvr/CameraUtil;->mFormatSDCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sget v0, Lcom/car/dvr/CameraService;->NO_AUTO_FORMAT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "DVR.CameraUtil"

    const-string v1, "ro.dvr.no.auto.format=1, no auto format"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    sput v0, Lcom/car/dvr/CameraUtil;->mCountDown:I

    sget-object v0, Lcom/car/dvr/CameraUtil;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static showSDCardFullDialog(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardFullDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->createSDCardFullDialog(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardFullDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardFullDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static showSDCardNoExistDialog(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardNoExistDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/car/dvr/CameraUtil;->createSDCardNoExistDialog(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardNoExistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/car/dvr/CameraUtil;->mSDCardNoExistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
