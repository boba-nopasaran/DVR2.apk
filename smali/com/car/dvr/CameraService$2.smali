.class Lcom/car/dvr/CameraService$2;
.super Lcom/car/common/ICameraManagerService$Stub;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Lcom/car/common/ICameraManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraID(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/car/dvr/CameraManager;->getCameraID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCameraList()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->getCameraList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLivingStatus(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0, p1}, Lcom/car/dvr/CameraService;->access$900(Lcom/car/dvr/CameraService;I)Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    return v0
.end method

.method public onlinePreviewRequest(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0, p1, p2, p3}, Lcom/car/dvr/CameraService;->access$1000(Lcom/car/dvr/CameraService;Ljava/lang/String;II)V

    return-void
.end method

.method public startRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DVR.CamService"

    const-string v1, "startRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->startRecording()V

    return-void
.end method

.method public stopRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "DVR.CamService"

    const-string v1, "stopRecording()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->stopRecording()V

    return-void
.end method

.method public takeBackPicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/CameraService$2;->takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeBackPicture2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v3}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v3

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v3, v4}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3}, Lcom/car/dvr/CameraService;->insideOfDualCVBSisWorking()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "DVR.CamService"

    const-string v4, "takeBackPicture, inside of dual CVBS is working, switch to back camera firstly."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v3, v4}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3, v6}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/car/dvr/CameraService;->access$2200(J)V

    :cond_0
    const/16 v3, 0x1f40

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4, p2}, Lcom/car/dvr/BaseCamera;->takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;Z)Ljava/lang/String;

    move-result-object v1

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3, v6}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/car/dvr/CameraService;->access$2200(J)V

    :cond_1
    return-object v1

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public takeFrontPicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/CameraService$2;->takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeFrontPicture2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v2}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x1f40

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/car/dvr/BaseCamera;->takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public takeInsidePicture(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/CameraService$2;->takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeInsidePicture2(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v7, 0x1f40

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3}, Lcom/car/dvr/CameraService;->isDualCVBS()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v3}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v3

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v3, v4}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3}, Lcom/car/dvr/CameraService;->insideOfDualCVBSisWorking()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DVR.CamService"

    const-string v4, "takeInsidePicture, back of dual CVBS is working, switch to inside camera firstly."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v3, v4}, Lcom/car/dvr/CameraService;->isCameraOpened(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3, v6}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/car/dvr/CameraService;->access$2200(J)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ".jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "I"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyy_MM_dd_HHmmss"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {v0, p1, v7, v8, p2}, Lcom/car/dvr/BaseCamera;->takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;Z)Ljava/lang/String;

    move-result-object v1

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-virtual {v3, v6}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/car/dvr/CameraService$2;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v3}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v3

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-virtual {v3, v4}, Lcom/car/dvr/CameraManager;->getCamera(I)Lcom/car/dvr/BaseCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, v7, v8}, Lcom/car/dvr/BaseCamera;->takePicture(Ljava/lang/String;ILandroid/hardware/Camera$PictureCallback;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
