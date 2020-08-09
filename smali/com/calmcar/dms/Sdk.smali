.class public Lcom/calmcar/dms/Sdk;
.super Ljava/lang/Object;
.source "Sdk.java"


# static fields
.field public static dmsCallBack:Lcom/calmcar/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dms"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resultCallBack(I)V
    .locals 3

    sget-object v0, Lcom/calmcar/dms/Sdk;->dmsCallBack:Lcom/calmcar/a/c;

    invoke-interface {v0, p0}, Lcom/calmcar/a/c;->a(I)V

    const-string v0, "dsf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public native dmsGetBufferStatus()Z
.end method

.method public native dmsGetFaceRect([I)[I
.end method

.method public native dmsGetThreadStatus()Z
.end method

.method public native dmsInit(I)I
.end method

.method public native dmsPassNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native dmsSetAlarmLevel(I)I
.end method

.method public native dmsSetConfig(IFD)I
.end method

.method public native dmsSetConfigFull(IFFID)I
.end method

.method public native dmsSetInput(JF)I
.end method

.method public native dmsSetPhoneRestrainValue(D)V
.end method

.method public native dmsSetSmokingRestrainValue(D)V
.end method

.method public native frExtractFeatureToDataset(JJLjava/lang/String;Z)I
.end method

.method public native frInit(I)I
.end method

.method public native frLoadFeature(JLjava/lang/String;)I
.end method

.method public native frSearchDataset(J)I
.end method

.method public native frSetThreshold(F)V
.end method

.method public native frVertifyFromDataset(JJ)I
.end method

.method public setDmsCallBack(Lcom/calmcar/a/c;)V
    .locals 0

    sput-object p1, Lcom/calmcar/dms/Sdk;->dmsCallBack:Lcom/calmcar/a/c;

    return-void
.end method
