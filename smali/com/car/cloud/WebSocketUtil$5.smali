.class Lcom/car/cloud/WebSocketUtil$5;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/cloud/WebSocketUtil;->getChatMsgList(Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/cloud/WebSocketUtil;

.field final synthetic val$count:I

.field final synthetic val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

.field final synthetic val$other:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JILcom/car/cloud/WebSocketUtil$MsgListener;)V
    .locals 1

    iput-object p1, p0, Lcom/car/cloud/WebSocketUtil$5;->this$0:Lcom/car/cloud/WebSocketUtil;

    iput-object p2, p0, Lcom/car/cloud/WebSocketUtil$5;->val$other:Ljava/lang/String;

    iput-wide p3, p0, Lcom/car/cloud/WebSocketUtil$5;->val$timestamp:J

    iput p5, p0, Lcom/car/cloud/WebSocketUtil$5;->val$count:I

    iput-object p6, p0, Lcom/car/cloud/WebSocketUtil$5;->val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/car/cloud/WebSocketUtil$5;->this$0:Lcom/car/cloud/WebSocketUtil;

    iget-object v1, p0, Lcom/car/cloud/WebSocketUtil$5;->val$other:Ljava/lang/String;

    iget-wide v2, p0, Lcom/car/cloud/WebSocketUtil$5;->val$timestamp:J

    iget v4, p0, Lcom/car/cloud/WebSocketUtil$5;->val$count:I

    const-string v5, "text"

    iget-object v6, p0, Lcom/car/cloud/WebSocketUtil$5;->val$l:Lcom/car/cloud/WebSocketUtil$MsgListener;

    invoke-static/range {v0 .. v6}, Lcom/car/cloud/WebSocketUtil;->access$600(Lcom/car/cloud/WebSocketUtil;Ljava/lang/String;JILjava/lang/String;Lcom/car/cloud/WebSocketUtil$MsgListener;)V

    return-void
.end method