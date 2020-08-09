.class Lcom/car/dvr/CameraService$MyLock;
.super Ljava/lang/Object;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLock"
.end annotation


# instance fields
.field public isNotify:Z

.field final synthetic this$0:Lcom/car/dvr/CameraService;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraService$MyLock;->this$0:Lcom/car/dvr/CameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
