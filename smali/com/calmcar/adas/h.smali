.class final Lcom/calmcar/adas/h;
.super Landroid/os/Handler;
.source "CameraDataProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/CameraDataProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/CameraDataProcess;


# direct methods
.method private constructor <init>(Lcom/calmcar/adas/CameraDataProcess;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const-string v0, "CameraDataProcess"

    const-string v1, "handleMessage() !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->data:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->data:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataSize(I)V

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    const/16 v1, 0x1001

    iget-object v2, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v2, v2, Lcom/calmcar/adas/CameraDataProcess;->data:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v3, v3, Lcom/calmcar/adas/CameraDataProcess;->reply:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->reply:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    const-string v0, "CameraDataProcess"

    const-string v1, "pfd is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v6, v7}, Lcom/calmcar/adas/h;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, "CameraDataProcess"

    const-string v1, "mBinder transact faild !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v6, v7}, Lcom/calmcar/adas/h;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lcom/calmcar/adas/CameraDataProcess;->fileDescriptor:Ljava/io/FileDescriptor;

    :try_start_1
    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v2, v2, Lcom/calmcar/adas/CameraDataProcess;->fileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, v0, Lcom/calmcar/adas/CameraDataProcess;->memFi:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v1, v1, Lcom/calmcar/adas/CameraDataProcess;->memFi:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/calmcar/adas/CameraDataProcess;->fcin:Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    const/16 v1, 0x1002

    iget-object v2, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v2, v2, Lcom/calmcar/adas/CameraDataProcess;->data:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v3, v3, Lcom/calmcar/adas/CameraDataProcess;->reply:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-boolean v0, v0, Lcom/calmcar/adas/CameraDataProcess;->isRun:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->fcin:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->bbuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v0}, Lcom/calmcar/adas/CameraDataProcess;->access$000(Lcom/calmcar/adas/CameraDataProcess;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->fcin:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v1}, Lcom/calmcar/adas/CameraDataProcess;->access$000(Lcom/calmcar/adas/CameraDataProcess;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const-string v0, "CameraDataProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bcanRead = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v2}, Lcom/calmcar/adas/CameraDataProcess;->access$000(Lcom/calmcar/adas/CameraDataProcess;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v0}, Lcom/calmcar/adas/CameraDataProcess;->access$000(Lcom/calmcar/adas/CameraDataProcess;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->fcin:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v1, v1, Lcom/calmcar/adas/CameraDataProcess;->bbuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const-string v0, "CameraDataProcess"

    const-string v1, "get yuv data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v1, v1, Lcom/calmcar/adas/CameraDataProcess;->bbuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/calmcar/adas/CameraDataProcess;->access$102(Lcom/calmcar/adas/CameraDataProcess;[B)[B

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v0}, Lcom/calmcar/adas/CameraDataProcess;->access$100(Lcom/calmcar/adas/CameraDataProcess;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v0}, Lcom/calmcar/adas/CameraDataProcess;->access$100(Lcom/calmcar/adas/CameraDataProcess;)[B

    move-result-object v0

    array-length v0, v0

    const v1, 0x151800

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v0}, Lcom/calmcar/adas/CameraDataProcess;->access$200(Lcom/calmcar/adas/CameraDataProcess;)Lorg/opencv/core/Mat;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v3}, Lcom/calmcar/adas/CameraDataProcess;->access$100(Lcom/calmcar/adas/CameraDataProcess;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/opencv/core/Mat;->put(II[B)I

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->mCameraFrame:Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;->rgba()Lorg/opencv/core/Mat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->getNativeObjAddr()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-static {v0}, Lcom/calmcar/adas/CameraDataProcess;->access$300(Lcom/calmcar/adas/CameraDataProcess;)Lcom/calmcar/adas/CameraDataProcess$CameraDataArriveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v1, v1, Lcom/calmcar/adas/CameraDataProcess;->mCameraFrame:Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    invoke-interface {v0, v1}, Lcom/calmcar/adas/g;->a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    :cond_3
    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->data:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->reply:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v0, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v0, v0, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    const/16 v1, 0x1002

    iget-object v2, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v2, v2, Lcom/calmcar/adas/CameraDataProcess;->data:Landroid/os/Parcel;

    iget-object v3, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v3, v3, Lcom/calmcar/adas/CameraDataProcess;->reply:Landroid/os/Parcel;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    const-string v0, "CameraDataProcess"

    const-string v1, "write yuv data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "CameraDataProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u51fa\u9519,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CameraDataProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u51fa\u9519,mBinder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/calmcar/adas/h;->a:Lcom/calmcar/adas/CameraDataProcess;

    iget-object v2, v2, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, v5, v6, v7}, Lcom/calmcar/adas/h;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "CameraDataProcess"

    const-string v1, "mBinder is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5, v6, v7}, Lcom/calmcar/adas/h;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
