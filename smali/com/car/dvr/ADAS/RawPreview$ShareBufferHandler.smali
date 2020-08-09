.class public Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;
.super Landroid/os/Handler;
.source "RawPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/RawPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareBufferHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/RawPreview;


# direct methods
.method public constructor <init>(Lcom/car/dvr/ADAS/RawPreview;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->this$0:Lcom/car/dvr/ADAS/RawPreview;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/car/dvr/DvrApplication;->getInstance()Lcom/car/dvr/DvrApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/car/dvr/AdasFragment;->adasIsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->this$0:Lcom/car/dvr/ADAS/RawPreview;

    invoke-static {v0}, Lcom/car/dvr/ADAS/RawPreview;->access$000(Lcom/car/dvr/ADAS/RawPreview;)Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->this$0:Lcom/car/dvr/ADAS/RawPreview;

    invoke-static {v0}, Lcom/car/dvr/ADAS/RawPreview;->access$100(Lcom/car/dvr/ADAS/RawPreview;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/car/dvr/ADAS/RawPreview$ShareBufferHandler;->this$0:Lcom/car/dvr/ADAS/RawPreview;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/RawPreview;->closeShareBuffer()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
