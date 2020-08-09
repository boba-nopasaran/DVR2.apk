.class Lcom/car/dvr/CameraActivity$7;
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

    iput-object p1, p0, Lcom/car/dvr/CameraActivity$7;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraActivity$7;->this$0:Lcom/car/dvr/CameraActivity;

    invoke-static {v0}, Lcom/car/dvr/CameraActivity;->access$200(Lcom/car/dvr/CameraActivity;)Lcom/car/dvr/LineImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/LineImageView;->rightMarginDown()V

    return-void
.end method
