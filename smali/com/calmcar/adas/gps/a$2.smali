.class final Lcom/calmcar/adas/gps/a$2;
.super Ljava/lang/Object;
.source "AdasLocManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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

    iput-object p1, p0, Lcom/calmcar/adas/gps/a$2;->a:Lcom/calmcar/adas/gps/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGpsStatusChanged(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$2;->a:Lcom/calmcar/adas/gps/a;

    iget-object v0, v0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/gps/a$2;->a:Lcom/calmcar/adas/gps/a;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, v1, Lcom/calmcar/adas/gps/a;->b:Ljava/util/Iterator;

    :goto_0
    iget-object v0, p0, Lcom/calmcar/adas/gps/a$2;->a:Lcom/calmcar/adas/gps/a;

    iget-object v0, v0, Lcom/calmcar/adas/gps/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a$2;->a:Lcom/calmcar/adas/gps/a;

    iget-object v0, v0, Lcom/calmcar/adas/gps/a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    goto :goto_0

    :cond_0
    return-void
.end method
