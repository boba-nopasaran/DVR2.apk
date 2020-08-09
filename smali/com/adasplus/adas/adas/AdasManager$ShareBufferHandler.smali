.class public Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;
.super Landroid/os/Handler;
.source "AdasManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adasplus/adas/adas/AdasManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareBufferHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adasplus/adas/adas/AdasManager;


# direct methods
.method public constructor <init>(Lcom/adasplus/adas/adas/AdasManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->this$0:Lcom/adasplus/adas/adas/AdasManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->this$0:Lcom/adasplus/adas/adas/AdasManager;

    invoke-static {v0}, Lcom/adasplus/adas/adas/AdasManager;->access$000(Lcom/adasplus/adas/adas/AdasManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adasplus/adas/adas/AdasManager$ShareBufferHandler;->this$0:Lcom/adasplus/adas/adas/AdasManager;

    invoke-virtual {v0}, Lcom/adasplus/adas/adas/AdasManager;->closeShareBuffer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
