.class public final Lcom/calmcar/adas/d/b;
.super Ljava/lang/Object;
.source "FileProcessServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "config.txt"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0, p3}, Lcom/a/a/a/b;->a(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "car_lbp_init_config_big.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "car_lbp_init_config_small.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "car_filter.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "car_lbp_init_config_half.xml"

    const-string v1, "/mnt/sdcard/test"

    invoke-static {v0, v1, p0, p1}, Lcom/calmcar/adas/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
