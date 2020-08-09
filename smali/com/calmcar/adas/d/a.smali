.class public final Lcom/calmcar/adas/d/a;
.super Ljava/lang/Object;
.source "AdasServicePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/calmcar/adas/d/a$a;
    }
.end annotation


# instance fields
.field public a:Landroid/os/HandlerThread;

.field public b:Landroid/os/Handler;

.field public c:Lcom/calmcar/adas/d/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/adas/d/a;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->b:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/d/a;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/calmcar/adas/d/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/d/a;->c:Lcom/calmcar/adas/d/a$a;

    return-void
.end method

.method private b()Lcom/calmcar/adas/d/a$a;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->c:Lcom/calmcar/adas/d/a$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "lane_car"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/calmcar/adas/d/a$1;

    iget-object v1, p0, Lcom/calmcar/adas/d/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/calmcar/adas/d/a$1;-><init>(Lcom/calmcar/adas/d/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/calmcar/adas/d/a;->b:Landroid/os/Handler;

    goto :goto_0
.end method
