.class final Lcom/adasplus/adas/AdasInterfaceImp$2;
.super Ljava/lang/Thread;
.source "AdasInterfaceImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adasplus/adas/AdasInterfaceImp;->entryDeviceCode(Landroid/content/Context;Lcom/adasplus/adas/IAdasEntryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/adasplus/adas/IAdasEntryListener;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adasplus/adas/IAdasEntryListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$callback:Lcom/adasplus/adas/IAdasEntryListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v13, -0x1

    const/4 v12, -0x2

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/adasplus/adas/util/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Cannot connect work!"

    invoke-static {v9}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$callback:Lcom/adasplus/adas/IAdasEntryListener;

    invoke-interface {v9, v13}, Lcom/adasplus/adas/IAdasEntryListener;->onResult(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/adasplus/adas/util/Util;->getDeviceCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v1, v0, 0x1

    const/4 v9, 0x5

    if-ge v0, v9, :cond_1

    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/adasplus/adas/util/Util;->getDeviceCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_1
    move v0, v1

    :cond_2
    const/4 v9, 0x4

    if-ne v0, v9, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Cannot get device code!"

    invoke-static {v9}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$callback:Lcom/adasplus/adas/IAdasEntryListener;

    invoke-interface {v9, v12}, Lcom/adasplus/adas/IAdasEntryListener;->onResult(I)V

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "IMEIS"

    invoke-interface {v5, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "timestamp"

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "merchantId"

    const-string v10, "pfd20161205"

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sign"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "pfd20161205"

    invoke-static {v11}, Lcom/adasplus/adas/util/Util;->getStrMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/adasplus/adas/util/Util;->getStrMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/adasplus/adas/util/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$callback:Lcom/adasplus/adas/IAdasEntryListener;

    invoke-interface {v9, v13}, Lcom/adasplus/adas/IAdasEntryListener;->onResult(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/adasplus/adas/adas/net/RequestManager;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/adas/net/RequestManager;

    move-result-object v9

    const-string v10, "http://androidsdk.adasplus.com:80/create_key"

    invoke-virtual {v9, v10, v5}, Lcom/adasplus/adas/adas/net/RequestManager;->getReponseByPostMethod(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "resultCode"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$callback:Lcom/adasplus/adas/IAdasEntryListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/adasplus/adas/IAdasEntryListener;->onResult(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    iget-object v9, p0, Lcom/adasplus/adas/AdasInterfaceImp$2;->val$callback:Lcom/adasplus/adas/IAdasEntryListener;

    const/4 v10, -0x2

    invoke-interface {v9, v10}, Lcom/adasplus/adas/IAdasEntryListener;->onResult(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
