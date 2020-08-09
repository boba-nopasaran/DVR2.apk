.class final Lcom/calmcar/adas/j;
.super Ljava/lang/Object;
.source "JavaCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/JavaCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraWorker"
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/JavaCameraView;


# direct methods
.method private constructor <init>(Lcom/calmcar/adas/JavaCameraView;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic constructor <init>(Lcom/calmcar/adas/JavaCameraView;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/calmcar/adas/j;-><init>(Lcom/calmcar/adas/JavaCameraView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    monitor-enter v2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v0}, Lcom/calmcar/adas/JavaCameraView;->access$100(Lcom/calmcar/adas/JavaCameraView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v0}, Lcom/calmcar/adas/JavaCameraView;->access$200(Lcom/calmcar/adas/JavaCameraView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v0}, Lcom/calmcar/adas/JavaCameraView;->access$100(Lcom/calmcar/adas/JavaCameraView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    iget-object v3, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v3}, Lcom/calmcar/adas/JavaCameraView;->access$300(Lcom/calmcar/adas/JavaCameraView;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/calmcar/adas/JavaCameraView;->access$302(Lcom/calmcar/adas/JavaCameraView;I)I

    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/calmcar/adas/JavaCameraView;->access$102(Lcom/calmcar/adas/JavaCameraView;Z)Z

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v2}, Lcom/calmcar/adas/JavaCameraView;->access$200(Lcom/calmcar/adas/JavaCameraView;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v0}, Lcom/calmcar/adas/JavaCameraView;->access$400(Lcom/calmcar/adas/JavaCameraView;)[Lorg/opencv/core/Mat;

    move-result-object v0

    iget-object v2, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v2}, Lcom/calmcar/adas/JavaCameraView;->access$300(Lcom/calmcar/adas/JavaCameraView;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    iget-object v2, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    iget-object v2, v2, Lcom/calmcar/adas/JavaCameraView;->mCameraFrame:[Lcom/calmcar/adas/apiserver/model/JavaCameraFrame;

    iget-object v3, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v3}, Lcom/calmcar/adas/JavaCameraView;->access$300(Lcom/calmcar/adas/JavaCameraView;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/calmcar/adas/JavaCameraView;->deliverAndDrawFrame(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    :cond_2
    const-wide/16 v2, 0x1

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/calmcar/adas/j;->a:Lcom/calmcar/adas/JavaCameraView;

    invoke-static {v0}, Lcom/calmcar/adas/JavaCameraView;->access$200(Lcom/calmcar/adas/JavaCameraView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JavaCameraView"

    const-string v1, "Finish processing thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method
