.class Lcom/car/dvr/ADAS/ADAS$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ADAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/ADAS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;


# direct methods
.method private constructor <init>(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$MyReceiver;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/dvr/ADAS/ADAS;Lcom/car/dvr/ADAS/ADAS$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/ADAS$MyReceiver;-><init>(Lcom/car/dvr/ADAS/ADAS;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.car.adasconfig"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "adas_config_x"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "adas_config_y"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v4, :cond_0

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/ADAS/ADAS$MyReceiver;->this$0:Lcom/car/dvr/ADAS/ADAS;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/car/dvr/ADAS/ADAS;->setConfigPoint(FF)V

    goto :goto_0
.end method
