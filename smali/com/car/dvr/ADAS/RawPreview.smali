.class public Lcom/car/dvr/ADAS/RawPreview;
.super Ljava/lang/Object;
.source "RawPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/ADAS/RawPreview$CallBack;,
        Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;
    }
.end annotation


# static fields
.field private static final MSD_CLOSE_BUFFER:I = 0x1

.field private static final MSG_READ_BUFFER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DVR.ADAS.RawPreview"


# instance fields
.field private final BUFFER_SIZE:I

.field private final MEMORY_SIZE:I

.field private callBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

.field private isLooper:Z

.field private isSetShareFD:Z

.field private mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mMemoryFile:Landroid/os/MemoryFile;

.field private mShareBufferHandler:Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v2, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_WIDTH:I

    iput v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameWidth:I

    sget v2, Lcom/car/dvr/VideoInfo;->FRONT_PREVIEW_HEIGHT:I

    iput v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameHeight:I

    iget v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameWidth:I

    iget v3, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/car/dvr/ADAS/RawPreview;->BUFFER_SIZE:I

    iget v2, p0, Lcom/car/dvr/ADAS/RawPreview;->BUFFER_SIZE:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/car/dvr/ADAS/RawPreview;->MEMORY_SIZE:I

    new-instance v2, Lcom/car/dvr/ADAS/BufferBean;

    iget v3, p0, Lcom/car/dvr/ADAS/RawPreview;->BUFFER_SIZE:I

    invoke-direct {v2, v3}, Lcom/car/dvr/ADAS/BufferBean;-><init>(I)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iput-boolean v4, p0, Lcom/car/dvr/ADAS/RawPreview;->isLooper:Z

    iput-boolean v4, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    const-string v2, "DVR.ADAS.RawPreview"

    const-string v3, "RawPreview ------------ create"

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DVR.ADAS.RawPreview"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;-><init>(Lcom/car/dvr/ADAS/RawPreview;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mShareBufferHandler:Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    :try_start_0
    new-instance v2, Landroid/os/MemoryFile;

    const-string v3, "DVR.ADAS.RawPreview"

    iget v4, p0, Lcom/car/dvr/ADAS/RawPreview;->MEMORY_SIZE:I

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v3, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v3, v3, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v6, v6, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    array-length v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoryFile err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static YV12toNV21([B[BII)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int v0, p2, p3

    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v6, v0, 0x5

    div-int/lit8 v3, v6, 0x4

    invoke-static {p0, v7, p1, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v0

    add-int v7, v0, v1

    aget-byte v7, p0, v7

    aput-byte v7, p1, v6

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    add-int v7, v3, v1

    aget-byte v7, p0, v7

    aput-byte v7, p1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/ADAS/RawPreview;)Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->mShareBufferHandler:Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/car/dvr/ADAS/RawPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/ADAS/RawPreview;->readShareBufferMsg()V

    return-void
.end method

.method public static getTimeStamp()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss_SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readShareBufferMsg()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v2, v2, Lcom/car/dvr/ADAS/BufferBean;->isCanRead:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v1, v1, Lcom/car/dvr/ADAS/BufferBean;->isCanRead:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v2, v2, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v5, v5, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    array-length v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v1, v1, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->callBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->callBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v2, v2, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    invoke-interface {v1, v2}, Lcom/car/dvr/ADAS/RawPreview$CallBack;->processData([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v1, v1, Lcom/car/dvr/ADAS/BufferBean;->isCanRead:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v2, v2, Lcom/car/dvr/ADAS/BufferBean;->isCanRead:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    :cond_1
    iget-boolean v1, p0, Lcom/car/dvr/ADAS/RawPreview;->isLooper:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/ADAS/RawPreview;->mShareBufferHandler:Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x46

    invoke-virtual {v1, v2, v4, v5}, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DVR.ADAS.RawPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processData Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DVR.ADAS.RawPreview"

    const-string v2, "readShareBufferMsg failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v1, "DVR.ADAS.RawPreview"

    const-string v2, "Null preview"

    invoke-static {v1, v2}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private saveYUV2Bitmap()V
    .locals 13

    const-string v2, "DVR.ADAS.RawPreview"

    const-string v3, "saveYUV2Bitmap"

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const v2, 0x151800

    :try_start_0
    new-array v1, v2, [B

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mBufferBean:Lcom/car/dvr/ADAS/BufferBean;

    iget-object v2, v2, Lcom/car/dvr/ADAS/BufferBean;->mBuffer:[B

    iget v3, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameWidth:I

    iget v4, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameHeight:I

    invoke-static {v2, v1, v3, v4}, Lcom/car/dvr/ADAS/RawPreview;->YV12toNV21([B[BII)V

    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget v3, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameWidth:I

    iget v4, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameHeight:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readShareBufferMsg yuvImage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameWidth:I

    iget v12, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameHeight:I

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v11}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v9, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sdcard0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IMG_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/car/dvr/ADAS/RawPreview;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v6, v2, v3, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v11

    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    :try_start_4
    const-string v2, "storageTakePictureBitmap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v10, v11

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v7

    :goto_2
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_1

    :try_start_6
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v10, :cond_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_4
    throw v2

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v10, v11

    goto :goto_3

    :catch_5
    move-exception v7

    move-object v10, v11

    goto :goto_2
.end method

.method private setMemoryFileFileDescriptor(Landroid/hardware/Camera;Ljava/io/FileDescriptor;)I
    .locals 8

    :try_start_0
    const-string v4, "android.hardware.Camera"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setMemoryFileFileDescriptor"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/io/FileDescriptor;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "DVR.ADAS.RawPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMemoryFileFileDescriptor return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    return v4

    :cond_0
    const-string v4, "DVR.ADAS.RawPreview"

    const-string v5, "not found setMemoryFileFileDescriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v4, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "DVR.ADAS.RawPreview"

    const-string v5, "failed to call getLastUserActivityTime()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public closeShareBuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/ADAS/RawPreview;->isLooper:Z

    iput-boolean v0, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    return-void
.end method

.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    :cond_0
    return-void
.end method

.method public getCallBack()Lcom/car/dvr/ADAS/RawPreview$CallBack;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->callBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

    return-object v0
.end method

.method public readShareBuffer()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/ADAS/RawPreview;->isLooper:Z

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->mShareBufferHandler:Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview;->mShareBufferHandler:Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setCallBack(Lcom/car/dvr/ADAS/RawPreview$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/RawPreview;->callBack:Lcom/car/dvr/ADAS/RawPreview$CallBack;

    return-void
.end method

.method public setMemoryShareFD(Landroid/hardware/Camera;)I
    .locals 5

    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMemoryShareFD camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSetShareFD : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    if-eqz v2, :cond_0

    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSetShareFD:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/car/dvr/ADAS/RawPreview;->isSetShareFD:Z

    :try_start_0
    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMemoryShareFD setShareFD : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", getFileDescriptor : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/car/dvr/ADAS/RawPreview;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/car/dvr/ADAS/RawPreview;->setMemoryFileFileDescriptor(Landroid/hardware/Camera;Ljava/io/FileDescriptor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMemoryShareFD camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DVR.ADAS.RawPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMemoryShareFD err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setVideoResolution(II)V
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameWidth:I

    iput p2, p0, Lcom/car/dvr/ADAS/RawPreview;->mFrameHeight:I

    return-void
.end method
