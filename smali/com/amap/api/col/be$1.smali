.class Lcom/amap/api/col/be$1;
.super Ljava/lang/Object;
.source "PopupOverlay.java"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/be;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/col/be;


# direct methods
.method constructor <init>(Lcom/amap/api/col/be;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/be$1;->b:Lcom/amap/api/col/be;

    iput-boolean p2, p0, Lcom/amap/api/col/be$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/be$1;->b:Lcom/amap/api/col/be;

    invoke-static {v0}, Lcom/amap/api/col/be;->a(Lcom/amap/api/col/be;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/be$1;->b:Lcom/amap/api/col/be;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amap/api/col/be;->a(Lcom/amap/api/col/be;Z)Z

    iget-object v0, p0, Lcom/amap/api/col/be$1;->b:Lcom/amap/api/col/be;

    invoke-static {v0}, Lcom/amap/api/col/be;->a(Lcom/amap/api/col/be;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/col/be$1;->b:Lcom/amap/api/col/be;

    iget-boolean v1, p0, Lcom/amap/api/col/be$1;->a:Z

    invoke-static {v0, v1}, Lcom/amap/api/col/be;->b(Lcom/amap/api/col/be;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method