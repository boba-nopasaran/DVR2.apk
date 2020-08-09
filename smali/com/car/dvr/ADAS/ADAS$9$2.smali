.class Lcom/car/dvr/ADAS/ADAS$9$2;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/ADAS$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/dvr/ADAS/ADAS$9;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS$9;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$9$2;->this$1:Lcom/car/dvr/ADAS/ADAS$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$9$2;->this$1:Lcom/car/dvr/ADAS/ADAS$9;

    iget-object v0, v0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v1, p0, Lcom/car/dvr/ADAS/ADAS$9$2;->this$1:Lcom/car/dvr/ADAS/ADAS$9;

    iget-object v1, v1, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iget-object v1, v1, Lcom/car/dvr/ADAS/ADAS;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/car/dvr/ADAS/ADAS;->access$2800(Lcom/car/dvr/ADAS/ADAS;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$9$2;->this$1:Lcom/car/dvr/ADAS/ADAS$9;

    iget-object v0, v0, Lcom/car/dvr/ADAS/ADAS$9;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->access$2600(Lcom/car/dvr/ADAS/ADAS;)V

    return-void
.end method
