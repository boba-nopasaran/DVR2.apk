.class Lcom/car/dvr/ADAS/SVDraw$3;
.super Ljava/lang/Object;
.source "SVDraw.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/SVDraw;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/SVDraw;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/SVDraw;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/SVDraw$3;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw$3;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v0}, Lcom/car/dvr/ADAS/SVDraw;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/car/dvr/AdasFragment;->setADASCalibration(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw$3;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw$3;->this$0:Lcom/car/dvr/ADAS/SVDraw;

    invoke-virtual {v1}, Lcom/car/dvr/ADAS/SVDraw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/car/dvr/ADAS/SVDraw;->access$702(Lcom/car/dvr/ADAS/SVDraw;Z)Z

    return-void
.end method
