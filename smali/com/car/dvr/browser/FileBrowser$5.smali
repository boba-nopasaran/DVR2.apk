.class Lcom/car/dvr/browser/FileBrowser$5;
.super Landroid/os/Handler;
.source "FileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileBrowser;
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

    iput-object p1, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/dvr/browser/FileBrowser$5$1;

    invoke-direct {v1, p0}, Lcom/car/dvr/browser/FileBrowser$5$1;-><init>(Lcom/car/dvr/browser/FileBrowser$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1200(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1200(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {}, Lcom/car/dvr/browser/FileBrowser;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/dvr/browser/FileBrowser;->access$1300(Lcom/car/dvr/browser/FileBrowser;Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1200(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1200(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    :pswitch_4
    const-string v0, "DVR.FileBrowser"

    const-string v1, "MSG Scan finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$700(Lcom/car/dvr/browser/FileBrowser;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    new-instance v2, Lcom/car/dvr/browser/FileListAdapter;

    iget-object v3, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v4, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v4}, Lcom/car/dvr/browser/FileBrowser;->access$1500(Lcom/car/dvr/browser/FileBrowser;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/car/dvr/browser/FileListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v0, v2}, Lcom/car/dvr/browser/FileBrowser;->access$1402(Lcom/car/dvr/browser/FileBrowser;Lcom/car/dvr/browser/FileListAdapter;)Lcom/car/dvr/browser/FileListAdapter;

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$500(Lcom/car/dvr/browser/FileBrowser;)Lcom/car/dvr/browser/FileGridView;

    move-result-object v0

    iget-object v2, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v2}, Lcom/car/dvr/browser/FileBrowser;->access$1400(Lcom/car/dvr/browser/FileBrowser;)Lcom/car/dvr/browser/FileListAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/car/dvr/browser/FileGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "DVR.FileBrowser"

    const-string v1, "run sub folder, update Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_5
    const-string v0, "DVR.FileBrowser"

    const-string v1, "run sub folder, update Menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileBrowser;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1600(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1600(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    const v2, 0x7f0a007f

    invoke-virtual {v1, v2}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_7
    const-string v0, "DVR.FileBrowser"

    const-string v1, "delete MSG_DELETE_COMPLETE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1600(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0}, Lcom/car/dvr/browser/FileBrowser;->access$1600(Lcom/car/dvr/browser/FileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {}, Lcom/car/dvr/browser/FileBrowser;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/car/dvr/browser/FileBrowser;->access$1300(Lcom/car/dvr/browser/FileBrowser;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v0, v2}, Lcom/car/dvr/browser/FileBrowser;->access$1700(Lcom/car/dvr/browser/FileBrowser;Z)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    const v1, 0x7f0a0081

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileBrowser$5;->this$0:Lcom/car/dvr/browser/FileBrowser;

    iget-object v0, v0, Lcom/car/dvr/browser/FileBrowser;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e5
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
