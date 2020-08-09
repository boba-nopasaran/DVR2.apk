.class Lcom/car/dvr/CameraActivity$16$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraActivity$16;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/CameraActivity$16;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraActivity$16;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$16$1;->this$1:Lcom/car/dvr/CameraActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16$1;->this$1:Lcom/car/dvr/CameraActivity$16;

    iget-object v1, v1, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    const v2, 0x7f0a0097

    invoke-static {v1, v2}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$16$1;->this$1:Lcom/car/dvr/CameraActivity$16;

    iget-object v2, v2, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/car/common/CarUtil;->isStorageFull(Ljava/lang/String;Landroid/content/Context;Z)Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.car.video.capturenow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16$1;->this$1:Lcom/car/dvr/CameraActivity$16;

    iget-object v1, v1, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/car/dvr/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
