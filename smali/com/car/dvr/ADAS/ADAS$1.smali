.class Lcom/car/dvr/ADAS/ADAS$1;
.super Ljava/lang/Object;
.source "ADAS.java"

# interfaces
.implements Lcom/adasplus/adas/Adas$PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/ADAS;->initKaiYi(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/ADAS;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/ADAS;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/ADAS$1;->this$0:Lcom/car/dvr/ADAS/ADAS;

    iput-object p2, p0, Lcom/car/dvr/ADAS/ADAS$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepare(Z)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "Adas"

    const-string v1, "onPrepare----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$1;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->access$100(Lcom/car/dvr/ADAS/ADAS;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$1;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->access$200(Lcom/car/dvr/ADAS/ADAS;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$1;->this$0:Lcom/car/dvr/ADAS/ADAS;

    new-instance v1, Lcom/car/dvr/ADAS/AdasInterfaceImp;

    iget-object v2, p0, Lcom/car/dvr/ADAS/ADAS$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/car/dvr/ADAS/AdasInterfaceImp;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/car/dvr/ADAS/ADAS;->access$202(Lcom/car/dvr/ADAS/ADAS;Lcom/car/dvr/ADAS/AdasInterfaceImp;)Lcom/car/dvr/ADAS/AdasInterfaceImp;

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/ADAS$1;->this$0:Lcom/car/dvr/ADAS/ADAS;

    invoke-static {v0}, Lcom/car/dvr/ADAS/ADAS;->access$300(Lcom/car/dvr/ADAS/ADAS;)V

    :cond_1
    return-void
.end method
