.class public Lcom/amap/api/services/a/aw;
.super Ljava/lang/Object;
.source "TrafficSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/ITrafficSearch;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/services/a/aw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/aw;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aw;->c:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/aw;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/aw;)Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/aw;->b:Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/aw;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/services/a/aw;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public loadTrafficByRoad(Lcom/amap/api/services/traffic/RoadTrafficQuery;)Lcom/amap/api/services/traffic/TrafficStatusResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/aw;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    if-nez p1, :cond_0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amap/api/services/a/aw;->a:Ljava/lang/String;

    const-string v2, "loadTrafficByRoad"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/traffic/RoadTrafficQuery;->clone()Lcom/amap/api/services/traffic/RoadTrafficQuery;

    move-result-object v0

    new-instance v1, Lcom/amap/api/services/a/ac;

    iget-object v2, p0, Lcom/amap/api/services/a/aw;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ac;-><init>(Landroid/content/Context;Lcom/amap/api/services/traffic/RoadTrafficQuery;)V

    invoke-virtual {v1}, Lcom/amap/api/services/a/ac;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/traffic/TrafficStatusResult;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public loadTrafficByRoadAsyn(Lcom/amap/api/services/traffic/RoadTrafficQuery;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/aw$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/aw$1;-><init>(Lcom/amap/api/services/a/aw;Lcom/amap/api/services/traffic/RoadTrafficQuery;)V

    invoke-virtual {v0}, Lcom/amap/api/services/a/aw$1;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/amap/api/services/a/aw;->a:Ljava/lang/String;

    const-string v2, "loadTrafficByRoadAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTrafficSearchListener(Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/services/a/aw;->b:Lcom/amap/api/services/traffic/TrafficSearch$OnTrafficSearchListener;

    return-void
.end method
