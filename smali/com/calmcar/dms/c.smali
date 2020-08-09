.class public final Lcom/calmcar/dms/c;
.super Ljava/lang/Object;
.source "LicenceManager.java"


# static fields
.field public static a:Z

.field private static e:Z

.field private static f:Z


# instance fields
.field b:Lcom/calmcar/dms/ActiveSuccessListener;

.field private c:Landroid/content/SharedPreferences;

.field private d:Lcom/calmcar/dms/Sdk;

.field private g:Landroid/content/Context;

.field private h:Landroid/telephony/TelephonyManager;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->e:Z

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/calmcar/dms/c;->d:Lcom/calmcar/dms/Sdk;

    iput-object p1, p0, Lcom/calmcar/dms/c;->g:Landroid/content/Context;

    const-string v0, "Dms_hmsl"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/calmcar/dms/c;->c()V

    return-void
.end method

.method public constructor <init>(Lcom/calmcar/dms/Sdk;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/calmcar/dms/c;->d:Lcom/calmcar/dms/Sdk;

    iput-object p1, p0, Lcom/calmcar/dms/c;->d:Lcom/calmcar/dms/Sdk;

    iput-object p2, p0, Lcom/calmcar/dms/c;->g:Landroid/content/Context;

    const-string v0, "Dms_hmsl"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/calmcar/dms/c;->c()V

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

.method private a(Lcom/calmcar/dms/ActiveSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    return-void
.end method

.method static synthetic a(Lcom/calmcar/dms/c;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/dms/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/calmcar/dms/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/calmcar/dms/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/calmcar/dms/c;->e:Z

    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/calmcar/dms/a;->a:Ljava/lang/String;

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

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deptid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/calmcar/dms/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&productID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

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

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/calmcar/dms/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const-string v0, "ActivationCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hsmlDms"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->d:Lcom/calmcar/dms/Sdk;

    iget-object v2, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/calmcar/dms/Sdk;->dmsPassNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v1, :cond_3

    if-nez v0, :cond_6

    const/4 v1, 0x1

    sput-boolean v1, Lcom/calmcar/dms/b;->d:Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imei"

    iget-object v3, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v1, "Dms_dms_hsml_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6fc0\u6d3b\u6210\u529f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    sput-boolean v4, Lcom/calmcar/dms/c;->e:Z

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "01"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/calmcar/dms/c;->a:Z

    const-string v1, "Dms_dms_hsml_log"

    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u9519\u8bef"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v2, "5"

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    :try_start_2
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_9
    const-string v0, "Dms_dms_hsml_log"

    const-string v1, "\u672a\u7ecf\u6388\u6743\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v1, "2"

    invoke-interface {v0, v1}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    const-string v0, "Dms_dms_hsml_log"

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v1, "3"

    invoke-interface {v0, v1}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

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

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

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

    goto/16 :goto_0

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

.method private b()Lcom/calmcar/dms/ActiveSuccessListener;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/calmcar/dms/c;->g:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/calmcar/dms/c;->h:Landroid/telephony/TelephonyManager;

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/dms/c;->h:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    sput-object v0, Lcom/calmcar/dms/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    const-string v1, "proIdDms"

    const-string v2, "#"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "proIdDms"

    iget-object v2, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/calmcar/dms/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/calmcar/dms/c;->j:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v1, "4"

    invoke-interface {v0, v1}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_1
    const-string v0, "Dms_dms_hsml_log"

    const-string v1, "\u672a\u83b7\u53d6imei\u6743\u9650"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "###"

    iput-object v0, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    const-string v0, "###"

    iput-object v0, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/dms/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/calmcar/dms/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/calmcar/dms/c;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/calmcar/dms/c;->e:Z

    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/calmcar/dms/a;->a:Ljava/lang/String;

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

    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deptid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/calmcar/dms/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&productID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

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

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/calmcar/dms/c;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "03"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "04"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    const-string v0, "ActivationCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "hsmlDms"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->d:Lcom/calmcar/dms/Sdk;

    iget-object v2, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/calmcar/dms/Sdk;->dmsPassNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v1, :cond_3

    if-nez v0, :cond_6

    const/4 v1, 0x1

    sput-boolean v1, Lcom/calmcar/dms/b;->d:Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "imei"

    iget-object v3, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v1, "Dms_dms_hsml_log"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6fc0\u6d3b\u6210\u529f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    sput-boolean v4, Lcom/calmcar/dms/c;->e:Z

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "01"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/calmcar/dms/c;->a:Z

    const-string v1, "Dms_dms_hsml_log"

    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u9519\u8bef"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v2, "5"

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    :try_start_2
    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_9
    const-string v0, "Dms_dms_hsml_log"

    const-string v1, "\u672a\u7ecf\u6388\u6743\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v1, "2"

    invoke-interface {v0, v1}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    const-string v0, "Dms_dms_hsml_log"

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef\uff0c\u6fc0\u6d3b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    const-string v1, "3"

    invoke-interface {v0, v1}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/calmcar/dms/c;->c()V

    iget-object v1, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    const-string v2, "imei"

    const-string v3, "###"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "###"

    iget-object v3, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "###"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/calmcar/dms/c;->c:Landroid/content/SharedPreferences;

    const-string v2, "hsmlDms"

    const-string v3, "000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/calmcar/dms/c;->d:Lcom/calmcar/dms/Sdk;

    iget-object v2, p0, Lcom/calmcar/dms/c;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/calmcar/dms/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/calmcar/dms/Sdk;->dmsPassNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Dms_dms_hsml_log"

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

    sput-boolean v1, Lcom/calmcar/dms/b;->d:Z

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/calmcar/dms/ActiveSuccessListener;->onActiveCallBack(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0

    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/calmcar/dms/c$1;

    invoke-direct {v2, p0}, Lcom/calmcar/dms/c$1;-><init>(Lcom/calmcar/dms/c;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/calmcar/dms/c$2;

    invoke-direct {v2, p0}, Lcom/calmcar/dms/c$2;-><init>(Lcom/calmcar/dms/c;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
