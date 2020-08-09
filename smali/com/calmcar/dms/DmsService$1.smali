.class final Lcom/calmcar/dms/DmsService$1;
.super Ljava/lang/Object;
.source "DmsService.java"

# interfaces
.implements Lcom/calmcar/dms/ActiveSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/dms/DmsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/dms/DmsService;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActiveCallBack(Ljava/lang/String;)V
    .locals 3

    const-string v0, "dms_hsml_log"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DMS\u6fc0\u6d3b\u72b6\u6001----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
