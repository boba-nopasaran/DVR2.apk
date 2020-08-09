.class Lcom/car/dvr/CameraActivity$29;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraActivity;->controlContainerAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraActivity;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3300(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$3800(Lcom/car/dvr/CameraActivity;)I

    move-result v5

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3400(Lcom/car/dvr/CameraActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3500(Lcom/car/dvr/CameraActivity;)I

    move-result v1

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3600(Lcom/car/dvr/CameraActivity;)I

    move-result v0

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v4

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/car/dvr/MySurfaceView;->reLayout(IIII)V

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/car/dvr/CameraActivity;->access$4000(Lcom/car/dvr/CameraActivity;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 12

    const-wide/16 v10, 0x28

    const/16 v8, 0x9

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3300(Lcom/car/dvr/CameraActivity;)I

    move-result v2

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3400(Lcom/car/dvr/CameraActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3500(Lcom/car/dvr/CameraActivity;)I

    move-result v1

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3600(Lcom/car/dvr/CameraActivity;)I

    move-result v0

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v4

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/car/dvr/MySurfaceView;->reLayout(IIII)V

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-static {v4, v6, v7}, Lcom/car/dvr/CameraActivity;->access$3902(Lcom/car/dvr/CameraActivity;J)J

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$29;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
