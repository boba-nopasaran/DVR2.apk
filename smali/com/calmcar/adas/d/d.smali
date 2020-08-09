.class public final Lcom/calmcar/adas/d/d;
.super Ljava/lang/Object;
.source "MatProcess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 2

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BII)Lorg/opencv/core/Mat;
    .locals 4

    :try_start_0
    new-instance v1, Lorg/opencv/core/Mat;

    div-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p2

    sget v2, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v1, v0, p1, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lorg/opencv/core/Mat;->put(II[B)I

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    const/16 v2, 0x60

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([BIII)Lorg/opencv/core/Mat;
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    new-instance v0, Lorg/opencv/core/Mat;

    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p1

    sget v2, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v0, v1, p2, v2}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-virtual {v0, v3, v3, p0}, Lorg/opencv/core/Mat;->put(II[B)I

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    const/16 v2, 0x11

    if-ne p3, v2, :cond_1

    const/16 v2, 0x60

    invoke-static {v0, v1, v2, v4}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const v2, 0x32315659

    if-ne p3, v2, :cond_2

    const/16 v2, 0x64

    invoke-static {v0, v1, v2, v4}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x23

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preview Format can be NV21 or YV12"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)Z
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Lorg/opencv/android/Utils;->matToBitmap(Lorg/opencv/core/Mat;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "matprocess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mat type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "matprocess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bitmap type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "matprocess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Utils.matToBitmap() throws an exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/opencv/core/Mat;)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->total()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->channels()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    new-array v0, v0, [B

    invoke-virtual {p0, v4, v4, v0}, Lorg/opencv/core/Mat;->get(II[B)I

    return-object v0
.end method
