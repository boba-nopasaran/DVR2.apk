.class Lcom/car/dvr/browser/FileBrowser$6;
.super Ljava/lang/Object;
.source "FileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileBrowser;->showPopupWindow(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$6;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "DVR.FileBrowser"

    const-string v1, "onClick: move to lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$6;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$2100(Lcom/car/dvr/browser/FileBrowser;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$6;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v0, v0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$6;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v0, v0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
