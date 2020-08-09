.class Lcom/car/dvr/CameraActivity$17;
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$17;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$17;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$1100(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/CameraService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraService;->cvbsToggle(Z)V

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$17;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$1500(Lcom/car/dvr/CameraActivity;)I

    move-result v0

    sget v1, Lcom/car/dvr/CameraService;->CAMERA_FRONT:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$17;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$1600(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/IconTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/IconTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$17;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$1600(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/IconTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/IconTextView;->performClick()Z

    :cond_0
    return-void
.end method
