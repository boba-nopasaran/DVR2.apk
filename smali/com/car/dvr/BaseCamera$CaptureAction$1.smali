.class Lcom/car/dvr/BaseCamera$CaptureAction$1;
.super Ljava/lang/Object;
.source "BaseCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/BaseCamera$CaptureAction;-><init>(Lcom/car/dvr/BaseCamera;Ljava/lang/String;Landroid/hardware/Camera$PictureCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/BaseCamera$CaptureAction;


# direct methods
.method constructor <init>(Lcom/car/dvr/BaseCamera$CaptureAction;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera$CaptureAction;->access$500(Lcom/car/dvr/BaseCamera$CaptureAction;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera$CaptureAction;->access$500(Lcom/car/dvr/BaseCamera$CaptureAction;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :goto_0
    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    invoke-virtual {v3}, Lcom/car/dvr/BaseCamera$CaptureAction;->done()V

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    iget-object v3, v3, Lcom/car/dvr/BaseCamera$CaptureAction;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/car/dvr/CameraUtil;->checkEXIFInfo(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    iget-object v3, v3, Lcom/car/dvr/BaseCamera$CaptureAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "picture saved to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CaptureAction;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    iget-object v3, v3, Lcom/car/dvr/BaseCamera$CaptureAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed save picture to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    iget-object v5, v5, Lcom/car/dvr/BaseCamera$CaptureAction;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/BaseCamera$CaptureAction$1;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    iget-object v3, v3, Lcom/car/dvr/BaseCamera$CaptureAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v3}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
