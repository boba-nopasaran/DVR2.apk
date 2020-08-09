.class Lcom/car/dvr/PhotoUI$DecodeImageForReview;
.super Landroid/os/AsyncTask;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageForReview"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mData:[B

.field final synthetic this$0:Lcom/car/dvr/PhotoUI;


# direct methods
.method public constructor <init>(Lcom/car/dvr/PhotoUI;[B)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->mData:[B

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v1, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->mData:[B

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->mData:[B

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/car/dvr/Util;->downSample([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "DVR.PhotoUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode image , bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "DVR.PhotoUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "take pic finish, start animation: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v2}, Lcom/car/dvr/PhotoUI;->access$500(Lcom/car/dvr/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v2}, Lcom/car/dvr/PhotoUI;->access$500(Lcom/car/dvr/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$500(Lcom/car/dvr/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$500(Lcom/car/dvr/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    iget-object v1, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v1}, Lcom/car/dvr/PhotoUI;->access$500(Lcom/car/dvr/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/car/dvr/PhotoUI;->startCaptureAnimation(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->this$0:Lcom/car/dvr/PhotoUI;

    invoke-static {v0}, Lcom/car/dvr/PhotoUI;->access$000(Lcom/car/dvr/PhotoUI;)Lcom/car/dvr/CameraActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/CameraActivity;->setInAction(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/car/dvr/PhotoUI$DecodeImageForReview;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
