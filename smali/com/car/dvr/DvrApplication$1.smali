.class Lcom/car/dvr/DvrApplication$1;
.super Ljava/lang/Object;
.source "DvrApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/DvrApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/DvrApplication;


# direct methods
.method constructor <init>(Lcom/car/dvr/DvrApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "DVR.Application"

    const-string v1, "connect to CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    check-cast p2, Lcom/car/dvr/CameraService$LocalBinder;

    invoke-virtual {p2}, Lcom/car/dvr/CameraService$LocalBinder;->getService()Lcom/car/dvr/CameraService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->access$102(Lcom/car/dvr/DvrApplication;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;

    iget-object v0, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    invoke-static {v0}, Lcom/car/dvr/DvrApplication;->access$000(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    invoke-static {v0}, Lcom/car/dvr/DvrApplication;->access$000(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    invoke-static {v1}, Lcom/car/dvr/DvrApplication;->access$100(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->setService(Lcom/car/dvr/CameraService;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DVR.Application"

    const-string v1, "disconnect CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    invoke-static {v0}, Lcom/car/dvr/DvrApplication;->access$000(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/DvrApplication$1;->this$0:Lcom/car/dvr/DvrApplication;

    invoke-static {v0}, Lcom/car/dvr/DvrApplication;->access$000(Lcom/car/dvr/DvrApplication;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->setService(Lcom/car/dvr/CameraService;)V

    :cond_0
    return-void
.end method
