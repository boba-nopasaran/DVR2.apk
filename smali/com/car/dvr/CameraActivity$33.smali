.class Lcom/car/dvr/CameraActivity$33;
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v1, "scroll_first_y"

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$5700(Lcom/car/dvr/CameraActivity;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$600(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollY(Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v1, "scroll_second_y"

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$3700(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$4500(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollY(Ljava/lang/String;II)V

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v1}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    const-string v1, "scroll_third_y"

    iget-object v2, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v2}, Lcom/car/dvr/CameraActivity;->access$6000(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/MySurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/car/dvr/MySurfaceView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/car/dvr/CameraActivity$33;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v3}, Lcom/car/dvr/CameraActivity;->access$5900(Lcom/car/dvr/CameraActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/dvr/CameraActivity;->setPreferencesScrollY(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method
