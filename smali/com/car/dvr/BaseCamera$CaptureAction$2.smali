.class Lcom/car/dvr/BaseCamera$CaptureAction$2;
.super Ljava/lang/Object;
.source "BaseCamera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/BaseCamera$CaptureAction;->doRunAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/BaseCamera$CaptureAction;


# direct methods
.method constructor <init>(Lcom/car/dvr/BaseCamera$CaptureAction;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/BaseCamera$CaptureAction$2;->this$0:Lcom/car/dvr/BaseCamera$CaptureAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    invoke-static {}, Lcom/car/dvr/BaseCamera$CaptureAction;->access$600()Lcom/car/dvr/SoundClips$Player;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/car/dvr/SoundClips$Player;->play(I)V

    return-void
.end method
