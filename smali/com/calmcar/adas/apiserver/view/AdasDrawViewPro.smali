.class public abstract Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;
.super Landroid/view/SurfaceView;
.source "AdasDrawViewPro.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;->setZOrderOnTop(Z)V

    invoke-virtual {p0}, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method


# virtual methods
.method public abstract drawBitmap(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
.end method

.method public initScale(II)V
    .locals 3

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    if-lez v0, :cond_0

    int-to-float v0, p2

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;->mScale:F

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;->mScale:F

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-virtual {p0, p3, p4}, Lcom/calmcar/adas/apiserver/view/AdasDrawViewPro;->initScale(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
