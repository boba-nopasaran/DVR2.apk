.class Lcom/car/dvr/ADAS/ADAS$8;
.super Landroid/database/ContentObserver;
.source "ADAS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/ADAS/ADAS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$8;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "DVR.ADAS"

    const-string v1, "ContentObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$8;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->access$300(Lcom/car/dvr/ADAS/ADAS;)V

    return-void
.end method
