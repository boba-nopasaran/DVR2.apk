.class Lcom/car/dvr/CameraService$SoundThread;
.super Ljava/lang/Thread;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundThread"
.end annotation


# instance fields
.field private dualSound:Z

.field private sound:I

.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraService;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$SoundThread;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean p3, p0, Lcom/car/dvr/CameraService$SoundThread;->dualSound:Z

    iput p2, p0, Lcom/car/dvr/CameraService$SoundThread;->sound:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraService$SoundThread;->this$0:Lcom/car/dvr/CameraService;

    iget v2, p0, Lcom/car/dvr/CameraService$SoundThread;->sound:I

    invoke-static {v1, v2}, Lcom/car/dvr/CameraService;->access$1700(Lcom/car/dvr/CameraService;I)V

    iget-boolean v1, p0, Lcom/car/dvr/CameraService$SoundThread;->dualSound:Z

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Lcom/car/dvr/CameraService$SoundThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/car/dvr/CameraService$SoundThread;->this$0:Lcom/car/dvr/CameraService;

    iget v2, p0, Lcom/car/dvr/CameraService$SoundThread;->sound:I

    invoke-static {v1, v2}, Lcom/car/dvr/CameraService;->access$1700(Lcom/car/dvr/CameraService;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DVR.CamService"

    const-string v2, "SoundThread sleep is interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
