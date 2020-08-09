.class public Lcom/car/dvr/FileBrowserForCapture;
.super Landroid/content/BroadcastReceiver;
.source "FileBrowserForCapture.java"


# static fields
.field private static final ACTION_CAPTURE:Ljava/lang/String; = "com.car.dvr.capture"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.car.dvr.capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "path"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/car/dvr/browser/FileBrowser;->startFileBrowser(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
