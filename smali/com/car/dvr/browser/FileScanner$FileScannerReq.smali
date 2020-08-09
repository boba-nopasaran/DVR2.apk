.class Lcom/car/dvr/browser/FileScanner$FileScannerReq;
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
    name = "FileScannerReq"
.end annotation


# instance fields
.field private mCancel:Z

.field public mHandler:Landroid/os/Handler;

.field public mListType:I

.field public mScanPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/dvr/browser/FileScanner;


# direct methods
.method public constructor <init>(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 1

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mCancel:Z

    iput-object p2, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mListType:I

    return-void
.end method

.method static synthetic access$100(Lcom/car/dvr/browser/FileScanner$FileScannerReq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mCancel:Z

    return v0
.end method

.method private isMatchListType(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mListType:I

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Lcom/car/dvr/browser/FileMediaType;->getMediaType(Ljava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mListType:I

    and-int/2addr v2, v0

    if-eq v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNeedDir()Z
    .locals 2

    iget v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mListType:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mCancel:Z

    return-void
.end method

.method public execute()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->guardRun()Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mCancel:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;

    invoke-direct {v2, p0, v0}, Lcom/car/dvr/browser/FileScanner$FileScannerReq$1;-><init>(Lcom/car/dvr/browser/FileScanner$FileScannerReq;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public guardRun()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->isNeedDir()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x0

    :goto_1
    array-length v10, v5

    if-ge v7, v10, :cond_5

    aget-object v0, v5, v7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v2, Lcom/car/dvr/browser/FileInfo;

    const/4 v10, 0x1

    invoke-direct {v2, v9, v10}, Lcom/car/dvr/browser/FileInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v10, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mCancel:Z

    if-eqz v10, :cond_4

    const-string v10, "DVR.FileScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scan abort1: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/car/dvr/browser/FileScanner;->access$200(Lcom/car/dvr/browser/FileScanner;I)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    iget-object v4, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/dvr/browser/FileInfo;

    iput-object v4, v10, Lcom/car/dvr/browser/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/dvr/browser/FileInfo;

    const-string v11, ""

    iput-object v11, v10, Lcom/car/dvr/browser/FileInfo;->size:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v7, 0x0

    :goto_3
    array-length v10, v5

    if-ge v7, v10, :cond_a

    aget-object v0, v5, v7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    iget-object v10, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-static {v10, v9}, Lcom/car/dvr/browser/FileScanner;->access$300(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-direct {p0, v9}, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->isMatchListType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v2, Lcom/car/dvr/browser/FileInfo;

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Lcom/car/dvr/browser/FileInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/car/dvr/Util;->fileSizeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/car/dvr/browser/FileInfo;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/car/dvr/browser/FileInfo;->lsize:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    invoke-static {v9}, Lcom/car/dvr/browser/FileMediaType;->getMediaType(Ljava/lang/String;)I

    move-result v10

    iput v10, v2, Lcom/car/dvr/browser/FileInfo;->fileType:I

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v10, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mCancel:Z

    if-eqz v10, :cond_9

    const-string v10, "DVR.FileScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scan abort2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_a
    iget-object v10, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    iget-object v11, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-static {v11}, Lcom/car/dvr/browser/FileScanner;->access$400(Lcom/car/dvr/browser/FileScanner;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/car/dvr/browser/FileScanner;->access$500(Lcom/car/dvr/browser/FileScanner;I)Ljava/util/Comparator;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v7, v10, :cond_b

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/car/dvr/browser/FileInfo;

    iput-object v4, v10, Lcom/car/dvr/browser/FileInfo;->path:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    const-string v10, "persist.sys.folderorder"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const/4 v10, 0x0

    invoke-virtual {v6, v10, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public matchs(Lcom/car/util/WorkReq;)Z
    .locals 3

    instance-of v1, p1, Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    iget-object v2, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mScanPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mListType:I

    iget v2, v0, Lcom/car/dvr/browser/FileScanner$FileScannerReq;->mListType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
