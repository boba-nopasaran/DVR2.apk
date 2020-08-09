.class Lcom/car/dvr/PanoView$1$1;
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

    iput-object p1, p0, Lcom/car/dvr/PanoView$1$1;->this$1:Lcom/car/dvr/PanoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v1, 0x6f

    iget-object v0, p0, Lcom/car/dvr/PanoView$1$1;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v0, v0, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    invoke-static {v0}, Lcom/car/dvr/PanoView;->access$000(Lcom/car/dvr/PanoView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/PanoView$1$1;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v0, v0, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    invoke-virtual {v0}, Lcom/car/dvr/PanoView;->startPano()I

    iget-object v0, p0, Lcom/car/dvr/PanoView$1$1;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v0, v0, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v0, v0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/PanoView$1$1;->this$1:Lcom/car/dvr/PanoView$1;

    iget-object v0, v0, Lcom/car/dvr/PanoView$1;->this$0:Lcom/car/dvr/PanoView;

    iget-object v0, v0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
