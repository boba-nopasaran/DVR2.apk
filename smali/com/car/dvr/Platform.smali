.class public Lcom/car/dvr/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMediaScanner(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaScanner;
    .locals 1

    new-instance v0, Landroid/media/MediaScanner;

    invoke-direct {v0, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static doLivingAction(Landroid/hardware/Camera;Landroid/media/MediaRecorder;ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "private-live-camera"

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v1, "private-live-camera-url"

    invoke-virtual {v0, v1, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public static mediarecorder_setparameter(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setParametersExtra(Ljava/lang/String;)V

    return-void
.end method

.method public static setOutputFormatMPEG2TS(Landroid/media/MediaRecorder;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    return-void
.end method

.method public static setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 3

    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
