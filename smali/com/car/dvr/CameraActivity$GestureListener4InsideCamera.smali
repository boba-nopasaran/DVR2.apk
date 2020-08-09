.class Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener4InsideCamera"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/car/dvr/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/CameraActivity;Lcom/car/dvr/CameraActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;-><init>(Lcom/car/dvr/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x1

    const-string v0, "DVR.CameraActivity"

    const-string v1, "InsideCamera.onDoubleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/car/dvr/CameraActivity;->access$4302(Lcom/car/dvr/CameraActivity;J)J

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$4900(Lcom/car/dvr/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$4600(Lcom/car/dvr/CameraActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$4600(Lcom/car/dvr/CameraActivity;)I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/car/dvr/CameraActivity;->access$3000(Lcom/car/dvr/CameraActivity;I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/car/dvr/CameraActivity;->access$4602(Lcom/car/dvr/CameraActivity;I)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    :goto_1
    return v4

    :cond_0
    sget v0, Lcom/car/dvr/CameraService;->CAMERA_ALL:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/car/dvr/CameraActivity;->access$4602(Lcom/car/dvr/CameraActivity;I)I

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_INSIDE:I

    invoke-static {v0, v1}, Lcom/car/dvr/CameraActivity;->access$3000(Lcom/car/dvr/CameraActivity;I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0, v4}, Lcom/car/dvr/CameraActivity;->access$4700(Lcom/car/dvr/CameraActivity;Z)V

    goto :goto_1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    const/16 v1, 0xb

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$GestureListener4InsideCamera;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$4100(Lcom/car/dvr/CameraActivity;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
