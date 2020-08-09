.class public final Lcom/calmcar/adas/a/a;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field private static A:I = 0x0

.field private static B:I = 0x0

.field private static C:I = 0x0

.field private static D:I = 0x0

.field private static E:I = 0x0

.field private static F:Lorg/opencv/core/Scalar; = null

.field private static G:Lorg/opencv/core/Scalar; = null

.field private static H:Lorg/opencv/core/Scalar; = null

.field private static I:Lorg/opencv/core/Scalar; = null

.field private static J:Ljava/lang/String; = null

.field private static K:Ljava/lang/String; = null

.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field public static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = "/mnt/sdcard/20150115043842_front.mp4"

.field private static f:I = 0x32

.field private static g:I = 0xc8

.field private static h:I = 0x5

.field private static i:Ljava/lang/String; = "/calmadas/error/log/"

.field private static j:Z

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:J

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-wide/16 v2, 0x0

    const-wide v4, 0x406fe00000000000L    # 255.0

    const/16 v0, 0xa

    sput v0, Lcom/calmcar/adas/a/a;->b:I

    const/4 v0, 0x0

    sput v0, Lcom/calmcar/adas/a/a;->c:I

    new-instance v1, Lorg/opencv/core/Scalar;

    move-wide v6, v2

    move-wide v8, v4

    invoke-direct/range {v1 .. v9}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    new-instance v7, Lorg/opencv/core/Scalar;

    move-wide v8, v4

    move-wide v10, v2

    move-wide v12, v2

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    new-instance v7, Lorg/opencv/core/Scalar;

    const-wide/high16 v8, 0x406e000000000000L    # 240.0

    const-wide v10, 0x4057800000000000L    # 94.0

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    new-instance v7, Lorg/opencv/core/Scalar;

    move-wide v8, v2

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lorg/opencv/core/Scalar;-><init>(DDDD)V

    const-string v0, "http://cloud.calmcar.com:5002/orderform/newactive"

    sput-object v0, Lcom/calmcar/adas/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
