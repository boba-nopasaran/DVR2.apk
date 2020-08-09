.class public Lcom/calmcar/dms/DmsService;
.super Ljava/lang/Object;
.source "DmsService.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dataWatcher:Lcom/calmcar/a/b;

.field private dmsCallBack:Lcom/calmcar/dms/DmsCallBack;

.field private licenceManager:Lcom/calmcar/dms/c;

.field private rgbaMat:Lorg/opencv/core/Mat;

.field private sdk:Lcom/calmcar/dms/Sdk;

.field private sepTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/calmcar/dms/DmsService;->context:Landroid/content/Context;

    new-instance v0, Lcom/calmcar/dms/Sdk;

    invoke-direct {v0}, Lcom/calmcar/dms/Sdk;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    new-instance v0, Lcom/calmcar/dms/c;

    iget-object v1, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-direct {v0, v1, p1}, Lcom/calmcar/dms/c;-><init>(Lcom/calmcar/dms/Sdk;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    new-instance v1, Lcom/calmcar/dms/DmsService$1;

    invoke-direct {v1}, Lcom/calmcar/dms/DmsService$1;-><init>()V

    iput-object v1, v0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    invoke-virtual {v0}, Lcom/calmcar/dms/c;->a()I

    invoke-static {}, Lcom/calmcar/b/a/a;->b()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/calmcar/dms/b;->e:Z

    new-instance v0, Lcom/calmcar/a/b;

    invoke-direct {v0}, Lcom/calmcar/a/b;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    invoke-virtual {v0, p1}, Lcom/calmcar/a/b;->a(Landroid/content/Context;)V

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->rgbaMat:Lorg/opencv/core/Mat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/calmcar/dms/ActiveSuccessListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/calmcar/dms/DmsService;->context:Landroid/content/Context;

    new-instance v0, Lcom/calmcar/dms/Sdk;

    invoke-direct {v0}, Lcom/calmcar/dms/Sdk;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    new-instance v0, Lcom/calmcar/dms/c;

    iget-object v1, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-direct {v0, v1, p1}, Lcom/calmcar/dms/c;-><init>(Lcom/calmcar/dms/Sdk;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    iput-object p2, v0, Lcom/calmcar/dms/c;->b:Lcom/calmcar/dms/ActiveSuccessListener;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    invoke-virtual {v0}, Lcom/calmcar/dms/c;->a()I

    invoke-static {}, Lcom/calmcar/b/a/a;->b()Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/calmcar/dms/b;->e:Z

    new-instance v0, Lcom/calmcar/a/b;

    invoke-direct {v0}, Lcom/calmcar/a/b;-><init>()V

    iput-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    invoke-virtual {v0, p1}, Lcom/calmcar/a/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/calmcar/dms/DmsService;)Lcom/calmcar/a/b;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    return-object v0
.end method


# virtual methods
.method public dmsGetBufferStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0}, Lcom/calmcar/dms/Sdk;->dmsGetBufferStatus()Z

    move-result v0

    return v0
.end method

.method public dmsGetFaceRect()[I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v1, v0}, Lcom/calmcar/dms/Sdk;->dmsGetFaceRect([I)[I

    move-result-object v0

    return-object v0
.end method

.method public dmsGetThreadStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0}, Lcom/calmcar/dms/Sdk;->dmsGetThreadStatus()Z

    move-result v0

    return v0
.end method

.method public dmsInit(I)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1}, Lcom/calmcar/dms/Sdk;->dmsInit(I)I

    move-result v0

    return v0
.end method

