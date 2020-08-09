.class final Lcom/car/dvr/DMS/TianTongDMS$2;
.super Ljava/lang/Object;
.source "TianTongDMS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/DMS/TianTongDMS;->checkAuthorizeAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x2710

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/common/NetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/car/dvr/DMS/TianTongDMS;->getDmsTypeIdFromPreferences(Landroid/content/Context;)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v2, 0x1

    :cond_0
    :goto_1
    const-string v6, "DVR.TianTongDMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAuthorizeAsync finished. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS$2;->val$context:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.car.dms.authorized"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS$2;->val$context:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->isTianTongIMEI(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    and-int/lit8 v6, v4, 0x2

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/car/dvr/DMS/TianTongDMS$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/car/dvr/DMS/TianTongDMS;->saveDmsTypeIdToPreferences(Landroid/content/Context;I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    if-gez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x5

    if-gt v3, v6, :cond_0

    :cond_4
    const-wide/32 v6, 0xc350

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_5
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
