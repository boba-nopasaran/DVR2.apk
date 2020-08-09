.class Lcom/car/dvr/browser/FileBrowser$5$1;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileBrowser$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/browser/FileBrowser$5;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileBrowser$5;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$5$1;->this$1:Lcom/car/dvr/browser/FileBrowser$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x3ed

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser$5$1;->this$1:Lcom/car/dvr/browser/FileBrowser$5;

    iget-object v1, v1, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v1}, Lcom/car/dvr/browser/FileBrowser;->access$1100(Lcom/car/dvr/browser/FileBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/car/common/CarPath;->getLockPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/car/dvr/browser/FileOperator;->moveFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser$5$1;->this$1:Lcom/car/dvr/browser/FileBrowser$5;

    iget-object v1, v1, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v1, v1, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser$5$1;->this$1:Lcom/car/dvr/browser/FileBrowser$5;

    iget-object v1, v1, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v1, v1, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
