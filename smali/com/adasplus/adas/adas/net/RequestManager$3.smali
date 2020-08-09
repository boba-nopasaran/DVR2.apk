.class Lcom/adasplus/adas/adas/net/RequestManager$3;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adasplus/adas/adas/net/RequestManager;->getResponseByGetMethod(Ljava/lang/String;Lcom/adasplus/adas/adas/net/IReponseListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adasplus/adas/adas/net/RequestManager;

.field final synthetic val$listener:Lcom/adasplus/adas/adas/net/IReponseListener;


# direct methods
.method constructor <init>(Lcom/adasplus/adas/adas/net/RequestManager;Lcom/adasplus/adas/adas/net/IReponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/adas/net/RequestManager$3;->this$0:Lcom/adasplus/adas/adas/net/RequestManager;

    iput-object p2, p0, Lcom/adasplus/adas/adas/net/RequestManager$3;->val$listener:Lcom/adasplus/adas/adas/net/IReponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/adasplus/adas/adas/net/RequestManager$3;->val$listener:Lcom/adasplus/adas/adas/net/IReponseListener;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adasplus/adas/adas/net/IReponseListener;->onFail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adasplus/adas/adas/net/RequestManager$3;->val$listener:Lcom/adasplus/adas/adas/net/IReponseListener;

    invoke-interface {v0}, Lcom/adasplus/adas/adas/net/IReponseListener;->afterRequest()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/adasplus/adas/adas/net/Result;

    invoke-direct {v0}, Lcom/adasplus/adas/adas/net/Result;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/adas/net/Result;->setData(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adasplus/adas/adas/net/RequestManager$3;->val$listener:Lcom/adasplus/adas/adas/net/IReponseListener;

    invoke-interface {v2, v0}, Lcom/adasplus/adas/adas/net/IReponseListener;->onSuccess(Lcom/adasplus/adas/adas/net/Result;)V

    iget-object v2, p0, Lcom/adasplus/adas/adas/net/RequestManager$3;->val$listener:Lcom/adasplus/adas/adas/net/IReponseListener;

    invoke-interface {v2}, Lcom/adasplus/adas/adas/net/IReponseListener;->afterRequest()V

    return-void
.end method
