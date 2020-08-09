.class public interface abstract Lcom/car/dvr/BaseCamera$Callback;
.super Ljava/lang/Object;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCameraAvaliableChanged(Lcom/car/dvr/BaseCamera;)V
.end method

.method public abstract onStartRecording(Lcom/car/dvr/BaseCamera;)V
.end method

.method public abstract onStopRecording(Lcom/car/dvr/BaseCamera;)V
.end method
