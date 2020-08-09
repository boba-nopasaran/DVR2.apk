.class Lcom/car/dvr/ADAS/SVDraw$1;
.super Landroid/os/Handler;
.source "SVDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/SVDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/SVDraw;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/SVDraw;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/car/dvr/ADAS/DrawInfo;

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v2, v0}, Lcom/car/dvr/ADAS/SVDraw;->drawResult(Lcom/car/dvr/ADAS/DrawInfo;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/car/dvr/ADAS/DrawInfo;

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v2, v1}, Lcom/car/dvr/ADAS/SVDraw;->access$000(Lcom/car/dvr/ADAS/SVDraw;Lcom/car/dvr/ADAS/DrawInfo;)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    iget-object v3, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v3}, Lcom/car/dvr/ADAS/SVDraw;->access$100(Lcom/car/dvr/ADAS/SVDraw;)F

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v4}, Lcom/car/dvr/ADAS/SVDraw;->access$200(Lcom/car/dvr/ADAS/SVDraw;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v4}, Lcom/car/dvr/ADAS/SVDraw;->access$300(Lcom/car/dvr/ADAS/SVDraw;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/SVDraw;->access$102(Lcom/car/dvr/ADAS/SVDraw;F)F

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    iget-object v3, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v3}, Lcom/car/dvr/ADAS/SVDraw;->access$400(Lcom/car/dvr/ADAS/SVDraw;)F

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v4}, Lcom/car/dvr/ADAS/SVDraw;->access$500(Lcom/car/dvr/ADAS/SVDraw;)F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v4}, Lcom/car/dvr/ADAS/SVDraw;->access$600(Lcom/car/dvr/ADAS/SVDraw;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/dvr/ADAS/SVDraw;->access$402(Lcom/car/dvr/ADAS/SVDraw;F)F

    const-string v2, "DVR.ADAS.SVDraw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage sConfigX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v4}, Lcom/car/dvr/ADAS/SVDraw;->access$100(Lcom/car/dvr/ADAS/SVDraw;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sConfigY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw$1;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v4}, Lcom/car/dvr/ADAS/SVDraw;->access$400(Lcom/car/dvr/ADAS/SVDraw;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x99 -> :sswitch_2
    .end sparse-switch
.end method
