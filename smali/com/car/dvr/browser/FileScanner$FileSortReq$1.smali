.class Lcom/car/dvr/browser/FileScanner$FileSortReq$1;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileScanner$FileSortReq;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/browser/FileScanner$FileSortReq;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileScanner$FileSortReq;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileSortReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileSortReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileSortReq;

    invoke-static {v2}, Lcom/car/dvr/browser/FileScanner$FileSortReq;->access$600(Lcom/car/dvr/browser/FileScanner$FileSortReq;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$FileSortReq;

    iget-object v3, v3, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/dvr/browser/FileScanner;->onResult(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
