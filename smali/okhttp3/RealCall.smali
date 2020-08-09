.class final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$ApplicationInterceptorChain;,
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field volatile canceled:Z

.field private final client:Lokhttp3/OkHttpClient;

.field engine:Lokhttp3/internal/http/HttpEngine;

.field private executed:Z

.field originalRequest:Lokhttp3/Request;


# direct methods
.method protected constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-void
.end method

.method static synthetic access$100(Lokhttp3/RealCall;Z)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain(Z)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/RealCall;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lokhttp3/RealCall;)Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private getResponseWithInterceptorChain(Z)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/RealCall$ApplicationInterceptorChain;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-direct {v0, p0, v1, v2, p1}, Lokhttp3/RealCall$ApplicationInterceptorChain;-><init>(Lokhttp3/RealCall;ILokhttp3/Request;Z)V

    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    return-object v1
.end method

.method private toLoggableString()Ljava/lang/String;
    .locals 4

    iget-boolean v2, p0, Lokhttp3/RealCall;->canceled:Z

    if-eqz v2, :cond_0

    const-string v1, "canceled call"

    :goto_0
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    const-string v3, "/..."

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v1, "call"

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/RealCall;->canceled:Z

    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v0}, Lokhttp3/internal/http/HttpEngine;->cancel()V

    :cond_0
    return-void
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/RealCall;->enqueue(Lokhttp3/Callback;Z)V

    return-void
.end method

.method enqueue(Lokhttp3/Callback;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;ZLokhttp3/RealCall$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lokhttp3/RealCall;->executed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already Executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lokhttp3/RealCall;->executed:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain(Z)Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/Call;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/Call;)V

    return-object v0
.end method

.method getResponse(Lokhttp3/Request;Z)Lokhttp3/Response;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v19

    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string v2, "Content-Type"

    invoke-virtual {v14}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_0
    invoke-virtual {v11}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_3

    const-string v2, "Content-Length"

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    :goto_0
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    :cond_1
    new-instance v2, Lokhttp3/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    const/16 v17, 0x0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lokhttp3/RealCall;->canceled:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v2, "Transfer-Encoding"

    const-string v3, "chunked"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v2, "Content-Length"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_4
    const/16 v18, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->sendRequest()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Lokhttp3/internal/http/RequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lokhttp3/internal/http/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->getResponse()Lokhttp3/Response;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->followUpRequest()Lokhttp3/Request;

    move-result-object v16

    if-nez v16, :cond_a

    if-nez p2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->releaseStreamAllocation()V

    :cond_6
    return-object v10

    :catch_0
    move-exception v15

    :try_start_1
    invoke-virtual {v15}, Lokhttp3/internal/http/RequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v3}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    :cond_7
    throw v2

    :catch_1
    move-exception v15

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v15}, Lokhttp3/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lokhttp3/internal/http/HttpEngine;

    move-result-object v20

    if-eqz v20, :cond_8

    const/16 v18, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    goto/16 :goto_1

    :cond_8
    :try_start_3
    invoke-virtual {v15}, Lokhttp3/internal/http/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    :catch_2
    move-exception v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lokhttp3/internal/http/HttpEngine;->recover(Ljava/io/IOException;Lokio/Sink;)Lokhttp3/internal/http/HttpEngine;

    move-result-object v20

    if-eqz v20, :cond_9

    const/16 v18, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    goto/16 :goto_1

    :cond_9
    :try_start_4
    throw v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v2}, Lokhttp3/internal/http/HttpEngine;->close()Lokhttp3/internal/http/StreamAllocation;

    move-result-object v8

    add-int/lit8 v17, v17, 0x1

    const/16 v2, 0x14

    move/from16 v0, v17

    if-le v0, v2, :cond_b

    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual/range {v16 .. v16}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/internal/http/HttpEngine;->sameConnection(Lokhttp3/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v8}, Lokhttp3/internal/http/StreamAllocation;->release()V

    const/4 v8, 0x0

    :cond_c
    move-object/from16 p1, v16

    new-instance v2, Lokhttp3/internal/http/HttpEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lokhttp3/internal/http/HttpEngine;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;ZZZLokhttp3/internal/http/StreamAllocation;Lokhttp3/internal/http/RetryableSink;Lokhttp3/Response;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lokhttp3/RealCall;->engine:Lokhttp3/internal/http/HttpEngine;

    goto/16 :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/RealCall;->canceled:Z

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
