.class Lcom/car/dvr/browser/FileScanner$SearchReq;
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
    name = "SearchReq"
.end annotation


# instance fields
.field public mCancel:Z

.field public mFilePath:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mSearchDirList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/car/dvr/browser/FileScanner;


# direct methods
.method public constructor <init>(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchDirList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchFileList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mCancel:Z

    iput-object p2, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mKey:Ljava/lang/String;

    return-void
.end method

.method private searchFile(Ljava/io/File;)V
    .locals 10

    iget-boolean v5, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mCancel:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2

    new-instance v1, Lcom/car/dvr/browser/FileInfo;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/car/dvr/browser/FileInfo;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/car/dvr/browser/FileInfo;->path:Ljava/lang/String;

    const-string v5, "DVR.FileScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRUE name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    iget-object v5, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchDirList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileScanner$SearchReq;->searchFile(Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-static {v5, v4}, Lcom/car/dvr/browser/FileScanner;->access$300(Lcom/car/dvr/browser/FileScanner;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    new-instance v1, Lcom/car/dvr/browser/FileInfo;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/car/dvr/browser/FileInfo;-><init>(Ljava/lang/String;Z)V

    const-string v5, "DVR.FileScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FALSE  name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/car/dvr/browser/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/car/dvr/Util;->fileSizeMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/car/dvr/browser/FileInfo;->size:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/car/dvr/browser/FileInfo;->lsize:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/car/dvr/browser/FileInfo;->modifytime:J

    invoke-static {v4}, Lcom/car/dvr/browser/FileMediaType;->getMediaType(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/car/dvr/browser/FileInfo;->fileType:I

    iget-object v5, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchFileList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mCancel:Z

    return-void
.end method

.method public execute()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchDirList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/car/dvr/browser/FileScanner$SearchReq;->searchFile(Ljava/io/File;)V

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchDirList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    invoke-static {v0}, Lcom/car/dvr/browser/FileScanner;->access$700(Lcom/car/dvr/browser/FileScanner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/car/dvr/browser/FileScanner$SearchReq$1;

    invoke-direct {v1, p0}, Lcom/car/dvr/browser/FileScanner$SearchReq$1;-><init>(Lcom/car/dvr/browser/FileScanner$SearchReq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public matchs(Lcom/car/util/WorkReq;)Z
    .locals 3

    instance-of v1, p1, Lcom/car/dvr/browser/FileScanner$SearchReq;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/car/dvr/browser/FileScanner$SearchReq;

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mFilePath:Ljava/lang/String;

    iget-object v2, v0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mKey:Ljava/lang/String;

    iget-object v2, v0, Lcom/car/dvr/browser/FileScanner$SearchReq;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
