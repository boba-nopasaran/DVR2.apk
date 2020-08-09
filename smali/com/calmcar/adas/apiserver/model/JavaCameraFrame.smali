.class public Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;
.super Ljava/lang/Object;
.source "JavaCameraFrame.java"

# interfaces
.implements Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;


# instance fields
.field private mHeight:I

.field private mRgba:Lorg/opencv/core/Mat;

.field private mType:I

.field private mWidth:I

.field private mYuvFrameData:Lorg/opencv/core/Mat;


# direct methods
.method public constructor <init>(Lorg/opencv/core/Mat;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mType:I

    iput p2, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mWidth:I

    iput p3, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mHeight:I

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mYuvFrameData:Lorg/opencv/core/Mat;

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Mat;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mType:I

    iput p2, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mWidth:I

    iput p3, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mHeight:I

    iput-object p1, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mYuvFrameData:Lorg/opencv/core/Mat;

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    iput p4, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mType:I

    return-void
.end method

.method private getConvertCode(I)I
    .locals 1

    const/16 v0, 0x60

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0x66

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public gray()Lorg/opencv/core/Mat;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mYuvFrameData:Lorg/opencv/core/Mat;

    iget v1, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mHeight:I

    iget v2, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mWidth:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lorg/opencv/core/Mat;->submat(IIII)Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method

.method public rgba()Lorg/opencv/core/Mat;
    .locals 4

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mYuvFrameData:Lorg/opencv/core/Mat;

    iget-object v1, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    iget v2, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mType:I

    invoke-direct {p0, v2}, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->getConvertCode(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V

    iget-object v0, p0, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    return-object v0
.end method
