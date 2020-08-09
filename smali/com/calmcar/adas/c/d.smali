.class public final Lcom/calmcar/adas/c/d;
.super Ljava/lang/Object;
.source "LdwServerManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/c/d;->b:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 6

    const/16 v5, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    shl-int/lit8 v2, v0, 0x1

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static a([BLjava/lang/String;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const-string v2, "DES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/calmcar/adas/dao/CalmCarLdwData;)Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;
    .locals 12

    const/4 v7, -0x1

    const/4 v0, 0x1

    new-instance v2, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    invoke-direct {v2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/calmcar/adas/dao/CalmCarLdwData;->getCurrentZone()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/calmcar/adas/dao/CalmCarLdwData;->getSDepartureOrientation()I

    move-result v1

    invoke-virtual {p0}, Lcom/calmcar/adas/dao/CalmCarLdwData;->getSLaneDetectionResult()I

    move-result v4

    invoke-virtual {v2, v1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setDetectState(I)V

    invoke-virtual {v2, v4}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setDetectResult(I)V

    invoke-virtual {p0}, Lcom/calmcar/adas/dao/CalmCarLdwData;->getVpy0()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setVpy0(D)V

    invoke-virtual {p0}, Lcom/calmcar/adas/dao/CalmCarLdwData;->getVpy1()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setVpy1(D)V

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v2

    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v4, v2, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    add-int/lit8 v5, v1, -0x1

    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getX()I

    move-result v0

    int-to-double v8, v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getY()I

    move-result v0

    int-to-double v10, v0

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    aput-object v6, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2, v7}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V

    goto :goto_0

    :pswitch_2
    move v1, v0

    :goto_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v4, v2, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    add-int/lit8 v5, v1, -0x1

    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getX()I

    move-result v0

    int-to-double v8, v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getY()I

    move-result v0

    int-to-double v10, v0

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    aput-object v6, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V

    goto :goto_0

    :pswitch_3
    move v1, v0

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v4, v2, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    add-int/lit8 v5, v1, -0x1

    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getX()I

    move-result v0

    int-to-double v8, v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getY()I

    move-result v0

    int-to-double v10, v0

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    aput-object v6, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V

    goto/16 :goto_0

    :pswitch_4
    move v1, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v4, v2, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    add-int/lit8 v5, v1, -0x1

    new-instance v6, Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getX()I

    move-result v0

    int-to-double v8, v0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;

    invoke-virtual {v0}, Lcom/calmcar/adas/dao/CalmCarLdwData$CalmCarPoint;->getY()I

    move-result v0

    int-to-double v10, v0

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/calmcar/adas/apiserver/model/AdasPoint;-><init>(DD)V

    aput-object v6, v4, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->setLdwType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/c/d;->b:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    return-object v0
.end method

.method public final a(Lcom/calmcar/adas/dao/CalmCarLdwData;)V
    .locals 1

    invoke-static {p1}, Lcom/calmcar/adas/c/d;->b(Lcom/calmcar/adas/dao/CalmCarLdwData;)Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-object v0, p0, Lcom/calmcar/adas/c/d;->b:Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;

    return-void
.end method
