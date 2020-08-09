.class final Lcom/calmcar/adas/MainActivityTwo$3;
.super Ljava/lang/Object;
.source "MainActivityTwo.java"

# interfaces
.implements Lcom/calmcar/adas/gps/LocationTickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/MainActivityTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/calmcar/adas/MainActivityTwo;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/MainActivityTwo;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/MainActivityTwo$3;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTickArrive(DDD)V
    .locals 9

    iget-object v8, p0, Lcom/calmcar/adas/MainActivityTwo$3;->a:Lcom/calmcar/adas/MainActivityTwo;

    new-instance v0, Lcom/calmcar/adas/MainActivityTwo$3$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/calmcar/adas/MainActivityTwo$3$1;-><init>(Lcom/calmcar/adas/MainActivityTwo$3;DDD)V

    invoke-virtual {v8, v0}, Lcom/calmcar/adas/MainActivityTwo;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
