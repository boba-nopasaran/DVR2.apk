.class Lcom/car/dvr/CameraActivity$19;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraActivity;->initEvent()V
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->stopRecording()V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/common/ProviderUtils;->getMuteRecord(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setMuteRecord(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/dvr/CameraActivity;->access$1200(Lcom/car/dvr/CameraActivity;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraManager;->getInstance(Landroid/content/Context;)Lcom/car/dvr/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/CameraManager;->startRecording()V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$1700(Lcom/car/dvr/CameraActivity;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/car/common/ProviderUtils;->setMuteRecord(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$19;->this$0:Lcom/car/dvr/CameraActivity;

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/dvr/CameraActivity;->access$1200(Lcom/car/dvr/CameraActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
