.class public Lcom/car/dvr/CameraService$LocalBinder;
.super Landroid/os/Binder;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method public constructor <init>(Lcom/car/dvr/CameraService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$LocalBinder;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/car/dvr/CameraService;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/CameraService$LocalBinder;->this$0:Lcom/car/dvr/CameraService;

    return-object v0
.end method
