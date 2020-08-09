.class Lcom/car/dvr/ADAS/ADAS$3;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/ADAS;->initTianTong(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$3;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitSuccess()V
    .locals 2

    const-string v0, "DVR.ADAS"

    const-string v1, "TianTong onInitSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
