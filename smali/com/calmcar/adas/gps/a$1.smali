.class final Lcom/calmcar/adas/gps/a$1;
.super Ljava/lang/Object;
.source "AdasLocManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/gps/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/gps/a;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/gps/a;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/gps/a;->a(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-static {v0}, Lcom/calmcar/adas/gps/a;->b(Lcom/calmcar/adas/gps/a;)Lcom/calmcar/adas/gps/LocationTickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-static {v0}, Lcom/calmcar/adas/gps/a;->b(Lcom/calmcar/adas/gps/a;)Lcom/calmcar/adas/gps/LocationTickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-static {v0}, Lcom/calmcar/adas/gps/a;->c(Lcom/calmcar/adas/gps/a;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-static {v0}, Lcom/calmcar/adas/gps/a;->d(Lcom/calmcar/adas/gps/a;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-static {v0}, Lcom/calmcar/adas/gps/a;->e(Lcom/calmcar/adas/gps/a;)D

    move-result-wide v6

    invoke-interface/range {v1 .. v7}, Lcom/calmcar/adas/gps/LocationTickListener;->onTickArrive(DDD)V

    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    invoke-static {v0}, Lcom/calmcar/adas/gps/a;->a(Lcom/calmcar/adas/gps/a;)I

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    invoke-static {v0, v2, v3}, Lcom/calmcar/adas/gps/a;->a(Lcom/calmcar/adas/gps/a;D)D

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$1;->a:Lcom/calmcar/adas/gps/a;

    const-wide v2, 0x40497fffac1d29dcL    # 50.99999

    invoke-static {v0, v2, v3}, Lcom/calmcar/adas/gps/a;->a(Lcom/calmcar/adas/gps/a;D)D

    :cond_1
    return-void
.end method
