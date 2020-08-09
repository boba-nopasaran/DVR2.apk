.class Lcom/car/dvr/PanoView$2;
.super Ljava/lang/Object;
.source "PanoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/PanoView;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/PanoView;


# direct methods
.method constructor <init>(Lcom/car/dvr/PanoView;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PanoView$2;->this$0:Lcom/car/dvr/PanoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/PanoView$2;->this$0:Lcom/car/dvr/PanoView;

    invoke-static {v0}, Lcom/car/dvr/PanoView;->access$000(Lcom/car/dvr/PanoView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/PanoView$2;->this$0:Lcom/car/dvr/PanoView;

    iget-object v1, p0, Lcom/car/dvr/PanoView$2;->this$0:Lcom/car/dvr/PanoView;

    invoke-static {v1}, Lcom/car/dvr/PanoView;->access$000(Lcom/car/dvr/PanoView;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/dvr/PanoView;->setMonoSurface(Landroid/view/Surface;)I

    iget-object v0, p0, Lcom/car/dvr/PanoView$2;->this$0:Lcom/car/dvr/PanoView;

    iget-object v0, v0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
