.class Lcom/car/dvr/CameraService$4;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraService;->onStartRecording(Lcom/car/dvr/BaseCamera;)V
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

    iput-object p1, p0, Lcom/car/dvr/CameraService$4;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/CameraService$4;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0, v1, v2}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/car/dvr/CameraService$4;->this$0:Lcom/car/dvr/CameraService;

    invoke-static {v0}, Lcom/car/dvr/CameraService;->access$500(Lcom/car/dvr/CameraService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
