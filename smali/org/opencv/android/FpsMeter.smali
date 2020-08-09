.class public Lorg/opencv/android/FpsMeter;
.super Ljava/lang/Object;
.source "FpsMeter.java"


# static fields
.field private static final FPS_FORMAT:Ljava/text/DecimalFormat;

.field private static final STEP:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FpsMeter"


# instance fields
.field private mFramesCouner:I

.field private mFrequency:D

.field mHeight:I

.field mIsInitialized:Z

.field mPaint:Landroid/graphics/Paint;

.field private mStrfps:Ljava/lang/String;

.field mWidth:I

.field private mprevFrameTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/opencv/android/FpsMeter;->FPS_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/opencv/android/FpsMeter;->mIsInitialized:Z

    iput v0, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    iput v0, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 2

    const-string v0, "FpsMeter"

    iget-object v1, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    iget-object v1, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public init()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    invoke-static {}, Lorg/opencv/core/Core;->getTickFrequency()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/android/FpsMeter;->mFrequency:D

    invoke-static {}, Lorg/opencv/core/Core;->getTickCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/android/FpsMeter;->mprevFrameTime:J

    const-string v0, ""

    iput-object v0, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/opencv/android/FpsMeter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public measure()V
    .locals 6

    iget-boolean v0, p0, Lorg/opencv/android/FpsMeter;->mIsInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/opencv/android/FpsMeter;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/opencv/android/FpsMeter;->mIsInitialized:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    iget v0, p0, Lorg/opencv/android/FpsMeter;->mFramesCouner:I

    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_0

    invoke-static {}, Lorg/opencv/core/Core;->getTickCount()J

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    iget-wide v4, p0, Lorg/opencv/android/FpsMeter;->mFrequency:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/opencv/android/FpsMeter;->mprevFrameTime:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v0, p0, Lorg/opencv/android/FpsMeter;->mprevFrameTime:J

    iget v0, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/opencv/android/FpsMeter;->FPS_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FPS@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    :goto_1
    const-string v0, "FpsMeter"

    iget-object v1, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/opencv/android/FpsMeter;->FPS_FORMAT:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/android/FpsMeter;->mStrfps:Ljava/lang/String;

    goto :goto_1
.end method

.method public setResolution(II)V
    .locals 0

    iput p1, p0, Lorg/opencv/android/FpsMeter;->mWidth:I

    iput p2, p0, Lorg/opencv/android/FpsMeter;->mHeight:I

    return-void
.end method
