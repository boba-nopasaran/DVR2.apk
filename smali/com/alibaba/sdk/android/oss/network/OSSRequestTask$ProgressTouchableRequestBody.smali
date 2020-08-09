.class Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;
.super Lokhttp3/RequestBody;
.source "OSSRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressTouchableRequestBody"
.end annotation


# static fields
.field private static final SEGMENT_SIZE:I = 0x800


# instance fields
.field private bufferedSink:Lokio/BufferedSink;

.field private callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private inputStream:Ljava/io/InputStream;

.field final synthetic this$0:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;Ljava/io/File;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->this$0:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->file:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->this$0:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    iput-object p6, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;[BLjava/lang/String;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->this$0:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->data:[B

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    array-length v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->file:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->file:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v10

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    sub-long v8, v0, v2

    const-wide/16 v0, 0x800

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object v0

    invoke-interface {v10, v0, v12, v13}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_6

    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Lokio/Source;->close()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->data:[B

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v10

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v10

    goto :goto_0

    :cond_6
    add-long/2addr v2, v6

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->callback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->this$0:Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;->access$000(Lcom/alibaba/sdk/android/oss/network/OSSRequestTask;)Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getRequest()Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    move-result-object v1

    iget-wide v4, p0, Lcom/alibaba/sdk/android/oss/network/OSSRequestTask$ProgressTouchableRequestBody;->contentLength:J

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    goto :goto_1
.end method
