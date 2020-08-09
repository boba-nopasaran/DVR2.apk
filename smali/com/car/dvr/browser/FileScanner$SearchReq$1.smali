.class Lcom/car/dvr/browser/FileScanner$SearchReq$1;
.super Ljava/lang/Object;
.source "FileScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileScanner$SearchReq;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/browser/FileScanner$SearchReq;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileScanner$SearchReq;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileScanner$SearchReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$SearchReq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/browser/FileScanner$SearchReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$SearchReq;

    iget-object v0, v0, Lcom/car/dvr/browser/FileScanner$SearchReq;->this$0:Lcom/car/dvr/browser/FileScanner;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/car/dvr/browser/FileScanner$SearchReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$SearchReq;

    iget-object v2, v2, Lcom/car/dvr/browser/FileScanner$SearchReq;->mFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/car/dvr/browser/FileScanner$SearchReq$1;->this$1:Lcom/car/dvr/browser/FileScanner$SearchReq;

    iget-object v3, v3, Lcom/car/dvr/browser/FileScanner$SearchReq;->mSearchDirList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/dvr/browser/FileScanner;->onResult(ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
