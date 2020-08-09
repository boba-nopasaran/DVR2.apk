.class Lcom/car/dvr/browser/FileOperationHelper$2$1;
.super Ljava/lang/Thread;
.source "FileOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileOperationHelper$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/browser/FileOperationHelper$2;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileOperationHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileOperationHelper$2$1;->this$1:Lcom/car/dvr/browser/FileOperationHelper$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/car/dvr/browser/FileOperationHelper$2$1;->this$1:Lcom/car/dvr/browser/FileOperationHelper$2;

    iget-object v4, v4, Lcom/car/dvr/browser/FileOperationHelper$2;->val$paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/car/dvr/browser/FileOperationHelper$2$1;->this$1:Lcom/car/dvr/browser/FileOperationHelper$2;

    iget-object v4, v4, Lcom/car/dvr/browser/FileOperationHelper$2;->val$paths:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/car/dvr/Util;->delDir(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/car/dvr/browser/FileOperationHelper$2$1;->this$1:Lcom/car/dvr/browser/FileOperationHelper$2;

    iget-object v4, v4, Lcom/car/dvr/browser/FileOperationHelper$2;->this$0:Lcom/car/dvr/browser/FileOperationHelper;

    invoke-static {v4}, Lcom/car/dvr/browser/FileOperationHelper;->access$100(Lcom/car/dvr/browser/FileOperationHelper;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3ea

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/car/dvr/browser/FileOperationHelper$2$1;->this$1:Lcom/car/dvr/browser/FileOperationHelper$2;

    iget-object v4, v4, Lcom/car/dvr/browser/FileOperationHelper$2;->this$0:Lcom/car/dvr/browser/FileOperationHelper;

    invoke-static {v4}, Lcom/car/dvr/browser/FileOperationHelper;->access$000(Lcom/car/dvr/browser/FileOperationHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/car/dvr/browser/FileOperationHelper;->refreshDataBase(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {v0}, Lcom/car/dvr/Util;->delFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/car/dvr/browser/FileOperationHelper$2$1;->this$1:Lcom/car/dvr/browser/FileOperationHelper$2;

    iget-object v4, v4, Lcom/car/dvr/browser/FileOperationHelper$2;->this$0:Lcom/car/dvr/browser/FileOperationHelper;

    invoke-static {v4}, Lcom/car/dvr/browser/FileOperationHelper;->access$100(Lcom/car/dvr/browser/FileOperationHelper;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x3ec

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
