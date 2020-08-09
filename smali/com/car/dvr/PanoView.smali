.class public Lcom/car/dvr/PanoView;
.super Landroid/view/TextureView;
.source "PanoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DVR.PanoView"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "cardvr"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DVR.PanoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t load cardvr library:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    new-instance v0, Lcom/car/dvr/PanoView$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/PanoView$1;-><init>(Lcom/car/dvr/PanoView;)V

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/car/dvr/PanoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    new-instance v0, Lcom/car/dvr/PanoView$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/PanoView$1;-><init>(Lcom/car/dvr/PanoView;)V

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/car/dvr/PanoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    new-instance v0, Lcom/car/dvr/PanoView$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/PanoView$1;-><init>(Lcom/car/dvr/PanoView;)V

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/car/dvr/PanoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/PanoView;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DVR.PanoView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p0}, Lcom/car/dvr/PanoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public native getShmFd()I
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "DVR.PanoView"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/car/dvr/PanoView$2;

    invoke-direct {v1, p0}, Lcom/car/dvr/PanoView$2;-><init>(Lcom/car/dvr/PanoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "DVR.PanoView"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/dvr/PanoView;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/car/dvr/PanoView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public native setMonoSurface(Landroid/view/Surface;)I
.end method

.method public native startCali(IIIIII)I
.end method

.method public native startPano()I
.end method
