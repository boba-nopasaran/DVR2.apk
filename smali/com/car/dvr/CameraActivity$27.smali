.class Lcom/car/dvr/CameraActivity$27;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraActivity;
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v4, "scroll_left_x"

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$1900(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$2000()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/car/dvr/CameraActivity;->getPreferencesScrollX(Ljava/lang/String;II)I

    move-result v1

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v4, "scroll_right_x"

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$2200(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$2300()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/car/dvr/CameraActivity;->getPreferencesScrollX(Ljava/lang/String;II)I

    move-result v2

    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScrollPosInitialiser, sSideCameraPreviewMaxWidth,scrollLeftX,scrollRightX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$2400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$1900(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$1900(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int v0, v3, v4

    if-le v1, v0, :cond_1

    move v1, v0

    :cond_1
    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSurfaceLeft.Width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$1900(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mContainerLeft.Width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mContainerLeft.setScrollX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/car/dvr/MyHorizontalScrollView;->setScrollX(I)V

    :cond_2
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$2200(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_5

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$2200(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int v0, v3, v4

    if-le v2, v0, :cond_4

    move v2, v0

    :cond_4
    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSurfaceRight.Width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$2200(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mContainerRight.Width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/dvr/MyHorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mContainerRight.setScrollX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$27;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/car/dvr/MyHorizontalScrollView;->setScrollX(I)V

    :cond_5
    return-void
.end method
