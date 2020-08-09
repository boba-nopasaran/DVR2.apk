.class Lcom/car/dvr/FloatService$3;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/FloatService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/FloatService$3;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/car/dvr/FloatService$3;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v0}, Lcom/car/dvr/FloatService;->access$000(Lcom/car/dvr/FloatService;)Lcom/car/dvr/CameraService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/FloatService$3;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v0}, Lcom/car/dvr/FloatService;->access$1200(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatService$MyHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/FloatService$MyHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
