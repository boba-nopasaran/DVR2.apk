.class Lcom/car/dvr/ADAS/ADAS$9;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/ADAS;->checkAdasTypeAsync()V
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

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->access$2400(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v6, 0x0

    sput v6, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    sget v7, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    invoke-virtual {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->saveAdasTypeIdToPreferences(I)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2700(Lcom/car/dvr/ADAS/ADAS;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/car/dvr/ADAS/ADAS$9$1;

    invoke-direct {v7, p0}, Lcom/car/dvr/ADAS/ADAS$9$1;-><init>(Lcom/car/dvr/ADAS/ADAS$9;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_1
    const-string v6, "DVR.ADAS"

    const-string v7, "checkAdasTypeAsync finished."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->isTianTongIMEI(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    and-int/lit8 v6, v4, 0x2

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v6, v6, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Lcom/car/dvr/DMS/TianTongDMS;->saveDmsTypeIdToPreferences(Landroid/content/Context;I)V

    :cond_2
    and-int/lit8 v6, v4, 0x1

    if-lez v6, :cond_0

    sput v8, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    sget v7, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    invoke-virtual {v6, v7}, Lcom/car/dvr/ADAS/ADAS;->saveAdasTypeIdToPreferences(I)V

    iget-object v6, p0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v6}, Lcom/car/dvr/ADAS/ADAS;->access$2700(Lcom/car/dvr/ADAS/ADAS;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/car/dvr/ADAS/ADAS$9$2;

    invoke-direct {v7, p0}, Lcom/car/dvr/ADAS/ADAS$9$2;-><init>(Lcom/car/dvr/ADAS/ADAS$9;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    if-ltz v2, :cond_4

    if-gez v4, :cond_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x5

    if-gt v3, v6, :cond_0

    :cond_5
    const-wide/32 v6, 0xea60

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method
