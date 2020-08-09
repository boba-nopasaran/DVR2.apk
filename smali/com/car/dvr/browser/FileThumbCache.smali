.class public Lcom/car/dvr/browser/FileThumbCache;
.super Ljava/lang/Object;
.source "FileThumbCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;,
        Lcom/car/dvr/browser/FileThumbCache$WeakListener;
    }
.end annotation


# static fields
.field public static final DECODE_FINISH:I = 0x65

.field public static final DECODE_START:I = 0x64

.field private static final DEFAULT_THUMB_HEIGHT:I = 0x3c

.field private static final DEFAULT_THUMB_WIDTH:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "DVR.FileThumbCache"

.field private static mThumbHeight:I

.field private static mThumbWidth:I

.field private static sDecodeWorkThread:Lcom/car/util/WorkThread;

.field private static sInitNum:I

.field public static sNullBitmap:Landroid/graphics/Bitmap;

.field private static sThreadstarted:Z

.field private static sThumbLruCache:Lcom/car/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/car/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static s_audio:Landroid/graphics/Bitmap;

.field private static s_image:Landroid/graphics/Bitmap;

.field private static s_lock:Landroid/graphics/Bitmap;

.field private static s_video:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/car/util/LruCache;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Lcom/car/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    sput-object v2, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    sput-boolean v3, Lcom/car/dvr/browser/FileThumbCache;->sThreadstarted:Z

    sput v3, Lcom/car/dvr/browser/FileThumbCache;->sInitNum:I

    sput v3, Lcom/car/dvr/browser/FileThumbCache;->mThumbWidth:I

    sput v3, Lcom/car/dvr/browser/FileThumbCache;->mThumbHeight:I

    sput-object v2, Lcom/car/dvr/browser/FileThumbCache;->s_audio:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/car/dvr/browser/FileThumbCache;->s_video:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/car/dvr/browser/FileThumbCache;->s_image:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/car/dvr/browser/FileThumbCache;->s_lock:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/car/util/LruCache;
    .locals 1

    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    return-object v0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13

    const/4 v6, 0x1

    const/4 v12, -0x1

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    if-ne p2, v12, :cond_1

    move v2, v6

    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    :goto_1
    if-ge v3, v2, :cond_3

    :cond_0
    :goto_2
    return v2

    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/car/dvr/browser/FileThumbCache;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    :cond_1
    return v1
.end method

