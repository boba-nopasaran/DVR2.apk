.class Lcom/car/dvr/ADAS/ADAS$6;
.super Ljava/lang/Thread;
.source "ADAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/ADAS;->sendAdasInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;

.field final synthetic val$packet:[B


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS;[B)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$6;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iput-object p2, p0, Lcom/car/dvr/ADAS/ADAS$6;->val$packet:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS$6;->val$packet:[B

    iget-object v4, p0, Lcom/car/dvr/ADAS/ADAS$6;->val$packet:[B

    array-length v4, v4

    const-string v5, "127.0.0.1"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/16 v6, 0x46d1

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
