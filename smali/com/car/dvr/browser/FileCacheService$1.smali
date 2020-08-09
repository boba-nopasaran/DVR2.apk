.class Lcom/car/dvr/browser/FileCacheService$1;
.super Lcom/car/dvr/browser/FileScanner;
.source "FileCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/browser/FileCacheService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileCacheService;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileCacheService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileCacheService$1;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-direct {p0}, Lcom/car/dvr/browser/FileScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DVR.FileCacheService"

    const-string v1, "scan is Finished."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService$1;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-static {v0, p3}, Lcom/car/dvr/browser/FileCacheService;->access$002(Lcom/car/dvr/browser/FileCacheService;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService$1;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-static {v0}, Lcom/car/dvr/browser/FileCacheService;->access$100(Lcom/car/dvr/browser/FileCacheService;)V

    return-void
.end method
