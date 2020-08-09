.class public Lcom/adasplus/adas/adas/AdasService;
.super Landroid/app/IntentService;
.source "AdasService.java"


# instance fields
.field private mBackupFilePath:Ljava/lang/String;

.field private mFileDirPath:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AdasService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private uploadErrorVersion(Z)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/adasplus/adas/adas/AdasService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "version"

    const-string v6, "adas_11.0.5_003"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/adasplus/adas/adas/AdasService;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "/adas/Uuid"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/adasplus/adas/util/FileUtils;->getFileString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "Cannot find uuid!"

    invoke-static {v4}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "current_verison"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "uuid"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "merchant_id"

    const-string v5, "pfd20161205"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "timestamp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pfd20161205"

    invoke-static {v6}, Lcom/adasplus/adas/util/Util;->getStrMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adasplus/adas/util/Util;->getStrMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "updata_flag"

    if-eqz p1, :cond_2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/adasplus/adas/adas/AdasService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/adasplus/adas/adas/net/RequestManager;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/adas/net/RequestManager;

    move-result-object v4

    const-string v5, "http://androidsdk.adasplus.com:80/update_app_version"

    invoke-virtual {v4, v5, v0}, Lcom/adasplus/adas/adas/net/RequestManager;->getReponseByPostMethod(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 39

    const-string v36, "Adas"

    const-string v37, "AdasService start!"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/adasplus/adas/adas/AdasService;->getFilesDir()Ljava/io/File;

    move-result-object v37

    const-string v38, "/adas/Uuid"

    invoke-direct/range {v36 .. v38}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->getFileString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_0

    const-string v36, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_1

    :cond_0
    const-string v36, "Cannot find uuid!"

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/adasplus/adas/adas/AdasService;->getFilesDir()Ljava/io/File;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "adas"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "backup"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adasplus/adas/adas/AdasService;->mBackupFilePath:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/adasplus/adas/adas/AdasService;->getFilesDir()Ljava/io/File;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "adas"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adasplus/adas/adas/AdasService;->mFileDirPath:Ljava/lang/String;

    const-string v36, "AdasConfig"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/adasplus/adas/adas/AdasService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adasplus/adas/adas/AdasService;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const-string v37, "version"

    const-string v38, "adas_11.0.5_003"

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    aget-object v33, v36, v37

    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    const-string v36, "version"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v36, "uuid"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v36, "merchant_id"

    const-string v37, "pfd20161205"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    const-string v36, "timestamp"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v36, "sign"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "pfd20161205"

    invoke-static/range {v38 .. v38}, Lcom/adasplus/adas/util/Util;->getStrMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Lcom/adasplus/adas/util/Util;->getStrMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lcom/adasplus/adas/util/Util;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_3

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/16 v25, 0x0

    move/from16 v26, v25

    move-object v15, v14

    move-object v10, v9

    :goto_1
    :try_start_0
    const-string v36, "part_num"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    add-int/lit8 v25, v26, 0x1

    :try_start_1
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Lcom/adasplus/adas/adas/net/RequestManager;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/adas/net/RequestManager;

    move-result-object v36

    const-string v37, "http://androidsdk.adasplus.com:80/download_app_version"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/adasplus/adas/adas/net/RequestManager;->getInputStream(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v18

    if-eqz v18, :cond_14

    const/16 v36, 0xa

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_2

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_4

    const-string v36, "="

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_4

    :cond_2
    const-string v36, "Adas"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Split error:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v36, "Adas"

    const-string v37, "AdasService over."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object v14, v15

    move-object v9, v10

    :goto_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    const-string v36, "AdasService over!"

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    const-string v36, "="

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    aget-object v17, v36, v37

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/io/InputStream;->read([B)I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const-string v36, "Adas"

    const-string v37, "Read json buffer error!"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v36, "ret"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    if-nez v36, :cond_9

    const-string v36, "file_end"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_9

    const-string v36, "version"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/adasplus/adas/adas/AdasService;->mVersion:Ljava/lang/String;

    const-string v36, "systime"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string v36, "_"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x2

    aget-object v36, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    const-string v38, "_"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x2

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_14

    if-eqz v11, :cond_15

    new-instance v36, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mBackupFilePath:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-direct/range {v36 .. v37}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->clearBackupDir(Ljava/io/File;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mBackupFilePath:Ljava/lang/String;

    move-object/from16 v36, v0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "version"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ".zip"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v11, 0x0

    :try_start_5
    const-string v36, "md5"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v36, "filesize"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_4
    const/16 v36, 0x1000

    move/from16 v0, v36

    new-array v5, v0, [B

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v22

    const/16 v36, -0x1

    move/from16 v0, v22

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v22

    invoke-virtual {v14, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_1
    move-exception v6

    :goto_6
    :try_start_6
    new-instance v36, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mBackupFilePath:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-direct/range {v36 .. v37}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->clearBackupDir(Ljava/io/File;)V

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    if-eqz v9, :cond_7

    const-wide/16 v36, 0x0

    cmp-long v36, v12, v36

    if-eqz v36, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v36

    cmp-long v36, v12, v36

    if-eqz v36, :cond_c

    :cond_7
    const-string v36, "File error Service over!"

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto/16 :goto_2

    :cond_8
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    move/from16 v26, v25

    move-object v15, v14

    move-object v10, v9

    goto/16 :goto_1

    :cond_9
    :try_start_8
    const-string v36, "ret"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    if-nez v36, :cond_a

    const-string v36, "file_end"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    const/16 v37, -0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_14

    :cond_a
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_b
    move-object v14, v15

    move-object v9, v10

    goto :goto_7

    :cond_c
    :try_start_9
    invoke-static {v9}, Lcom/adasplus/adas/util/Util;->getMd5ByFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const-string v37, "load"

    const-string v38, "load0"

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v32, 0x0

    const-string v36, "load0"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mFileDirPath:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "load1"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v36, Ljava/io/File;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->clearDir(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_d
    :goto_9
    :try_start_a
    new-instance v35, Ljava/util/zip/ZipInputStream;

    new-instance v36, Ljava/io/FileInputStream;

    move-object/from16 v0, v36

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v35 .. v36}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_a
    invoke-virtual/range {v35 .. v35}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v36

    if-nez v36, :cond_f

    new-instance v36, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v35 .. v36}, Lcom/adasplus/adas/util/FileUtils;->copyFile(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_a

    :catch_3
    move-exception v6

    :try_start_b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    new-instance v36, Ljava/io/File;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->clearDir(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    const-string v36, "load1"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mFileDirPath:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "load0"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    new-instance v36, Ljava/io/File;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->clearDir(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_9

    :cond_f
    :try_start_c
    new-instance v36, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_a

    :cond_10
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v36, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    sget-object v38, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "MANIFEST.MF"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/adasplus/adas/util/FileUtils;->verifyTotalFile(Ljava/io/File;Ljava/util/HashMap;)Z

    move-result v36

    if-eqz v36, :cond_11

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "adas.dex"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/adasplus/adas/util/FileUtils;->verifyItemFile(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_11

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "libadas_lib.so"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/adasplus/adas/util/FileUtils;->verifyItemFile(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_11

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "libAdasLib.so"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/adasplus/adas/util/FileUtils;->verifyItemFile(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_11

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "210213640546278.dat"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/adasplus/adas/util/FileUtils;->verifyItemFile(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_11

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "2102136405363718.dat"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lcom/adasplus/adas/util/FileUtils;->verifyItemFile(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_12

    :cond_11
    const-string v36, "Verify new file fail!"

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    new-instance v36, Ljava/io/File;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/FileUtils;->clearDir(Ljava/io/File;)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v36, "load"

    const-string v37, "/"

    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v37

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v36, "systime"

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v36, "version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/adas/AdasService;->mVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/adasplus/adas/adas/AdasService;->uploadErrorVersion(Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_3

    :cond_13
    :try_start_d
    const-string v36, "md5 not equal!"

    invoke-static/range {v36 .. v36}, Lcom/adasplus/adas/util/LogUtil;->logE(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_3

    :catch_4
    move-exception v6

    move/from16 v25, v26

    move-object v14, v15

    move-object v9, v10

    goto/16 :goto_2

    :catch_5
    move-exception v6

    move-object v14, v15

    goto/16 :goto_2

    :catch_6
    move-exception v6

    move-object v14, v15

    move-object v9, v10

    goto/16 :goto_6

    :catch_7
    move-exception v6

    move-object v14, v15

    goto/16 :goto_6

    :cond_14
    move-object v14, v15

    move-object v9, v10

    goto/16 :goto_8

    :cond_15
    move-object v14, v15

    move-object v9, v10

    goto/16 :goto_4
.end method
