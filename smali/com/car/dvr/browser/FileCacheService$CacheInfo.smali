.class Lcom/car/dvr/browser/FileCacheService$CacheInfo;
.super Ljava/lang/Object;
.source "FileCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheInfo"
.end annotation


# instance fields
.field isSynchronized:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field prefix:Ljava/lang/String;

.field final synthetic this$0:Lcom/car/dvr/browser/FileCacheService;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileCacheService;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/car/dvr/browser/FileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->isSynchronized:Z

    iput-object p3, p0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->prefix:Ljava/lang/String;

    iput-object p5, p0, Lcom/car/dvr/browser/FileCacheService$CacheInfo;->list:Ljava/util/List;

    return-void
.end method
