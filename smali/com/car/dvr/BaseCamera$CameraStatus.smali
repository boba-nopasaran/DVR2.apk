.class public final Lcom/car/dvr/BaseCamera$CameraStatus;
.super Ljava/lang/Object;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CameraStatus"
.end annotation


# instance fields
.field public restartSeq:I

.field final synthetic this$0:Lcom/car/dvr/BaseCamera;

.field public videoInfo:Lcom/car/dvr/VideoInfo;

.field public view:Landroid/view/TextureView;

.field public viewSeq:I


# direct methods
.method public constructor <init>(Lcom/car/dvr/BaseCamera;)V
    .locals 2

    iput-object p1, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/car/dvr/BaseCamera;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v1}, Lcom/car/dvr/BaseCamera;->access$100(Lcom/car/dvr/BaseCamera;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/dvr/VideoInfo;->infoOf(Landroid/content/Context;I)Lcom/car/dvr/VideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    return-void
.end method

.method public constructor <init>(Lcom/car/dvr/BaseCamera;Lcom/car/dvr/BaseCamera$CameraStatus;)V
    .locals 2

    iput-object p1, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/car/dvr/BaseCamera;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->this$0:Lcom/car/dvr/BaseCamera;

    invoke-static {v1}, Lcom/car/dvr/BaseCamera;->access$100(Lcom/car/dvr/BaseCamera;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/dvr/VideoInfo;->infoOf(Landroid/content/Context;I)Lcom/car/dvr/VideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    invoke-virtual {p2, p0}, Lcom/car/dvr/BaseCamera$CameraStatus;->copyTo(Lcom/car/dvr/BaseCamera$CameraStatus;)V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/car/dvr/BaseCamera$CameraStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    iput-object v0, p1, Lcom/car/dvr/BaseCamera$CameraStatus;->view:Landroid/view/TextureView;

    iget v0, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    iput v0, p1, Lcom/car/dvr/BaseCamera$CameraStatus;->viewSeq:I

    iget v0, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    iput v0, p1, Lcom/car/dvr/BaseCamera$CameraStatus;->restartSeq:I

    iget-object v0, p0, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    iget-object v1, p1, Lcom/car/dvr/BaseCamera$CameraStatus;->videoInfo:Lcom/car/dvr/VideoInfo;

    invoke-virtual {v0, v1}, Lcom/car/dvr/VideoInfo;->copyTo(Lcom/car/dvr/VideoInfo;)V

    return-void
.end method
