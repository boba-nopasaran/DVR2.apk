.class Lcom/car/dvr/PanoView$1$2;
.super Ljava/lang/Object;
.source "PanoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/PanoView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/PanoView$1;


# direct methods
.method constructor <init>(Lcom/car/dvr/PanoView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v4, 0x6f

    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    invoke-virtual {v1}, Lcom/car/dvr/PanoView;->getShmFd()I

    move-result v0

    if-gez v0, :cond_1

    const-string v1, "DVR.PanoView"

    const-string v2, "Maybe crash, reset again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    invoke-static {v1}, Lcom/car/dvr/PanoView;->access$000(Lcom/car/dvr/PanoView;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v2, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v2, v2, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    invoke-static {v2}, Lcom/car/dvr/PanoView;->access$000(Lcom/car/dvr/PanoView;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/car/dvr/PanoView;->setMonoSurface(Landroid/view/Surface;)I

    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v1, v1, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v1, v1, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v1, v1, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/car/dvr/PanoView$1$2;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v1, v1, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v1, v1, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
