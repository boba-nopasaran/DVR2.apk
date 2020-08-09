.class Lcom/car/dvr/DMS/TianTongDMS$1;
.super Ljava/lang/Object;
.source "TianTongDMS.java"

# interfaces
.implements Lcom/calmcar/dms/DmsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/DMS/TianTongDMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/DMS/TianTongDMS;


# direct methods
.method constructor <init>(Lcom/car/dvr/DMS/TianTongDMS;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/DMS/TianTongDMS$1;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/DMS/TianTongDMS$1;->this$0:Lcom/car/dvr/DMS/TianTongDMS;

    invoke-virtual {v0, p1}, Lcom/car/dvr/DMS/TianTongDMS;->dealDmsResult(I)V

    return-void
.end method
