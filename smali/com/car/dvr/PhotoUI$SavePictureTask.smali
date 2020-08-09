.class Lcom/car/dvr/PhotoUI$SavePictureTask;
.super Landroid/os/AsyncTask;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavePictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCameraId:I

.field final synthetic this$0:Lcom/car/dvr/PhotoUI;


# direct methods
.method public constructor <init>(Lcom/car/dvr/PhotoUI;I)V
    .locals 1

    iput-object p1, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget v0, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    iput v0, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    iput p2, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/car/dvr/PhotoUI$SavePictureTask;->doInBackground([[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[B)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    iget v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    iget-object v8, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v8}, Lcom/car/dvr/PhotoUI;->access$100(Lcom/car/dvr/PhotoUI;)I

    move-result v8

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v7}, Lcom/car/dvr/PhotoUI;->access$300(Lcom/car/dvr/PhotoUI;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v8}, Lcom/car/dvr/PhotoUI;->access$200(Lcom/car/dvr/PhotoUI;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v7, "DVR.PhotoUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "camera"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " take picture finish, save image."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    iget v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v7, v8, :cond_2

    const-string v5, "F"

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "yyyy_MM_dd_HHmmss"

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getPhotoPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/car/dvr/VideoInfo;->checkFilePath(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/car/dvr/CameraUtil;->checkEXIFInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    iget-object v8, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v8}, Lcom/car/dvr/PhotoUI;->access$100(Lcom/car/dvr/PhotoUI;)I

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/car/dvr/PhotoUI;->access$402(Lcom/car/dvr/PhotoUI;Ljava/lang/String;)Ljava/lang/String;

    new-instance v6, Lcom/car/dvr/PhotoUI$DecodeImageForReview;

    iget-object v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->this$0:Lcom/car/dvr/PhotoUI;

    aget-object v8, p1, v10

    invoke-direct {v6, v7, v8}, Lcom/car/dvr/PhotoUI$DecodeImageForReview;-><init>(Lcom/car/dvr/PhotoUI;[B)V

    new-array v7, v10, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    const/4 v7, 0x0

    return-object v7

    :cond_2
    iget v7, p0, Lcom/car/dvr/PhotoUI$SavePictureTask;->mCameraId:I

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    if-ne v7, v8, :cond_3

    const-string v5, "I"

    goto/16 :goto_0

    :cond_3
    const-string v5, "B"

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
