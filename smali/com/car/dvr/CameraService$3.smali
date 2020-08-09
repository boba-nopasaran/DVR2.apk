.class Lcom/car/dvr/CameraService$3;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraService;->checkStorageFull()V
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

    iput-object p1, p0, Lcom/car/dvr/CameraService$3;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/car/common/CarPath;->getDVRPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lcom/car/common/CarUtil;->checkStorageLeft(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraService$3;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v1}, Lcom/car/dvr/CameraService;->access$400(Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/dvr/CameraManager;->stopRecording()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_show_format_sd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/CameraService$3;->this$0:Lcom/car/dvr/CameraService;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
