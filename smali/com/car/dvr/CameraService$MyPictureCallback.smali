.class Lcom/car/dvr/CameraService$MyPictureCallback;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPictureCallback"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$MyPictureCallback;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/car/dvr/CameraService$MyPictureCallback;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    const-string v0, "DVR.CamService"

    const-string v1, "take picture done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/car/dvr/CameraService$SavePictureTask;

    iget-object v1, p0, Lcom/car/dvr/CameraService$MyPictureCallback;->this$0:Lcom/car/dvr/CameraService;

    iget-object v2, p0, Lcom/car/dvr/CameraService$MyPictureCallback;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/CameraService$SavePictureTask;-><init>(Lcom/car/dvr/CameraService;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService$SavePictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
