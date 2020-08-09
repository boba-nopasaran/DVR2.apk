.class Lcom/car/dvr/browser/FileCacheService$Task;
.super Ljava/lang/Object;
.source "FileCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileCacheService;


# direct methods
.method constructor <init>(Lcom/car/dvr/browser/FileCacheService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileCacheService$Task;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService$Task;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-static {v0}, Lcom/car/dvr/browser/FileCacheService;->access$200(Lcom/car/dvr/browser/FileCacheService;)V

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService$Task;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-static {v0}, Lcom/car/dvr/browser/FileCacheService;->access$300(Lcom/car/dvr/browser/FileCacheService;)V

    return-void
.end method
