.class Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;
.super Ljava/lang/Object;
.source "FileThumbCache.java"

# interfaces
.implements Lcom/car/util/WorkReq;
.implements Lcom/car/util/Match4Req;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileThumbCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapDecodeReq"
.end annotation


# instance fields
.field public mCancel:Z

.field public mContext:Landroid/content/Context;

.field public mFileInfo:Lcom/car/dvr/browser/FileInfo;

.field public mFilePath:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mCancel:Z

    iput-object p2, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFileInfo:Lcom/car/dvr/browser/FileInfo;

    iput-object p3, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private sendMessage(I)V
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFilePath:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mCancel:Z

    return-void
.end method

.method public execute()V
    .locals 4

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->sendMessage(I)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFileInfo:Lcom/car/dvr/browser/FileInfo;

    invoke-static {v1, v2}, Lcom/car/dvr/browser/FileThumbCache;->getMediaThumb(Landroid/content/Context;Lcom/car/dvr/browser/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/car/dvr/browser/FileThumbCache;->sNullBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-static {}, Lcom/car/dvr/browser/FileThumbCache;->access$000()Lcom/car/util/LruCache;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/car/dvr/browser/FileThumbCache;->access$000()Lcom/car/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/car/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/car/dvr/browser/FileThumbCache;->access$000()Lcom/car/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/car/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->sendMessage(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public matchs(Lcom/car/util/WorkReq;)Z
    .locals 3

    instance-of v1, p1, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;

    iget-object v1, p0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFilePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/car/dvr/browser/FileThumbCache$BitmapDecodeReq;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
