.class public Lcom/amap/api/services/a/cx;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/cx$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/services/a/cx;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/services/a/cx;
    .locals 1

    sget-object v0, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/services/a/cx;

    invoke-direct {v0}, Lcom/amap/api/services/a/cx;-><init>()V

    sput-object v0, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    :cond_0
    sget-object v0, Lcom/amap/api/services/a/cx;->a:Lcom/amap/api/services/a/cx;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/cx;->b(Lcom/amap/api/services/a/dd;)V

    iget-object v0, p1, Lcom/amap/api/services/a/dd;->h:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/amap/api/services/a/da;

    iget v2, p1, Lcom/amap/api/services/a/dd;->f:I

    iget v3, p1, Lcom/amap/api/services/a/dd;->g:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/services/a/da;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->n()[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/services/a/da;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/services/a/df;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/amap/api/services/a/dd;->h:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/amap/api/services/a/dd;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/services/a/cx;->a(Lcom/amap/api/services/a/dd;Z)Lcom/amap/api/services/a/df;
    :try_end_0
    .catch Lcom/amap/api/services/a/ay; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amap/api/services/a/df;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "BaseNetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/bl;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/amap/api/services/a/dd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/ay;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/services/a/dd;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/amap/api/services/a/ay;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/services/a/ay;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method