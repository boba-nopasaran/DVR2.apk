.class Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileScanner$FileScannerReq;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileScanner$FileScannerReq;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iput-object p2, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-static {v0}, Lcom/car/dvr/browser/FileScanner;->access$000(Lcom/car/dvr/browser/FileScanner;)Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    invoke-static {v0}, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->access$100(Lcom/car/dvr/browser/FileScanner$FileScannerReq;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->val$list:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v1, v1, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Lcom/car/dvr/browser/FileScanner;->onResult(ILjava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/browser/FileScanner;->access$002(Lcom/car/dvr/browser/FileScanner;Lcom/car/dvr/browser/FileScanner$FileScannerReq;)Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v1, v1, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v1, v2}, Lcom/car/dvr/browser/FileScanner;->onResult(ILjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
