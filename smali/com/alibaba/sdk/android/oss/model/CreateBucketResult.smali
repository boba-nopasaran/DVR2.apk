.class public Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "CreateBucketResult.java"


# instance fields
.field private bucketLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;->bucketLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;->bucketLocation:Ljava/lang/String;

    return-void
.end method