.class Lcom/car/dvr/browser/FileListAdapter$MyHandler;
.super Landroid/os/Handler;
.source "FileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileListAdapter;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileListAdapter$MyHandler;->this$0:Lcom/car/dvr/browser/FileListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter$MyHandler;->this$0:Lcom/car/dvr/browser/FileListAdapter;

    invoke-static {v0}, Lcom/car/dvr/browser/FileListAdapter;->access$000(Lcom/car/dvr/browser/FileListAdapter;)Lcom/car/dvr/browser/FileBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileBrowser;->getMode()Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    move-result-object v0

    sget-object v1, Lcom/car/dvr/browser/FileBrowser$DisplayMode;->MODE_GRID:Lcom/car/dvr/browser/FileBrowser$DisplayMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileListAdapter$MyHandler;->this$0:Lcom/car/dvr/browser/FileListAdapter;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
