.class public final Lcom/car/dvr/CameraManager$BuildinCamera;
.super Lcom/car/dvr/BaseCamera;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuildinCamera"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$100()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/car/dvr/BaseCamera$CameraClass;->BuildIn:Lcom/car/dvr/BaseCamera$CameraClass;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/car/dvr/BaseCamera;-><init>(Landroid/content/Context;ILcom/car/dvr/BaseCamera$CameraClass;Z)V

    return-void
.end method
