.class Lcom/car/dvr/browser/FileOperationHelper$2;
.super Ljava/lang/Object;
.source "FileOperationHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileOperationHelper;->delFileOrDir(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileOperationHelper;

.field final synthetic val$paths:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileOperationHelper;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileOperationHelper$2;->this$0:Lcom/car/dvr/browser/FileOperationHelper;

    iput-object p2, p0, Lcom/car/dvr/browser/FileOperationHelper$2;->val$paths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/car/dvr/browser/FileOperationHelper$2;->this$0:Lcom/car/dvr/browser/FileOperationHelper;

    invoke-static {v1}, Lcom/car/dvr/browser/FileOperationHelper;->access$000(Lcom/car/dvr/browser/FileOperationHelper;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/car/dvr/browser/FileBrowser;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/car/dvr/browser/FileBrowser;->showDialog(I)V

    iget-object v1, p0, Lcom/car/dvr/browser/FileOperationHelper$2;->this$0:Lcom/car/dvr/browser/FileOperationHelper;

    invoke-static {v1}, Lcom/car/dvr/browser/FileOperationHelper;->access$100(Lcom/car/dvr/browser/FileOperationHelper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/car/dvr/browser/FileOperationHelper$2$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileOperationHelper$2$1;-><init>(Lcom/car/dvr/browser/FileOperationHelper$2;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
