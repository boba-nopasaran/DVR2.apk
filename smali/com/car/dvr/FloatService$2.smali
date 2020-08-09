.class Lcom/car/dvr/FloatService$2;
.super Landroid/content/BroadcastReceiver;
.source "FloatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.car.dvr.camera_onoff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "state"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.car.videorecorder.FloatService.closeview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1, v3}, Lcom/car/dvr/FloatService;->access$302(Lcom/car/dvr/FloatService;Z)Z

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$400(Lcom/car/dvr/FloatService;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.car.videorecorder.recording_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1, v5}, Lcom/car/dvr/FloatService;->access$102(Lcom/car/dvr/FloatService;Z)Z

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iget-boolean v1, v1, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/dvr/FloatView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iput-boolean v3, v1, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iget-object v2, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v2}, Lcom/car/dvr/FloatService;->access$800(Lcom/car/dvr/FloatService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/car/dvr/FloatService;->access$900(Lcom/car/dvr/FloatService;I)Z

    goto :goto_0

    :cond_4
    const-string v1, "com.car.videorecorder.recording_stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1, v3}, Lcom/car/dvr/FloatService;->access$102(Lcom/car/dvr/FloatService;Z)Z

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/dvr/FloatView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    iput-boolean v5, v1, Lcom/car/dvr/FloatService;->mPreviewRecover:Z

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$2;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    goto/16 :goto_0
.end method