.method public dmsSetAlarmLevel(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string v0, "dms error"

    const-string v1, "alarmLevel only support 1 or 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1}, Lcom/calmcar/dms/Sdk;->dmsSetAlarmLevel(I)I

    move-result v0

    goto :goto_0
.end method

.method public dmsSetConfig(IFD)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/calmcar/dms/Sdk;->dmsSetConfig(IFD)I

    move-result v0

    return v0
.end method

.method public dmsSetConfigFull(IFFID)I
    .locals 9

    iget-object v1, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/calmcar/dms/Sdk;->dmsSetConfigFull(IFFID)I

    move-result v0

    return v0
.end method

.method public dmsSetInput(JFLorg/opencv/core/Mat;)I
    .locals 5

    sget-boolean v0, Lcom/calmcar/dms/b;->d:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/calmcar/dms/c;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/dms/DmsService;->sepTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    invoke-virtual {v0}, Lcom/calmcar/dms/c;->a()I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/dms/DmsService;->sepTime:J

    :cond_0
    const/16 v0, -0xb

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    invoke-virtual {v0, p4, p3}, Lcom/calmcar/a/b;->a(Lorg/opencv/core/Mat;F)V

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/calmcar/dms/Sdk;->dmsSetInput(JF)I

    move-result v0

    goto :goto_0
.end method

.method public dmsSetInput(Lorg/opencv/core/Mat;F)I
    .locals 4

    sget-boolean v0, Lcom/calmcar/dms/b;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/calmcar/dms/c;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/calmcar/dms/DmsService;->sepTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/calmcar/dms/c;->a:Z

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->licenceManager:Lcom/calmcar/dms/c;

    invoke-virtual {v0}, Lcom/calmcar/dms/c;->a()I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/calmcar/dms/DmsService;->sepTime:J

    :cond_0
    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->rgbaMat:Lorg/opencv/core/Mat;

    const/16 v1, 0x60

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;II)V

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->dataWatcher:Lcom/calmcar/a/b;

    iget-object v1, p0, Lcom/calmcar/dms/DmsService;->rgbaMat:Lorg/opencv/core/Mat;

    invoke-virtual {v0, v1, p2}, Lcom/calmcar/a/b;->a(Lorg/opencv/core/Mat;F)V

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-virtual {v0, v2, v3, p2}, Lcom/calmcar/dms/Sdk;->dmsSetInput(JF)I

    move-result v0

    return v0
.end method

.method public dmsSetPhoneRestrainValue(D)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2}, Lcom/calmcar/dms/Sdk;->dmsSetPhoneRestrainValue(D)V

    return-void
.end method

.method public dmsSetSmokingRestrainValue(D)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2}, Lcom/calmcar/dms/Sdk;->dmsSetSmokingRestrainValue(D)V

    return-void
.end method

.method public frExtractFeatureToDataset(JJLjava/lang/String;Z)I
    .locals 9

    iget-object v1, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/calmcar/dms/Sdk;->frExtractFeatureToDataset(JJLjava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public frInit(I)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1}, Lcom/calmcar/dms/Sdk;->frInit(I)I

    move-result v0

    return v0
.end method

.method public frSearchDataset(J)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2}, Lcom/calmcar/dms/Sdk;->frSearchDataset(J)I

    move-result v0

    return v0
.end method

.method public frSetThreshold(F)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1}, Lcom/calmcar/dms/Sdk;->frSetThreshold(F)V

    return-void
.end method

.method public frUpdateDataset(JLjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2, p3}, Lcom/calmcar/dms/Sdk;->frLoadFeature(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public frVertifyFromDataset(JJ)I
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/calmcar/dms/Sdk;->frVertifyFromDataset(JJ)I

    move-result v0

    return v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/calmcar/dms/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->rgbaMat:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->rgbaMat:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    return-void
.end method

.method public setDmsCallBack(Lcom/calmcar/dms/DmsCallBack;)V
    .locals 2

    iput-object p1, p0, Lcom/calmcar/dms/DmsService;->dmsCallBack:Lcom/calmcar/dms/DmsCallBack;

    iget-object v0, p0, Lcom/calmcar/dms/DmsService;->sdk:Lcom/calmcar/dms/Sdk;

    new-instance v1, Lcom/calmcar/dms/DmsService$2;

    invoke-direct {v1, p0, p1}, Lcom/calmcar/dms/DmsService$2;-><init>(Lcom/calmcar/dms/DmsService;Lcom/calmcar/dms/DmsCallBack;)V

    invoke-virtual {v0, v1}, Lcom/calmcar/dms/Sdk;->setDmsCallBack(Lcom/calmcar/a/c;)V

    return-void
.end method
