.class Lcom/car/dvr/PhotoUI$1;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/PhotoUI;


# direct methods
.method constructor <init>(Lcom/car/dvr/PhotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI$1;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "DVR.PhotoUI"

    const-string v1, "takePicture time out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$1;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$000(Lcom/car/dvr/PhotoUI;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    return-void
.end method
