.class Lcom/car/dvr/ADAS/SVDraw$2;
.super Landroid/database/ContentObserver;
.source "SVDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/SVDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/SVDraw;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/SVDraw;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/SVDraw$2;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw$2;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw$2;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v1}, Lcom/car/dvr/ADAS/SVDraw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->access$702(Lcom/car/dvr/ADAS/SVDraw;Z)Z

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw$2;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v0}, Lcom/car/dvr/ADAS/SVDraw;->access$700(Lcom/car/dvr/ADAS/SVDraw;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    const-string v0, "DVR.ADAS.SVDraw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange mDrawAdasCalibration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw$2;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-static {v2}, Lcom/car/dvr/ADAS/SVDraw;->access$700(Lcom/car/dvr/ADAS/SVDraw;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
