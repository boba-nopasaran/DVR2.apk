.class public Lcom/adasplus/adas/view/AssetUtil;
.super Ljava/lang/Object;
.source "AssetUtil.java"


# static fields
.field private static sInstance:Lcom/adasplus/adas/view/AssetUtil;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/AssetUtil;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;
    .locals 2

    sget-object v0, Lcom/adasplus/adas/view/AssetUtil;->sInstance:Lcom/adasplus/adas/view/AssetUtil;

    if-nez v0, :cond_1

    const-class v1, Lcom/adasplus/adas/view/AssetUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adasplus/adas/view/AssetUtil;->sInstance:Lcom/adasplus/adas/view/AssetUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adasplus/adas/view/AssetUtil;

    invoke-direct {v0, p0}, Lcom/adasplus/adas/view/AssetUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adasplus/adas/view/AssetUtil;->sInstance:Lcom/adasplus/adas/view/AssetUtil;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/adasplus/adas/view/AssetUtil;->sInstance:Lcom/adasplus/adas/view/AssetUtil;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/adasplus/adas/view/AssetUtil;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method
