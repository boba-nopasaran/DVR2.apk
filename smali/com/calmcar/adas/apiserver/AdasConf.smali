.class public Lcom/calmcar/adas/apiserver/AdasConf;
.super Ljava/lang/Object;
.source "AdasConf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/calmcar/adas/apiserver/AdasConf$PeoConf;,
        Lcom/calmcar/adas/apiserver/AdasConf$CarConf;,
        Lcom/calmcar/adas/apiserver/AdasConf$LaneConf;
    }
.end annotation


# static fields
.field public static CAR_DETECT_OPEN:Z

.field public static CAR_HEAD:D

.field public static CAR_LAUNCH_ABS_DIS:D

.field public static CAR_LAUNCH_DIS:D

.field public static CAR_WARN_ABS_LEVEL_ONE_TIME:D

.field public static CAR_WARN_ABS_LEVEL_TWO_TIME:D

.field public static CAR_WARN_LEVEL_ONE_TIME:D

.field public static CAR_WARN_LEVEL_TWO_TIME:D

.field public static CHECK_ABS_TIMES:D

.field public static CHECK_OK:Z

.field public static CHECK_TIMES:D

.field public static CONVERT_PARA:D

.field public static DETECT_SEQUENCE:I

.field public static FCW_LAUNCH_LEVEL:I

.field public static FCW_WARN_LEVEL:I

.field public static FRAME_HEIGHT:D

.field public static FRAME_WIDHT:D

.field public static IN_FRAME_HEIGHT:I

.field public static IN_FRAME_WIDTH:I

.field public static IS_ACTIVE:Z

.field public static LANE_DETECT_OPEN:Z

.field public static MAT_HEIGHT:D

.field public static MAT_SCALE:D

.field public static MAT_WIDHT:D

.field public static PEO_DETECT_OPEN:Z

.field public static POST_RUNING_ON:Z

.field public static ROI_HEIGHT:D

.field public static ROI_LEFT_X:D

.field public static ROI_LEFT_Y:D

.field public static ROI_WIDTH:D

.field public static RUN_MODE:I

.field public static SAVE_TEST_VIDEO:Z

.field public static SDK_VERSION:Ljava/lang/String;

.field public static VP_X:D

.field public static VP_X_TEMP:D

.field public static VP_Y:D

.field public static VP_Y_TEMP:D

.field public static WIDTH_HEIGHT:Ljava/lang/String;

.field public static centerX:D

.field public static centerY:D

.field public static deptID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-string v0, "V4.5.7"

    sput-object v0, Lcom/calmcar/adas/apiserver/AdasConf;->SDK_VERSION:Ljava/lang/String;

    const-string v0, "96k01"

    sput-object v0, Lcom/calmcar/adas/apiserver/AdasConf;->deptID:Ljava/lang/String;

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->centerX:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->centerY:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_WIDHT:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_HEIGHT:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->FRAME_WIDHT:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->FRAME_HEIGHT:D

    sput-wide v10, Lcom/calmcar/adas/apiserver/AdasConf;->MAT_SCALE:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_LEFT_X:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_LEFT_Y:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_WIDTH:D

    sput-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->ROI_HEIGHT:D

    const/4 v0, 0x1

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    const-string v0, "960*540"

    sput-object v0, Lcom/calmcar/adas/apiserver/AdasConf;->WIDTH_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x3c0

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    const/16 v0, 0x21c

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    const-wide/high16 v0, 0x4021000000000000L    # 8.5

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_LEVEL_ONE_TIME:D

    const-wide/high16 v0, 0x4016000000000000L    # 5.5

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_LEVEL_TWO_TIME:D

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_ONE_TIME:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_WARN_ABS_LEVEL_TWO_TIME:D

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_LAUNCH_DIS:D

    sput-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_TIMES:D

    const-wide v0, 0x3fe999999999999aL    # 0.8

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_LAUNCH_ABS_DIS:D

    sput-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_ABS_TIMES:D

    sput-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    sput-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    sput-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    sput-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    const/4 v0, 0x3

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_WARN_LEVEL:I

    const/4 v0, 0x3

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->FCW_LAUNCH_LEVEL:I

    const-wide v0, 0x4081500000000000L    # 554.0

    sput-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->CONVERT_PARA:D

    sput-wide v10, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_HEAD:D

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->CHECK_OK:Z

    const/16 v0, 0xbc

    sput v0, Lcom/calmcar/adas/apiserver/AdasConf;->DETECT_SEQUENCE:I

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->LANE_DETECT_OPEN:Z

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->CAR_DETECT_OPEN:Z

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->PEO_DETECT_OPEN:Z

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->SAVE_TEST_VIDEO:Z

    sput-boolean v4, Lcom/calmcar/adas/apiserver/AdasConf;->POST_RUNING_ON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