.method public static deInit()V
    .locals 2

    sget v0, Lcom/car/dvr/browser/FileThumbCache;->sInitNum:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/car/dvr/browser/FileThumbCache;->sInitNum:I

    sget v0, Lcom/car/dvr/browser/FileThumbCache;->sInitNum:I

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/car/dvr/browser/FileThumbCache;->sThreadstarted:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    invoke-virtual {v0}, Lcom/car/util/WorkThread;->exit()V

    const/4 v0, 0x0

    sput-object v0, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/car/dvr/browser/FileThumbCache;->sThreadstarted:Z

    :cond_1
    sget-object v1, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    invoke-virtual {v0}, Lcom/car/util/LruCache;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAudioThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x4

    invoke-static {p0, p1, v6}, Lcom/car/dvr/browser/FileThumbCache;->getThumbFromDB(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-static {p0, p1}, Lcom/car/dvr/Platform;->createMediaScanner(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaScanner;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B

    move-result-object v1

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v1, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbWidth(Landroid/content/Context;)I

    move-result v6

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbHeight(Landroid/content/Context;)I

    move-result v7

    invoke-static {v0, v6, v7, v8, v8}, Lcom/car/dvr/browser/FileThumbCache;->zoomImg(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMediaThumb(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbWidth(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    iget v4, p1, Lcom/car/dvr/browser/FileInfo;->fileType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    invoke-static {p0, v1}, Lcom/car/dvr/browser/FileThumbCache;->getAudioThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    invoke-static {p0, v0, v4}, Lcom/car/dvr/browser/FileThumbCache;->typeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x3

    invoke-static {p0, v1, v5}, Lcom/car/dvr/browser/FileThumbCache;->getVideoThumb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->isLockType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1000

    invoke-static {p0, v0, v5}, Lcom/car/dvr/browser/FileThumbCache;->typeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_3
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, -0x1

    mul-int v6, v3, v2

    invoke-static {v5, v6, v1}, Lcom/car/dvr/browser/FileThumbCache;->makeNetBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    invoke-static {p0, v1}, Lcom/car/dvr/browser/FileThumbCache;->getPhotoThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {p0, v0, v4}, Lcom/car/dvr/browser/FileThumbCache;->typeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPhotoThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbWidth(Landroid/content/Context;)I

    move-result v8

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbHeight(Landroid/content/Context;)I

    move-result v7

    const/4 v9, 0x1

    invoke-static {p0, p1, v9}, Lcom/car/dvr/browser/FileThumbCache;->getThumbFromDB(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v6

    :cond_0
    const-string v9, "Orientation"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move-object v2, v3

    :goto_1
    if-nez v0, :cond_3

    if-eqz v6, :cond_2

    array-length v9, v6

    invoke-static {v6, v11, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v9, 0x0

    :goto_2
    return-object v9

    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_3
    const-string v9, "DVR.FileThumbCache"

    const-string v10, "fail to get exif thumb"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const/4 v9, -0x1

    mul-int v10, v8, v7

    invoke-static {v9, v10, p1}, Lcom/car/dvr/browser/FileThumbCache;->makeBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    invoke-static {v0, v8, v7, v11, v1}, Lcom/car/dvr/browser/FileThumbCache;->zoomImg(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v2, v3

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getThumbBitmap(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;Landroid/os/Handler;Z)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v5, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p1}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    invoke-virtual {v4, v2}, Lcom/car/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lcom/car/dvr/browser/FileThumbCache;->getMediaThumb(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v6, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v4, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    invoke-virtual {v4, v2, v0}, Lcom/car/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v0

    :goto_0
    return-object v1

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :cond_0
    :try_start_5
    new-instance v3, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;

    invoke-direct {v3, p0, p1, p2}, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;-><init>(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;Landroid/os/Handler;)V

    sget-object v4, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    invoke-virtual {v4, v3}, Lcom/car/util/WorkThread;->isDuplicateWorking(Lcom/car/util/Match4Req;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    invoke-virtual {v4, v3}, Lcom/car/util/WorkThread;->addReq(Lcom/car/util/WorkReq;)V

    :cond_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v0

    goto :goto_0
.end method

.method public static getThumbFromDB(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/car/dvr/browser/FileThumbCache;->getUriFromPath(Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v7, :cond_0

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thumbData"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    :cond_2
    if-eqz v10, :cond_3

    const/4 v2, 0x0

    array-length v3, v10

    invoke-static {v10, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    :cond_3
    if-eqz v7, :cond_4

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_1
    move-object v2, v6

    goto :goto_0

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v8

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_4

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_2
    throw v2

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static getThumbHeight(Landroid/content/Context;)I
    .locals 3

    sget v1, Lcom/car/dvr/browser/FileThumbCache;->mThumbHeight:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    sput v0, Lcom/car/dvr/browser/FileThumbCache;->mThumbHeight:I

    :cond_0
    sget v1, Lcom/car/dvr/browser/FileThumbCache;->mThumbHeight:I

    return v1

    :cond_1
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method private static getThumbWidth(Landroid/content/Context;)I
    .locals 3

    sget v1, Lcom/car/dvr/browser/FileThumbCache;->mThumbWidth:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    sput v0, Lcom/car/dvr/browser/FileThumbCache;->mThumbWidth:I

    :cond_0
    sget v1, Lcom/car/dvr/browser/FileThumbCache;->mThumbWidth:I

    return v1

    :cond_1
    const/16 v0, 0x3c

    goto :goto_0
.end method

.method public static getUriFromPath(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getVideoThumb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x2

    invoke-static {p0, p1, v6}, Lcom/car/dvr/browser/FileThumbCache;->getThumbFromDB(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v6, 0x2f

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getThumbnailPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0, v5}, Lcom/car/dvr/browser/FileThumbCache;->getPhotoThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_1

    :try_start_1
    invoke-static {p1, p2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbWidth(Landroid/content/Context;)I

    move-result v6

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbHeight(Landroid/content/Context;)I

    move-result v7

    invoke-static {v0, v6, v7, v8, v8}, Lcom/car/dvr/browser/FileThumbCache;->zoomImg(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/car/dvr/browser/FileThumbCache;->sInitNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/car/dvr/browser/FileThumbCache;->sInitNum:I

    sget-boolean v0, Lcom/car/dvr/browser/FileThumbCache;->sThreadstarted:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/util/WorkThread;

    invoke-direct {v0}, Lcom/car/util/WorkThread;-><init>()V

    sput-object v0, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sDecodeWorkThread:Lcom/car/util/WorkThread;

    invoke-virtual {v0}, Lcom/car/util/WorkThread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/dvr/browser/FileThumbCache;->sThreadstarted:Z

    :cond_0
    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sThumbLruCache:Lcom/car/util/LruCache;

    new-instance v1, Lcom/car/dvr/browser/FileThumbCache$WeakListener;

    invoke-direct {v1}, Lcom/car/dvr/browser/FileThumbCache$WeakListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/car/util/LruCache;->setWeakRemoveListener(Lcom/car/util/LruCache$OnWeakRemoveListener;)V

    return-void
.end method

.method public static makeBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-eqz p2, :cond_1

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, p1, p2}, Lcom/car/dvr/browser/FileThumbCache;->makeNetBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v3, v4, :cond_0

    invoke-static {v1, p0, p1}, Lcom/car/dvr/browser/FileThumbCache;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "DVR.FileThumbCache"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    throw v2
.end method

.method public static makeNetBitmap(IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-static {v3, p0, p1}, Lcom/car/dvr/browser/FileThumbCache;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static typeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbWidth(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->getThumbHeight(Landroid/content/Context;)I

    move-result v3

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v7, v4, -0x2d

    add-int/lit8 v8, v3, -0x2d

    add-int/lit8 v9, v4, 0x1

    add-int/lit8 v10, v3, 0x1

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v8, v3, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, p1, v7, v8, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sparse-switch p2, :sswitch_data_0

    :goto_0
    const/16 v7, 0xe6

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v5

    :sswitch_0
    sget-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_audio:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020066

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_audio:Landroid/graphics/Bitmap;

    :cond_1
    sget-object v6, Lcom/car/dvr/browser/FileThumbCache;->s_audio:Landroid/graphics/Bitmap;

    goto :goto_0

    :sswitch_1
    sget-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_video:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020069

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_video:Landroid/graphics/Bitmap;

    :cond_2
    sget-object v6, Lcom/car/dvr/browser/FileThumbCache;->s_video:Landroid/graphics/Bitmap;

    goto :goto_0

    :sswitch_2
    sget-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_image:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020067

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_image:Landroid/graphics/Bitmap;

    :cond_3
    sget-object v6, Lcom/car/dvr/browser/FileThumbCache;->s_image:Landroid/graphics/Bitmap;

    goto :goto_0

    :sswitch_3
    sget-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_lock:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020036

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/car/dvr/browser/FileThumbCache;->s_lock:Landroid/graphics/Bitmap;

    :cond_4
    sget-object v6, Lcom/car/dvr/browser/FileThumbCache;->s_lock:Landroid/graphics/Bitmap;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static zoomImg(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p0, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
