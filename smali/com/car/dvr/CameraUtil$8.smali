.class final Lcom/car/dvr/CameraUtil$8;
.super Ljava/lang/Object;
.source "CameraUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/dvr/CameraUtil;->createFormatSDCardDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/CameraUtil$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-static {}, Lcom/car/common/CarUtil;->isMT6735Platform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/CameraUtil$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->access$600(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/CameraUtil$8;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/car/dvr/CameraUtil;->access$500(Landroid/content/Context;)V

    goto :goto_0
.end method
