.class Lcom/car/dvr/CameraActivity$32;
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide v8, 0x4000cccccccccccdL    # 2.1

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$4200()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    sub-int v0, v4, v5

    :cond_0
    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v5, "scroll_first_y"

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/car/dvr/CameraActivity;->getPreferencesScrollY(Ljava/lang/String;II)I

    move-result v1

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setScrollY(I)V

    const-string v4, "DVR.CameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mSurfaceFirst.pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    sget v5, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$4200()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    sub-int v0, v4, v5

    :cond_2
    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v5, "scroll_second_y"

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/car/dvr/CameraActivity;->getPreferencesScrollY(Ljava/lang/String;II)I

    move-result v2

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setScrollY(I)V

    const-string v4, "DVR.CameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mSurfaceSecond.pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v5, "scroll_third_y"

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/car/dvr/CameraActivity;->getPreferencesScrollY(Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$32;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setScrollY(I)V

    const-string v4, "DVR.CameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mSurfaceThird.pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
