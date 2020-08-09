.class Lcom/car/dvr/browser/FileBrowser$4;
.super Lcom/car/dvr/browser/FileScanner;
.source "FileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileBrowser;->runFileList(Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileBrowser;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$4;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Lcom/car/dvr/browser/FileScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x3e6

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$4;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$700(Lcom/car/dvr/browser/FileBrowser;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$4;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0, p3}, Lcom/car/dvr/browser/FileBrowser;->access$802(Lcom/car/dvr/browser/FileBrowser;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$4;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$900(Lcom/car/dvr/browser/FileBrowser;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2}, Lcom/car/dvr/browser/FileBrowser;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$4;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v0, v0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$4;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v0, v0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
