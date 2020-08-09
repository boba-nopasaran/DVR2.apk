.class Lcom/car/dvr/ADAS/AdasInterfaceImp$1;
.super Ljava/lang/Object;
.source "AdasInterfaceImp.java"

# interfaces
.implements Lcom/adasplus/adas/AdasCollisionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/ADAS/AdasInterfaceImp;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/ADAS/AdasInterfaceImp;


# direct methods
.method constructor <init>(Lcom/car/dvr/ADAS/AdasInterfaceImp;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/AdasInterfaceImp$1;->this$0:Lcom/car/dvr/ADAS/AdasInterfaceImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collision(I)V
    .locals 2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const-string v0, "Debug"

    const-string v1, "has collision"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
