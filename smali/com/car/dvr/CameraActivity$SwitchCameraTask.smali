.class Lcom/car/dvr/CameraActivity$SwitchCameraTask;
.super Landroid/os/AsyncTask;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCameraTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private largeId:I

.field final synthetic this$0:Lcom/car/dvr/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/car/dvr/CameraActivity;)V
    .locals 2

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    const-string v0, "DVR.CameraActivity"

    const-string v1, "Switch Task start..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/car/dvr/CameraActivity;I)V
    .locals 3

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch Task start..., largeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$5200(Lcom/car/dvr/CameraActivity;)I

    move-result v1

    iget v3, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    if-ne v1, v3, :cond_0

    const-string v1, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch preview do nothing, because mLargeId already is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "DVR.CameraActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch preview, doInBackground, current mLargeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5200(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", destination largeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->largeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/CameraService;

    move-result-object v1

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v1, v3, v4}, Lcom/car/dvr/CameraService;->switchPreview(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$5200(Lcom/car/dvr/CameraActivity;)I

    move-result v1

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v1, v4, :cond_1

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    :goto_2
    invoke-static {v3, v1}, Lcom/car/dvr/CameraActivity;->access$5202(Lcom/car/dvr/CameraActivity;I)I

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DVR.CameraActivity"

    const-string v3, "DIALOG_CAMERA_SERVICE_ERROR"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    :try_start_4
    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const-string v0, "DVR.CameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch Task Finish! mControlContainerShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$5300(Lcom/car/dvr/CameraActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5400(Lcom/car/dvr/CameraActivity;)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5300(Lcom/car/dvr/CameraActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0, v4}, Lcom/car/dvr/CameraActivity;->access$4000(Lcom/car/dvr/CameraActivity;Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5500(Lcom/car/dvr/CameraActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5200(Lcom/car/dvr/CameraActivity;)I

    move-result v0

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/AdasFragment;->adasIsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    const-string v0, "DVR.CameraActivity"

    const-string v1, "show ADAS view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/car/dvr/ADAS/SVDraw;->setVisibility(I)V

    const-string v0, "DVR.CameraActivity"

    const-string v1, "hide ADAS view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/car/dvr/CameraActivity$SwitchCameraTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
