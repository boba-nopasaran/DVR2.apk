.class public Lcom/car/dvr/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DVR.BaseActivity"


# instance fields
.field private mShowFloatView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/BaseActivity;->mShowFloatView:Z

    return-void
.end method


# virtual methods
.method public getFloatView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/BaseActivity;->mShowFloatView:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseActivity;->showFloatCameraView(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/car/dvr/BaseActivity;->mShowFloatView:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseActivity;->showFloatCameraView(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseActivity;->showFloatCameraView(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/BaseActivity;->mShowFloatView:Z

    return-void
.end method

.method public setFloatView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/dvr/BaseActivity;->mShowFloatView:Z

    return-void
.end method

.method public showFloatCameraView(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v1, "DVR.BaseActivity"

    const-string v2, "==== show FloatView ===="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/car/dvr/FloatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/car/dvr/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v1, "DVR.BaseActivity"

    const-string v2, "==== hide FloatView ===="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.car.videorecorder.FloatService.closeview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/BaseActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
