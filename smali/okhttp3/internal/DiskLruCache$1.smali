.class Lokhttp3/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v5}, Lokhttp3/internal/DiskLruCache;->access$000(Lokhttp3/internal/DiskLruCache;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    iget-object v3, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v3}, Lokhttp3/internal/DiskLruCache;->access$100(Lokhttp3/internal/DiskLruCache;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$200(Lokhttp3/internal/DiskLruCache;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$400(Lokhttp3/internal/DiskLruCache;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    invoke-static {v2}, Lokhttp3/internal/DiskLruCache;->access$500(Lokhttp3/internal/DiskLruCache;)V

    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lokhttp3/internal/DiskLruCache;->access$602(Lokhttp3/internal/DiskLruCache;I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lokhttp3/internal/DiskLruCache$1;->this$0:Lokhttp3/internal/DiskLruCache;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lokhttp3/internal/DiskLruCache;->access$302(Lokhttp3/internal/DiskLruCache;Z)Z

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
