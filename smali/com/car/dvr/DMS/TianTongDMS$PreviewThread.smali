.class Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;
.super Landroid/os/HandlerThread;
.source "TianTongDMS.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/DMS/TianTongDMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/DMS/TianTongDMS;


# direct methods
.method public constructor <init>(Lcom/car/dvr/DMS/TianTongDMS;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v1, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    iget-object v0, v0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    iget-object v0, v0, Lcom/car/dvr/DMS/TianTongDMS;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v2}, Lcom/car/dvr/DMS/TianTongDMS;->access$600(Lcom/car/dvr/DMS/TianTongDMS;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v0}, Lcom/car/dvr/DMS/TianTongDMS;->access$700(Lcom/car/dvr/DMS/TianTongDMS;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS$PreviewThread;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-static {v0}, Lcom/car/dvr/DMS/TianTongDMS;->access$700(Lcom/car/dvr/DMS/TianTongDMS;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
