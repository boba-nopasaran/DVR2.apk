.class Lcom/car/dvr/ADAS/SVDraw$DrawThread;
.super Ljava/lang/Thread;
.source "SVDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/SVDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/SVDraw;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/SVDraw;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/SVDraw$DrawThread;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw$DrawThread;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v0}, Lcom/car/dvr/ADAS/SVDraw;->access$800(Lcom/car/dvr/ADAS/SVDraw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw$DrawThread;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v0}, Lcom/car/dvr/ADAS/SVDraw;->access$800(Lcom/car/dvr/ADAS/SVDraw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
