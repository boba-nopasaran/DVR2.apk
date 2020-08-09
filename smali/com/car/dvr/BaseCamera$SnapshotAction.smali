.class final Lcom/car/dvr/BaseCamera$SnapshotAction;
.super Lcom/car/dvr/BaseCamera$CameraAction;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnapshotAction"
.end annotation


# instance fields
.field compress:Z

.field endtime:I

.field picture:Z

.field seqid:I

.field starttime:I


# direct methods
.method constructor <init>(Lcom/car/dvr/BaseCamera;IIIZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/car/dvr/BaseCamera$CameraAction;-><init>(Lcom/car/dvr/BaseCamera;ZZ)V

    iput p2, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->seqid:I

    iput p3, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->starttime:I

    iput p4, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->endtime:I

    iput-boolean p5, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->compress:Z

    iput-boolean p6, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->picture:Z

    return-void
.end method


# virtual methods
.method doRunAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video-param-camera-video-snapshot=seqid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->seqid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-starttime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->starttime:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-endtime="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->endtime:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-compress="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v1, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->compress:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "-picture="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->picture:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/car/dvr/Platform;->mediarecorder_setparameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera$SnapshotAction;->done()V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v1}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotAction Failed, recorder = null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/car/dvr/BaseCamera$CameraAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seqid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->seqid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " starttime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->starttime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->endtime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " compress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->compress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " picture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/car/dvr/BaseCamera$SnapshotAction;->picture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
