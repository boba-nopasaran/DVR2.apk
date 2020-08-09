.class Lcom/car/dvr/CameraService$SavePictureTask;
.super Landroid/os/AsyncTask;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$SavePictureTask;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/car/dvr/CameraService$SavePictureTask;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/car/dvr/CameraService$SavePictureTask;->doInBackground([[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/String;
    .locals 6

    const-string v3, "DVR.CamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "take picture finish, save image to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraService$SavePictureTask;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/car/dvr/CameraService$SavePictureTask;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, p0, Lcom/car/dvr/CameraService$SavePictureTask;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/car/dvr/CameraUtil;->checkEXIFInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v3, p0, Lcom/car/dvr/CameraService$SavePictureTask;->this$0:Lcom/car/dvr/CameraService;

    iget-object v4, v3, Lcom/car/dvr/CameraService;->mMyLock:Lcom/car/dvr/CameraService$MyLock;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/car/dvr/CameraService$SavePictureTask;->this$0:Lcom/car/dvr/CameraService;

    iget-object v3, v3, Lcom/car/dvr/CameraService;->mMyLock:Lcom/car/dvr/CameraService$MyLock;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/car/dvr/CameraService$MyLock;->isNotify:Z

    iget-object v3, p0, Lcom/car/dvr/CameraService$SavePictureTask;->this$0:Lcom/car/dvr/CameraService;

    iget-object v3, v3, Lcom/car/dvr/CameraService;->mMyLock:Lcom/car/dvr/CameraService$MyLock;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    return-object v3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method
