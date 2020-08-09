.class final Lcom/calmcar/dms/DmsService$2;
.super Ljava/lang/Object;
.source "DmsService.java"

# interfaces
.implements Lcom/calmcar/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/dms/DmsService;->setDmsCallBack(Lcom/calmcar/dms/DmsCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/dms/DmsCallBack;

.field private synthetic b:Lcom/calmcar/dms/DmsService;


# direct methods
.method constructor <init>(Lcom/calmcar/dms/DmsService;Lcom/calmcar/dms/DmsCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/dms/DmsService$2;->b:Lcom/calmcar/dms/DmsService;

    iput-object p2, p0, Lcom/calmcar/dms/DmsService$2;->a:Lcom/calmcar/dms/DmsCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/dms/DmsService$2;->b:Lcom/calmcar/dms/DmsService;

    invoke-static {v0}, Lcom/calmcar/dms/DmsService;->access$000(Lcom/calmcar/dms/DmsService;)Lcom/calmcar/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/calmcar/a/b;->a(I)V

    iget-object v0, p0, Lcom/calmcar/dms/DmsService$2;->a:Lcom/calmcar/dms/DmsCallBack;

    invoke-interface {v0, p1}, Lcom/calmcar/dms/DmsCallBack;->onCallBack(I)V

    return-void
.end method
