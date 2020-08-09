.class Lcom/car/dvr/ADAS/ADAS$4;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/ADAS;->initTianTong(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$4;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveCallBack(Ljava/lang/String;)V
    .locals 4

    const-string v1, "DVR.ADAS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TianTong ********** onActiveCallBack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "sys.adas.ok"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.adas.ok"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS$4;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v1, v1, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS$4;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v1}, Lcom/car/dvr/ADAS/ADAS;->access$300(Lcom/car/dvr/ADAS/ADAS;)V

    :cond_1
    return-void
.end method
