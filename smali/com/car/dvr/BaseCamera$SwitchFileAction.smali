.class final Lcom/car/dvr/BaseCamera$SwitchFileAction;
.super Lcom/car/dvr/BaseCamera$CameraAction;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchFileAction"
.end annotation


# direct methods
.method constructor <init>(Lcom/car/dvr/BaseCamera;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/car/dvr/BaseCamera$CameraAction;-><init>(Lcom/car/dvr/BaseCamera;ZZ)V

    return-void
.end method


# virtual methods
.method doRunAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V
    .locals 4

    if-eqz p3, :cond_0

    const-string v0, "video-param-camera-video-switchfile=1"

    invoke-static {p3, v0}, Lcom/car/dvr/Platform;->mediarecorder_setparameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v1}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchFileAction cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera$SwitchFileAction;->done()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v1}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SwitchFileAction Failed, recorder = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
