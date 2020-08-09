.class Lcom/car/dvr/CameraActivity$11;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$11;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$11;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/dvr/ADAS/SVDraw;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$11;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    add-int/lit8 v0, v2, 0xa

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$11;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$500(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/ADAS/SVDraw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/car/dvr/ADAS/SVDraw;->setBtnTop(I)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$11;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$800(Lcom/car/dvr/CameraActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$11;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$700(Lcom/car/dvr/CameraActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
