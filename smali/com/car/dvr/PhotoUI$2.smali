.class Lcom/car/dvr/PhotoUI$2;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/PhotoUI;


# direct methods
.method constructor <init>(Lcom/car/dvr/PhotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI$2;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    new-instance v0, Lcom/car/dvr/PhotoUI$SavePictureTask;

    iget-object v1, p0, Lcom/car/dvr/PhotoUI$2;->this$0:Lcom/car/dvr/PhotoUI;

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/PhotoUI$SavePictureTask;-><init>(Lcom/car/dvr/PhotoUI;I)V

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/car/dvr/PhotoUI$SavePictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
