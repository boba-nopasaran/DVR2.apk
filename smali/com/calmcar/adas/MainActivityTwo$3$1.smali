.class final Lcom/calmcar/adas/MainActivityTwo$3$1;
.super Ljava/lang/Object;
.source "MainActivityTwo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/MainActivityTwo$3;->onTickArrive(DDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:D

.field private synthetic b:D

.field private synthetic c:D

.field private synthetic d:Lcom/calmcar/adas/MainActivityTwo$3;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/MainActivityTwo$3;DDD)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->d:Lcom/calmcar/adas/MainActivityTwo$3;

    iput-wide p2, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->a:D

    iput-wide p4, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->b:D

    iput-wide p6, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->c:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->d:Lcom/calmcar/adas/MainActivityTwo$3;

    iget-object v1, v0, Lcom/calmcar/adas/MainActivityTwo$3;->a:Lcom/calmcar/adas/MainActivityTwo;

    iget-wide v2, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->a:D

    iget-wide v4, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->b:D

    iget-wide v6, p0, Lcom/calmcar/adas/MainActivityTwo$3$1;->c:D

    invoke-virtual/range {v1 .. v7}, Lcom/calmcar/adas/MainActivityTwo;->a(DDD)V

    return-void
.end method
