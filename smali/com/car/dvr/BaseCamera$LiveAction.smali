.class final Lcom/car/dvr/BaseCamera$LiveAction;
.super Lcom/car/dvr/BaseCamera$CameraAction;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LiveAction"
.end annotation


# instance fields
.field livingAction:I

.field livingURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/dvr/BaseCamera;ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/car/dvr/BaseCamera$CameraAction;-><init>(Lcom/car/dvr/BaseCamera;ZZ)V

    iget-wide v0, p0, Lcom/car/dvr/BaseCamera$CameraAction;->initTime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/car/dvr/BaseCamera$CameraAction;->deadTime:J

    iput p2, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    iput-object p3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    if-nez p2, :cond_0

    iput-boolean v4, p0, Lcom/car/dvr/BaseCamera$LiveAction;->needCamera:Z

    iput-boolean v4, p0, Lcom/car/dvr/BaseCamera$LiveAction;->needRecord:Z

    :cond_0
    return-void
.end method


# virtual methods
.method doRunAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V
    .locals 8

    const/4 v7, 0x1

    if-eqz p1, :cond_3

    const/16 v2, 0x14

    :goto_0
    if-lez v2, :cond_0

    :try_start_0
    iget v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$300(Lcom/car/dvr/BaseCamera;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    const-string v4, "rtp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$400(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3D"

    const-string v6, "="

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "doRunAction, ignore stop living action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doRunAction, stopLiving url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current Living url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v5}, Lcom/car/dvr/BaseCamera;->access$400(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera$LiveAction;->done()V

    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    invoke-static {p1, p3, v3, v4}, Lcom/car/dvr/Platform;->doLivingAction(Landroid/hardware/Camera;Landroid/media/MediaRecorder;ILjava/lang/String;)V

    iget v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/car/dvr/BaseCamera;->access$302(Lcom/car/dvr/BaseCamera;Z)Z

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingURL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/car/dvr/BaseCamera;->access$402(Lcom/car/dvr/BaseCamera;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LiveAction doRunAction error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LiveAction sleep a while and retry"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/car/dvr/BaseCamera;->access$302(Lcom/car/dvr/BaseCamera;Z)Z

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/car/dvr/BaseCamera;->access$402(Lcom/car/dvr/BaseCamera;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/dvr/BaseCamera$LiveAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "LiveAction without camera"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/car/dvr/BaseCamera$CameraAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/car/dvr/BaseCamera$LiveAction;->livingAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
