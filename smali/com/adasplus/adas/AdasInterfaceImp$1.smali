.class Lcom/adasplus/adas/AdasInterfaceImp$1;
.super Ljava/lang/Object;
.source "AdasInterfaceImp.java"

# interfaces
.implements Lcom/adasplus/adas/AdasCollisionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adasplus/adas/AdasInterfaceImp;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adasplus/adas/AdasInterfaceImp;


# direct methods
.method constructor <init>(Lcom/adasplus/adas/AdasInterfaceImp;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/AdasInterfaceImp$1;->this$0:Lcom/adasplus/adas/AdasInterfaceImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collision(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "Debug"

    const-string v1, "\u4e00\u7ea7\u78b0\u649e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "Debug"

    const-string v1, "\u4e8c\u7ea7\u78b0\u649e"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
