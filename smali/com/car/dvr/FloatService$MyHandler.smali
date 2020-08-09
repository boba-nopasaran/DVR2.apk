.class Lcom/car/dvr/FloatService$MyHandler;
.super Landroid/os/Handler;
.source "FloatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/FloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$300(Lcom/car/dvr/FloatService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/car/dvr/FloatService;->access$1002(Lcom/car/dvr/FloatService;Z)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$1000(Lcom/car/dvr/FloatService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/GenericFragment;->getShowFloatButton(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/car/dvr/FloatService;->access$1002(Lcom/car/dvr/FloatService;Z)Z

    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$1100(Lcom/car/dvr/FloatService;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.dvr.CameraActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-virtual {v1}, Lcom/car/dvr/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/car/dvr/FloatService$MyHandler;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v1}, Lcom/car/dvr/FloatService;->access$400(Lcom/car/dvr/FloatService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
