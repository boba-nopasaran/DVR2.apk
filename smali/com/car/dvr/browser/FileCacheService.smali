.class public Lcom/car/dvr/browser/FileCacheService;
.super Landroid/app/Service;
.source "FileCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/browser/FileCacheService$Task;,
        Lcom/car/dvr/browser/FileCacheService$CacheInfo;,
        Lcom/car/dvr/browser/FileCacheService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ASYNC_SPEED:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEED:I = 0x1

.field private static final MIN_CACHE_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DVR.FileCacheService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCachList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileCacheService$CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field private mFileScanner:Lcom/car/dvr/browser/FileScanner;

.field mHandler:Landroid/os/Handler;

.field private mIsSynchronized:Z

.field private mPeriod:I

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileCacheService;->mIsSynchronized:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileList:Ljava/util/List;

    new-instance v0, Lcom/car/dvr/browser/FileCacheService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileCacheService$LocalBinder;-><init>(Lcom/car/dvr/browser/FileCacheService;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mCachList:Ljava/util/List;

    new-instance v0, Lcom/car/dvr/browser/FileCacheService$2;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileCacheService$2;-><init>(Lcom/car/dvr/browser/FileCacheService;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/car/dvr/browser/FileCacheService;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileCacheService;->mFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/car/dvr/browser/FileCacheService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileCacheService;->cacheAllVideos()V

    return-void
.end method

.method static synthetic access$200(Lcom/car/dvr/browser/FileCacheService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileCacheService;->startScan()V

    return-void
.end method

.method static synthetic access$300(Lcom/car/dvr/browser/FileCacheService;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/browser/FileCacheService;->checkIfAutoSaveTimeChanged()V

    return-void
.end method

.method private cacheAllVideos()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/car/dvr/browser/FileCacheService;->mCachList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;

    invoke-direct {p0, v1}, Lcom/car/dvr/browser/FileCacheService;->cacheVideoThumb(Lcom/car/dvr/browser/FileCacheService$CacheInfo;)V

    iget-object v2, p0, Lcom/car/dvr/browser/FileCacheService;->mCachList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileCacheService;->cacheVideoThumb(Lcom/car/dvr/browser/FileCacheService$CacheInfo;)V

    iget v2, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    iget v3, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    if-eq v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    iput v2, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    iput-boolean v4, p0, Lcom/car/dvr/browser/FileCacheService;->mIsSynchronized:Z

    iget v2, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    iget v3, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    invoke-direct {p0, v2, v3}, Lcom/car/dvr/browser/FileCacheService;->startScheduledTask(II)V

    const-string v2, "DVR.FileCacheService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed period because all Files have been syncd! mDuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPeriod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private cacheVideoThumb(Lcom/car/dvr/browser/FileCacheService$CacheInfo;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->list:Ljava/util/List;

    iget-object v1, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->prefix:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Lcom/car/dvr/browser/FileCacheService;->getVideoList(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/car/dvr/browser/FileCacheService;->hasEnoughFile(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    invoke-direct {p0, v1, v3}, Lcom/car/dvr/browser/FileCacheService;->getNextCachedFileInfo(Ljava/lang/String;Ljava/util/List;)Lcom/car/dvr/browser/FileInfo;

    move-result-object v2

    iget-object v4, v2, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/car/dvr/browser/FileCacheService;->needsToCache(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v2, v5, v6}, Lcom/car/dvr/browser/FileThumbCache;->getThumbBitmap(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;Landroid/os/Handler;Z)Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z

    if-nez v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "DVR.FileCacheService"

    const-string v6, "cache video files failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-boolean v5, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z

    if-nez v5, :cond_0

    iput-boolean v6, p1, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z

    goto :goto_0
.end method

.method private calculateNextFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, ".ts"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v3, v7, v8

    if-gtz v3, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse number from file failed! file name("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")is too short."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-direct {p0, p1, v4, v6}, Lcom/car/dvr/browser/FileCacheService;->parseFileNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private checkIfAutoSaveTimeChanged()V
    .locals 4

    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v0, v1, 0x1

    iget v1, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/car/dvr/browser/FileCacheService;->mIsSynchronized:Z

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iput v1, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    iget v1, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    iget v2, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/browser/FileCacheService;->startScheduledTask(II)V

    const-string v1, "DVR.FileCacheService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check Auto-Save Time, it\'s changed! , Duation: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsSynchronized:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/car/dvr/browser/FileCacheService;->mIsSynchronized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPeriod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    :cond_0
    return-void

    :cond_1
    div-int/lit8 v1, v0, 0x2

    goto :goto_0
.end method

.method private findFileInfo(Ljava/lang/String;Ljava/util/List;)Lcom/car/dvr/browser/FileInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)",
            "Lcom/car/dvr/browser/FileInfo;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileInfo;

    iget-object v2, v0, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNextCachedFileInfo(Ljava/lang/String;Ljava/util/List;)Lcom/car/dvr/browser/FileInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)",
            "Lcom/car/dvr/browser/FileInfo;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/browser/FileInfo;

    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileCacheService;->calculateNextFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/car/dvr/browser/FileCacheService;->findFileInfo(Ljava/lang/String;Ljava/util/List;)Lcom/car/dvr/browser/FileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/browser/FileInfo;

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private getVideoList(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/car/dvr/browser/FileCacheService;->mFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/browser/FileInfo;

    iget-object v2, v0, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hasEnoughFile(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFileExistes(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isFileInList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/car/dvr/browser/FileCacheService;->findFileInfo(Ljava/lang/String;Ljava/util/List;)Lcom/car/dvr/browser/FileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsToCache(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/browser/FileInfo;

    iget-object v0, v2, Lcom/car/dvr/browser/FileInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseFileNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method private startScan()V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileCacheService;->isFileExistes(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DVR.FileCacheService"

    const-string v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    iget-object v1, p0, Lcom/car/dvr/browser/FileCacheService;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/browser/FileScanner;->startScanner(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private startScheduledTask(II)V
    .locals 7

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/car/dvr/browser/FileCacheService$Task;

    invoke-direct {v1, p0}, Lcom/car/dvr/browser/FileCacheService$Task;-><init>(Lcom/car/dvr/browser/FileCacheService;)V

    int-to-long v2, p1

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopScheduledTask()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "DVR.FileCacheService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/car/dvr/browser/FileThumbCache;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/car/dvr/GenericFragment;->getAutoSaveTime(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    iget v0, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mCachList:Ljava/util/List;

    iget-object v6, p0, Lcom/car/dvr/browser/FileCacheService;->mCachList:Ljava/util/List;

    new-instance v0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;

    const-string v4, "f"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/car/dvr/browser/FileCacheService$CacheInfo;-><init>(Lcom/car/dvr/browser/FileCacheService;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/car/dvr/browser/FileCacheService;->mCachList:Ljava/util/List;

    new-instance v0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;

    const-string v4, "b"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/car/dvr/browser/FileCacheService$CacheInfo;-><init>(Lcom/car/dvr/browser/FileCacheService;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "DVR.FileCacheService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: mDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/browser/FileCacheService;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPeriod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFilePath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/browser/FileCacheService;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/car/dvr/browser/FileCacheService$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileCacheService$1;-><init>(Lcom/car/dvr/browser/FileCacheService;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3}, Lcom/car/dvr/browser/FileScanner;->setSortType(ILjava/util/ArrayList;Ljava/lang/String;)V

    iget v0, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    iget v1, p0, Lcom/car/dvr/browser/FileCacheService;->mPeriod:I

    invoke-direct {p0, v0, v1}, Lcom/car/dvr/browser/FileCacheService;->startScheduledTask(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/car/dvr/browser/FileThumbCache;->deInit()V

    const-string v0, "DVR.FileCacheService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/car/dvr/browser/FileCacheService;->stopScheduledTask()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService;->mFileScanner:Lcom/car/dvr/browser/FileScanner;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileScanner;->stopScanner()V

    :cond_0
    return-void
.end method
