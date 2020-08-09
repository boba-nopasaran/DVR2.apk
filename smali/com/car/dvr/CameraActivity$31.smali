.class Lcom/car/dvr/CameraActivity$31;
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v8, 0x1

    const-wide/16 v12, 0xa

    const-wide v10, 0x4000cccccccccccdL    # 2.1

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$5600()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "persist.front.preview.bestfit"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "persist.back.preview.bestfit"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/high16 v3, 0x3f100000    # 0.5625f

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v7

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5200(Lcom/car/dvr/CameraActivity;)I

    move-result v7

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-eq v7, v8, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v7

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v7, v8, :cond_9

    :cond_3
    move v4, v6

    :goto_1
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v7, "DVR.CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mContainerFirst.width="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v9}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mContainerFirst.height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v9}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", scaleType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v8}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_a

    if-lez v4, :cond_a

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v8}, Lcom/car/dvr/CameraActivity;->access$5800(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    const-string v7, "DVR.CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set mSurfaceFirst.height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    if-lez v7, :cond_8

    sget-boolean v7, Lcom/car/dvr/VideoInfo;->IS720CVBS:Z

    if-nez v7, :cond_5

    sget-boolean v7, Lcom/car/dvr/VideoInfo;->IS1080CVBS:Z

    if-nez v7, :cond_5

    const/high16 v3, 0x3f400000    # 0.75f

    :cond_5
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v7

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v7, v8, :cond_6

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5200(Lcom/car/dvr/CameraActivity;)I

    move-result v7

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-eq v7, v8, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v7

    sget v8, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    if-ne v7, v8, :cond_b

    :cond_7
    move v4, v5

    :goto_3
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/MySurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v8}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_c

    if-lez v4, :cond_c

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/car/dvr/MySurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v8}, Lcom/car/dvr/CameraActivity;->access$5800(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    const-string v7, "DVR.CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set mSurfaceSecond.height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    const/high16 v3, 0x3f100000    # 0.5625f

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/car/dvr/MySurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v8}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v8, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_d

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/car/dvr/MySurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v8}, Lcom/car/dvr/CameraActivity;->access$5800(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5
    const-string v7, "DVR.CameraActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set mSurfaceThird.height="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v4, v5

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    :cond_b
    move v4, v6

    goto/16 :goto_3

    :cond_c
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/car/dvr/MySurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_d
    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/car/dvr/CameraActivity$31;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v7}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/car/dvr/MySurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method
