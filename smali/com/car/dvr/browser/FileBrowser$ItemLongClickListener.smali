.class Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileBrowser;


# direct methods
.method private constructor <init>(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileBrowser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;-><init>(Lcom/car/dvr/browser/FileBrowser;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getRecordingPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/car/dvr/browser/FileBrowser;->access$1000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const-string v3, "DVR.FileBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemLongClick: position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/dvr/browser/FileInfo;

    invoke-virtual {v1}, Lcom/car/dvr/browser/FileInfo;->getFullPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v3, v2}, Lcom/car/dvr/browser/FileBrowser;->access$1102(Lcom/car/dvr/browser/FileBrowser;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser$ItemLongClickListener;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v3, p2}, Lcom/car/dvr/browser/FileBrowser;->access$2000(Lcom/car/dvr/browser/FileBrowser;Landroid/view/View;)V

    goto :goto_0
.end method
