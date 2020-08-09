.class Lcom/car/dvr/browser/FileScanner$FileSortReq;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Lcom/car/util/WorkReq;
.implements Lcom/car/util/Match4Req;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileSortReq"
.end annotation


# instance fields
.field public mCancel:Z

.field public mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;

.field public mType:I

.field final synthetic this$0:Lcom/car/dvr/browser/FileScanner;


# direct methods
.method public constructor <init>(Lcom/car/dvr/browser/FileScanner;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mCancel:Z

    iput-object p3, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mType:I

    iput-object p4, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$600(Lcom/car/dvr/browser/FileScanner$FileSortReq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mCancel:Z

    return-void
.end method

.method public execute()V
    .locals 5

    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "DVR.FileScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFileList.size() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/car/dvr/browser/FileInfo;

    iget-boolean v2, v2, Lcom/car/dvr/browser/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    iget v4, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mType:I

    invoke-static {v3, v4}, Lcom/car/dvr/browser/FileScanner;->access$200(Lcom/car/dvr/browser/FileScanner;I)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    iget v4, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mType:I

    invoke-static {v3, v4}, Lcom/car/dvr/browser/FileScanner;->access$500(Lcom/car/dvr/browser/FileScanner;I)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mCancel:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-static {v2}, Lcom/car/dvr/browser/FileScanner;->access$700(Lcom/car/dvr/browser/FileScanner;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/car/dvr/browser/FileScanner$FileSortReq$1;

    invoke-direct {v3, p0}, Lcom/car/dvr/browser/FileScanner$FileSortReq$1;-><init>(Lcom/car/dvr/browser/FileScanner$FileSortReq;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public matchs(Lcom/car/util/WorkReq;)Z
    .locals 3

    instance-of v1, p1, Lcom/car/dvr/browser/FileScanner$FileSortReq;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/car/dvr/browser/FileScanner$FileSortReq;

    iget v1, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mType:I

    iget v2, v0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/car/dvr/browser/FileScanner$FileSortReq;->mFileList:Ljava/util/ArrayList;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
