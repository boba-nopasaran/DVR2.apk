.class Lcom/car/dvr/CameraService$1;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraService;->sendCameraOnOffBroadcast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraService;I)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$1;->this$0:Lcom/car/dvr/CameraService;

    iput p2, p0, Lcom/car/dvr/CameraService$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.dvr.camera_onoff"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    iget v3, p0, Lcom/car/dvr/CameraService$1;->val$state:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "from"

    const-string v3, "carservice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/car/dvr/CameraService$1;->this$0:Lcom/car/dvr/CameraService;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/car/dvr/CameraService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
