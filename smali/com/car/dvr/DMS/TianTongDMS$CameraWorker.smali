.class Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;
.super Ljava/lang/Object;
.source "TianTongDMS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/DMS/TianTongDMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/DMS/TianTongDMS;


# direct methods
.method private constructor <init>(Lcom/car/dvr/DMS/TianTongDMS;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/DMS/TianTongDMS;Lcom/car/dvr/DMS/TianTongDMS$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;-><init>(Lcom/car/dvr/DMS/TianTongDMS;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$100(Lcom/car/dvr/DMS/TianTongDMS;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$200(Lcom/car/dvr/DMS/TianTongDMS;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$100(Lcom/car/dvr/DMS/TianTongDMS;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    iget-object v4, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v4}, Lcom/car/dvr/DMS/TianTongDMS;->access$300(Lcom/car/dvr/DMS/TianTongDMS;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lcom/car/dvr/DMS/TianTongDMS;->access$302(Lcom/car/dvr/DMS/TianTongDMS;I)I

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/car/dvr/DMS/TianTongDMS;->access$102(Lcom/car/dvr/DMS/TianTongDMS;Z)Z

    const/4 v1, 0x1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$200(Lcom/car/dvr/DMS/TianTongDMS;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$400(Lcom/car/dvr/DMS/TianTongDMS;)[Lorg/opencv/core/Mat;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v3}, Lcom/car/dvr/DMS/TianTongDMS;->access$300(Lcom/car/dvr/DMS/TianTongDMS;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->empty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    iget-object v3, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    iget-object v3, v3, Lcom/car/dvr/DMS/TianTongDMS;->mCameraFrame:[Lcom/car/dvr/DMS/JavaCameraFrame;

    iget-object v4, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v4}, Lcom/car/dvr/DMS/TianTongDMS;->access$300(Lcom/car/dvr/DMS/TianTongDMS;)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/car/dvr/DMS/TianTongDMS;->access$500(Lcom/car/dvr/DMS/TianTongDMS;Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lorg/opencv/core/Mat;

    :cond_3
    const-wide/16 v2, 0x14

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$CameraWorker;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$200(Lcom/car/dvr/DMS/TianTongDMS;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DVR.TianTongDMS"

    const-string v3, "Finish processing thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
