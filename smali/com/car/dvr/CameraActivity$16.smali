.class Lcom/car/dvr/CameraActivity$16;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f0a00a2

    sget-boolean v1, Lcom/car/dvr/VideoInfo;->NO_FRONT_CAMERA:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/CameraService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/car/dvr/CameraService;->isRecording()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/car/dvr/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/car/dvr/CameraActivity;->access$1200(Lcom/car/dvr/CameraActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1, v3}, Lcom/car/dvr/DvrApplication;->speechTips(Landroid/content/Context;I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/CameraService;

    move-result-object v1

    sget v2, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    invoke-virtual {v1, v2}, Lcom/car/dvr/CameraService;->isRecording(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    sget-object v2, Lcom/car/dvr/DvrApplication;->spLock:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/car/dvr/CameraActivity;->access$1302(Lcom/car/dvr/CameraActivity;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1400(Lcom/car/dvr/CameraActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1300(Lcom/car/dvr/CameraActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isLock"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$16;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$1300(Lcom/car/dvr/CameraActivity;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/car/dvr/CameraActivity$16$1;

    invoke-direct {v2, p0}, Lcom/car/dvr/CameraActivity$16$1;-><init>(Lcom/car/dvr/CameraActivity$16;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
