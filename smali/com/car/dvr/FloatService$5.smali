.class Lcom/car/dvr/FloatService$5;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/FloatService;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/FloatService;


# direct methods
.method constructor <init>(Lcom/car/dvr/FloatService;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/car/dvr/FloatService$5;->this$0:Lcom/car/dvr/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 297
    iget-object v0, p0, Lcom/car/dvr/FloatService$5;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v0}, Lcom/car/dvr/FloatService;->access$600(Lcom/car/dvr/FloatService;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/car/dvr/FloatService$5;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v0}, Lcom/car/dvr/FloatService;->access$500(Lcom/car/dvr/FloatService;)Lcom/car/dvr/FloatView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/car/dvr/FloatView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/car/dvr/FloatService$5;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v0}, Lcom/car/dvr/FloatService;->access$200(Lcom/car/dvr/FloatService;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

#by boba 03.03.2021
#dvr float size
iget-object v0, p0, Lcom/car/dvr/FloatService$5;->this$0:Lcom/car/dvr/FloatService;
invoke-static {v0}, Lcom/car/dvr/FloatService;->access$hideP(Lcom/car/dvr/FloatService;)V

    .line 300
    iget-object v0, p0, Lcom/car/dvr/FloatService$5;->this$0:Lcom/car/dvr/FloatService;

    invoke-static {v0}, Lcom/car/dvr/FloatService;->access$700(Lcom/car/dvr/FloatService;)V

    .line 301
    return-void
.end method
