.class Lcom/car/dvr/browser/FileBrowser$2;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileBrowser;->syncSelectMode()V
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

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$2;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "DVR.FileBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncSelectMode: mSelectedMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser$2;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v2}, Lcom/car/dvr/browser/FileBrowser;->access$400(Lcom/car/dvr/browser/FileBrowser;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$2;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$500(Lcom/car/dvr/browser/FileBrowser;)Lcom/car/dvr/browser/FileGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileGridView;->invalidateViews()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$2;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$600(Lcom/car/dvr/browser/FileBrowser;)V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$2;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    return-void
.end method
