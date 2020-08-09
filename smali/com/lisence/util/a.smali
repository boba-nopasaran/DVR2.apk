.class public final Lcom/lisence/util/a;
.super Ljava/lang/Object;
.source "LisenceManager.java"


# static fields
.field public static a:Z

.field private static d:Z


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Lcom/calmcar/adas/c/b;

.field private e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

.field private f:Landroid/content/Context;

.field private g:Landroid/telephony/TelephonyManager;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lisence/util/a;->d:Z

    sput-boolean v0, Lcom/lisence/util/a;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/lisence/util/a;->f:Landroid/content/Context;

    const-string v0, "adas_hmsl"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/lisence/util/a;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/calmcar/adas/c/b;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/lisence/util/a;->c:Lcom/calmcar/adas/c/b;

    iput-object p2, p0, Lcom/lisence/util/a;->f:Landroid/content/Context;

    const-string v0, "adas_hmsl"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/lisence/util/a;->c()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/lisence/util/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/lisence/util/a;->d()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v7

    goto :goto_0

    :cond_3
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v6

    move-object v3, v1

    move-object v4, v1

    :goto_1
    array-length v2, v8

    if-ge v5, v2, :cond_6

    aget-object v2, v8, v5

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MOBILE"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v3, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_1

    :cond_4
    const-string v10, "WIFI"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

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

    move v6, v7

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v7

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v7

    goto/16 :goto_0

    :cond_9
    move-object v2, v3

    move-object v3, v4

    goto :goto_2
.end method

.method private b()Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;
    .locals 1

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/lisence/util/a;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lisence/util/a;->g:Landroid/telephony/TelephonyManager;

    :try_start_0
    iget-object v0, p0, Lcom/lisence/util/a;->g:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "proIdAdas"

    const-string v2, "#"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "proIdAdas"

    iget-object v2, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/calmcar/adas/apiserver/AdasConf;->deptID:Ljava/lang/String;

    iput-object v0, p0, Lcom/lisence/util/a;->i:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    const-string v1, "4"

    invoke-interface {v0, v1}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_1
    const-string v0, "adas_hsml_log"

    const-string v1, "\u672a\u83b7\u53d6imei\u6743\u9650"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "###"

    iput-object v0, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 12

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lisence/util/a;->f:Landroid/content/Context;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    :goto_0
    if-nez v0, :cond_a

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lisence/util/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v6

    move-object v3, v1

    move-object v4, v1

    :goto_2
    array-length v2, v8

    if-ge v7, v2, :cond_6

    aget-object v2, v8, v7

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MOBILE"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v3, v4

    :goto_3
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_2

    :cond_4
    const-string v10, "WIFI"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_3

    :cond_5
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v5

    goto/16 :goto_0

    :cond_9
    move v0, v6

    goto/16 :goto_0

    :cond_a
    sget-boolean v0, Lcom/lisence/util/a;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/lisence/util/a;->d:Z

    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/calmcar/adas/a/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deptid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lisence/util/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&productID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_14

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/lisence/util/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_b
    const-string v0, "ActivationCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hsmlAdas"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/lisence/util/a;->c:Lcom/calmcar/adas/c/b;

    iget-object v2, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/calmcar/adas/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    if-eqz v1, :cond_c

    if-nez v0, :cond_e

    const/4 v1, 0x1

    sput-boolean v1, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    iget-object v1, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imei"

    iget-object v3, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_c
    :goto_4
    const-string v1, "adas_hsml_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6fc0\u6d3b\u6210\u529f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    :goto_5
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/lisence/util/a;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_3
    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "01"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/lisence/util/a;->a:Z

    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    const-string v2, "5"

    invoke-interface {v1, v2}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_f
    const-string v1, "adas_hsml_log"

    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u9519\u8bef"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :cond_10
    :try_start_5
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    const-string v0, "adas_hsml_log"

    const-string v1, "0102\u672a\u7ecf\u6388\u6743\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    const-string v1, "2"

    invoke-interface {v0, v1}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "adas_hsml_log"

    const-string v1, "006:\u672a\u7ecf\u6388\u6743\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    const-string v0, "adas_hsml_log"

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lisence/util/a;->a:Z

    const-string v0, "adas_hsml_log"

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    const-string v1, "3"

    invoke-interface {v0, v1}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :cond_15
    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 4

    const/4 v0, -0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lisence/util/a;->c()V

    iget-object v1, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "imei"

    const-string v3, "###"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "###"

    iget-object v3, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "###"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/lisence/util/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "hsmlAdas"

    const-string v3, "000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/lisence/util/a;->c:Lcom/calmcar/adas/c/b;

    iget-object v2, p0, Lcom/lisence/util/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/lisence/util/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/calmcar/adas/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "adas_hsml_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6fc0\u6d3b\u6210\u529f----"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/calmcar/adas/apiserver/AdasConf;->IS_ACTIVE:Z

    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lisence/util/a$1;

    invoke-direct {v2, p0}, Lcom/lisence/util/a$1;-><init>(Lcom/lisence/util/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lisence/util/a$2;

    invoke-direct {v2, p0}, Lcom/lisence/util/a$2;-><init>(Lcom/lisence/util/a;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lisence/util/a;->e:Lcom/calmcar/adas/apiserver/out/ActiveSuccessListener;

    return-void
.end method
