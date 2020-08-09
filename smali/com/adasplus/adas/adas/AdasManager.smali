.class public Lcom/adasplus/adas/adas/AdasManager;
.super Ljava/lang/Object;
.source "AdasManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;,
        Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;
    }
.end annotation


# static fields
.field private static final MEMORY_SIZE:I = 0x2fd001

.field private static final MSG_CLOSE_BUFFER:I = 0x1

.field private static final MSG_READ_BUFFER:I


# instance fields
.field private isLooper:Z

.field private isSetShareFD:Z

.field private isStart:Z

.field private mAdasImpl:Lcom/adasplus/adas/AdasInterfaceImp;

.field private mBufferBean:Lcom/adasplus/data/BufferBean;

.field private mBufferSize:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeight:I

.field private mMemoryFile:Landroid/os/MemoryFile;

.field public mPreviewCallback:Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;

.field private mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/adasplus/adas/adas/AdasManager;->isSetShareFD:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adasplus/adas/adas/AdasManager;->isLooper:Z

    iput-boolean v2, p0, Lcom/adasplus/adas/adas/AdasManager;->isStart:Z

    iput-object v3, p0, Lcom/adasplus/adas/adas/AdasManager;->mAdasImpl:Lcom/adasplus/adas/AdasInterfaceImp;

    iput v2, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    iput-object v3, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    :try_start_0
    new-instance v1, Landroid/os/MemoryFile;

    const-string v2, "AdasMemory"

    const v3, 0x2fd001

    invoke-direct {v1, v2, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adasplus/adas/adas/AdasManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/adasplus/adas/adas/AdasManager;->readShareBufferMsg()V

    return-void
.end method

.method private process([B)V
    .locals 0

    return-void
.end method

.method private readShareBuffer()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isLooper:Z

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isSetShareFD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private readShareBufferMsg()V
    .locals 7

    const/4 v6, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v2, v2, Lcom/adasplus/data/BufferBean;->isCanRead:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v1, v1, Lcom/adasplus/data/BufferBean;->isCanRead:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v2, v2, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v5, v5, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    array-length v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v1, v1, Lcom/adasplus/data/BufferBean;->isCanRead:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mPreviewCallback:Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mPreviewCallback:Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;

    iget-object v2, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v2, v2, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    invoke-interface {v1, v2}, Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;->OnPreview([B)V

    :goto_0
    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v2, v2, Lcom/adasplus/data/BufferBean;->isCanRead:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    :cond_0
    iget-boolean v1, p0, Lcom/adasplus/adas/adas/AdasManager;->isLooper:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x46

    invoke-virtual {v1, v2, v4, v5}, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v1, v1, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    invoke-direct {p0, v1}, Lcom/adasplus/adas/adas/AdasManager;->process([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private stopReadShareBuffer()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adasplus/adas/adas/AdasManager;->isLooper:Z

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isSetShareFD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public closeShareBuffer()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isLooper:Z

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mWidth:I

    return v0
.end method

.method public prepare(Landroid/hardware/Camera;)V
    .locals 9

    :try_start_0
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "AdasThread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    iget-object v5, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;-><init>(Lcom/adasplus/adas/adas/AdasManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    iget-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_0

    :try_start_1
    new-instance v4, Landroid/os/MemoryFile;

    const-string v5, "AdasMemory"

    const v6, 0x2fd001

    invoke-direct {v4, v5, v6}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    iget-object v5, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v5, v5, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    iget-object v8, v8, Lcom/adasplus/data/BufferBean;->mBuffer:[B

    array-length v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    const-string v4, "getFileDescriptor"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/adasplus/adas/adas/AdasManager;->mMemoryFile:Landroid/os/MemoryFile;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    invoke-static {p1, v2}, Lcom/adasplus/adas/util/ReflectUtils;->setShareFD(Landroid/hardware/Camera;Ljava/io/FileDescriptor;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/adasplus/adas/adas/AdasManager;->isSetShareFD:Z
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_5
    const-string v4, "Adas"

    const-string v5, "setShareFD fail!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method public setAdasImple(Lcom/adasplus/adas/AdasInterfaceImp;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/adas/AdasManager;->mAdasImpl:Lcom/adasplus/adas/AdasInterfaceImp;

    return-void
.end method

.method public setBufferSize(I)V
    .locals 2

    iput p1, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    iget v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    if-gtz v0, :cond_0

    const v0, 0x151800

    iput v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    :cond_0
    new-instance v0, Lcom/adasplus/data/BufferBean;

    iget v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    invoke-direct {v0, v1}, Lcom/adasplus/data/BufferBean;-><init>(I)V

    iput-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/adas/adas/AdasManager;->mHeight:I

    return-void
.end method

.method public setPreviewCallback(Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/adas/AdasManager;->mPreviewCallback:Lcom/adasplus/adas/adas/AdasManager$PreviewCallback;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/adas/adas/AdasManager;->mWidth:I

    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 4

    mul-int v0, p1, p2

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    iget v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    if-gtz v0, :cond_0

    const v0, 0x151800

    iput v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    :cond_0
    new-instance v0, Lcom/adasplus/data/BufferBean;

    iget v1, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferSize:I

    invoke-direct {v0, v1}, Lcom/adasplus/data/BufferBean;-><init>(I)V

    iput-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mBufferBean:Lcom/adasplus/data/BufferBean;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isSetShareFD:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "When you start, you should invoke prepare method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isStart:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adasplus/adas/adas/AdasManager;->readShareBuffer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adasplus/adas/adas/AdasManager;->isStart:Z

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/adasplus/adas/adas/AdasManager;->stopReadShareBuffer()V

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    invoke-virtual {v0, v2}, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->removeMessages(I)V

    iput-object v3, p0, Lcom/adasplus/adas/adas/AdasManager;->mShareBufferHandler:Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;

    :cond_0
    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v3, p0, Lcom/adasplus/adas/adas/AdasManager;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager;->mAdasImpl:Lcom/adasplus/adas/AdasInterfaceImp;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/adasplus/adas/adas/AdasManager;->mAdasImpl:Lcom/adasplus/adas/AdasInterfaceImp;

    :cond_2
    iput-boolean v2, p0, Lcom/adasplus/adas/adas/AdasManager;->isSetShareFD:Z

    iput-boolean v2, p0, Lcom/adasplus/adas/adas/AdasManager;->isStart:Z

    return-void
.end method
