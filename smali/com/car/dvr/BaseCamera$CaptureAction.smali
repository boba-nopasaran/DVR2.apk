.class final Lcom/car/dvr/BaseCamera$CaptureAction;
.super Lcom/car/dvr/BaseCamera$CameraAction;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaptureAction"
.end annotation


# static fields
.field private static soundPlayer:Lcom/car/dvr/SoundClips$Player;


# instance fields
.field private capCallback:Landroid/hardware/Camera$PictureCallback;

.field private extCallback:Landroid/hardware/Camera$PictureCallback;

.field noSound:Z

.field public path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/car/dvr/BaseCamera;Ljava/lang/String;Landroid/hardware/Camera$PictureCallback;Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/car/dvr/BaseCamera$CameraAction;-><init>(Lcom/car/dvr/BaseCamera;ZZ)V

    invoke-static {}, Lcom/car/dvr/BaseCamera$CaptureAction;->initSoundPlayer()V

    iput-object p2, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->noSound:Z

    iput-object p3, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->extCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/car/dvr/BaseCamera$CaptureAction$1;

    invoke-direct {v0, p0}, Lcom/car/dvr/BaseCamera$CaptureAction$1;-><init>(Lcom/car/dvr/BaseCamera$CaptureAction;)V

    iput-object v0, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->capCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$500(Lcom/car/dvr/BaseCamera$CaptureAction;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->extCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$600()Lcom/car/dvr/SoundClips$Player;
    .locals 1

    sget-object v0, Lcom/car/dvr/BaseCamera$CaptureAction;->soundPlayer:Lcom/car/dvr/SoundClips$Player;

    return-object v0
.end method

.method public static initSoundPlayer()V
    .locals 1

    sget-object v0, Lcom/car/dvr/BaseCamera$CaptureAction;->soundPlayer:Lcom/car/dvr/SoundClips$Player;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/car/dvr/BaseCamera;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/car/dvr/SoundClips;->getPlayer(Landroid/content/Context;)Lcom/car/dvr/SoundClips$Player;

    move-result-object v0

    sput-object v0, Lcom/car/dvr/BaseCamera$CaptureAction;->soundPlayer:Lcom/car/dvr/SoundClips$Player;

    :cond_0
    return-void
.end method


# virtual methods
.method doRunAction(Landroid/hardware/Camera;ILandroid/media/MediaRecorder;)V
    .locals 7

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-boolean v4, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->noSound:Z

    if-nez v4, :cond_0

    new-instance v3, Lcom/car/dvr/BaseCamera$CaptureAction$2;

    invoke-direct {v3, p0}, Lcom/car/dvr/BaseCamera$CaptureAction$2;-><init>(Lcom/car/dvr/BaseCamera$CaptureAction;)V

    :cond_0
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CaptureAction.doRunAction"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    :cond_1
    :goto_0
    if-lez v2, :cond_2

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->capCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CaptureAction doRunAction error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CaptureAction sleep a while and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/car/dvr/BaseCamera$CaptureAction;->done()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/car/dvr/BaseCamera$CameraAction;->baseCamera:Lcom/car/dvr/BaseCamera;

    invoke-static {v4}, Lcom/car/dvr/BaseCamera;->access$200(Lcom/car/dvr/BaseCamera;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "camera is null, CaptureAction do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/car/dvr/BaseCamera$CameraAction;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/BaseCamera$CaptureAction;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
