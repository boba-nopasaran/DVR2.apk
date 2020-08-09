.class Lcom/car/dvr/CameraActivity$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity$GestureListener;-><init>(Lcom/car/dvr/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    const/16 v6, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDoubleTap, IsCarBacking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$4200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$4200()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/dvr/ADAS/SVDraw;->isCalibration()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/car/dvr/CameraActivity;->access$4302(Lcom/car/dvr/CameraActivity;J)J

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$4400()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/car/dvr/CameraActivity;->LEFT_BAR_WIDTH:I

    sub-int v1, v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getBottom()I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fullscreen Front Camera. mMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/car/dvr/CameraActivity;->access$4602(Lcom/car/dvr/CameraActivity;I)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-static {v3, v4}, Lcom/car/dvr/CameraActivity;->access$3000(Lcom/car/dvr/CameraActivity;I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v7}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "DVR.CameraActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fullscreen Back Camera. mMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/car/dvr/CameraActivity;->access$4602(Lcom/car/dvr/CameraActivity;I)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_BACK:I

    invoke-static {v3, v4}, Lcom/car/dvr/CameraActivity;->access$3000(Lcom/car/dvr/CameraActivity;I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v7}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4800(Lcom/car/dvr/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4900(Lcom/car/dvr/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$1800(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$2100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MyHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/dvr/MyHorizontalScrollView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v8, v8}, Lcom/car/dvr/CameraActivity;->access$2900(Lcom/car/dvr/CameraActivity;ZZ)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4600(Lcom/car/dvr/CameraActivity;)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4600(Lcom/car/dvr/CameraActivity;)I

    move-result v3

    :goto_1
    invoke-static {v4, v3}, Lcom/car/dvr/CameraActivity;->access$3000(Lcom/car/dvr/CameraActivity;I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/car/dvr/CameraActivity;->access$4602(Lcom/car/dvr/CameraActivity;I)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v8}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_5
    sget v3, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/car/dvr/CameraActivity;->access$4602(Lcom/car/dvr/CameraActivity;I)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v7}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4900(Lcom/car/dvr/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v8}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v7}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4900(Lcom/car/dvr/CameraActivity;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v8}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3, v7}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto/16 :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/16 v5, 0xb

    const/16 v8, 0x32

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    if-ge v0, v8, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$4100(Lcom/car/dvr/CameraActivity;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    if-le v1, v8, :cond_1

    const-string v4, "DVR.CameraActivity"

    const-string v5, "fling down"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    if-le v2, v8, :cond_2

    const-string v4, "DVR.CameraActivity"

    const-string v5, "fling up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0xb

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4100(Lcom/car/dvr/CameraActivity;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/car/dvr/MySurfaceView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v4}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/car/dvr/MySurfaceView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v5}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/car/dvr/MySurfaceView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v6}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/car/dvr/MySurfaceView;->getBottom()I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/car/dvr/CameraActivity;->access$4400()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v3

    sget v4, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$5000(Lcom/car/dvr/CameraActivity;)I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DVR.CameraActivity"

    const-string v4, "onSingleTapUp call switch surface."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$GestureListener;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$5100(Lcom/car/dvr/CameraActivity;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method
