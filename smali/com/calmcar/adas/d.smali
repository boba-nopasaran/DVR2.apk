.class public Lcom/calmcar/adas/d;
.super Ljava/lang/Object;
.source "CameraBridgeViewBase.java"

# interfaces
.implements Lcom/calmcar/adas/c;
.implements Lcom/calmcar/adas/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/CameraBridgeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CvCameraViewListenerAdapter"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/calmcar/adas/b;

.field private synthetic c:Lcom/calmcar/adas/CameraBridgeViewBase;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/calmcar/adas/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/calmcar/adas/d;->a:I

    iput-object p1, p0, Lcom/calmcar/adas/d;->b:Lcom/calmcar/adas/b;

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/calmcar/adas/d;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/hardware/Camera$Size;

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    return v0
.end method

.method public final a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lorg/opencv/core/Mat;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/calmcar/adas/d;->a:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "CameraBridge"

    const-string v2, "Invalid frame format! Only RGBA and Gray Scale are supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/calmcar/adas/d;->b:Lcom/calmcar/adas/b;

    invoke-interface {p1}, Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;->rgba()Lorg/opencv/core/Mat;

    invoke-interface {v0}, Lcom/calmcar/adas/b;->c()Lorg/opencv/core/Mat;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/calmcar/adas/d;->b:Lcom/calmcar/adas/b;

    invoke-interface {p1}, Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;->gray()Lorg/opencv/core/Mat;

    invoke-interface {v0}, Lcom/calmcar/adas/b;->c()Lorg/opencv/core/Mat;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/hardware/Camera$Size;

    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
