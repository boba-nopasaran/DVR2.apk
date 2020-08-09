.class public Lcom/car/dvr/MySurfaceView;
.super Landroid/view/TextureView;
.source "MySurfaceView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DVR.MySurfaceView"


# instance fields
.field private mBotton:I

.field private mLeft:I

.field private mRelayoutEnabled:Z

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mLeft:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mRight:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mTop:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mBotton:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/MySurfaceView;->mRelayoutEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mLeft:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mRight:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mTop:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mBotton:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/MySurfaceView;->mRelayoutEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mLeft:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mRight:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mTop:I

    iput v0, p0, Lcom/car/dvr/MySurfaceView;->mBotton:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/MySurfaceView;->mRelayoutEnabled:Z

    return-void
.end method


# virtual methods
.method public layout(IIII)V
    .locals 4

    iget v0, p0, Lcom/car/dvr/MySurfaceView;->mLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/car/dvr/MySurfaceView;->mTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/car/dvr/MySurfaceView;->mRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/car/dvr/MySurfaceView;->mBotton:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->layout(IIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/car/dvr/MySurfaceView;->mLeft:I

    iget v1, p0, Lcom/car/dvr/MySurfaceView;->mTop:I

    iget v2, p0, Lcom/car/dvr/MySurfaceView;->mRight:I

    iget v3, p0, Lcom/car/dvr/MySurfaceView;->mBotton:I

    invoke-super {p0, v0, v1, v2, v3}, Landroid/view/TextureView;->layout(IIII)V

    goto :goto_0
.end method

.method public reLayout(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/MySurfaceView;->mRelayoutEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/car/dvr/MySurfaceView;->mLeft:I

    iput p3, p0, Lcom/car/dvr/MySurfaceView;->mRight:I

    iput p2, p0, Lcom/car/dvr/MySurfaceView;->mTop:I

    iput p4, p0, Lcom/car/dvr/MySurfaceView;->mBotton:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/car/dvr/MySurfaceView;->layout(IIII)V

    goto :goto_0
.end method

.method public reLayoutEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/dvr/MySurfaceView;->mRelayoutEnabled:Z

    return-void
.end method
