.class final Lcom/calmcar/adas/d/a$1;
.super Landroid/os/Handler;
.source "AdasServicePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/d/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/d/a;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/d/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/d/a$1;->a:Lcom/calmcar/adas/d/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/calmcar/adas/d/a$1;->a:Lcom/calmcar/adas/d/a;

    iget-object v1, v0, Lcom/calmcar/adas/d/a;->c:Lcom/calmcar/adas/d/a$a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;

    invoke-interface {v1, v0}, Lcom/calmcar/adas/d/a$a;->a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V

    return-void
.end method
