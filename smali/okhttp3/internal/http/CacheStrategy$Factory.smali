.class public Lokhttp3/internal/http/CacheStrategy$Factory;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/Response;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/Request;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/Request;Lokhttp3/Response;)V
    .locals 9

    const/4 v8, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v8, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    iput-wide p1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->nowMillis:J

    iput-object p3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    iput-object p4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lokhttp3/Headers;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_7

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_1

    :cond_2
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v4, v8}, Lokhttp3/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_1

    :cond_5
    sget-object v5, Lokhttp3/internal/http/OkHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_1

    :cond_6
    sget-object v5, Lokhttp3/internal/http/OkHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    const-wide/16 v0, 0x0

    iget-object v8, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v10, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    iget v8, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    iget-wide v8, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v10, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long v6, v8, v10

    iget-wide v8, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->nowMillis:J

    iget-wide v10, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long v4, v8, v10

    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    const-wide/16 v6, 0x0

    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_1
    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    cmp-long v3, v0, v6

    if-lez v3, :cond_3

    :goto_2
    move-wide v6, v0

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_1

    :cond_3
    move-wide v0, v6

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v3}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_3
    iget-object v3, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    const-wide/16 v6, 0xa

    div-long v6, v0, v6

    goto :goto_0

    :cond_5
    iget-wide v4, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_3
.end method

.method private getCandidate()Lokhttp3/internal/http/CacheStrategy;
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    :goto_0
    return-object v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v19

    if-nez v19, :cond_1

    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lokhttp3/internal/http/CacheStrategy;->isCacheable(Lokhttp3/Response;Lokhttp3/Request;)Z

    move-result v19

    if-nez v19, :cond_2

    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lokhttp3/internal/http/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_3
    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v4

    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v10

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_5
    const-wide/16 v14, 0x0

    invoke-virtual {v9}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lokhttp3/CacheControl;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    :cond_6
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lokhttp3/CacheControl;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    :cond_7
    invoke-virtual/range {v18 .. v18}, Lokhttp3/CacheControl;->noCache()Z

    move-result v19

    if-nez v19, :cond_a

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v6

    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    const-string v19, "Warning"

    const-string v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_8
    const-wide/32 v16, 0x5265c00

    cmp-long v19, v4, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_9

    const-string v19, "Warning"

    const-string v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    :cond_9
    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v21

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    const-string v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    :cond_b
    :goto_1
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/http/CacheStrategy$Factory;->hasConditions(Lokhttp3/Request;)Z

    move-result v19

    if-eqz v19, :cond_e

    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    const-string v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/internal/http/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_e
    new-instance v19, Lokhttp3/internal/http/CacheStrategy;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lokhttp3/Request;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->cacheResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lokhttp3/internal/http/CacheStrategy;
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lokhttp3/internal/http/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/http/CacheStrategy;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/internal/http/CacheStrategy;->networkRequest:Lokhttp3/Request;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lokhttp3/internal/http/CacheStrategy$Factory;->request:Lokhttp3/Request;

    invoke-virtual {v1}, Lokhttp3/Request;->cacheControl()Lokhttp3/CacheControl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/CacheControl;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lokhttp3/internal/http/CacheStrategy;

    invoke-direct {v0, v2, v2, v2}, Lokhttp3/internal/http/CacheStrategy;-><init>(Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/internal/http/CacheStrategy$1;)V

    :cond_0
    return-object v0
.end method
