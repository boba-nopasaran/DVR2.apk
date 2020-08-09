.class public Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# instance fields
.field private bundle:Ljava/util/ResourceBundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;->bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;
    .locals 2

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public varargs getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/ResourceManager;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
