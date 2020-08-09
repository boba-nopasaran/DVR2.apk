.class Lcom/car/dvr/browser/FileBrowser$1;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileBrowser;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$1;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "DVR.FileBrowser"

    const-string v1, "connect to CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$1;->this$0:Lcom/car/dvr/browser/FileBrowser;

    check-cast p2, Lcom/car/dvr/CameraService$LocalBinder;

    invoke-virtual {p2}, Lcom/car/dvr/CameraService$LocalBinder;->getService()Lcom/car/dvr/CameraService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/dvr/browser/FileBrowser;->access$002(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "DVR.FileBrowser"

    const-string v1, "disconnect CameraService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$1;->this$0:Lcom/car/dvr/browser/FileBrowser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/browser/FileBrowser;->access$002(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/CameraService;)Lcom/car/dvr/CameraService;

    return-void
.end method
