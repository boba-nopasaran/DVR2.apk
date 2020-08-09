.class final Lcom/calmcar/adas/m;
.super Ljava/lang/Object;
.source "JavaCameraView2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/JavaCameraView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraWorker"
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/JavaCameraView2;


# direct methods
.method private constructor <init>(Lcom/calmcar/adas/JavaCameraView2;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/m;->a:Lcom/calmcar/adas/JavaCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic constructor <init>(Lcom/calmcar/adas/JavaCameraView2;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/calmcar/adas/m;-><init>(Lcom/calmcar/adas/JavaCameraView2;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/m;->a:Lcom/calmcar/adas/JavaCameraView2;

    invoke-virtual {v0}, Lcom/calmcar/adas/JavaCameraView2;->readMemoryByte()I

    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/calmcar/adas/m;->a:Lcom/calmcar/adas/JavaCameraView2;

    invoke-static {v0}, Lcom/calmcar/adas/JavaCameraView2;->access$200(Lcom/calmcar/adas/JavaCameraView2;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "JavaCameraView"

    const-string v1, "Finish processing thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
