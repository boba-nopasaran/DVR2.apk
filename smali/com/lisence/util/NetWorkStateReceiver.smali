.class public Lcom/lisence/util/NetWorkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkStateReceiver.java"


# instance fields
.field private a:Lcom/lisence/util/a;


# direct methods
.method public constructor <init>(Lcom/lisence/util/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_3

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    goto :goto_0

    :cond_3
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    move-object v3, v2

    move-object v4, v2

    move-object v1, v2

    :goto_1
    array-length v2, v6

    if-ge v5, v2, :cond_6

    aget-object v2, v6, v5

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MOBILE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_1

    :cond_4
    const-string v8, "WIFI"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_2

    :cond_5
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lisence/util/NetWorkStateReceiver;->a:Lcom/lisence/util/a;

    invoke-virtual {v0}, Lcom/lisence/util/a;->a()I

    goto/16 :goto_0

    :cond_9
    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method
