.class Lcom/adasplus/adas/adas/net/RequestManager$2;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adasplus/adas/adas/net/RequestManager;->loadImage(Ljava/lang/String;Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adasplus/adas/adas/net/RequestManager;

.field final synthetic val$listener:Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;


# direct methods
.method constructor <init>(Lcom/adasplus/adas/adas/net/RequestManager;Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/adas/net/RequestManager$2;->this$0:Lcom/adasplus/adas/adas/net/RequestManager;

    iput-object p2, p0, Lcom/adasplus/adas/adas/net/RequestManager$2;->val$listener:Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/adas/net/RequestManager$2;->val$listener:Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;

    invoke-interface {v0}, Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;->onError()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x1000

    new-array v1, v5, [B

    const/4 v4, -0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v5, p0, Lcom/adasplus/adas/adas/net/RequestManager$2;->val$listener:Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;

    invoke-interface {v5, v2}, Lcom/adasplus/adas/adas/net/RequestManager$ImageListener;->onSuccess([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method
