.class Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;
.super Landroid/os/Handler;
.source "SVDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adasplus/adas/view/SVDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adasplus/adas/view/SVDraw;


# direct methods
.method public constructor <init>(Lcom/adasplus/adas/view/SVDraw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/adasplus/data/DrawInfo;

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/view/SVDraw;->drawResult(Lcom/adasplus/data/DrawInfo;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v1}, Lcom/adasplus/adas/view/SVDraw;->access$000(Lcom/adasplus/adas/view/SVDraw;)V

    goto :goto_0

    :sswitch_2
    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v2}, Lcom/adasplus/adas/view/SVDraw;->access$100(Lcom/adasplus/adas/view/SVDraw;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v2}, Lcom/adasplus/adas/view/SVDraw;->access$200(Lcom/adasplus/adas/view/SVDraw;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sput v1, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v2}, Lcom/adasplus/adas/view/SVDraw;->access$300(Lcom/adasplus/adas/view/SVDraw;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v2}, Lcom/adasplus/adas/view/SVDraw;->access$400(Lcom/adasplus/adas/view/SVDraw;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sput v1, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v1}, Lcom/adasplus/adas/view/SVDraw;->access$500(Lcom/adasplus/adas/view/SVDraw;)Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->this$0:Lcom/adasplus/adas/view/SVDraw;

    invoke-static {v1}, Lcom/adasplus/adas/view/SVDraw;->access$500(Lcom/adasplus/adas/view/SVDraw;)Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;

    move-result-object v1

    sget v2, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    sget v3, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    invoke-interface {v1, v2, v3}, Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;->setVpoint(FF)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x99 -> :sswitch_2
    .end sparse-switch
.end method
