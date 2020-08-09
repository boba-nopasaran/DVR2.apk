.class public final Lcom/calmcar/adas/gps/a;
.super Ljava/lang/Object;
.source "AdasLocManager.java"


# instance fields
.field a:Landroid/location/LocationManager;

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/calmcar/adas/gps/LocationTickListener;

.field private e:Landroid/location/LocationManager;

.field private f:D

.field private g:D

.field private h:D

.field private i:I

.field private j:D

.field private k:J

.field private l:I

.field private m:D

.field private n:D

.field private o:Landroid/location/LocationListener;

.field private p:Landroid/location/GpsStatus$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/calmcar/adas/gps/a;->l:I

    iput-object p1, p0, Lcom/calmcar/adas/gps/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/calmcar/adas/gps/a;D)D
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/gps/a;->j:D

    return-wide p1
.end method

.method static synthetic a(Lcom/calmcar/adas/gps/a;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/calmcar/adas/gps/a;->l:I

    return v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/gps/a;->l:I

    return-void
.end method

.method private a(DD)Z
    .locals 3

    iget-wide v0, p0, Lcom/calmcar/adas/gps/a;->n:D

    cmpl-double v0, v0, p3

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/calmcar/adas/gps/a;->m:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iput-wide p1, p0, Lcom/calmcar/adas/gps/a;->m:D

    iput-wide p3, p0, Lcom/calmcar/adas/gps/a;->n:D

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/calmcar/adas/gps/a;)Lcom/calmcar/adas/gps/LocationTickListener;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->d:Lcom/calmcar/adas/gps/LocationTickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/calmcar/adas/gps/a;)D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/gps/a;->f:D

    return-wide v0
.end method

.method static synthetic d(Lcom/calmcar/adas/gps/a;)D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/gps/a;->g:D

    return-wide v0
.end method

.method static synthetic e(Lcom/calmcar/adas/gps/a;)D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    return-wide v0
.end method

.method private e()Lcom/calmcar/adas/gps/LocationTickListener;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->d:Lcom/calmcar/adas/gps/LocationTickListener;

    return-object v0
.end method

.method private f()Z
    .locals 2

    iget v0, p0, Lcom/calmcar/adas/gps/a;->l:I

    sget v1, Lcom/calmcar/adas/a/a;->c:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    new-instance v0, Lcom/calmcar/adas/gps/a$1;

    invoke-direct {v0, p0}, Lcom/calmcar/adas/gps/a$1;-><init>(Lcom/calmcar/adas/gps/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    new-instance v0, Lcom/calmcar/adas/gps/a$2;

    invoke-direct {v0, p0}, Lcom/calmcar/adas/gps/a$2;-><init>(Lcom/calmcar/adas/gps/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    :cond_1
    return-void
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    iget-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    return-wide v0
.end method

.method public final a(D)V
    .locals 1

    iput-wide p1, p0, Lcom/calmcar/adas/gps/a;->j:D

    return-void
.end method

.method protected final a(Landroid/location/Location;)V
    .locals 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    if-eqz p1, :cond_2

    iput v4, p0, Lcom/calmcar/adas/gps/a;->l:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/calmcar/adas/gps/a;->f:D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/calmcar/adas/gps/a;->g:D

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    iget-wide v6, p0, Lcom/calmcar/adas/gps/a;->f:D

    iget-wide v8, p0, Lcom/calmcar/adas/gps/a;->g:D

    iget-wide v10, p0, Lcom/calmcar/adas/gps/a;->n:D

    cmpl-double v10, v10, v8

    if-nez v10, :cond_1

    iget-wide v10, p0, Lcom/calmcar/adas/gps/a;->m:D

    cmpl-double v10, v10, v6

    if-nez v10, :cond_1

    :goto_0
    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/calmcar/adas/gps/a;->h:D

    cmpl-double v4, v4, v2

    if-nez v4, :cond_3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    :goto_1
    iput-wide v0, p0, Lcom/calmcar/adas/gps/a;->h:D

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    :goto_2
    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    if-nez v0, :cond_0

    const-wide v0, 0x40497fffac1d29dcL    # 50.99999

    iput-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    :cond_0
    return-void

    :cond_1
    iput-wide v6, p0, Lcom/calmcar/adas/gps/a;->m:D

    iput-wide v8, p0, Lcom/calmcar/adas/gps/a;->n:D

    move v4, v5

    goto :goto_0

    :cond_2
    iput v5, p0, Lcom/calmcar/adas/gps/a;->l:I

    iput-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/calmcar/adas/gps/LocationTickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/gps/a;->d:Lcom/calmcar/adas/gps/LocationTickListener;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/calmcar/adas/gps/a;->l:I

    return v0
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->c:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    new-instance v0, Lcom/calmcar/adas/gps/a$1;

    invoke-direct {v0, p0}, Lcom/calmcar/adas/gps/a$1;-><init>(Lcom/calmcar/adas/gps/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    new-instance v0, Lcom/calmcar/adas/gps/a$2;

    invoke-direct {v0, p0}, Lcom/calmcar/adas/gps/a$2;-><init>(Lcom/calmcar/adas/gps/a;)V

    iput-object v0, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    :cond_1
    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->RUN_MODE:I

    if-nez v0, :cond_2

    const-wide v0, 0x40497fffac1d29dcL    # 50.99999

    iput-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    :goto_0
    return-void

    :cond_2
    const-wide v0, 0x400ccccccccccccdL    # 3.6

    iput-wide v0, p0, Lcom/calmcar/adas/gps/a;->j:D

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/calmcar/adas/gps/a;->o:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/calmcar/adas/gps/a;->a:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/calmcar/adas/gps/a;->p:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_0
    return-void
.end method
