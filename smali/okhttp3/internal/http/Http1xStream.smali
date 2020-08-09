.class public final Lokhttp3/internal/http/Http1xStream;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lokhttp3/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;,
        Lokhttp3/internal/http/Http1xStream$ChunkedSource;,
        Lokhttp3/internal/http/Http1xStream$FixedLengthSource;,
        Lokhttp3/internal/http/Http1xStream$AbstractSource;,
        Lokhttp3/internal/http/Http1xStream$ChunkedSink;,
        Lokhttp3/internal/http/Http1xStream$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private httpEngine:Lokhttp3/internal/http/HttpEngine;

.field private final sink:Lokio/BufferedSink;

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private final streamAllocation:Lokhttp3/internal/http/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    iput-object p2, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$400(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$500(Lokhttp3/internal/http/Http1xStream;)I
    .locals 1

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    return v0
.end method

.method static synthetic access$502(Lokhttp3/internal/http/Http1xStream;I)I
    .locals 0

    iput p1, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    return p1
.end method

.method static synthetic access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$700(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/internal/http/StreamAllocation;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    return-object v0
.end method

.method private detachTimeout(Lokio/ForwardingTimeout;)V
    .locals 2

    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object v0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method private getTransferStream(Lokhttp3/Response;)Lokio/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lokhttp3/internal/http/HttpEngine;->hasBody(Lokhttp3/Response;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "chunked"

    const-string v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->httpEngine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {p0, v2}, Lokhttp3/internal/http/Http1xStream;->newChunkedSource(Lokhttp3/internal/http/HttpEngine;)Lokio/Source;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lokhttp3/internal/http/OkHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->newUnknownLengthSource()Lokio/Source;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/http/StreamAllocation;->connection()Lokhttp3/internal/io/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/io/RealConnection;->cancel()V

    :cond_0
    return-void
.end method

.method public createRequestBody(Lokhttp3/Request;J)Lokio/Sink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->newChunkedSink()Lokio/Sink;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSink(J)Lokio/Sink;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newChunkedSink()Lokio/Sink;
    .locals 3

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http1xStream$ChunkedSink;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lokhttp3/internal/http/HttpEngine;)Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/HttpEngine;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .locals 3

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lokhttp3/internal/http/Http1xStream;JLokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lokio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/http/StreamAllocation;->noNewStreams()V

    new-instance v0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream;->getTransferStream(Lokhttp3/Response;)Lokio/Source;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/Headers;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lokhttp3/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public readResponse()Lokhttp3/Response$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_0
    iget-object v4, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v3

    new-instance v4, Lokhttp3/Response$Builder;

    invoke-direct {v4}, Lokhttp3/Response$Builder;-><init>()V

    iget-object v5, v3, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/Protocol;

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v4

    iget v5, v3, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v4

    iget-object v5, v3, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->readHeaders()Lokhttp3/Headers;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object v2

    iget v4, v3, Lokhttp3/internal/http/StatusLine;->code:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    const/4 v4, 0x4

    iput v4, p0, Lokhttp3/internal/http/Http1xStream;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end of stream on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/http/StreamAllocation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public readResponseHeaders()Lokhttp3/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->readResponse()Lokhttp3/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHttpEngine(Lokhttp3/internal/http/HttpEngine;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream;->httpEngine:Lokhttp3/internal/http/HttpEngine;

    return-void
.end method

.method public writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v2, 0x1

    iput v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    return-void
.end method

.method public writeRequestBody(Lokhttp3/internal/http/RetryableSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RetryableSink;->writeToSocket(Lokio/Sink;)V

    return-void
.end method

.method public writeRequestHeaders(Lokhttp3/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream;->httpEngine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->writingRequestHeaders()V

    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream;->httpEngine:Lokhttp3/internal/http/HttpEngine;

    invoke-virtual {v1}, Lokhttp3/internal/http/HttpEngine;->getConnection()Lokhttp3/Connection;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    invoke-static {p1, v1}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http/Http1xStream;->writeRequest(Lokhttp3/Headers;Ljava/lang/String;)V

    return-void
.end method
