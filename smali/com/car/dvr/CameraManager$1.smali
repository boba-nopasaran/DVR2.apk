.class Lcom/car/dvr/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraManager;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/CameraManager;


# direct methods
.method constructor <init>(Lcom/car/dvr/CameraManager;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraManager$1;->this$0:Lcom/car/dvr/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/car/dvr/CameraUtil;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->isStorageMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/car/dvr/CameraManager;->access$100()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-static {v0, v1}, Lcom/car/dvr/DvrApplication;->appendSpeechTips(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method