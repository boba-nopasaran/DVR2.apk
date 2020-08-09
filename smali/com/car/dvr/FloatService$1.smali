.class Lcom/car/dvr/FloatService$1;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v2, "DVR.FloatService"

    const-string v3, "connect to CameraService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    check-cast p2, Lcom/car/dvr/CameraService$LocalBinder;

    invoke-virtual {p2}, Lcom/car/dvr/CameraService$LocalBinder;->getService()Lcom/car/dvr/CameraService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$002(Lcom/car/dvr/FloatService;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;

    iget-object v2, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$000(Lcom/car/dvr/FloatService;)Lcom/car/dvr/CameraService;

    move-result-object v2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v1

    iget-object v2, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$000(Lcom/car/dvr/FloatService;)Lcom/car/dvr/CameraService;

    move-result-object v2

    sget v3, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/car/dvr/FloatService;->access$102(Lcom/car/dvr/FloatService;Z)Z

    iget-object v2, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/FloatService$1;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DVR.FloatService"

    const-string v1, "disconnect CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
