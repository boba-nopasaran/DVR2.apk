.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static head:Lokio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokio/AsyncTimeout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized awaitTimeout()Lokio/AsyncTimeout;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/32 v10, 0xf4240

    const/4 v1, 0x0

    const-class v6, Lokio/AsyncTimeout;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v7, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_0

    const-class v7, Lokio/AsyncTimeout;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-direct {v0, v8, v9}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_1

    const-wide/32 v8, 0xf4240

    div-long v2, v4, v8

    mul-long v8, v2, v10

    sub-long/2addr v4, v8

    const-class v7, Lokio/AsyncTimeout;

    long-to-int v8, v4

    invoke-virtual {v7, v2, v3, v8}, Ljava/lang/Object;->wait(JI)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v7, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v7, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 3

    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_1
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private remainingNanos(J)J
    .locals 3

    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 11

    const-wide/16 v8, 0x0

    const-class v6, Lokio/AsyncTimeout;

    monitor-enter v6

    :try_start_0
    sget-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v3, :cond_0

    new-instance v3, Lokio/AsyncTimeout;

    invoke-direct {v3}, Lokio/AsyncTimeout;-><init>()V

    sput-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    new-instance v3, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v3}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v3}, Lokio/AsyncTimeout$Watchdog;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    cmp-long v3, p1, v8

    if-eqz v3, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-static {p1, p2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v8, v0

    iput-wide v8, p0, Lokio/AsyncTimeout;->timeoutAt:J

    :goto_0
    invoke-direct {p0, v0, v1}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_1
    iget-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    invoke-direct {v3, v0, v1}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-gez v3, :cond_6

    :cond_1
    iget-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object p0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    sget-object v3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v2, v3, :cond_2

    const-class v3, Lokio/AsyncTimeout;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    return-void

    :cond_3
    cmp-long v3, p1, v8

    if-eqz v3, :cond_4

    add-long v8, v0, p1

    :try_start_1
    iput-wide v8, p0, Lokio/AsyncTimeout;->timeoutAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_4
    if-eqz p3, :cond_5

    :try_start_2
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v8

    iput-wide v8, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_6
    iget-object v2, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final enter()V
    .locals 6

    iget-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Unbalanced enter/exit"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    invoke-static {p0, v2, v3, v0}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    goto :goto_0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method final exit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    goto :goto_0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1

    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method